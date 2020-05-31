using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Routing;
using Microsoft.AspNetCore.Razor.TagHelpers;

// 參考 https://docs.microsoft.com/zh-tw/aspnet/core/mvc/views/tag-helpers/authoring?view=aspnetcore-3.1

namespace SkillTreeRazorPageBlogSample.Helper.Tag
{
    public class SearchresulthighlightTagHelper : TagHelper
    {
        public String searchString { get; set; }
        public String articleBody { get; set; }

        public override async Task ProcessAsync(TagHelperContext context, TagHelperOutput output)
        {
            // TODO: 將搜尋結果關鍵字套css高亮度顯示，尚未完成功能
            output.TagName = "p";
            var content = await output.GetChildContentAsync();
            if (string.IsNullOrWhiteSpace(content.GetContent()) == false)
            {
                var sb = new StringBuilder();

                sb.Append(articleBody);


                output.Content.SetHtmlContent(sb.ToString());
            }
        }
    }
}