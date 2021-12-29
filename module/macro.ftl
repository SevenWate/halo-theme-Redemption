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

        <link rel="stylesheet" href="${theme_base!}/source/plugins/normalize.css"/>
        <link rel="stylesheet" href="${theme_base!}/source/plugins/animate.css"/>
        <link rel="stylesheet" href="${theme_base!}/source/plugins/remixicon/remixicon.css"/>
        <#--  <link rel="stylesheet" href="${theme_base!}/source/plugins/typo.css"/>  -->
        <#--  <link rel="stylesheet" href="${theme_base!}/source/plugins/han.css"/>  -->
        <#--  <link rel="stylesheet" href="//unpkg.com/heti/umd/heti.min.css">  -->
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

        <script src="//unpkg.com/heti/umd/heti-addon.min.js"></script>

        <script>
        const heti = new Heti('.heti');
        heti.autoSpacing();
        </script>
    </body>
</html>
</#macro>

