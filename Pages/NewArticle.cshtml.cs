using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using SkillTreeRazorPageBlogSample.Data;
using SkillTreeRazorPageBlogSample.Models;

namespace SkillTreeRazorPageBlogSample.Pages
{
    [Authorize]
    public class NewArticleModel : PageModel
    {
        private readonly SkillTreeRazorPageBlogSample.Data.RazorpageblogContext _context;

        public NewArticleModel(SkillTreeRazorPageBlogSample.Data.RazorpageblogContext context)
        {
            _context = context;
        }

        public IActionResult OnGet()
        {
            return Page();
        }

        [BindProperty]
        public Article Article { get; set; }

        // To protect from overposting attacks, please enable the specific properties you want to bind to, for
        // more details see https://aka.ms/RazorPagesCRUD.
        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
            {
                return Page();
            }

            //Scaffold之後，這行要自己加
            Article.Id = Guid.NewGuid();
            Article.CreateDate = DateTime.Now;

            _context.Articles.Add(Article);
            await _context.SaveChangesAsync();

            return RedirectToPage("./Index");
        }
    }
}
