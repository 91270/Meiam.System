using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Meiam.System.Tools
{
    public class App
    {
        private readonly IToolsService _toolsService;

        public App(IToolsService toolsService)
        {
            _toolsService = toolsService;
        }

        public void Run()
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
                            _toolsService.Run();
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
