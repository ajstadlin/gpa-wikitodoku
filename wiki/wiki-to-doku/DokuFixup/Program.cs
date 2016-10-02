//**************************************************************
// DokuFixup Utility
//==============================================================
// 10/01/16 Development
// 09/26/16 Concept 
//**************************************************************

using System;
using System.Data;
using System.IO;

public class DokuFixup
{
	#region [ Members ]

	static string s_MapPathFile = "FixupMap.txt"; 
	static DataTable s_FilesTable = null;   // Source and Destination Files Map
	static DataTable s_LinksTable = null;   // Original and Replacement Links Map
	//[TODO] static DataTable s_TextsTable = null;   // Original and Replacement Texts Map

	// Map DataTable Column Names
	const string C_SOURCEFILE = "SourceFile";
	const string C_TARGETFILE = "TargetFile";
	const string C_ORIGINALLINK = "OriginalLink";
	const string C_REPLACELINK = "ReplaceLink";

	#endregion 


	static void Main(string[] args)
	{
		Console.WriteLine("Doku Markdown File Fixup Utility - rev Sep 26, 2016");
		Console.WriteLine("==================================================");
		Console.WriteLine("Run this utility to fix DokuWiki files after GitHub Markdown convertsion.");
		Console.WriteLine("Parameters witout spaces between the values: --{name}={'path/file'}");
		Console.WriteLine("--map={'Map Path/File Name'}");
		Console.WriteLine("");
		Console.WriteLine("Note: Spaces are Allowed in between the Path and File Name values");
		Console.WriteLine("");

		foreach (string param in args)
		{
			if (param.IndexOf("--map=") == 0)
			{
				string[] keyval = param.Split("=".ToCharArray(), StringSplitOptions.RemoveEmptyEntries);
				if (keyval.Length == 2)
				{
					s_MapPathFile = keyval[1].Replace("'", "").Trim();
				}
				Console.WriteLine("Using Map File: " + s_MapPathFile);
			}
		}

		ProcessFiles();

		// clean up
		if (s_FilesTable != null)
		{
			s_FilesTable.Dispose();
			s_FilesTable = null;
		}

		if (s_LinksTable != null)
		{
			s_LinksTable.Dispose();
			s_LinksTable = null;
		}
		GC.Collect();

		// Done!
		Console.Write("Press [Enter] to Quit -> ");
		string inputQuit = Console.ReadLine();
		Console.WriteLine(inputQuit);
	}


	/// <summary>
	/// Reads a Mapping File and imports its data into s_MapTable for subsequent processing.
	/// </summary>
	private static void MapFileLoad()
	{
		// Create the Map DataTable and define its DataColumns
		s_FilesTable = new DataTable("FilesTable");
		s_FilesTable.Columns.Add(new DataColumn(C_SOURCEFILE, typeof(string)));
		s_FilesTable.Columns.Add(new DataColumn(C_TARGETFILE, typeof(string)));
		s_FilesTable.AcceptChanges();

		s_LinksTable = new DataTable("LinksTable");
		s_LinksTable.Columns.Add(new DataColumn(C_ORIGINALLINK, typeof(string)));
		s_LinksTable.Columns.Add(new DataColumn(C_REPLACELINK, typeof(string)));
		s_LinksTable.AcceptChanges();

		try
		{
			// Read the Map Data File and Import its rows into the Map DataTable
			string[] importLines = File.ReadAllLines(s_MapPathFile);

			foreach (string textline in importLines)
			{
				// Check for and ignore Blank Lines and Comments
				string dataline = textline.Trim();
				if ((dataline.IndexOf("#") != 0) && (dataline.Length > 0))
				{
					// Parse the line by the "*" delimiter and ignore when there are not 4 values.
					string[] rowdata = dataline.Split("*".ToCharArray(), StringSplitOptions.RemoveEmptyEntries);
					if (rowdata.Length == 3)
					{
						// We have 3 column values for a Map Row.
						Console.WriteLine(" + " + rowdata[0].ToString() 
							+ " * " + rowdata[1].ToString().Trim() + " * " + rowdata[2].ToString().Trim());

						if (rowdata[0].ToString().Trim().ToUpper() == "PROCESS")
						{
							// Add the Source and Target Files to the FilesTable
							DataRow newRow = s_FilesTable.NewRow();
							newRow[C_SOURCEFILE] = rowdata[1].Trim();
							newRow[C_TARGETFILE] = rowdata[2].Trim();
							s_FilesTable.Rows.Add(newRow);
						}
						else if (rowdata[0].ToString().Trim().ToUpper() == "REPLACELINK")
						{
							// Add the Original and Replace Links to the LinksTable
							DataRow newRow = s_LinksTable.NewRow();
							newRow[C_ORIGINALLINK] = rowdata[1].Trim();
							newRow[C_REPLACELINK] = rowdata[2].Trim();
							s_LinksTable.Rows.Add(newRow);
						}
					}
				}
			}
			s_FilesTable.AcceptChanges();
			s_LinksTable.AcceptChanges();
		}
		catch (Exception ex)
		{
			Console.WriteLine("ERROR Importing Map Data -> " + ex.Message);
			return;			
		}
	}


	private static void ProcessFiles()
	{
		try
		{
			// Check for a Mapping File to Import
			if (File.Exists(s_MapPathFile))
			{
				// Import the Mapping File into s_MapTable
				MapFileLoad();

				// Process s_MapTable Records
				foreach (DataRowView fileRow in s_FilesTable.DefaultView)
				{
					string sourceText = "Processing Source File [ " + fileRow[C_SOURCEFILE].ToString() + " ]...";
					Console.WriteLine(sourceText);
					try
					{
						// Our files are not very big, so Read all the text into the sourceText variable
						sourceText = File.ReadAllText(fileRow[C_SOURCEFILE].ToString());

						// Replace each Original Link with its Replacement Link
						foreach (DataRowView linkRow in s_LinksTable.DefaultView)
						{
							sourceText = sourceText.Replace(linkRow[C_ORIGINALLINK].ToString(), linkRow[C_REPLACELINK].ToString());
						}

						// Check to see if a previous version of the Target File Exists and Erase it.
						if (File.Exists(fileRow[C_TARGETFILE].ToString()))
						{
							File.Delete(fileRow[C_TARGETFILE].ToString());
						}

						// Save the fixed content to the Target File
						File.WriteAllText(fileRow[C_TARGETFILE].ToString(), sourceText);
					}
					catch (Exception ex) 
					{
						Console.WriteLine("ERROR Processing Source File -> " + ex.Message);
					}
				}
			}
		}
		catch (Exception ex) 
		{
			Console.WriteLine("ERROR Processing Files -> " + ex.Message);
			return;
		}
	}


}
