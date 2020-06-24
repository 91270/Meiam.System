/*
* ==============================================================================
*
* FileName: AuthorizeDto.cs
* Created: 2020/6/13 10:46:40
* Author: Meiam
* Description: 
*
* ==============================================================================
*/
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Meiam.System.Model.Dto
{
    public class UpdateUserRelationDto
    {
        [Required(ErrorMessage = "用户编码不能为空")]
        [Display(Name = "用户编码")]
        public string UserID { get; set; }

        [Display(Name = "用户权限")]
        public List<UserRelationDto> Relation { get; set; }
    }

    public class UserRelationDto
    {
        [Display(Name = "数据权限ID")]
        public string ObjectID { get; set; }

        [Display(Name = "数据权限类型")]
        public string ObjectType { get; set; }
    }
}
