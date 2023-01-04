namespace HTC_SHOPVIP
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("NguoiBan")]
    public partial class NguoiBan
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public NguoiBan()
        {
            khuyenmais = new HashSet<khuyenmai>();
            Sanphams = new HashSet<Sanpham>();
        }

        [Key]
        public int MaNguoiBan { get; set; }

        [StringLength(100)]
        public string HoTen { get; set; }

        [StringLength(100)]
        public string SDT { get; set; }

        [StringLength(500)]
        public string DiaChi { get; set; }

        [StringLength(100)]
        public string Email { get; set; }

        [StringLength(100)]
        public string taikhoan { get; set; }

        [StringLength(100)]
        public string matkhau { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<khuyenmai> khuyenmais { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Sanpham> Sanphams { get; set; }
    }
}
