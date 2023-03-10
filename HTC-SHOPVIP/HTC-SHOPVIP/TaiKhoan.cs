namespace HTC_SHOPVIP
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TaiKhoan")]
    public partial class TaiKhoan
    {
        [Key]
        [StringLength(50)]
        public string tk { get; set; }

        [StringLength(50)]
        public string mk { get; set; }

        public bool? isBuyer { get; set; }

        public bool? isSeller { get; set; }
    }
}
