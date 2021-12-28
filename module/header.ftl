<div class="header">
    <div class="title">
        <a href="${blog_url!}"><span>无尽光芒</span></a>
    </div>
    <div class="description">
        <p>${settings.sub_title!'the site subtitle'}</p>
        <div class="socials">
            <#if settings.github??>
                <a href="${settings.github}" title="github" target="_blank"><i class="ri-github-line"></i></a>
            </#if>
            <#if settings.wechat??>
                <a href="${settings.wechat}" title="wechat" target="_blank"><i class="ri-wechat-line"></i></a>
            </#if>
            <#if settings.bilibili??>
                <a href="${settings.bilibili}" title="bilibili" target="_blank"><i class="ri-bilibili-line"></i></a>
            </#if>
            <#if settings.mail??>
                <a href="mailto:${settings.mail}" title="mail" target="_blank"><i class="ri-mail-line"></i></a>
            </#if>
            <a href="/rss.xml" type="application/rss+xml" title="rss" target="_blank"><i class="ri-rss-line"></i></a>
        </div>
    </div>
</div>