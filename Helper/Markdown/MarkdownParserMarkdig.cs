using Markdig;
using Markdig.Extensions.AutoIdentifiers;
using Markdig.Renderers;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Westwind.AspNetCore.Markdown;

// https://weblog.west-wind.com/posts/2018/mar/23/creating-an-aspnet-core-markdown-taghelper-and-parser
// https://github.com/RickStrahl/Westwind.Web.Markdown/blob/master/Westwind.Web.Markdown/MarkdownParser/MarkdownParserMarkDig.cs

namespace SkillTreeRazorPageBlogSample.Helper.Markdown
{
    /// <summary>
    /// Wrapper around the MarkDig parser that provides a cached
    /// instance of the Markdown parser. Hooks up custom processing.
    /// </summary>
    public class MarkdownParserMarkdig : MarkdownParserBase
    {
        public static MarkdownPipeline Pipeline;

        private readonly bool _usePragmaLines;

        public MarkdownParserMarkdig(bool usePragmaLines = false, bool force = false, Action<MarkdownPipelineBuilder> markdigConfiguration = null)
        {
            _usePragmaLines = usePragmaLines;
            if (force || Pipeline == null)
            {
                var builder = CreatePipelineBuilder(markdigConfiguration);
                Pipeline = builder.Build();
            }
        }

        /// <summary>
        /// Parses the actual markdown down to html
        /// </summary>
        /// <param name="markdown"></param>
        /// <returns></returns>        
        public override string Parse(string markdown ,bool sanitizehtml = true)
        {
            if (string.IsNullOrEmpty(markdown))
                return string.Empty;

            var htmlWriter = new StringWriter();
            var renderer = CreateRenderer(htmlWriter);

            Markdig.Markdown.Convert(markdown, renderer, Pipeline);

            var html = htmlWriter.ToString();

            html = ParseFontAwesomeIcons(html);

            //if (!mmApp.Configuration.MarkdownOptions.AllowRenderScriptTags)
            //html = ParseScript(html);

            return html;
        }

        public virtual MarkdownPipelineBuilder CreatePipelineBuilder(Action<MarkdownPipelineBuilder> markdigConfiguration)
        {
            MarkdownPipelineBuilder builder = null;

            // build it explicitly
            if (markdigConfiguration == null)
            {
                builder = new MarkdownPipelineBuilder()
                    .UseEmphasisExtras()
                    .UsePipeTables()
                    .UseGridTables()
                    .UseFooters()
                    .UseFootnotes()
                    .UseCitations()
                    .UseAutoLinks() // URLs are parsed into anchors
                    .UseAutoIdentifiers(AutoIdentifierOptions.GitHub) // Headers get id="name" 
                    .UseAbbreviations()
                    .UseYamlFrontMatter()
                    .UseEmojiAndSmiley(true)
                    .UseMediaLinks()
                    .UseListExtras()
                    .UseFigures()
                    .UseTaskLists()
                    .UseCustomContainers()
                    .UseGenericAttributes();

                //builder = builder.UseSmartyPants();            

                if (_usePragmaLines)
                    builder = builder.UsePragmaLines();

                return builder;
            }


            // let the passed in action configure the builder
            builder = new MarkdownPipelineBuilder();
            markdigConfiguration.Invoke(builder);

            if (_usePragmaLines)
                builder = builder.UsePragmaLines();

            return builder;
        }

        protected virtual IMarkdownRenderer CreateRenderer(TextWriter writer)
        {
            return new HtmlRenderer(writer);
        }
    }

}

