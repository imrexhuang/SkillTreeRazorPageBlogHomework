using Microsoft.AspNetCore.Html; //.net MVC的MvcHtmlString要改成Microsoft.AspNetCore.Html.HtmlString 
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.AspNetCore.Mvc.ViewFeatures;
using Microsoft.AspNetCore.Routing;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;

namespace SkillTreeRazorPageBlogSample.Helper
{
    /// <summary>
    /// 權限限制的 ActionLink 擴充方法
    /// </summary>
    public static class AuthLinkHelper
    {
        /// <summary>
        /// 不區分Role，有登入就可以看到超連結
        /// </summary>
        /// <param name="htmlHelper">The HTML helper.</param>
        /// <param name="linkText">連結文字</param>
        /// <param name="asppage">連結頁面</param>
        /// <returns>MvcHtmlString.</returns>
        public static IHtmlContent ActionLinkAuthorizedLink(this IHtmlHelper htmlHelper, string linkText, string asppage)
        {
            var userId = SkillTreeRazorPageBlogSample.Extensions.HttpContext.Current.User.Identity.Name;

            if (string.IsNullOrWhiteSpace(userId) == false)
            {
                var link = new TagBuilder("a");
                link.MergeAttribute("href", asppage);
                link.InnerHtml.AppendHtml(linkText);
                return link;

            }

            return HtmlString.Empty;
        }

        /// <summary>
        /// 不區分Role，有登入就可以看到超連結
        /// </summary>
        /// <param name="htmlHelper">The HTML helper.</param>
        /// <param name="linkText">連結文字</param>
        /// <param name="asppage">連結頁面</param>
        /// <param name="cssclass">CSS Class</param>
        /// <returns>MvcHtmlString.</returns>
        public static IHtmlContent ActionLinkAuthorizedLinkWithCssClass(this IHtmlHelper htmlHelper, string linkText, string asppage, string cssclass)
        {
            var userId = SkillTreeRazorPageBlogSample.Extensions.HttpContext.Current.User.Identity.Name;

            if (string.IsNullOrWhiteSpace(userId) == false)
            {
                var link = new TagBuilder("a");
                link.MergeAttribute("href", asppage);
                link.InnerHtml.AppendHtml(linkText);
                link.AddCssClass(cssclass);
                return link;

            }

            return HtmlString.Empty;
        }

        /// <summary>
        /// 不區分Role，有登入就可以看到Edit超連結
        /// </summary>
        /// <param name="htmlHelper">The HTML helper.</param>
        /// <param name="linkText">連結文字</param>
        /// <param name="articleId">文章Id</param>
        /// <returns>MvcHtmlString.</returns>
        public static IHtmlContent ActionLinkAuthorizedEdit(this IHtmlHelper htmlHelper, string linkText, string articleId)
        {
            var userId = SkillTreeRazorPageBlogSample.Extensions.HttpContext.Current.User.Identity.Name;

            if (string.IsNullOrWhiteSpace(userId) == false)
            {
                var link = new TagBuilder("a");
                link.MergeAttribute("href", "Edit?id="+ articleId);
                link.InnerHtml.AppendHtml(linkText);
                return link;
                
            }

            return HtmlString.Empty;
        }

        /// <summary>
        /// 不區分Role，有登入就可以看到Delete超連結
        /// </summary>
        /// <param name="htmlHelper">The HTML helper.</param>
        /// <param name="linkText">連結文字</param>
        /// <param name="articleId">文章Id</param>
        /// <returns>MvcHtmlString.</returns>
        public static IHtmlContent ActionLinkAuthorizedDelete(this IHtmlHelper htmlHelper, string linkText, string articleId)
        {
            var userId = SkillTreeRazorPageBlogSample.Extensions.HttpContext.Current.User.Identity.Name;

            if (string.IsNullOrWhiteSpace(userId) == false)
            {
                var link = new TagBuilder("a");
                link.MergeAttribute("href", "Delete?id=" + articleId);
                link.InnerHtml.AppendHtml(linkText);
                return link;

            }

            return HtmlString.Empty;
        }

        /// <summary>
        /// Actions the link authorized.
        /// </summary>
        /// <param name="htmlHelper">The HTML helper.</param>
        /// <param name="linkText">連結文字</param>
        /// <param name="allowRole">允許的群組（可用逗點分隔）</param>
        /// <returns>MvcHtmlString.</returns>
        public static IHtmlContent ActionLinkAuthorized(this IHtmlHelper htmlHelper, string linkText, string allowRole)
        {

            if (string.IsNullOrWhiteSpace(allowRole) == false)
            {
                var httpcontext = SkillTreeRazorPageBlogSample.Extensions.HttpContext.Current;


                var roles = new List<string>() { allowRole };
                if (allowRole.Contains(","))
                {
                    roles = allowRole.Split(',').ToList();
                }


                if (roles.Any(role => SkillTreeRazorPageBlogSample.Extensions.HttpContext.Current.User.IsInRole(role)))
                {
                    //https://www.foreach.be/blog/create-a-custom-html-helper-in-asp-net-mvc-using-razor?lang=nl
                    //https://dotblogs.com.tw/frank/2013/05/02/102604
                    var link = new TagBuilder("a");
                    link.MergeAttribute("href", "Edit");
                    link.InnerHtml.AppendHtml(linkText);
                    return link;
                }
            }

            return HtmlString.Empty;
        }
    }

}
