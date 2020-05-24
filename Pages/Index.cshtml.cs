using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.Extensions.Logging;
using SkillTreeRazorPageBlogSample.Models;
using SkillTreeRazorPageBlogSample.Data;

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

        public void OnGet()
        {
            Article = _context.Articles
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
                    .ToList();
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
