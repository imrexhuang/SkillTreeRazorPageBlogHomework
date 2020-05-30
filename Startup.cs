using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc.Infrastructure;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using SkillTreeRazorPageBlogSample.Data;
using SkillTreeRazorPageBlogSample.Extensions;
using Westwind.AspNetCore.Markdown;

namespace SkillTreeRazorPageBlogSample
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {


            services.AddRazorPages();

            services.AddDbContext<RazorpageblogContext>(
                options =>
                    options.UseSqlServer(
                        Configuration
                            .GetConnectionString("DefaultConnection")));

            services.AddDbContext<RazorpageblogIdentityDbContext>(
                options =>
                    options.UseSqlServer(
                        Configuration
                            .GetConnectionString("DefaultConnection")));

            //https://stackoverflow.com/questions/40785813/asp-net-iservicecollection-addidentity-not-found
            services.AddIdentity<IdentityUser, IdentityRole>(options =>
                {
                    options.Password.RequireDigit = false;
                    options.Password.RequiredLength = 6;
                })
                .AddEntityFrameworkStores<RazorpageblogIdentityDbContext>()
                .AddDefaultTokenProviders();

            //要註冊(TagsHelper使用到的)
            services.AddSingleton<IActionContextAccessor, ActionContextAccessor>();

            //https://www.cnblogs.com/linezero/p/6801602.html
            //https://docs.microsoft.com/zh-tw/aspnet/core/migration/claimsprincipal-current?view=aspnetcore-3.1
            //https://docs.microsoft.com/zh-tw/aspnet/core/fundamentals/http-context?view=aspnetcore-3.1
            services.AddSingleton<IHttpContextAccessor, HttpContextAccessor>();


            //https://www.codemag.com/Article/1811071/Marking-up-the-Web-with-ASP.NET-Core-and-Markdown
            services.AddMarkdown(config =>
            {
                config.AddMarkdownProcessingFolder(
                    "/posts/",
                    "~/Pages/_MarkdownPageTemplate.cshtml");
            });
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseExceptionHandler("/Error");
                // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
                app.UseHsts();
            }

            app.UseHttpsRedirection();
            app.UseStaticFiles();

            app.UseRouting();

            app.UseAuthentication();
            app.UseAuthorization();

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapRazorPages();
            });

            //https://www.codemag.com/Article/1811071/Marking-up-the-Web-with-ASP.NET-Core-and-Markdown
            app.UseMarkdown();

            //https://www.cnblogs.com/linezero/p/6801602.html
            app.UseStaticHttpContext();

        }
    }
}
