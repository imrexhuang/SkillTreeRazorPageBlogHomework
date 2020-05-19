using Microsoft.AspNetCore.Mvc.Routing;
using Microsoft.AspNetCore.Razor.TagHelpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Infrastructure;

// 這個不會寫，抄老師的

namespace SkillTreeRazorPageBlogSample.Helper.Tag
{
    public class TagsHelper : TagHelper
    {
        private IUrlHelperFactory UrlHelperFactory { get; }
        private IActionContextAccessor Accessor { get; }
        public TagsHelper(IUrlHelperFactory urlHelperFactory, IActionContextAccessor accessor)
        {
            UrlHelperFactory = urlHelperFactory;
            Accessor = accessor;
        }
        /// <summary>
        /// Asynchronously executes the <see cref="T:Microsoft.AspNetCore.Razor.TagHelpers.TagHelper" /> with the given <paramref name="context" /> and
        /// <paramref name="output" />.
        /// </summary>
        /// <param name="context">Contains information associated with the current HTML tag.</param>
        /// <param name="output">A stateful HTML element used to generate an HTML tag.</param>
        /// <returns>A <see cref="T:System.Threading.Tasks.Task" /> that on completion updates the <paramref name="output" />.</returns>
        /// <remarks>By default this calls into <see cref="M:Microsoft.AspNetCore.Razor.TagHelpers.TagHelper.Process(Microsoft.AspNetCore.Razor.TagHelpers.TagHelperContext,Microsoft.AspNetCore.Razor.TagHelpers.TagHelperOutput)" />.</remarks>
        /// .
        public override async Task ProcessAsync(TagHelperContext context, TagHelperOutput output)
        {
            var actionContext = Accessor.ActionContext;
            var urlHelper = UrlHelperFactory.GetUrlHelper(actionContext);
            output.TagName = "ul";
            var content = await output.GetChildContentAsync();
            if (string.IsNullOrWhiteSpace(content.GetContent()) == false)
            {
                var tags = content.GetContent().Split(new[] { ',' }, StringSplitOptions.RemoveEmptyEntries);
                var sb = new StringBuilder();
                foreach (var tag in tags)
                {
                    sb.AppendFormat("<li class='d-inline p-1'><a href='{0}' class='btn btn-success'>{1}</a></li>",
                                    urlHelper.Page("index", "tag", new { tag = tag }), tag);
                }

                output.Content.SetHtmlContent(sb.ToString());
            }
        }
    }
}
