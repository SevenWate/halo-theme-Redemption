<#include "module/macro.ftl">
<@layout title="${post.title!} - ${blog_title!}">

    <div id="readProgress">
        <div class="read-progress-bar" role="progressbar" style="width: 0"></div>
    </div>
    
    <main>
        <#--  <#include "module/header.ftl">  -->
        <div class="post">
            <div class="title">
                <h1>
                    <a href='${post.fullPath!}'>${post.title!}</a>
                </h1>
                <div class="info">
                    <span>
                        <i class="ri-quill-pen-line"></i>
                        ${user.nickname!}
                        <#assign timeago = (.now?long - post.createTime?long)>

                        <#if timeago < 60000 >
                            刚刚发表哦 ~
                        <#elseif (timeago >= 60000) && (timeago < 3600000)>
                            发表于 ${(timeago / 60000)?int} 分钟前
                        <#elseif (timeago >= 3600000) && (timeago < 86400000)>
                            发表于 ${(timeago / 3600000)?int} 小时前
                        <#elseif (timeago >= 86400000) && (timeago < 604800000)>
                            发表于 ${(timeago / 86400000)?int} 天前
                        <#elseif (timeago >= 604800000) && (timeago < 3153600000)>
                            发表于 ${(timeago / 604800000)?int} 周前
                        <#elseif (timeago >= 3153600000) && (timeago < 94608000000)>
                            发表于 ${(timeago / 3153600000)?int} 年前
                        <#elseif (timeago >= 94608000000)>
                            发表于很久很久以前 ~
                        </#if>
                    </span>
                    <span>
                    <i class="ri-article-line"></i>
                        共 ${post.wordCount!} 字、阅读约 
                        <#if (post.wordCount! / 300)?int == 0>
                            1
                        <#else>
                            ${(post.wordCount! / 300)?int}
                        </#if>
                        分钟
                    </span>
                </div>
            </div>
            <div class="heti">
                ${post.formatContent!}
            </div>
        </div>
        
    </main>
    <#include "module/comment.ftl">
    <@comment post=post type="post" />
</@layout>
