using Markdig.Parsers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Westwind.AspNetCore.Markdown;

// https://weblog.west-wind.com/posts/2018/mar/23/creating-an-aspnet-core-markdown-taghelper-and-parser

namespace SkillTreeRazorPageBlogSample.Helper.Markdown
{
    public static class MarkdownParserFactory
    {
        /// <summary>
        /// Use a cached instance of the Markdown Parser to keep alive
        /// </summary>
        static IMarkdownParser CurrentParser;

        /// <summary>
        /// Retrieves a cached instance of the markdown parser
        /// </summary>                
        /// <param name="forceLoad">Forces the parser to be reloaded - otherwise previously loaded instance is used</param>
        /// <param name="usePragmaLines">If true adds pragma line ids into the document that the editor can sync to</param>
        /// <returns>Mardown Parser Interface</returns>
        public static IMarkdownParser GetParser(bool usePragmaLines = false,
            bool forceLoad = false)
        {
            if (!forceLoad && CurrentParser != null)
                return CurrentParser;

            CurrentParser = new MarkdownParserMarkdig(usePragmaLines, forceLoad);

            return CurrentParser;
        }
    }
}
