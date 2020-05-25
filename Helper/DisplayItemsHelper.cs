using Microsoft.AspNetCore.Html; //.net MVC的MvcHtmlString要改成Microsoft.AspNetCore.Html.HtmlString 
using Microsoft.AspNetCore.Mvc.ViewFeatures;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace SkillTreeRazorPageBlogSample.Helper
{
    public static class DisplayItemsHelper
    {
        public static HtmlString DisplayItemsStatus(this HtmlHelper htmlHelper, string status)
        {
            var rtnString = "";
            if (status == "00")
            {
                rtnString = "成功";
            }
            else
            {
                rtnString = "失敗";
            }
            //return new MvcHtmlString(rtnString); //.NET MVC 寫法
            return new HtmlString(rtnString); //.NET Core寫法
        }
    }
}
