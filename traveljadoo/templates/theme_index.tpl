<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<!-- TMPL_INCLUDE NAME="googletracker.tpl" -->
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<!-- <meta name="viewport" content="initial-scale=1.0, user-scalable=no" /> -->
		<link rel="stylesheet" href="<!-- TMPL_VAR NAME=BASEPREFIX -->css/screen.css" type="text/css" media="screen, projection" charset="utf-8" />
		<!--[if lt IE 8]><link rel="stylesheet" href="<!-- TMPL_VAR NAME=BASEPREFIX -->css/ie.css" type="text/css" media="screen, projection"><![endif]-->
		<link rel="stylesheet" href="<!-- TMPL_VAR NAME=BASEPREFIX -->css/newodyssey.css" type="text/css" media="screen, projection" charset="utf-8" />
		<script type="text/javascript" src="<!-- TMPL_VAR NAME=BASEPREFIX -->js/jquery-1.4.4.min.js"></script>
		<script type="text/javascript" src="<!-- TMPL_VAR NAME=BASEPREFIX -->js/blk.js"></script>
		<meta name="description" content="<!-- TMPL_VAR NAME=METADESCRIPTION -->" />
		<meta name="keywords" content="<!-- TMPL_VAR NAME=METAKEYWORDS -->" />
		<title>
			<!-- TMPL_IF NAME=PAGETITLE -->
				<!-- TMPL_VAR NAME=PAGETITLE -->
			<!-- TMPL_ELSE -->
				Travel Themes | Traveller's Palm - Custom Tours to India
			<!-- /TMPL_IF -->
		</title>
	</head>
	<body baseprefix="<!-- TMPL_VAR NAME=BASEPREFIX -->">
		<div class="container">
			<div class="span-24 last">
				<!-- TMPL_INCLUDE NAME="bannermenu_themes.tpl" -->
			</div>
			<div class="span-12 prepend-6 append-6 themeintro last">
				<p><!-- TMPL_VAR NAME=WRITEUP --></p>
			</div>
			<div class="span-24 last thememenu">
			<!-- TMPL_LOOP NAME=TOPROW -->
				<div class="span-8<!-- TMPL_IF NAME=__last__ --> last<!-- /TMPL_IF -->">
					<a href="<!-- TMPL_VAR NAME=BASEPREFIX -->themes/<!-- TMPL_VAR NAME=THEME_URL -->"><h1 class="themename"><!-- TMPL_VAR NAME=THEME_TITLE --></h1></a>
					<a href="<!-- TMPL_VAR NAME=BASEPREFIX -->themes/<!-- TMPL_VAR NAME=THEME_URL -->"><img src="<!-- TMPL_VAR NAME=BASEPREFIX -->images/themes/theme_<!-- TMPL_VAR NAME=THEME_ID -->_1.jpg" width="310" height="160" /></a>
					<hr class="space">
				</div>
			<!-- /TMPL_LOOP -->
			<hr />
			<!-- TMPL_LOOP NAME=BOTROW -->
				<div class="span-8<!-- TMPL_IF NAME=__last__ --> last<!-- /TMPL_IF -->">
					<a href="<!-- TMPL_VAR NAME=BASEPREFIX -->themes/<!-- TMPL_VAR NAME=THEME_URL -->"><h1 class="themename"><!-- TMPL_VAR NAME=THEME_TITLE --></h1></a>
					<a href="<!-- TMPL_VAR NAME=BASEPREFIX -->themes/<!-- TMPL_VAR NAME=THEME_URL -->"><img src="<!-- TMPL_VAR NAME=BASEPREFIX -->images/themes/theme_<!-- TMPL_VAR NAME=THEME_ID -->_1.jpg" width="310" height="160" /></a>
					<hr class="space">
				</div>
			<!-- /TMPL_LOOP -->
				<hr class="space" />
			</div>
			<hr />
		</div>
		<div class="container">
			<div class="span-24 last">
				<div id="footer">
					<!-- TMPL_INCLUDE NAME=footer.tpl -->
				</div>
			</div>
        </div>
	</body>
</html>
