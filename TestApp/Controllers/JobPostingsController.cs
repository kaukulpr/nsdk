using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using CapModel;

namespace TestApp.Controllers
{
    public class JobPostingsController : Controller
    {
        private Model1Container db = new Model1Container();

        // GET: JobPostings
        public ActionResult Index()
        {
            var jobPostings = db.JobPostings.Include(j => j.Company).Include(j => j.Recruiter);
            return View(jobPostings.ToList());
        }


        // GET: JobPostings/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            JobPosting jobPosting = db.JobPostings.Find(id);
            if (jobPosting == null)
            {
                return HttpNotFound();
            }
            return View(jobPosting);
        }


        // GET: JobPostings/Create
        public ActionResult Create()
        {
            ViewBag.CompanyCompId = new SelectList(db.Companies, "CompId", "CompName");
            ViewBag.RecruiterRecId = new SelectList(db.Recruiters, "RecId", "Department");
            return View();
        }

        // POST: JobPostings/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "JobPostId,JobTitle,JobType,PostStartDate,PostEndDate,NumPositions,JobLevel,JobCompensation,Description,JobReq,JobDuties,CompanyCompId,RecruiterRecId,JobVisible")] JobPosting jobPosting)
        {
            if (ModelState.IsValid)
            {
                db.JobPostings.Add(jobPosting);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.CompanyCompId = new SelectList(db.Companies, "CompId", "CompName", jobPosting.CompanyCompId);
            ViewBag.RecruiterRecId = new SelectList(db.Recruiters, "RecId", "Department", jobPosting.RecruiterRecId);
            return View(jobPosting);
        }


        // GET: JobPostings/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            JobPosting jobPosting = db.JobPostings.Find(id);
            if (jobPosting == null)
            {
                return HttpNotFound();
            }
            ViewBag.CompanyCompId = new SelectList(db.Companies, "CompId", "CompName", jobPosting.CompanyCompId);
            ViewBag.RecruiterRecId = new SelectList(db.Recruiters, "RecId", "Department", jobPosting.RecruiterRecId);
            return View(jobPosting);
        }


        // POST: JobPostings/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "JobPostId,JobTitle,JobType,PostStartDate,PostEndDate,NumPositions,JobLevel,JobCompensation,Description,JobReq,JobDuties,CompanyCompId,RecruiterRecId,JobVisible")] JobPosting jobPosting)
        {
            if (ModelState.IsValid)
            {
                db.Entry(jobPosting).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.CompanyCompId = new SelectList(db.Companies, "CompId", "CompName", jobPosting.CompanyCompId);
            ViewBag.RecruiterRecId = new SelectList(db.Recruiters, "RecId", "Department", jobPosting.RecruiterRecId);
            return View(jobPosting);
        }

        // GET: JobPostings/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            JobPosting jobPosting = db.JobPostings.Find(id);
            if (jobPosting == null)
            {
                return HttpNotFound();
            }
            return View(jobPosting);
        }


        // POST: JobPostings/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            JobPosting jobPosting = db.JobPostings.Find(id);
            db.JobPostings.Remove(jobPosting);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
