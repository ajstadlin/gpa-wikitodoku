using System;
using System.IO;

public class DokuFixup
{
  static string s_InPathFile = "inputfile.txt"; 
  static string s_OutPathFile = "outputfile.txt";


  static void Main(string[] args)
  {
    Console.WriteLine("Doku Markdown File Fixup Utility - rev Sep 9, 2016");
    Console.WriteLine("==================================================");
    if (args.Length < )
    {
      Console.WriteLine("Run this utility to fix DokuWiki files after GitHub Markdown convertsion.");
      Console.WriteLine("Parameters witout spaces between the values: --{name}={'path/file'}");
      Console.WriteLine("--input={'Input Path/File Name'}");
      Console.WriteLine("--output={'Output Path/File Name'}");
      Console.WriteLine("Note: Spaces are Allowed in the Path and File Name values");
      return;
    }

    foreach (string param in args)
    {
      if (param.IndexOf("--input=") == 0)
      {
        string[] keyval = param.Split("=".ToCharArray(), StringSplitOptions.RemoveEmptyEntries);
        if (keyval.Length == 2)
        {
          s_InPathFile = keyval[1].Replace("'", "");
        }
        Console.WriteLine("Converting: " + s_InPathFile);
      }
      else if (param.IndexOf("--output=") == 0)
      {
        string[] keyval = param.Split("=".ToCharArray(), StringSplitOptions.RemoveEmptyEntries);
        if (keyval.Length == 2)
        {
          s_OutPathFile = keyval[1].Replace("'", "");
        }
        Console.WriteLine("Converting: " + s_OutPathFile);
      }
    }
  }
  
}
