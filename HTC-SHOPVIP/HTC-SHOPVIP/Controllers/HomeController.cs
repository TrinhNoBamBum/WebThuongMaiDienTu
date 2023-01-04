using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace HTC_SHOPVIP.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        public ActionResult LoginView(string tb, string tb1, string tb2)
        {
            ViewBag.tb1 = tb1;
            ViewBag.tb2 = tb2;
            ViewBag.tb = tb;
            return View();
        }

        public ActionResult Login(string tendangnhap, string matkhau)
        {
            ViewBag.tb = "Tên tài khoản hoặc mật khẩu không đúng !";
            using (var con = new Model1())
            {
                var tkmk = (from s in con.Khachhangs
                            select s).ToList();

                foreach (var item in tkmk)
                {

                    if (item.username.ToLower().Trim() == tendangnhap.ToLower().Trim() && item.matkhau.ToLower().Trim() == matkhau.ToLower().Trim())
                    {

                        var kh = (from s in con.Khachhangs
                                  where s.username.ToLower().Trim() == tendangnhap.ToLower().Trim() && s.matkhau.ToLower().Trim() == matkhau.ToLower().Trim()
                                  select s).FirstOrDefault();
                        Session["khachhang"] = kh;
                        return RedirectToAction("Index", "Home");

                    }


                }
                return RedirectToAction("LoginView", "Home", new { tb = "Tên đăng nhập hoặc tài khoản sai rồi bạn ơi" });

            }

        }

        public ActionResult DangKy(string hoten, string username, string pass, string repass, string sodt, string diachi, DateTime ngaysinh, string email)
        {
            var khachh = new Khachhang();
            var taikhoan = new TaiKhoan();
            khachh.username = username;
            khachh.ngaysinh = ngaysinh;
            khachh.Hoten = hoten;
            khachh.matkhau = pass;
            khachh.diachi = diachi;
            khachh.email = email;
            khachh.sdt = sodt;
            taikhoan.tk = username;
            taikhoan.mk = pass;
            taikhoan.isBuyer = true;
            taikhoan.isSeller = false;

            using (var con = new Model1())
            {
                int dem = (from s in con.Khachhangs
                           where s.username.Trim().ToLower() == username.Trim().ToLower()
                           select s).Count();
                if (hoten == "" || username == "" || ngaysinh == null || pass == "" || repass == "" || diachi == "" || email == "" || sodt == "")
                {
                    return RedirectToAction("LoginView", "Home", new { tb1 = "Thông tin bắt buộc không được để trống" });
                }
                else if (pass != repass)
                {
                    return RedirectToAction("LoginView", "Home", new { tb1 = "Thông tin không chính xác" });
                }
                else if (dem > 0)
                {
                    return RedirectToAction("LoginView", "Home", new { tb1 = "Tên đăng nhập đã tồn tại" });
                }
                else
                {
                    con.Khachhangs.Add(khachh);
                    con.SaveChanges();
                    con.TaiKhoans.Add(taikhoan);
                    con.SaveChanges();

                    return RedirectToAction("LoginView", "Home", new { tb2 = "Đăng ký thành công" });
                }

            }

        }

    }
}