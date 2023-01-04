namespace HTC_SHOPVIP
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Khachhang")]
    public partial class Khachhang
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Khachhang()
        {
            DonHangs = new HashSet<DonHang>();
            SP_Danhgia = new HashSet<SP_Danhgia>();
            khuyenmais = new HashSet<khuyenmai>();
        }

        [Key]
        public int MaKH { get; set; }

        [StringLength(50)]
        public string Hoten { get; set; }

        [StringLength(50)]
        public string username { get; set; }

        [StringLength(50)]
        public string matkhau { get; set; }

        [StringLength(10)]
        public string sdt { get; set; }

        [StringLength(100)]
        public string diachi { get; set; }

        [StringLength(50)]
        public string email { get; set; }

        [Column(TypeName = "date")]
        public DateTime? ngaysinh { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DonHang> DonHangs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SP_Danhgia> SP_Danhgia { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<khuyenmai> khuyenmais { get; set; }
    }
}
