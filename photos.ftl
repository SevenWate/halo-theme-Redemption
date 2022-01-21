<!--
	Multiverse by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->

<!DOCTYPE HTML>

<html lang="zh">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">
        <title>${blog_title!} - 影集</title>
        <meta name="keywords" content="${meta_keywords!}"/>
        <meta name="description" content="${meta_description!}" />
        <@global.head />

		<link rel="stylesheet" href="${theme_base!}/source/plugins/multiverse/css/main.css" />
		<noscript><link rel="stylesheet" href="${theme_base!}/source/plugins/multiverse/css/noscript.css" /></noscript>

    </head>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
						<h1><strong>${user.nickname!}</strong> 摄影作品集 </h1>
						<nav>
							<ul>
								<li><a href="#footer" class="icon solid fa-info-circle">关于</a></li>
							</ul>
						</nav>
					</header>

				<!-- Main -->
					<div id="main">
                        <#list photos.content as photo>
                            <article id="${photo.id!}" class="thumb">
                                <a href="${photo.url!}" class="image">
                                    <img src="${photo.url!}" alt="" />
                                </a>
                                <h2>${photo.name!}</h2>
                                <p>${photo.description!}</p>
                                <div class="photoInfo">
                                    ${photo.location!}
                                    ${photo.takeTime?string('yyyy.MM.dd')}
                                </div>
						    </article>
                        </#list>


					</div>

				<!-- Footer -->
					<footer id="footer" class="panel">
						<div class="inner split">
							<div>
								<section>
									<#if settings.photoTitle??>
										<h2>${settings.photoTitle}</h2>
									</#if>
									<#if settings.photodes??>
										<p>${settings.photodes}</p>
									</#if>
								</section>
								<section>
									<h2>关注我</h2>
									<ul class="icons">

                                        <#if settings.github??>
                                        <li><a href="${settings.github}" target="_blank" class="icon brands fa-github"><span class="label">GitHub</span></a></li>
                                        </#if>

                                        <#if settings.bilibili??>
                                            <li><a href="${settings.bilibili}"target="_blank" class="icon brands fa-instagram"><span class="label">Bilibili</span></a></li>
                                        </#if>

                                        <#if settings.mail??>
                                            <li><a href="mailto:${settings.mail}" target="_blank" class="icon brands fa-envelope"><span class="label">Mail</span></a></li>
                                        </#if>
									</ul>
								</section>
								<p class="copyright">
									&copy; ${user.nickname!}. Design: <a href="http://html5up.net">HTML5 UP</a>.
								</p>
							</div>
							<#--  <div>
								<section>
									<h2>Get in touch</h2>
									<form method="post" action="#">
										<div class="fields">
											<div class="field half">
												<input type="text" name="name" id="name" placeholder="Name" />
											</div>
											<div class="field half">
												<input type="text" name="email" id="email" placeholder="Email" />
											</div>
											<div class="field">
												<textarea name="message" id="message" rows="4" placeholder="Message"></textarea>
											</div>
										</div>
										<ul class="actions">
											<li><input type="submit" value="Send" class="primary" /></li>
											<li><input type="reset" value="Reset" /></li>
										</ul>
									</form>
								</section>
							</div>  -->
						</div>
					</footer>

			</div>

		<!-- Scripts -->
			<script src="${theme_base!}/source/plugins/multiverse/js/jquery.min.js"></script>
			<script src="${theme_base!}/source/plugins/multiverse/js/jquery.poptrox.min.js"></script>
			<script src="${theme_base!}/source/plugins/multiverse/js/browser.min.js"></script>
			<script src="${theme_base!}/source/plugins/multiverse/js/breakpoints.min.js"></script>
			<script src="${theme_base!}/source/plugins/multiverse/js/util.js"></script>
			<script src="${theme_base!}/source/plugins/multiverse/js/main.js"></script>

	</body>
</html>