/*
* ==============================================================================
*
* FileName: Task01.cs
* Created: 2020/7/23 13:08:50
* Author: Meiam
* Description: 
*
* ==============================================================================
*/
using Meiam.System.Interfaces;
using System;
using System.Collections.Generic;
using System.Text;

namespace Meiam.System.Tools.Tasks
{
    public class Task001
    {

        public static void Execute()
        {
            var allTables = new ToolsService().GetAllTables();

            var solutionName = "Meiam.System";

            foreach (var table in allTables)
            {
                Console.Write($"生成[{ table }]表 模型: ");
                Console.WriteLine(new ToolsService().CreateModels($"..\\..\\..\\..\\{ solutionName }.Model\\Entity",  solutionName , table, ""));
                Console.Write($"生成[{ table }]表 服务: ");
                Console.WriteLine(new ToolsService().CreateServices($"..\\..\\..\\..\\{ solutionName }.Interfaces\\Service", solutionName , table));
                Console.Write($"生成[{ table }]表 接口: ");
                Console.WriteLine(new ToolsService().CreateIServices($"..\\..\\..\\..\\{ solutionName }.Interfaces\\IService", solutionName, table));
            }

            //Console.Write($"生成DbContext: ");
            //Console.WriteLine(new ToolsService().CreateDbContext($"..\\..\\..\\..\\{ solutionName }.Core\\DbContext.cs", solutionName));
        }
    }
}
