/*
* ==============================================================================
*
* FileName: AuthorizeVM.cs
* Created: 2020/6/11 13:43:40
* Author: Meiam
* Description: 
*
* ==============================================================================
*/
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace Meiam.System.Model.View
{
    public class RelationTreeVM
    {
        [Display(Name = "UUID")]
        public string ID { get; set; }

        [Display(Name = "编码")]
        public string RelationNo { get; set; }

        [Display(Name = "名称")]
        public string RelationName { get; set; }

        [Display(Name = "类型")]
        public string RelationType { get; set; }

        [Display(Name = "父级ID")]
        public string ParentUID { get; set; }

        [Display(Name = "备注")]
        public string Remark { get; set; }

        [Display(Name = "是否具有权限")]
        public bool HasRelation { get; set; }

        [Display(Name = "子列表")]
        public List<RelationTreeVM> Children { get; set; }
    }
}
