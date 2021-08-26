


##                   Welcome To Stylez360 ##

 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">  
  <link href="https://github.com/stylez360/stylez360.github.io/blob/main/ballet-one-page-free-web-template/css/animate.css" rel="stylesheet">
/*! fancyBox v2.1.4 fancyapps.com | fancyapps.com/fancybox/#license */
.fancybox-wrap,
.fancybox-skin,
.fancybox-outer,
.fancybox-inner,
.fancybox-image,
.fancybox-wrap iframe,
.fancybox-wrap object,
.fancybox-nav,
.fancybox-nav span,
.fancybox-tmp
{
	padding: 0;
	margin: 0;
	border: 0;
	outline: none;
	vertical-align: top;
}

.fancybox-wrap {
	position: absolute;
	top: 0;
	left: 0;
	z-index: 8020;
}

.fancybox-skin {
	position: relative;
	background: #2F3238;
	color: #565656;
	text-shadow: none;
	-webkit-border-radius: 0;
	   -moz-border-radius: 0;
	        border-radius: 0;
}

.fancybox-opened {
	z-index: 8030;
}

.fancybox-opened .fancybox-skin {
	-webkit-box-shadow: none;
	   -moz-box-shadow: none;
	        box-shadow: none;
}

.fancybox-outer, .fancybox-inner {
	position: relative;
}

.fancybox-inner {
	overflow: hidden;
}

.fancybox-type-iframe .fancybox-inner {
	-webkit-overflow-scrolling: touch;
}

.fancybox-error {
	color: #444;
	font-size: 14px;
	line-height: 20px;
	margin: 0;
	padding: 15px;
	white-space: nowrap;
}

.fancybox-image, .fancybox-iframe {
	display: block;
	width: 100%;
	height: 100%;
}

.fancybox-image {
	max-width: 100%;
	max-height: 100%;
}

#fancybox-loading, .fancybox-close, .fancybox-prev span, .fancybox-next span {
	background-image: url('fancybox_sprite.png') !important;
}

#fancybox-loading {
	position: fixed;
	top: 50%;
	left: 50%;
	margin-top: -22px;
	margin-left: -22px;
	background-position: 0 -108px;
	opacity: 0.8;
	cursor: pointer;
	z-index: 8060;
}

#fancybox-loading div {
	width: 44px;
	height: 44px;
	background: url('fancybox_loading.gif') center center no-repeat;
}

.fancybox-close {
	position: absolute;
	right: 0;
	top: 0;
	width: 40px;
	height: 38px;
	cursor: pointer;
	z-index: 9000;
	background-image: none; 
	
	opacity: 0.5;
	
	-webkit-transition: background 0.1s linear 0s, opacity 0.1s linear 0s;	
	   -moz-transition: background 0.1s linear 0s, opacity 0.1s linear 0s;
		 -o-transition: background 0.1s linear 0s, opacity 0.1s linear 0s;
		    transition: background 0.1s linear 0s, opacity 0.1s linear 0s;
}

.fancybox-close i {
	left: 50%;
	top: 50%;
	margin: -11px 0 0 -11px;
	font-size: 22px;
	line-height: 1em;
	position: absolute;
	color: #FFFFFF;
}

.fancybox-close:hover {
	opacity: 1;
}

.fancybox-nav {
	position: absolute;
	top: 0;
	height: 100%;
	cursor: pointer;
	text-decoration: none;
	background: transparent url('blank.gif'); /* helps IE */
	-webkit-tap-highlight-color: rgba(0,0,0,0);
	z-index: 8040;
}

.fancybox-prev,
.fancybox-prev span {
	left: 0;
}

.fancybox-next,
.fancybox-next span {
	right: 0;
}

.fancybox-nav span {
	position: absolute;
	top: 50%;
width: 44px;
height: 32px;
	margin-top: -25px;
	cursor: pointer;
	z-index: 8040;
	background-image: none;
	background-color: #26292E;
	background-position-y: -38px;
	opacity: 0.5;
	
	-webkit-transition: background 0.1s linear 0s, opacity 0.1s linear 0s;	
	   -moz-transition: background 0.1s linear 0s, opacity 0.1s linear 0s;
		 -o-transition: background 0.1s linear 0s, opacity 0.1s linear 0s;
		    transition: background 0.1s linear 0s, opacity 0.1s linear 0s;
}
.fancybox-next span { 
background-position-y: -72px;
}
.fancybox-prev span i {
	left: 50%;
	top: 50%;
	margin: -15px 0 0 -17px;
	font-size: 30px;
	line-height: 1em;
	position: absolute;
	color: #FFFFFF;
}


.fancybox-next span i {
	left: 50%;
	top: 50%;
	margin: -15px 0 0 -15px;
	font-size: 30px;
	line-height: 1em;
	position: absolute;
	color: #FFFFFF;
}

.fancybox-nav:hover span {
	opacity: 1;
}

.fancybox-tmp {
	position: absolute;
	top: -99999px;
	left: -99999px;
	visibility: hidden;
	max-width: 99999px;
	max-height: 99999px;
	overflow: visible !important;
}

/* Overlay helper */

.fancybox-lock {
	margin: 0!important;
}

.fancybox-overlay {
	position: absolute;
	top: 0;
	left: 0;
	overflow: hidden !important;
	display: none;
	z-index: 8010;
	background: url('fancybox_overlay.png');
}

.fancybox-overlay-fixed {
	position: fixed;
	bottom: 0;
	right: 0;
}

.fancybox-lock .fancybox-overlay {
	overflow: auto;
	overflow-y: scroll;
}

/* Title helper */

.fancybox-title {
	visibility: hidden;
	position: relative;
	text-shadow: none;
	z-index: 8050;
}

.fancybox-opened .fancybox-title {
	visibility: visible;
}

.fancybox-opened .fancybox-title h4{
	font-size: 24px;
	color:#fff;
	font-weight: 300;
	margin-bottom: 10px;	
}

.fancybox-opened .fancybox-title p{
	font-size: 16px;
	font-weight: 300;
	color:#bbb;
	line-height:1.6em;
	margin-bottom: 0;	
}

.fancybox-title-float-wrap {
	position: absolute;
	bottom: 0;
	right: 50%;
	margin-bottom: -35px;
	z-index: 8050;
	text-align: center;
}

.fancybox-title-float-wrap .child {
	display: inline-block;
	margin-right: -100%;
	padding: 2px 20px;
	background: transparent; /* Fallback for web browsers that doesn't support RGBa */
	background: rgba(0, 0, 0, 0.8);
	-webkit-border-radius: 15px;
	   -moz-border-radius: 15px;
	        border-radius: 15px;
	text-shadow: 0 1px 2px #222;
	color: #FFF;
	font-weight: bold;
	line-height: 24px;
	white-space: nowrap;
}

.fancybox-title-outside-wrap {
	position: relative;
	margin-top: 10px;
	color: #fff;
}

.fancybox-title-inside-wrap {
	padding: 3px 30px 6px;
	background:#61B331;
}

.fancybox-title-over-wrap {
	position: absolute;
	bottom: 0;
	left: 0;
	color: #fff;
	padding: 10px;
	background: #000;
	background: rgba(0, 0, 0, .8);
}

@media (max-width: 480px) {
	.fancybox-nav span,
	.fancybox-nav:hover span,
	.fancybox-close,
	.fancybox-close:hover {
		background: transparent;	
	}
	
	.fancybox-close i {
		left: 70px;
		top: 10px;	
	}
}

@media (max-width: 320px) {
	.fancybox-close i {
		left: 30px;
		top: 20px;	
	}

<h1>
  Welcome to Stylez360
  
 
