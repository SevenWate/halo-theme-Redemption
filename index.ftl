<#include "module/macro.ftl">
    <@layout title="${blog_title!}">
        <main>
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
            
            <#list posts.content as post>
                <div class="post">
                    <h1><a href='${post.fullPath!}'>${post.title!}</a></h1>
                        <#if settings.enable_summary!true>
                            <p>${post.summary!}......</p>
                        </#if>
                        <div class="info">
                            <span class="date">
                                <i class="ri-map-pin-time-line"></i>
                                <span>${post.createTime?string('yyyy.MM.dd')}</span>
                            </span>
                        <#if post.tags?? && post.tags?size gt 0>
                            <span class="tag">
                                <i class="ri-bookmark-3-line"></i>
                                <#list post.tags as tag>
                                <a href="${tag.fullPath!}">${tag.name!}</a>
                                </#list>
                            </span>
                        </#if>
                    </div>
                </div>
            </#list>
            
            <div class="pagenav">
                <#if posts.totalPages gt 1>
                    <@paginationTag method="index" page="${posts.number}" total="${posts.totalPages}" display="3">
                        <#if pagination.hasPrev>
                            <a href="${pagination.prevPageFullPath!}" class="pre">
                                返回上页
                            </a>
                        </#if>
                        <#if pagination.hasNext>
                            <a href="${pagination.nextPageFullPath!}" class="next">
                                更多文章
                            </a>
                        </#if>
                    </@paginationTag>
                </#if>
            </div>
        </main>
    </@layout>