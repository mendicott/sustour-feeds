<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:atom="http://www.w3.org/2005/Atom">
  <xsl:output method="html" encoding="UTF-8" indent="yes"
              doctype-system="about:legacy-compat"/>
  <xsl:template match="/">
    <html lang="en">
      <head>
        <meta charset="utf-8"/>
        <title><xsl:value-of select="/rss/channel/title"/></title>
        <meta name="viewport" content="width=device-width,initial-scale=1"/>
        <style>
          :root { color-scheme: light dark; }
          body { font-family: system-ui, -apple-system, "Segoe UI", sans-serif;
                 max-width: 780px; margin: 2rem auto; padding: 0 1rem;
                 line-height: 1.55; }
          h1 { margin-bottom: .25rem; }
          .meta { color: #666; font-size: .9rem; margin-bottom: 2rem; }
          .meta a { color: inherit; }
          .notice { background: #fff8d6; border-left: 4px solid #e0c000;
                    padding: .6rem .9rem; font-size: .9rem;
                    margin: 1rem 0 2rem; border-radius: 4px; }
          @media (prefers-color-scheme: dark) {
            .notice { background: #2a2410; border-left-color: #b08800; }
          }
          .item { padding: 1rem 0; border-top: 1px solid #ddd; }
          .item:last-child { border-bottom: 1px solid #ddd; }
          .item h2 { font-size: 1.1rem; margin: 0 0 .35rem; }
          .item h2 a { text-decoration: none; }
          .item h2 a:hover { text-decoration: underline; }
          .date { color: #888; font-size: .85rem; }
          .snippet { margin: .35rem 0 0; color: #444; }
          @media (prefers-color-scheme: dark) { .snippet { color: #bbb; } }
        </style>
      </head>
      <body>
        <h1><xsl:value-of select="/rss/channel/title"/></h1>
        <p class="meta">
          <xsl:value-of select="/rss/channel/description"/>
        </p>
        <div class="notice">
          This is a web preview of an <strong>RSS feed</strong>.
          Subscribe in your reader using this page's URL, or browse the
          <a href="../index.html">full feed index</a>.
        </div>
        <xsl:for-each select="/rss/channel/item">
          <article class="item">
            <h2>
              <a href="{link}"><xsl:value-of select="title"/></a>
            </h2>
            <div class="date"><xsl:value-of select="pubDate"/></div>
            <p class="snippet"><xsl:value-of select="description"/></p>
          </article>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
