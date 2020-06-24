/*
* ==============================================================================
*
* FileName: ITaskSchedulerServer.cs
* Created: 2020/6/17 13:43:08
* Author: Meiam
* Description: 
*
* ==============================================================================
*/
using Meiam.System.Model;
using System.Threading.Tasks;

namespace Meiam.System.Tasks
{
    public interface ITaskSchedulerServer
	{
		Task<ApiResult<string>> StartTaskScheduleAsync();

		Task<ApiResult<string>> StopTaskScheduleAsync();

		Task<ApiResult<string>> AddTaskScheduleAsync(Sys_TasksQz tasksQz);

		Task<ApiResult<string>> PauseTaskScheduleAsync(Sys_TasksQz tasksQz);

		Task<ApiResult<string>> ResumeTaskScheduleAsync(Sys_TasksQz tasksQz);

		Task<ApiResult<string>> DeleteTaskScheduleAsync(Sys_TasksQz tasksQz);
	}
}
