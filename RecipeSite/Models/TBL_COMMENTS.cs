//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace RecipeSite.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class TBL_COMMENTS
    {
        public short ID { get; set; }
        public string NAME { get; set; }
        public string MAIL { get; set; }
        public Nullable<System.DateTime> DATE { get; set; }
        public Nullable<bool> CONFIRMATION { get; set; }
        public string COMMENT { get; set; }
        public Nullable<short> RECIPEID { get; set; }
    
        public virtual TBL_FOODS TBL_FOODS { get; set; }
    }
}