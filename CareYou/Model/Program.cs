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
    
    public partial class Program
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Program()
        {
            this.ProgramChanges = new HashSet<ProgramChanx>();
            this.ReportedPrograms = new HashSet<ReportedProgram>();
            this.Transactions = new HashSet<Transaction>();
        }
    
        public int ProgramID { get; set; }
        public int FundraiserID { get; set; }
        public string ProgramTitle { get; set; }
        public string ProgramDesc { get; set; }
        public string ProgramStatus { get; set; }
        public string ProgramTopic { get; set; }
        public string FundraiserName { get; set; }
        public string BeneficiaryName { get; set; }
        public string ProgramType { get; set; }
        public string ProgramLoc { get; set; }
        public int ProgramTarget { get; set; }
        public int ProgramRaised { get; set; }
        public string ProgramImage { get; set; }
        public System.DateTime StartDate { get; set; }
        public System.DateTime EndDate { get; set; }
        public bool Verified { get; set; }
        public int Withdrawn { get; set; }
        public string FundraiserNationalID { get; set; }
        public Nullable<int> VerifiedBy { get; set; }
    
        public virtual User User { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ProgramChanx> ProgramChanges { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ReportedProgram> ReportedPrograms { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Transaction> Transactions { get; set; }
        public virtual Admin Admin { get; set; }
    }
}
