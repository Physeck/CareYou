//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CareYou.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Transaction
    {
        public int TransactionID { get; set; }
        public int UserID { get; set; }
        public System.DateTime TransactionDate { get; set; }
        public int Amount { get; set; }
        public int ProgramID { get; set; }
        public string TransactionType { get; set; }
    
        public virtual Donation Donation { get; set; }
        public virtual User User { get; set; }
        public virtual Donation Donation { get; set; }
    }
}
