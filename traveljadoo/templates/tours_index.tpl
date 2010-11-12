<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<!-- TMPL_INCLUDE NAME="googletracker.tpl" -->
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
		<link rel="stylesheet" href="/css/screen.css" type="text/css" media="screen, projection">
		<link rel="stylesheet" href="/css/print.css" type="text/css" media="print"> 
		<!--[if lt IE 8]><link rel="stylesheet" href="/css/ie.css" type="text/css" media="screen, projection"><![endif]-->
		<link rel="stylesheet" href="/css/ch_odyssey.css" type="text/css" media="screen, projection"> 
		<script type="text/javascript" src="/js/jquery-1.4.2.min.js"></script>
		<script type="text/javascript" src="/js/blk.js"></script>
		<meta name="description" content="<!-- TMPL_VAR NAME=METADESCRIPTION -->" />
		<meta name="keywords" content="<!-- TMPL_VAR NAME=METAKEYWORDS -->" />
		<title>
			<!-- TMPL_IF NAME=PAGETITLE -->
				<!-- TMPL_VAR NAME=PAGETITLE -->
			<!-- TMPL_ELSE -->
				India - Individual Holidays & Tours | Traveller's Palm - Custom Tours to India
			<!-- /TMPL_IF -->
		</title>
	</head>
	<body>
		<div class="container">
			<div class="span-24 last">
				<!-- TMPL_INCLUDE NAME="bannermenu_tours.tpl" -->					
			</div>
			<div class="span-16">
				<div id="imgframe">
					<div id="frameslideshow">
						<img src="/images/tours_main.jpg" width="560" height="340" />
					</div>
				</div>
			</div>
			<div class="span-8 writeup last">
				<div id="writeup">
					<h1>Ready Tours</h1>
					<h2><!-- TMPL_VAR NAME=TOURSONELINER --></h2>
					<!-- TMPL_VAR NAME=TOURSTEXT -->
					<p><strong>
						We offer <!-- TMPL_VAR NAME=TOURCOUNT --> Indian Journeys. This page lists Journeys 
						<!-- TMPL_IF NAME=FIRSTPAGE -->1 to <!-- TMPL_VAR NAME=PAGECOUNT --><!-- TMPL_ELSE --><!-- TMPL_VAR NAME=PAGECOUNTPLUSONE --> to <!-- TMPL_VAR NAME=TOURCOUNT --><!-- /TMPL_IF -->.
						Click <!-- TMPL_IF NAME=FIRSTPAGE --><a href="/tours/2">Page 2</a> <!-- TMPL_ELSE --><a href="/tours/">Page 1</a><!-- /TMPL_IF --> for more.
					</strong></p>
				</div>
			</div>
			<hr class="space" />
			<div class="content">
				<div class="span-4 leftcol">
					<h3>Quick Links</h3>
					<ul>
						<li><a href="/">Home</a></li>
						<li><a href="/themes">Incredible India</a></li>
						<li><a href="/special_places">Special Places</a></li>
						<li><a href="/regions">Mini Itineraries</a></li>
						<li><a id="toplink" href="/tours">Indian Journeys</a></li>
						<li><a href="/about-us">About Us</a></li>
						<li><a href="/contact-us">Contact Us</a></li>
					</ul>
				</div>
				<div class="span-12 midcol">
					<h3>Our Tours</h3>
					<!-- TMPL_LOOP NAME=TOURS -->
					<div class="vheaderbox">
						<a href="/tourdetails/<!-- TMPL_VAR NAME=TOURURL -->"><h4 class="listmods"><!-- TMPL_VAR NAME=TOURNAME --></h4></a>
						<h5 class="listmods"><!-- TMPL_VAR NAME=TOURONELINER --></h5>
					</div>
					<p>
						<a href="/tourdetails/<!-- TMPL_VAR NAME=TOURURL -->"><img src="/images/tours/rt_<!-- TMPL_VAR NAME=TOURID -->_small.jpg" width="220" height="151" class="left" /></a>
						<!-- TMPL_VAR NAME=TOURINTRO -->
					</p>
					<p class="box">
						<strong>Duration:</strong> <!-- TMPL_VAR NAME=TOURDURATION --><br />
						<strong>Price:</strong> <!-- TMPL_VAR NAME=TOURPRICE -->
					</p>
					<hr />
					<!-- /TMPL_LOOP -->
					<p>
						Click <!-- TMPL_IF NAME=FIRSTPAGE --><a href="/tours/2">Page 2</a> <!-- TMPL_ELSE --><a href="/tours/">Page 1</a><!-- /TMPL_IF --> for more.
					</p>
				</div>
				<div class="span-8 rightcol last">
					<h3><!-- TMPL_VAR NAME=SIDETITLE --></h3>
					<div class="box">
						<img src="/images/GWEN02.jpg" width="240" height="150" /> 	
						<div style="font-style: italic;"><!-- TMPL_VAR NAME=SIDETEXT --></div>
					</div>
					<hr class="space" />
				</div>
			</div>
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