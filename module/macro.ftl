<#macro layout title>
<!DOCTYPE html>
<html lang="zh-CN" data-font="sans">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">
        <title>${title}</title>
        <meta name="keywords" content="${meta_keywords!}"/>
        <meta name="description" content="${meta_description!}" />
        <@global.head />
        
        <#--  公共样式表  -->
        <link rel="stylesheet" href="${theme_base!}/source/plugins/normalize.css"/>
        <link rel="stylesheet" href="${theme_base!}/source/plugins/animate.css"/>
        <link rel="stylesheet" href="${theme_base!}/source/plugins/remixicon/remixicon.css"/>
        <link rel="stylesheet" href="${theme_base!}/source/plugins/heti/heti.min.css"/>
        
        <#--  自定义样式表  -->
        <link rel="stylesheet" href="${theme_base!}/source/css/redemption.css"/>
    </head>
    <body>
        <div class="container  animate__animated animate__fadeInDown">

            <#--  主体  -->
            <#nested >

            <#-- 脚注   -->
            <footer>

                <div class="copyright">
                    <a href="https://www.7wate.com">Designed by 7Wate</a>
                    <a href="https://halo.run">Proudly published with Halo</a>
                </div>
                <@global.footer />
            </footer>
            
        </div>

        <#--  自定义JS代码  -->
        <#--  <script charset="utf-8" src="${theme_base!}/source/plugins/halo.js"></script>  -->

    </body>
    <#include "menu.ftl">
</html>
</#macro>

