<div class="header">
    <div class="title">
        <a href="${blog_url!}"><span>${blog_title!}</span></a>
    </div>
    <div class="description">
        <p>${settings.sub_title!'the site subtitle'}</p>
        <div class="socials">
            <a href="\about" title="关于我" target="_blank"><i class="ri-footprint-line"></i></a>
            <#if settings.github??>
                <a href="${settings.github}" title="Github" target="_blank"><i class="ri-github-line"></i></a>
            </#if>
            <#if settings.bilibili??>
                <a href="${settings.bilibili}" title="哔哩哔哩" target="_blank"><i class="ri-bilibili-line"></i></a>
            </#if>
            <#if settings.mail??>
                <a href="mailto:${settings.mail}" title="邮箱" target="_blank"><i class="ri-mail-line"></i></a>
            </#if>
            <a href="\photos" title="摄影" target="_blank"><i class="ri-camera-line"></i></a>
            <a href="\links" title="友链" target="_blank"><i class="ri-links-line"></i></a>
            <a href="${sitemap_html_url!}" type="application/sitemap" title="站点地图" target="_blank"><i class="ri-map-2-line"></i></a>
            <a href="${rss_url!}" type="application/rss+xml" title="订阅" target="_blank"><i class="ri-rss-line"></i></a>
        </div>
    </div>
</div>