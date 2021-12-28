<#macro layout title>
<!DOCTYPE html>
<html lang="zh">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">
        <title>${title}</title>
        <meta name="keywords" content="${meta_keywords!}"/>
        <meta name="description" content="${meta_description!}" />
        <@global.head />

        <link rel="stylesheet" href="${theme_base!}/source/css/normalize.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css"/>
        <link rel="stylesheet" href="${theme_base!}/source/css/color.css"/>
        <link rel="stylesheet" href="${theme_base!}/source/css/redemption.css"/>
    </head>
    <body class="animate__animated animate__fadeInDown">
    <#include "menu.ftl">

    <#--  主体  -->
    <#nested >

        <footer>
            <div class="copyright">
                <a href="https://zeuk.me">Designed by Zeuk,</a>
                <a href="https://halo.run">Proudly published with Halo</a>
            </div>
            <@global.footer />
        </footer>
    </body>
</html>
</#macro>

