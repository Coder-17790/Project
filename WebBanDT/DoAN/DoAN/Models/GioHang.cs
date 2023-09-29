using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace DoAN.Models
{
    public class GioHang
    {
        [Key]
        public int Soluong { get; set; }
        public int IdSP { get; set; }
        public virtual Sanpham Sanpham { get; set; }


    }
}