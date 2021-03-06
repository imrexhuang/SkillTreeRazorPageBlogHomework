﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.Extensions.Logging;
using SkillTreeRazorPageBlogSample.Models;
using SkillTreeRazorPageBlogSample.Data;
using X.PagedList;

namespace SkillTreeRazorPageBlogSample.Pages
{
    public class IndexModel : PageModel
    {
        private readonly RazorpageblogContext _context;
        private readonly ILogger<IndexModel> _logger;

        public IndexModel(RazorpageblogContext context, ILogger<IndexModel> logger)
        {
            _context = context;
            _logger = logger;
        }

        public IEnumerable<IndexViewClass> Article { get; set; }

        public void OnGet(int? p, string q)
        {
            int pageIndex = p.HasValue ? p.Value < 1 ? 1 : p.Value : 1;
            int articlePerPage = 5; //一頁顯示幾筆文章
            var query = _context.Articles.AsQueryable();
            var queryTitle = _context.Articles.AsQueryable();
            var queryBody = _context.Articles.AsQueryable();
            if (string.IsNullOrWhiteSpace(q) == false)
            {
                queryTitle = query.Where(d => d.Title.Contains(q));
                queryBody = query.Where(d => d.Body.Contains(q));
                query = queryTitle.Union(queryBody);
            }

            Article = query
                .Select(
                    d => new IndexViewClass
                    {
                        Id = d.Id,
                        Title = d.Title,
                        Body = d.Body,
                        CoverPhoto = d.CoverPhoto,
                        CreateDate = d.CreateDate,
                        Tags = d.Tags
                    })
                  .ToPagedList(pageIndex, articlePerPage);
        }

    }

    public class IndexViewClass
    {
        public Guid Id { get; set; }
        public string Title { get; set; }
        public string Body { get; set; }
        public string CoverPhoto { get; set; }
        public DateTime CreateDate { get; set; }
        public string Tags { get; set; }
    }

}
