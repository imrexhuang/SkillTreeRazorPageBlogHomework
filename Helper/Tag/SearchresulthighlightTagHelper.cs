using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Routing;
using Microsoft.AspNetCore.Razor.TagHelpers;

// 參考 https://docs.microsoft.com/zh-tw/aspnet/core/mvc/views/tag-helpers/authoring?view=aspnetcore-3.1
// https://whosnailaspnetcoredocs.readthedocs.io/ko/latest/mvc/views/tag-helpers/authoring.html#a-working-email-tag-helper

namespace SkillTreeRazorPageBlogSample.Helper.Tag
{
    public class SearchresulthighlightTagHelper : TagHelper
    {
        public string SearchString { get; set; }
        public string ArticleBody { get; set; }

        public override async Task ProcessAsync(TagHelperContext context, TagHelperOutput output)
        {
            // TODO: 將搜尋結果關鍵字套css高亮度顯示，尚未完成功能
            output.TagName = "p";
            var content = await output.GetChildContentAsync();
            //if (string.IsNullOrWhiteSpace(content.GetContent()) == false)
            //{
                var sb = new StringBuilder();

                sb.Append("SearchresulthighlightTagHelper測試" + ArticleBody);


                output.Content.SetHtmlContent(sb.ToString());

                //output.TagMode = TagMode.StartTagAndEndTag;
            //}
        }
    }
}