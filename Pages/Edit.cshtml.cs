using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using SkillTreeRazorPageBlogSample.Data;
using SkillTreeRazorPageBlogSample.Models;

namespace SkillTreeRazorPageBlogSample.Pages
{
    public class EditModel : PageModel
    {
        private readonly SkillTreeRazorPageBlogSample.Data.RazorpageblogContext _context;

        public EditModel(SkillTreeRazorPageBlogSample.Data.RazorpageblogContext context)
        {
            _context = context;
        }

        [BindProperty]
        public Article Article { get; set; }

        public async Task<IActionResult> OnGetAsync(Guid? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Article = await _context.Articles.FirstOrDefaultAsync(m => m.Id == id);

            if (Article == null)
            {
                return NotFound();
            }
            return Page();
        }

        // To protect from overposting attacks, please enable the specific properties you want to bind to, for
        // more details see https://aka.ms/RazorPagesCRUD.
        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid)
            {
                return Page();
            }

            _context.Attach(Article).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ArticleExists(Article.Id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return RedirectToPage("./Index");
        }

        private bool ArticleExists(Guid id)
        {
            return _context.Articles.Any(e => e.Id == id);
        }
    }
}
