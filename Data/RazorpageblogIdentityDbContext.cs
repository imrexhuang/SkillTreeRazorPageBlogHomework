using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace SkillTreeRazorPageBlogSample.Data
{
    public class RazorpageblogIdentityDbContext : IdentityDbContext
    {
        public RazorpageblogIdentityDbContext(DbContextOptions<RazorpageblogIdentityDbContext> options)
            : base(options)
        {
        }

        //自定義Table名稱
        //https://andrewlock.net/customising-asp-net-core-identity-ef-core-naming-conventions-for-postgresql/
        //protected override void OnModelCreating(ModelBuilder builder)
        //{
        //    base.OnModelCreating(builder);

        //    builder.Entity<TUser>(b =>
        //    {
        //        b.HasKey(u => u.Id);
        //        b.HasIndex(u => u.NormalizedUserName).HasName("user_name_index").IsUnique();
        //        b.HasIndex(u => u.NormalizedEmail).HasName("email_index");
        //        b.ToTable("asp_net_users");
        //    }
        //    // additional configuration
        //}
    }
}
