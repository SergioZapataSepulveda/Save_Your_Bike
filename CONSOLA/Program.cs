using System;

class Program
{
    static void Main()
    {
        string input = "OneTwoThree";

        string sub = input.Substring(1, 3);
        Console.WriteLine("Substring: {0}", sub);
    }
}