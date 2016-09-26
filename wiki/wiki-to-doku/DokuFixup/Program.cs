using System;
using System.Data;
using System.IO;

public class DokuFixup
{
	#region [ Members ]

	static string s_MapPathFile = "FixupMap.txt"; 
	static DataTable s_MapTable = null;

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
		if (s_MapTable != null)
		{
			s_MapTable.Dispose();
			s_MapTable = null;
		}
		GC.Collect();

		// Done!
		Console.Write("Press [Enter] to Quit -> ");
		string inputQuit = Console.ReadLine();
		Console.WriteLine(inputQuit);
	}


	private static void ProcessFiles()
	{
		try
		{
			if (File.Exists(s_MapPathFile))
			{
				MapFileLoad();
			}
		}
		catch (Exception ex) 
		{
			Console.WriteLine("ERROR Processing Files -> " + ex.Message);
			return;
		}
	}


	private static void MapFileLoad()
	{
		// Create the Map DataTable and define its DataColumns
		s_MapTable = new DataTable("MapTable");
		s_MapTable.Columns.Add(new DataColumn(C_SOURCEFILE, typeof(string)));
		s_MapTable.Columns.Add(new DataColumn(C_TARGETFILE, typeof(string)));
		s_MapTable.Columns.Add(new DataColumn(C_ORIGINALLINK, typeof(string)));
		s_MapTable.Columns.Add(new DataColumn(C_REPLACELINK, typeof(string)));
		s_MapTable.AcceptChanges();

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
					if (rowdata.Length == 4)
					{
						// We have 4 column values for a DataRow.
						// Populate the data row and add it to the Map Table
						DataRow newRow = s_MapTable.NewRow();
						for (int colindex = 0; colindex < 4; colindex++)
						{
							if (rowdata[colindex].Trim().ToLower() == "null")
							{
								newRow[colindex] = "";
							}
							else
							{
								newRow[colindex] = rowdata[colindex].Trim().Replace("'", "");
							}
						}
						s_MapTable.Rows.Add(newRow);
						Console.WriteLine(" + " + newRow[0] + " * " + newRow[1] + " * " + newRow[2] + " * " + newRow[3]);
					}
				}
			}
		}
		catch (Exception ex)
		{
			Console.WriteLine("ERROR Importing Map Data -> " + ex.Message);
			return;			
		}
	}


}
