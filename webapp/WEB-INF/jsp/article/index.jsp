<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Hover Effect Ideas | Set 2</title>
		<meta name="description" content="Hover Effect Ideas: Inspiration for subtle hover effects" />
		<meta name="keywords" content="hover effect, inspiration, grid, thumbnail, transition, subtle, web design" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="/static/img/ico_checkmal.ico">
		<link href='http://fonts.googleapis.com/css?family=Raleway:400,800,500,600' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="/static/plugins/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="/static/css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="/static/css/demo.css" />
		<link rel="stylesheet" type="text/css" href="/static/css/set2.css" />
		<link rel="stylesheet" type="text/css" href="/static/fonts/font-awesome-4.2.0/css/font-awesome.min.css" />
		<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
	</head>
	<body>
		<div class="container">
			<!-- Top Navigation -->
			<div class="codrops-top clearfix">
				<a class="codrops-icon codrops-icon-prev" href="http://tympanus.net/Tutorials/FourBoxes/"><span>Previous Demo</span></a>
				<span class="right"><a class="codrops-icon codrops-icon-drop" href="http://tympanus.net/codrops/?p=19292"><span>Back to the Codrops Article</span></a></span>
			</div>
			<header class="codrops-header">
				<h1>Hover Effect Ideas <span>An inspirational collection of subtle hover effects</span></h1>
				<nav class="codrops-demos">
					<a href="index">Set 1</a>
					<a class="current-demo" href="index2">Set 2</a>
				</nav>
			</header>
			<div class="content">

				<h2>Goliath</h2>
				<div class="grid">
					<figure class="effect-goliath">
						<img src="/static/img/23.jpg" alt="img23"/>
						<figcaption>
							<h2>Thoughtful <span>Goliath</span></h2>
							<p>When Goliath comes out, you should run.</p>
							<a href="#">View more</a>
						</figcaption>
					</figure>
					<figure class="effect-goliath">
						<img src="/static/img/24.jpg" alt="img24"/>
						<figcaption>
							<h2>Thoughtful <span>Goliath</span></h2>
							<p>When Goliath comes out, you should run.</p>
							<a href="#">View more</a>
						</figcaption>
					</figure>
				</div>

			</div>
			<nav class="codrops-demos">
				<a href="index">Set 1</a>
				<a class="current-demo" href="index2">Set 2</a>
			</nav>
			<!-- Related demos -->
			<section class="related">
				<p>Images from <a href="http://unsplash.com/">Unsplash</a>. Icons from <a href="http://fortawesome.github.io/Font-Awesome/">Font Awesome</a>.</p>
				<p><strong>If you enjoyed this demo you might also like:</strong></p>
				<a href="http://tympanus.net/Tutorials/CaptionHoverEffects/">
					<img src="http://tympanus.net/codrops/wp-content/uploads/2013/06/CaptionHoverEffect-300x162.png" />
					<h3>Caption Hover Effects</h3>
				</a>
				<a href="http://tympanus.net/Tutorials/ShapeHoverEffectSVG/">
					<img src="http://tympanus.net/codrops/wp-content/uploads/2014/01/ShapeHoverEffect-300x162.png" />
					<h3>Shape Hover Effects</h3>
				</a>
			</section>
		</div><!-- /container -->
		<script>
			// For Demo purposes only (show hover effect on mobile devices)
			[].slice.call( document.querySelectorAll('a[href="#"') ).forEach( function(el) {
				el.addEventListener( 'click', function(ev) { ev.preventDefault(); } );
			} );
		</script>
	</body>
</html>