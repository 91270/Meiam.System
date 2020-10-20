/*
* ==============================================================================
*
* FileName: RolesDto.cs
* Created: 2020/5/29 10:45:49
* Author: Meiam
* Description: 
*
* ==============================================================================
*/
using System.ComponentModel.DataAnnotations;

namespace Meiam.System.Model.Dto
{

    /// <summary>
    /// 查询角色定义
    /// </summary>
    public class RolesQueryDto : PageParm
    {

        /// <summary>
        /// 描述 : 角色定义 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "角色定义")]
        public string Name { get; set; }

    }

    /// <summary>
    /// 添加角色定义
    /// </summary>
    public class RolesCreateDto
    {

        /// <summary>
        /// 描述 : 角色定义 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "角色定义")]
        [Required(ErrorMessage = "请填写角色定义命名规则（RRIV_功能_操作）")]
        public string Name { get; set; }

        /// <summary>
        /// 描述 : 备注 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "备注")]
        public string Remark { get; set; }
    }

    /// <summary>
    /// 更新角色定义
    /// </summary>
    public class RolesUpdateDto
    {
        /// <summary>
        /// 描述 : UUID 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "UUID")]
        [Required(ErrorMessage = "更新角色定义不能为空")]
        public string ID { get; set; }

        /// <summary>
        /// 描述 : 角色定义 
        /// 空值 : False
        /// 默认 : 
        /// </summary>
        [Display(Name = "角色定义")]
        [Required(ErrorMessage = "请填写角色定义命名规则（RRIV_功能_操作）")]
        public string Name { get; set; }

        /// <summary>
        /// 描述 : 备注 
        /// 空值 : True
        /// 默认 : 
        /// </summary>
        [Display(Name = "备注")]
        public string Remark { get; set; }
    }


}
