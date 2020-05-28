using Microsoft.AspNetCore.Html; //.net MVC的MvcHtmlString要改成Microsoft.AspNetCore.Html.HtmlString 
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.AspNetCore.Mvc.ViewFeatures;
using Microsoft.AspNetCore.Routing;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SkillTreeRazorPageBlogSample.Helper
{
    /// <summary>
    /// 權限限制的 ActionLink 擴充方法
    /// </summary>
    public static class AuthLinkHelper
    {

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
