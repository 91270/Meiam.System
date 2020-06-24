using Meiam.System.Interfaces;
using System;
using System.IO;

namespace Meiam.System.Tools
{
    class ToolsMain
    {

        static void Main(string[] args)
        {

            var allTables = new ToolsService().GetAllTables();
            foreach(var table in allTables)
            {
                Console.Write($"生成[{ table }]表 模型: ");
                Console.WriteLine(new ToolsService().CreateModels("..\\..\\..\\..\\Meiam.System.Model\\Entity", "Meiam.System.Model", table, ""));
                Console.Write($"生成[{ table }]表 服务: ");
                Console.WriteLine(new ToolsService().CreateServices("..\\..\\..\\..\\Meiam.System.Interfaces\\Service", "Meiam.System.Interfaces", table));
                Console.Write($"生成[{ table }]表 接口: ");
                Console.WriteLine(new ToolsService().CreateIServices("..\\..\\..\\..\\Meiam.System.Interfaces\\IService", "Meiam.System.Interfaces", table));
            }

            Console.Write($"生成DbContext: ");
            Console.WriteLine(new ToolsService().CreateDbContext("..\\..\\..\\..\\Meiam.System.Core\\DbContext.cs", "Meiam.System.Core"));
            Console.ReadKey();
        }
    }
}
