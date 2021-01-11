using Meiam.System.Interfaces;
using Meiam.System.Tools.Tasks;
using System;
using System.IO;

namespace Meiam.System.Tools
{
    class ToolsMain
    {

        static void Main(string[] args)
        {
            do
            {
                try
                {
                    Console.Clear();
                    Console.ForegroundColor = ConsoleColor.DarkYellow;
                    Console.WriteLine("=============================================================================");
                    Console.WriteLine("*            1      -      生成模型");
                    Console.WriteLine("=============================================================================");
                    Console.Write("请选择要执行的程序 : ");
                    Console.ResetColor();

                    switch (Int32.Parse(Console.ReadLine()))
                    {
                        case 1:

                            #region  生成模型
                            Task001.Execute();
                            #endregion

                            Console.ReadKey();

                            break;
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.Message);
                    Console.ReadKey();
                }
            } while (true);
        }

    }
}
