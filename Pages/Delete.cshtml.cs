using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using SkillTreeRazorPageBlogSample.Data;
using SkillTreeRazorPageBlogSample.Models;

namespace SkillTreeRazorPageBlogSample.Pages
{
    public class DeleteModel : PageModel
    {
        private readonly SkillTreeRazorPageBlogSample.Data.RazorpageblogContext _context;

        public DeleteModel(SkillTreeRazorPageBlogSample.Data.RazorpageblogContext context)
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

        public async Task<IActionResult> OnPostAsync(Guid? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            Article = await _context.Articles.FindAsync(id);

            if (Article != null)
            {
                _context.Articles.Remove(Article);
                await _context.SaveChangesAsync();
            }

            return RedirectToPage("./Index");
        }
    }
}
