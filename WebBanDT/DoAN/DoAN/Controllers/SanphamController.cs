using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DoAN.Models;

namespace DoAN.Controllers
{
    public class SanphamController : Controller
    {
        //
         List<Sanpham> gioHang = new List<Sanpham>();
        public ActionResult Index(string sort = "", int page = 1, string search = "")
        {
            CompanyDB db = new CompanyDB();
            //List<Sanpham> sp = db.Sanpham.ToList();

            List<Sanpham> sp = db.Sanpham.Where(row => row.Name.Contains(search)).ToList();
            ViewBag.Search = search;

            switch (sort)
            {
                case "up":
                    sp = sp.OrderBy(row => row.Gia).ToList();
                    break;
                case "down":
                    sp = sp.OrderByDescending(row => row.Gia).ToList();
                    break;
                default:
                    break;
            }

            int NoOfRecordRerPage = 12;
            int NoOfPages = Convert.ToInt32(Math.Ceiling(Convert.ToDouble(sp.Count) / Convert.ToDouble(NoOfRecordRerPage)));

            int NoOfRecordToSkip = (page - 1) * NoOfRecordRerPage;
            ViewBag.Page = page;
            ViewBag.NoOfPages = NoOfPages;
            sp = sp.Skip(NoOfRecordToSkip).Take(NoOfRecordRerPage).ToList();
            return View(sp);
        }

        public ActionResult Detail(int SPId)
        {
            CompanyDB db = new CompanyDB();

            Sanpham sp = db.Sanpham.Where(row => row.IdSP == SPId).FirstOrDefault();

            return View(sp);
        }


        public ActionResult PhanLoai(string sort = "", int page = 1, string search = "")
        {
            CompanyDB db = new CompanyDB();
            //List<Sanpham> sp = db.Sanpham.ToList();

            List<Sanpham> sp = db.Sanpham.Where(row => row.Name.Contains(search)).ToList();
            ViewBag.Search = search;

            switch (sort)
            {
                case "up":
                    sp = sp.OrderBy(row => row.Gia).ToList();
                    break;
                case "down":
                    sp = sp.OrderByDescending(row => row.Gia).ToList();
                    break;
                default:
                    break;
            }

            int NoOfRecordRerPage = 12;
            int NoOfPages = Convert.ToInt32(Math.Ceiling(Convert.ToDouble(sp.Count) / Convert.ToDouble(NoOfRecordRerPage)));

            int NoOfRecordToSkip = (page - 1) * NoOfRecordRerPage;
            ViewBag.Page = page;
            ViewBag.NoOfPages = NoOfPages;
            sp = sp.Skip(NoOfRecordToSkip).Take(NoOfRecordRerPage).ToList();
            return View(sp);
        }

        public ActionResult CapNhatGioHang(int SPId)
        {
            CompanyDB db = new CompanyDB();
            Sanpham sp = db.Sanpham.Where(row => row.IdSP == SPId).FirstOrDefault();
            gioHang.Add(sp);
            return RedirectToAction("Index");
        }

        public ActionResult GioHang()
        {
            return View(gioHang);
        }

    }
}