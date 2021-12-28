<#macro layout title>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="keywords" content="${meta_keywords!}"/>
    <meta name="description" content="${meta_description!}" />

    <#--
        公共 head 代码，详情请参考：https://docs.halo.run/zh/developer-guide/theme/public-template-tag
        包含：Favicon，自定义 head 等
    -->

    <@global.head />

    <title>${title}</title>

    <#--  
        样式 CSS 代码
    -->
    <link rel="stylesheet" href="${theme_base!}/source/css/normalize.css"/>
    <link rel="stylesheet" href="${theme_base!}/source/css/animate.min.css"/>
    <link rel="stylesheet" href="${theme_base!}/source/css/main.css"/>
</head>
<body>
<#include "menu.ftl">

<#nested >

<#--
    公共底部代码，详情请参考：https://docs.halo.run/zh/developer-guide/theme/public-template-tag
    包含：统计代码，底部信息
-->
<@global.footer />
</body>
</html>
</#macro>

