<!DOCTYPE html>
<!-- saved from url=(0056)https://stylez360.github.io/manage_products_list.aspx -->
<html lang="en" class="fa-events-icons-ready"><head id="Head1"><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no"><meta name="ROBOTS" content="NOINDEX, NOFOLLOW"><link type="text/css" rel="stylesheet" href="./manage_products_list_files/main.css">
    <script async="" src="./manage_products_list_files/clarity.js.download"></script><script async="" src="./manage_products_list_files/8funo71987"></script><script async="" src="./manage_products_list_files/profitwell.js.download"></script><script type="text/javascript" async="" src="./manage_products_list_files/analytics.js.download"></script><script type="text/javascript" async="" src="./manage_products_list_files/js"></script><script type="text/javascript" async="" src="./manage_products_list_files/analytics.js.download"></script><script>
        if (location.href.match("localhost:")) {
            function guid() { return s4() + s4() + "-" + s4() + "-" + s4() + "-" + s4() + "-" + s4() + s4() + s4() }
            function s4() { return Math.floor(65536 * (1 + Math.random())).toString(16).substring(1) }
            var Logger = function () {}
        } else {
            var __VER__ = "1.0.0", storeId = -1, beaverGuid = guid();
            function guid() { return s4() + s4() + "-" + s4() + "-" + s4() + "-" + s4() + "-" + s4() + s4() + s4() }
            function s4() { return Math.floor(65536 * (1 + Math.random())).toString(16).substring(1) }
            function _instanceof(e, t) { return null != t && "undefined" != typeof Symbol && t[Symbol.hasInstance] ? !!t[Symbol.hasInstance](e) : e instanceof t }
            function _toConsumableArray(e) { return _arrayWithoutHoles(e) || _iterableToArray(e) || _unsupportedIterableToArray(e) || _nonIterableSpread() }
            function _nonIterableSpread() { throw new TypeError("Invalid attempt to spread non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.") }
            function _unsupportedIterableToArray(e, t) { if (e) { if ("string" == typeof e) return _arrayLikeToArray(e, t); var r = Object.prototype.toString.call(e).slice(8, -1); return "Object" === r && e.constructor && (r = e.constructor.name), "Map" === r || "Set" === r ? Array.from(e) : "Arguments" === r || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(r) ? _arrayLikeToArray(e, t) : void 0 } }
            function _iterableToArray(e) { if ("undefined" != typeof Symbol && Symbol.iterator in Object(e)) return Array.from(e) }
            function _arrayWithoutHoles(e) { if (Array.isArray(e)) return _arrayLikeToArray(e) }
            function _arrayLikeToArray(e, t) { (null == t || t > e.length) && (t = e.length); for (var r = 0, n = new Array(t); r < t; r++)n[r] = e[r]; return n }
            function _classCallCheck(e, t) { if (!_instanceof(e, t)) throw new TypeError("Cannot call a class as a function") }
            function _defineProperties(e, t) { for (var r = 0; r < t.length; r++) { var n = t[r]; n.enumerable = n.enumerable || !1, n.configurable = !0, "value" in n && (n.writable = !0), Object.defineProperty(e, n.key, n) } }
            function _createClass(e, t, r) { return t && _defineProperties(e.prototype, t), r && _defineProperties(e, r), e }
            function _defineProperty(e, t, r) { return t in e ? Object.defineProperty(e, t, { value: r, enumerable: !0, configurable: !0, writable: !0 }) : e[t] = r, e }
            var Logger = function () { "use strict"; function e(t) { _classCallCheck(this, e), _defineProperty(this, "_storeId", -1), _defineProperty(this, "_prefix", "[CONTROLPANEL]"), _defineProperty(this, "_debugEnabled", !1), _defineProperty(this, "_uuid", null), _defineProperty(this, "_isDev", !1), void 0 !== t && null !== t && (t.storeId && (this._storeId = t.storeId), t.prefix && (this._prefix = t.prefix), t.debugEnabled && (this._debugEnabled = t.debugEnabled), t.uuid && (this._uuid = t.uuid), t.isDev && (this._isDev = t.isDev)) } return _createClass(e, [{ key: "isDebugEnabled", value: function () { return this._debugEnabled } }, { key: "log", value: function (e) { if (this._isDev) { for (var t, r = arguments.length, n = new Array(r > 1 ? r - 1 : 0), o = 1; o < r; o++)n[o - 1] = arguments[o]; (t = console).log.apply(t, ["".concat(location.href, " [").concat(this._prefix, "] [").concat(this._storeId, "] [").concat(this._uuid, "] [").concat((new Date).toISOString(), "] ").concat(e, " ")].concat(n)) } this._isDev || this.sendToServer.apply(this, ["[".concat((new Date).toISOString(), " - ").concat(__VER__, "] ").concat(e), 0].concat(n)) } }, { key: "warn", value: function (e) { for (var t, r = arguments.length, n = new Array(r > 1 ? r - 1 : 0), o = 1; o < r; o++)n[o - 1] = arguments[o]; (t = console).warn.apply(t, ["".concat(location.href, " [").concat(this._prefix, "] [").concat(this._storeId, "] [").concat(this._uuid, "] [").concat((new Date).toISOString(), "] ").concat(e, " ")].concat(n)), this._isDev || this.sendToServer.apply(this, ["[".concat((new Date).toISOString(), " - ").concat(__VER__, "] ").concat(e), 1].concat(n)) } }, { key: "error", value: function (e) { for (var t, r = arguments.length, n = new Array(r > 1 ? r - 1 : 0), o = 1; o < r; o++)n[o - 1] = arguments[o]; (t = console).error.apply(t, ["".concat(location.href, " [").concat(this._prefix, "] [").concat(this._storeId, "] [").concat(this._uuid, "] [").concat((new Date).toISOString(), "] ").concat(e, " ")].concat(n)), this._isDev || this.sendToServer.apply(this, ["[".concat((new Date).toISOString(), " - ").concat(__VER__, "] ").concat(e), 2].concat(n)) } }, { key: "debug", value: function (e) { for (var t = arguments.length, r = new Array(t > 1 ? t - 1 : 0), n = 1; n < t; n++)r[n - 1] = arguments[n]; var o; this._debugEnabled && (o = console).log.apply(o, ["".concat(location.href, " [").concat(this._prefix, "] [").concat(this._storeId, "] [").concat(this._uuid, "] [").concat((new Date).toISOString(), "] ").concat(e, " ")].concat(r)); this._isDev || this.sendToServer.apply(this, ["[".concat((new Date).toISOString(), " - ").concat(__VER__, "] ").concat(e), 0].concat(r)) } }, { key: "sendToServer", value: function (e, t) { var r = new XMLHttpRequest; r.open("POST", "/services/utilities/beaver.svc/log", !0), r.setRequestHeader("Content-Type", "application/json"); for (var n = "", o = arguments.length, a = new Array(o > 2 ? o - 2 : 0), i = 2; i < o; i++)a[i - 2] = arguments[i]; try { n = JSON.stringify.apply(JSON, _toConsumableArray(a || "")) } catch (e) { } "{}" === n && (n = JSON.stringify.apply(JSON, a.concat([Object.getOwnPropertyNames.apply(Object, a)]))), void 0 === n && (n = ""); var c = { shopkeeper: this._storeId, action: "RIDGE#CLIENT#" + this._prefix, errorlevel: t, type: "DEBUG_ID", typeid: this._uuid, message: e + " ".concat(n) }, s = JSON.stringify({ log: c }); r.send(s); var u = this; r.onload = function () { 200 !== r.status && console.error("Error in sendToServer. Status ".concat(r.status, ":").concat(r.statusText)) }, r.onerror = function () { }, r.ontimeout = function () { console.error("Error in sendToServer ontimeout handler. ResponseText: [".concat(r.responseText, "]. Status: [").concat(r.status, "]")) } } }]), e }();
        }
    </script>
    
        <title>Freewebstore Control Panel</title>
        <link rel="icon" sizes="192x192" id="freewebstore_cp_favicon" href="https://d11fdyfhxcs9cr.cloudfront.net/design_media/freewebstore/logo/favicon-fws_opt.png?v=85ab7f50f84e34689ae30688e4fa16">
        <meta name="theme-color" content="#20b7e6">
        <meta name="msapplication-navbutton-color" content="#3bf10d">
        <meta name="apple-mobile-web-app-status-bar-style" content="#3bf10d">
        <link type="text/css" rel="stylesheet" class="cp_theme_stylesheet_link" href="./manage_products_list_files/fws_pink.css">
        <script async="" src="./manage_products_list_files/js(1)"></script>
        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag() { dataLayer.push(arguments); }
            gtag('js', new Date());

            gtag('config', 'UA-44336959-1');
            gtag('config', 'UA-128525343-1');
        </script>
        <style>
            #freewebstore_logo{ display: block; }
            
            #ridge_logo{ display: none; }
        </style>
    <script src="./manage_products_list_files/purify.min.js.download"></script><script src="./manage_products_list_files/cleanxss.js.download"></script><link type="text/css" rel="stylesheet" href="./manage_products_list_files/base_elements.css"><link type="text/css" rel="stylesheet" href="./manage_products_list_files/light.css">
    <link rel="stylesheet" type="text/css" href="./manage_products_list_files/products.css">
    <link rel="stylesheet" type="text/css" href="./manage_products_list_files/reusable.css">
    <script src="./manage_products_list_files/moment.min.js.download"></script>
<link href="./manage_products_list_files/css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="./manage_products_list_files/stylesheet.min.css">
    <link href="./manage_products_list_files/css(1)" rel="stylesheet">
    <script src="./manage_products_list_files/c2dd136024.js.download"></script><link href="./manage_products_list_files/c2dd136024.css" media="all" rel="stylesheet">
    <script src="./manage_products_list_files/polyfill.min.js.download"></script>
    <script>
        var url = new URL(window.location.href);
        var newDashboard = url.searchParams.get("newDashboard");
    </script>
    <script>
        //The clientside currency strings options
        var currency_options = {
            symbol: "$",
            decimal: ".",
            thousand: ",",
            precision: 2,
            format: {
                pos: "%s%v",
                neg: "%s(%v)",
                zero: "%s --"
            }
        };
        var storeCurrency = "USD";
        var businessUser = 0;
        var productCount = 0;

        var weightUnit = 'oz';
        var packageName = 'Community Package';
        var storeName = 'james';
        var contactName = 'james';
        var storeNameSob = 'Stylez360';
        var vacationModeSob = 'False';
        var backloggedCheck = 0;

        var storeId = '733006';
        var storeGeo = '';
        var storeUrl = 'ddsees.my-online.store';
        var isRidge = 'True';
        var cpTheme = 'fws_pink';
        var cpThemeEmpty = '';

        var trialExists = 'False';
        var trialStartDate = '';
        var trialExpiryDays = 0;
        var trialDateDifference = '0';
        var trialEndDate = '';
        var trialProPrice = 0;
        var trialPrimePrice = 0;
        var trialElitePrice = 0;
        var trialConverted = '';
        var subscriptionStatus = 'active';

        var subscriptionLapsed = 'False';

        var controlPanelVersion = 3;

        var packageTypeId = 0;
        var isRidgePackageTypeId = 'False';

        var planDiscountLive = 'True';
        var planDiscountPercent = '50';

        var startupTrialActive = 'False';
        var startupTrialEndDate = '';

        var storeObjectCompetitors = null;
        var isGoogleUser = 0;
    </script>

    <script src="./manage_products_list_files/axios.js.download"></script><script src="./manage_products_list_files/js.cookie.js.download"></script><script src="./manage_products_list_files/utilities.js.download"></script><script src="./manage_products_list_files/ua-parser.min.js.download"></script><script src="./manage_products_list_files/user.js.download"></script>
    <!-- Add a reference to the clientside currency lib-->
    <script src="./manage_products_list_files/accountingCurrency.js.download"></script><title>

</title><link rel="prefetch" href="https://stylez360.github.io/manage_products_categories"></head>
<body id="dashboard" data-instant-allow-query-string="" style="overflow: unset;">
    <script src="./manage_products_list_files/preload.js.download"></script>
    <form method="post" action="https://stylez360.github.io/manage_products_list.aspx" id="form1" enctype="multipart/form-data" role="form">
<div class="aspNetHidden">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="t3DeTYzhvBnA16cBNBoD28CastI0afBMMvx3D4bMZtXPTNFa5rh7whxxFz5U3kr7YbafWw9NpzK88Kay5jFetPy6YN3e/ULtaRlibo8VKQY=">
</div>

<script src="./manage_products_list_files/jquery-1.11.3.min.js.download"></script><script src="./manage_products_list_files/jqueryuiclone1_12_1.js.download"></script>
<div class="aspNetHidden">

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="6E2F602E">
</div>

        <div id="session_expires_overlay"></div>

        <div class="tour_overlay">
            <div class="tour_title_container">
                <div class="tour_title"></div>
                <i class="fa fa-times tour_close" aria-hidden="true" onclick="closeTour();"></i>
            </div>
            <div class="tour_body"></div>
            <div class="tour_footer hide_overflow">
                <a class="tour_footer_previous left button button_white marginl5" onclick="previousTour();">Previous</a>
                <a class="tour_footer_next right button button_white marginr5" onclick="nextTour();">Next</a>
            </div>
        </div>

        <div class="welcome_wizard_overlay"></div>
        <div class="overlay_forced"></div>

        <div class="nav_overlay"></div>
        <div class="settings_menu_overlay"></div>
        <div class="live_orders_menu_overlay"></div>
        <div class="support_info_menu_overlay"></div>
        <div class="prodedit_menu_overlay"></div>

        <nav>
            <div class="nav_inner">
                <div id="nav_logo_container">
                    <a href="https://stylez360.github.io/main" class="nav_link nav_logo">
                        <div class="nav_link_container">
                            <!-- Freewebstore Logo -->
                        
                            <svg version="1.1" id="freewebstore_logo" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="231px" height="54px" viewBox="0 0 231 54" enable-background="new 0 0 231 54" xml:space="preserve">
                                <g>
                                    <g>
                                        <path id="freewebstore_logo1" d="M13.708,22.893c0.413,1.134,0.829,2.175,1.236,3.31c0.05,0.137,0.137,0.081,0.239,0.081
                        c2.103,0,4.205-0.025,6.308-0.02c0.149,0.001,0.215-0.053,0.266-0.196c0.325-0.916,0.662-1.65,0.995-2.564
                        C22.831,23.284,22.911,23,23,23c-3.124,0-6.211,0-9.304,0C13.701,23,13.7,22.874,13.708,22.893z"></path>
                                        <path id="freewebstore_logo2" d="M35.2,24.26l-6.828-8.572c-0.371-0.468-1.166-0.851-1.765-0.849L9.087,14.864
                        c-0.598,0-1.087,0.49-1.086,1.089l0.025,18.395c0.002,0.6,0.491,1.086,1.09,1.086l17.521-0.025c0.598,0,1.393-0.385,1.764-0.854
                        l6.803-8.591C35.573,25.495,35.573,24.729,35.2,24.26z M15.01,31.758c-0.771-0.004-1.386-0.631-1.383-1.406
                        c0.003-0.756,0.634-1.377,1.395-1.375c0.761,0.004,1.386,0.631,1.386,1.387C16.407,31.133,15.776,31.764,15.01,31.758z
                        M21.438,31.758c-0.771-0.004-1.386-0.631-1.383-1.406c0.003-0.756,0.634-1.377,1.396-1.375c0.76,0.004,1.386,0.631,1.385,1.387
                        C22.835,31.133,22.204,31.764,21.438,31.758z M27.561,20.722c-0.491,0.011-0.982,0.014-1.473-0.003
                        c-0.203-0.006-0.289,0.056-0.358,0.249c-0.78,2.176-1.57,4.223-2.359,6.395C23.173,27.905,22.854,28,22.274,28
                        c-2.58,0-5.16,0-7.739,0c-0.132,0-0.264,0.114-0.395,0.101c-0.413-0.049-0.672-0.215-0.813-0.606
                        c-0.416-1.164-0.952-2.295-1.377-3.455C11.674,23.277,11,22.55,11,21.79c0-0.132,0-0.264,0-0.396c0-0.017,0.143-0.031,0.15-0.05
                        c0.198-0.537,0.547-0.74,1.112-0.739c1.071,0.002,2.169,0.001,3.24,0.001c2.661,0,5.337-0.001,7.998,0.004
                        c0.163,0,0.257-0.036,0.307-0.202c0.076-0.259,0.197-0.361,0.272-0.621c0.134-0.46,0.392-0.787,0.87-0.787
                        c0.924,0,1.848,0,2.771,0c0.046,0,0.092-0.104,0.139-0.088c0.461,0.164,0.753,0.554,0.682,1.01
                        C28.463,20.422,28.067,20.711,27.561,20.722z M30.777,26.67c-0.857,0-1.552-0.693-1.554-1.551c0-0.856,0.692-1.551,1.55-1.553
                        c0.857-0.001,1.553,0.693,1.553,1.549C32.329,25.973,31.636,26.668,30.777,26.67z"></path>
                                    </g>
                                </g>
                                <text id="freewebstore_logo3" transform="matrix(1 0 0 1 52 34.5)" font-family="&#39;sansationbold&#39;" font-size="28">freewebstore</text>
                            </svg>
                            <!-- End of Freewebstore Logo -->
                        
                            <svg id="ridge_logo" width="100px" height="33px" viewBox="0 0 1761.798 337.659">
                                <g>
                                    <polygon id="ridge_logo1" points="324.854,162.43 617.602,337.659 280.937,0 0,337.795 278.798,92.771 278.798,259.354 	"></polygon>
                                    <text transform="matrix(1 0 0 1 754.2627 280.7949)" id="ridge_logo2" font-family="&#39;Merriweather Sans&#39;" font-weight="700" font-size="300" letter-spacing="18">RIDGE</text>
                                </g>
                            </svg>

                        </div>
                    </a>
                    <div id="nav_close_button" class="color_primary"><i class="fa fa-times"></i></div>
                </div>
                <div id="nav_hover_text">Menu</div>
                



<!--<div class="nav_link_container_top">
    <a href="main.aspx" class="nav_link_container"><i class="fa fa-home" aria-hidden="true"></i><span>Home</span></a>
    <a onclick="closeNav();" class="nav_link_container_back"><i class="fa fa-expand" aria-hidden="true"></i></a>
</div>-->
<div id="nav_inner_items"><div class="nav_item_group"><div class="nav_item" data-name="Home"><a href="https://stylez360.github.io/main" class="nav_item_link "><i class="fa fa-home nav_item_link_icon"></i><span>Home</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-name="Orders" onclick="navDropdownToggle(&#39;Orders&#39;)" ;=""><a data-tourid="nav-menu-orders" class="nav_item_link nav_item_link_has_subs"><div><i class="fa fa-file-text-o nav_item_link_icon"></i><span>Orders</span></div><div class="nav_item_dropdown_button" data-name="Orders"><i class="fa fa-chevron-down"></i></div></a></div><div class="nav_item_sub_container" data-parent="Orders"><div class="nav_item_group"><div class="nav_item" data-parent="Orders" data-name="Overview" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/orders" class="nav_item_link " data-altlinks="orders_accounting_kashflow,orders_insights"><span>Overview</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Orders" data-name="List All Orders" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/orders_view_list" class="nav_item_link " data-altlinks="orders_item"><span>List All Orders</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Orders" data-name="Payment Gateways" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/orders_payment_gateways" data-tourid="nav-menu-checkouts" class="nav_item_link " data-altlinks="checkouts/*/index"><span>Payment Gateways</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Orders" data-name="Customers" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/orders_customers" class="nav_item_link " data-altlinks="orders_customers_export,orders_customers_edit,orders_customers_view"><span>Customers</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Orders" data-name="Notification Emails" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/orders_notifications" class="nav_item_link "><span>Notification Emails</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Orders" data-name="Dispatch Emails" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/orders_dispatch" class="nav_item_link "><span>Dispatch Emails</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Orders" data-name="Invoices" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/orders_invoices" class="nav_item_link "><span>Invoices</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Orders" data-name="Export" data-planrequired="true" data-apploading="false"><a href="https://stylez360.github.io/orders_export" class="nav_item_link "><span>Export</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Orders" data-name="Abandoned Carts" data-planrequired="true" data-apploading="false"><a href="https://stylez360.github.io/orders_abandoned_carts" class="nav_item_link "><span>Abandoned Carts</span></a></div></div></div></div><div class="nav_item_group"><div class="nav_item nav_parent_active" data-name="Manage" onclick="navDropdownToggle(&#39;Manage&#39;)" ;=""><a data-tourid="nav-menu-manage" class="nav_item_link nav_item_link_has_subs"><div><i class="fa fa-cubes nav_item_link_icon"></i><span>Manage</span></div><div class="nav_item_dropdown_button" data-name="Manage"><i class="fa fa-chevron-down nav_item_dropdown_button_active"></i></div></a></div><div class="nav_item_sub_container" data-parent="Manage" style="display: block;"><div class="nav_item_group"><div class="nav_item" data-parent="Manage" data-name="Overview" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/manage" class="nav_item_link "><span>Overview</span></a></div></div><div class="nav_item_group"><div class="nav_item nav_parent_active" data-parent="Manage" data-name="Products" onclick="navDropdownToggle(&#39;Products&#39;, &#39;Manage&#39;)" ;="" data-planrequired="false" data-apploading="false"><a data-tourid="nav-menu-products" class="nav_item_link nav_item_link_has_subs"><div><span>Products</span></div><div class="nav_item_dropdown_button" data-name="Products"><i class="fa fa-chevron-down nav_item_dropdown_button_active"></i></div></a></div><div class="nav_item_sub_container" data-parent="Products" style="display: block;"><div class="nav_item_group"><div class="nav_item" data-parent="Products" data-name="Overview" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/manage_products" class="nav_item_link "><span>Overview</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Products" data-name="Add A Product" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/manage_products?prodNew=true" data-tourid="nav-menu-addproducts" class="nav_item_link "><span>Add A Product</span></a></div></div><div class="nav_item_group"><div class="nav_item active" data-parent="Products" data-name="List All Products" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/manage_products_list" class="nav_item_link " data-altlinks="manage_products_list_deleted,manage_products_editv2"><span>List All Products</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Products" data-name="Categories" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/manage_products_categories" class="nav_item_link "><span>Categories</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Products" data-name="Stock" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/manage_products_stock" class="nav_item_link " data-altlinks="manage_products_stock_requests,manage_products_stock_requests_item,manage_products_stock_requests_settings"><span>Stock</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Products" data-name="Options/ Variations" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/manage_products_options" class="nav_item_link " data-altlinks="manage_products_options_edit"><span>Options/ Variations</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Products" data-name="Brands" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/manage_products_brands" class="nav_item_link "><span>Brands</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Products" data-name="Reviews" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/manage_products_reviews" class="nav_item_link "><span>Reviews</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Products" data-name="Checkout Forms" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/manage_products_checkoutforms" class="nav_item_link " data-altlinks="manage_products_checkoutforms_edit"><span>Checkout Forms</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Products" data-name="Suppliers" data-planrequired="true" data-apploading="false"><a href="https://stylez360.github.io/manage_products_suppliers" class="nav_item_link " data-altlinks="manage_products_suppliers_edit"><span>Suppliers</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Products" data-name="Groups" data-planrequired="true" data-apploading="false"><a href="https://stylez360.github.io/manage_products_groups" class="nav_item_link " data-altlinks="manage_products_groups_action,manage_products_groups_edit"><span>Groups</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Products" data-name="Import" data-planrequired="true" data-apploading="false"><a href="https://stylez360.github.io/manage_products_importv2" class="nav_item_link "><span>Import</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Products" data-name="Export" data-planrequired="true" data-apploading="false"><a href="https://stylez360.github.io/manage_products_exportsv2" class="nav_item_link "><span>Export</span></a></div></div></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Manage" data-name="Pages" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/manage_pages" data-tourid="nav-menu-pages" class="nav_item_link " data-altlinks="manage_pages_edit,manage_pages_edit_basket,manage_pages_edit_contact,manage_pages_edit_external,manage_pages_edit_offers,manage_pages_instagramv3,app/storeblog/index,app/storeblog/editv2"><span>Pages</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Manage" data-name="Images" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/manage_images" class="nav_item_link " data-altlinks="manage_images_import,manage_images_export"><span>Images</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Manage" data-name="Shipping" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/manage_shipping" class="nav_item_link " data-altlinks="manage_shipping_rules,manage_shipping_fedex,manage_shipping_ups,manage_products_shipping_fixed"><span>Shipping</span></a></div></div></div></div><div class="nav_item_group"><div class="nav_item" data-name="Design" onclick="navDropdownToggle(&#39;Design&#39;)" ;=""><a data-tourid="nav-menu-design" class="nav_item_link nav_item_link_has_subs"><div><i class="fa fa-paint-brush nav_item_link_icon"></i><span>Design</span></div><div class="nav_item_dropdown_button" data-name="Design"><i class="fa fa-chevron-down"></i></div></a></div><div class="nav_item_sub_container" data-parent="Design"><div class="nav_item_group"><div class="nav_item" data-parent="Design" data-name="Overview" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/design" class="nav_item_link "><span>Overview</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Design" data-name="Theme Editor" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/design_themeeditor" data-tourid="nav-menu-themeeditor" class="nav_item_link "><span>Theme Editor</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Design" data-name="Switch Theme" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/design_switch_design" class="nav_item_link " data-altlinks="design_switch_design_info"><span>Switch Theme</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Design" data-name="Slideshow" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/design_slideshow" class="nav_item_link "><span>Slideshow</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Design" data-name="Favicon" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/design_favicon" class="nav_item_link "><span>Favicon</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Design" data-name="Language Packs" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/design_languagepacks" class="nav_item_link "><span>Language Packs</span></a></div></div></div></div><div class="nav_item_group"><div class="nav_item" data-name="Marketing" onclick="navDropdownToggle(&#39;Marketing&#39;)" ;=""><a class="nav_item_link nav_item_link_has_subs"><div><i class="fa fa-line-chart nav_item_link_icon"></i><span>Marketing</span></div><div class="nav_item_dropdown_button" data-name="Marketing"><i class="fa fa-chevron-down"></i></div></a></div><div class="nav_item_sub_container" data-parent="Marketing"><div class="nav_item_group"><div class="nav_item" data-parent="Marketing" data-name="Overview" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/marketing" class="nav_item_link "><span>Overview</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Marketing" data-name="Domain Names" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/marketing_domains" class="nav_item_link " data-altlinks="marketing_domains_setup,marketing_domains_register,marketing_domains_dns"><span>Domain Names</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Marketing" data-name="SEO" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/marketing_searchengineoptimization" class="nav_item_link "><span>SEO</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Marketing" data-name="Social Media" onclick="navDropdownToggle(&#39;Social Media&#39;, &#39;Marketing&#39;)" ;="" data-planrequired="false" data-apploading="false"><a class="nav_item_link nav_item_link_has_subs"><div><span>Social Media</span></div><div class="nav_item_dropdown_button" data-name="Social Media"><i class="fa fa-chevron-down"></i></div></a></div><div class="nav_item_sub_container" data-parent="Social Media"><div class="nav_item_group"><div class="nav_item" data-parent="Social Media" data-name="Overview" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/marketing_socialmedia" class="nav_item_link "><span>Overview</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Social Media" data-name="Share To Twitter" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/marketing_twitter" class="nav_item_link "><span>Share To Twitter</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Social Media" data-name="Social Media Icons" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/marketing_socialmediaicons" class="nav_item_link "><span>Social Media Icons</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Social Media" data-name="Share This Icons" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/marketing_socialmediashare" class="nav_item_link "><span>Share This Icons</span></a></div></div></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Marketing" data-name="Statistics" onclick="navDropdownToggle(&#39;Statistics&#39;, &#39;Marketing&#39;)" ;="" data-planrequired="false" data-apploading="false"><a class="nav_item_link nav_item_link_has_subs"><div><span>Statistics</span></div><div class="nav_item_dropdown_button" data-name="Statistics"><i class="fa fa-chevron-down"></i></div></a></div><div class="nav_item_sub_container" data-parent="Statistics"><div class="nav_item_group"><div class="nav_item" data-parent="Statistics" data-name="Overview" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/marketing_statistics" class="nav_item_link "><span>Overview</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Statistics" data-name="Order Stats" data-planrequired="true" data-apploading="false"><a href="https://stylez360.github.io/marketing_statistics_orders" class="nav_item_link "><span>Order Stats</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Statistics" data-name="Visitor Stats" data-planrequired="true" data-apploading="false"><a href="https://stylez360.github.io/marketing_statistics_visitors" class="nav_item_link "><span>Visitor Stats</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Statistics" data-name="Product Stats" data-planrequired="true" data-apploading="false"><a href="https://stylez360.github.io/marketing_statistics_products" class="nav_item_link "><span>Product Stats</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Statistics" data-name="Search Engine Hits" data-planrequired="true" data-apploading="false"><a href="https://stylez360.github.io/marketing_statistics_searchenginehits" class="nav_item_link "><span>Search Engine Hits</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Statistics" data-name="Web Spider Hits" data-planrequired="true" data-apploading="false"><a href="https://stylez360.github.io/marketing_statistics_crawlerhits" class="nav_item_link "><span>Web Spider Hits</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Statistics" data-name="Live Orders Map" data-planrequired="true" data-apploading="false"><a href="https://stylez360.github.io/marketing_statistics_liveorders" class="nav_item_link "><span>Live Orders Map</span></a></div></div></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Marketing" data-name="Google Tools" onclick="navDropdownToggle(&#39;Google Tools&#39;, &#39;Marketing&#39;)" ;="" data-planrequired="false" data-apploading="false"><a class="nav_item_link nav_item_link_has_subs"><div><span>Google Tools</span></div><div class="nav_item_dropdown_button" data-name="Google Tools"><i class="fa fa-chevron-down"></i></div></a></div><div class="nav_item_sub_container" data-parent="Google Tools"><div class="nav_item_group"><div class="nav_item" data-parent="Google Tools" data-name="Overview" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/marketing_google" class="nav_item_link "><span>Overview</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Google Tools" data-name="Analytics" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/marketing_googleanalyticsv2" class="nav_item_link "><span>Analytics</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Google Tools" data-name="Webmaster Tools" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/marketing_googlewebmastertools" class="nav_item_link "><span>Webmaster Tools</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Google Tools" data-name="Shopping" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/marketing_googleshoppingv2" class="nav_item_link " data-altlinks="marketing_googleshopping_categoryassign,marketing_googleshopping_ineligible"><span>Shopping</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Google Tools" data-name="Adsense" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/marketing_googleadsense" class="nav_item_link "><span>Adsense</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Google Tools" data-name="GSuite" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/app/gsuite/index" class="nav_item_link " data-altlinks="app/gsuite/index"><span>GSuite</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Google Tools" data-name="Conversion Tracking" data-planrequired="true" data-apploading="false"><a href="https://stylez360.github.io/marketing_googleorderconversiontracking" class="nav_item_link "><span>Conversion Tracking</span></a></div></div></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Marketing" data-name="Facebook Tools" onclick="navDropdownToggle(&#39;Facebook Tools&#39;, &#39;Marketing&#39;)" ;="" data-planrequired="false" data-apploading="false"><a class="nav_item_link nav_item_link_has_subs"><div><span>Facebook Tools</span></div><div class="nav_item_dropdown_button" data-name="Facebook Tools"><i class="fa fa-chevron-down"></i></div></a></div><div class="nav_item_sub_container" data-parent="Facebook Tools"><div class="nav_item_group"><div class="nav_item" data-parent="Facebook Tools" data-name="Overview" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/marketing_facebook" class="nav_item_link "><span>Overview</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Facebook Tools" data-name="Shops" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/app/facebook-shop/index" class="nav_item_link " data-altlinks="app/facebook-shop/index"><span>Shops</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Facebook Tools" data-name="Pixel" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/app/pixel/index" class="nav_item_link " data-altlinks="app/pixel/index"><span>Pixel</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Facebook Tools" data-name="Messenger" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/app/messenger/index" class="nav_item_link " data-altlinks="app/messenger/index"><span>Messenger</span></a></div></div></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Marketing" data-name="Site Verification" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/marketing_siteverification" class="nav_item_link "><span>Site Verification</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Marketing" data-name="Discount Codes" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/marketing_coupons" class="nav_item_link " data-altlinks="marketing_coupons_report,marketing_coupons_import,marketing_coupons_edit"><span>Discount Codes</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Marketing" data-name="Newsletter" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/marketing_newsletter" class="nav_item_link "><span>Newsletter</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Marketing" data-name="Meta Tags" data-planrequired="true" data-apploading="false"><a href="https://stylez360.github.io/marketing_metatags" class="nav_item_link "><span>Meta Tags</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Marketing" data-name="Product Feeds" data-planrequired="true" data-apploading="false"><a href="https://stylez360.github.io/marketing_productfeeds" class="nav_item_link "><span>Product Feeds</span></a></div></div></div></div><div class="nav_item_group"><div class="nav_item" data-name="Settings"><a href="https://stylez360.github.io/settings" class="nav_item_link "><i class="fa fa-cog nav_item_link_icon"></i><span>Settings</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-name="Support" onclick="navDropdownToggle(&#39;Support&#39;)" ;=""><a class="nav_item_link nav_item_link_has_subs"><div><i class="fa fa-question-circle nav_item_link_icon"></i><span>Support</span></div><div class="nav_item_dropdown_button" data-name="Support"><i class="fa fa-chevron-down"></i></div></a></div><div class="nav_item_sub_container" data-parent="Support"><div class="nav_item_group"><div class="nav_item" data-parent="Support" data-name="Overview" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/supportv2" class="nav_item_link "><span>Overview</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Support" data-name="Ask A Question" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/support_new_ticket" class="nav_item_link "><span>Ask A Question</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Support" data-name="Your Support Tickets" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/support_mysupport" class="nav_item_link "><span>Your Support Tickets</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Support" data-name="Blogs" data-planrequired="false" data-apploading="false"><a href="https://blog.freewebstore.com/" class="nav_item_link " target="_blank"><span>Blogs</span></a></div></div><div class="nav_item_group"><div class="nav_item" data-parent="Support" data-name="CP Updates" data-planrequired="false" data-apploading="false"><a href="https://stylez360.github.io/support_cp_updates" class="nav_item_link "><span>CP Updates</span></a></div></div></div></div><div class="nav_item_group"><div class="nav_item" data-name="App Center"><a href="https://stylez360.github.io/appstore/appstorev2" data-tourid="nav-menu-apps" class="nav_item_link "><i class="fa fa-th nav_item_link_icon"></i><span>App Center</span></a></div></div></div>

<script>

    var pages = [
        {
            "name": "Home",
            "link": "main",
            "icon": "home"
        },
        {
            "name": "Orders",
            "link": "orders",
            "icon": "file-text-o",
            "tourid": "nav-menu-orders",
            "subs": [
                {
                    "name": "Overview",
                    "link": "orders",
                    "altLinks": ["orders_accounting_kashflow", "orders_insights"],
                },
                {
                    "name": "List All Orders",
                    "link": "orders_view_list",
                    "altLinks": ["orders_item"]
                },
                {
                    "name": "Payment Gateways",
                    "link": "orders_payment_gateways",
                    "tourid": "nav-menu-checkouts",
                    "altLinks": ["checkouts/*/index"]/*,
                    "status": "New",
                    "statusIcon": "<i class='fa fa-star'></i>"*/
                },
                {
                    "name": "Customers",
                    "link": "orders_customers",
                    "altLinks": ["orders_customers_export", "orders_customers_edit", "orders_customers_view"]
                },
                {
                    "name": "Notification Emails",
                    "link": "orders_notifications"
                },
                {
                    "name": "Dispatch Emails",
                    "link": "orders_dispatch"
                },
                {
                    "name": "Invoices",
                    "link": "orders_invoices"
                },
                {
                    "name": "Export",
                    "link": "orders_export",
                    "plan": ["9", "10", "11", "13", "12", "-1"],
                    "app": ["order-exporter"]
                },
                {
                    "name": "Abandoned Carts",
                    "link": "orders_abandoned_carts",
                    "plan": ["9", "10", "11", "13", "-1"]
                }
            ]
        },
        {
            "name": "Manage",
            "link": "manage",
            "icon": "cubes",
            "tourid": "nav-menu-manage",
            "subs": [
                {
                    "name": "Overview",
                    "link": "manage"
                },
                {
                    "name": "Products",
                    "link": "manage_products",
                    "tourid": "nav-menu-products",
                    "subs": [
                        {
                            "name": "Overview",
                            "link": "manage_products"
                        },
                        {
                            "name": "Add A Product",
                            "link": "manage_products?prodNew=true",
                            "tourid": "nav-menu-addproducts"
                        },
                        {
                            "name": "List All Products",
                            "link": "manage_products_list",
                            "altLinks": ["manage_products_list_deleted", "manage_products_editv2"]
                        },
                        {
                            "name": "Categories",
                            "link": "manage_products_categories"
                        },
                        {
                            "name": "Stock",
                            "link": "manage_products_stock",
                            "altLinks": ["manage_products_stock_requests", "manage_products_stock_requests_item", "manage_products_stock_requests_settings"]
                        },
                        {
                            "name": "Options/ Variations",
                            "link": "manage_products_options",
                            "altLinks": ["manage_products_options_edit"]
                        },
                        {
                            "name": "Brands",
                            "link": "manage_products_brands"
                        },
                        {
                            "name": "Reviews",
                            "link": "manage_products_reviews"
                        },
                        {
                            "name": "Checkout Forms",
                            "link": "manage_products_checkoutforms",
                            "altLinks": ["manage_products_checkoutforms_edit"]
                        },
                        {
                            "name": "Suppliers",
                            "link": "manage_products_suppliers",
                            "plan": ["9", "10", "11", "13", "-1"],
                            "cpv2": true,
                            "altLinks": ["manage_products_suppliers_edit"]
                        },
                        {
                            "name": "Groups",
                            "link": "manage_products_groups",
                            "plan": ["9", "10", "11", "13", "12", "-1"],
                            "altLinks": ["manage_products_groups_action", "manage_products_groups_edit"]
                        },
                        {
                            "name": "Import",
                            "link": "manage_products_importv2",
                            "plan": ["9", "10", "11", "13", "-1"]
                        },
                        {
                            "name": "Export",
                            "link": "manage_products_exportsv2",
                            "plan": ["9", "10", "11", "13", "-1"]
                        }
                    ]
                },
                {
                    "name": "Pages",
                    "link": "manage_pages",
                    "tourid": "nav-menu-pages",
                    "altLinks": ["manage_pages_edit", "manage_pages_edit_basket", "manage_pages_edit_contact", "manage_pages_edit_external", "manage_pages_edit_offers", "manage_pages_instagramv3", "app/storeblog/index", "app/storeblog/editv2"]
                },
                {
                    "name": "Images",
                    "link": "manage_images",
                    "altLinks": ["manage_images_import", "manage_images_export"]
                },
                {
                    "name": "Shipping",
                    "link": "manage_shipping",
                    "altLinks": ["manage_shipping_rules", "manage_shipping_fedex", "manage_shipping_ups", "manage_products_shipping_fixed"],
                },
            ]
        },
        {
            "name": "Design",
            "link": "design",
            "icon": "paint-brush",
            "tourid": "nav-menu-design",
            "subs": [
                {
                    "name": "Overview",
                    "link": "design"
                },
                {
                    "name": "Theme Editor",
                    "link": "design_themeeditor",
                    "tourid": "nav-menu-themeeditor"
                },
                {
                    "name": "Switch Theme",
                    "link": "design_switch_design",
                    "altLinks": ["design_switch_design_info"]
                },
                {
                    "name": "Slideshow",
                    "link": "design_slideshow"
                },
                {
                    "name": "Favicon",
                    "link": "design_favicon"
                },
                {
                    "name": "Language Packs",
                    "link": "design_languagepacks"
                }
            ]
        },
        {
            "name": "Marketing",
            "link": "marketing",
            "icon": "line-chart",
            "subs": [
                {
                    "name": "Overview",
                    "link": "marketing"
                },
                {
                    "name": "Domain Names",
                    "link": "marketing_domains",
                    "altLinks": ["marketing_domains_setup", "marketing_domains_register", "marketing_domains_dns"]
                },
                {
                    "name": "SEO",
                    "link": "marketing_searchengineoptimization"
                },
                {
                    "name": "Social Media",
                    "link": "marketing_socialmedia",
                    "subs": [
                        {
                            "name": "Overview",
                            "link": "marketing_socialmedia"
                        },
                        {
                            "name": "Share To Twitter",
                            "link": "marketing_twitter"
                        },
                        {
                            "name": "Social Media Icons",
                            "link": "marketing_socialmediaicons"
                        },
                        {
                            "name": "Share This Icons",
                            "link": "marketing_socialmediashare"
                        }
                    ]
                },
                {
                    "name": "Statistics",
                    "link": "marketing_statistics",
                    "subs": [
                        {
                            "name": "Overview",
                            "link": "marketing_statistics"
                        },
                        {
                            "name": "Order Stats",
                            "link": "marketing_statistics_orders",
                            "plan": ["9", "10", "11", "13", "12", "-1"],
                            "app": ["statistics"]
                        },
                        {
                            "name": "Visitor Stats",
                            "link": "marketing_statistics_visitors",
                            "plan": ["9", "10", "11", "13", "12", "-1"],
                            "app": ["statistics"]
                        },
                        {
                            "name": "Product Stats",
                            "link": "marketing_statistics_products",
                            "plan": ["9", "10", "11", "13", "12", "-1"],
                            "app": ["statistics"]
                        },
                        {
                            "name": "Search Engine Hits",
                            "link": "marketing_statistics_searchenginehits",
                            "plan": ["9", "10", "11", "13", "12", "-1"],
                            "app": ["statistics"]
                        },
                        {
                            "name": "Web Spider Hits",
                            "link": "marketing_statistics_crawlerhits",
                            "plan": ["9", "10", "11", "13", "12", "-1"],
                            "app": ["statistics"]
                        },
                        {
                            "name": "Live Orders Map",
                            "link": "marketing_statistics_liveorders",
                            "plan": ["9", "10", "11", "-1"],
                            "app": ["statistics"]
                        }
                    ]
                },
                {
                    "name": "Google Tools",
                    "link": "marketing_google",
                    "subs": [
                        {
                            "name": "Overview",
                            "link": "marketing_google"
                        },
                        {
                            "name": "Analytics",
                            "link": "marketing_googleanalyticsv2",
                        },
                        {
                            "name": "Webmaster Tools",
                            "link": "marketing_googlewebmastertools"
                        },
                        {
                            "name": "Shopping",
                            "link": "marketing_googleshoppingv2",
                            "altLinks": ["marketing_googleshopping_categoryassign", "marketing_googleshopping_ineligible"],
                        },
                        {
                            "name": "Adsense",
                            "link": "marketing_googleadsense"
                        },
                        {
                            "name": "GSuite",
                            "link": "app/gsuite/index",
                            "altLinks": ["app/gsuite/index"]
                        },
                        {
                            "name": "Conversion Tracking",
                            "link": "marketing_googleorderconversiontracking",
                            "plan": ["9", "10", "11", "12", "13", "-1"]
                        },
                    ]
                },
                {
                    "name": "Facebook Tools",
                    "link": "marketing_facebook",
                    "subs": [
                        {
                            "name": "Overview",
                            "link": "marketing_facebook"
                        },
                        {
                            "name": "Shops",
                            "link": "app/facebook-shop/index",
                            "altLinks": ["app/facebook-shop/index"]
                        },
                        {
                            "name": "Pixel",
                            "link": "app/pixel/index",
                            "altLinks": ["app/pixel/index"]
                        },
                        {
                            "name": "Messenger",
                            "link": "app/messenger/index",
                            "altLinks": ["app/messenger/index"]
                        }
                    ]
                },
                {
                    "name": "Site Verification",
                    "link": "marketing_siteverification"
                },
                {
                    "name": "Discount Codes",
                    "link": "marketing_coupons",
                    "altLinks": ["marketing_coupons_report", "marketing_coupons_import", "marketing_coupons_edit"]
                },
                {
                    "name": "Newsletter",
                    "link": "marketing_newsletter"
                },
                {
                    "name": "Meta Tags",
                    "link": "marketing_metatags",
                    "plan": ["9", "10", "11", "12", "13", "-1"]/*,
                    "linkedDomain": true*/
                },
                {
                    "name": "Product Feeds",
                    "link": "marketing_productfeeds",
                    "plan": ["9", "10", "11", "12", "13", "-1"]
                }
            ]
        },
        {
            "name": "Settings",
            "link": "settings",
            "icon": "cog"
        },
        {
            "name": "Support",
            "link": "supportv2",
            "icon": "question-circle",
            "subs": [
                {
                    "name": "Overview",
                    "link": "supportv2"
                },
                {
                    "name": "Ask A Question",
                    "link": "support_new_ticket"
                },
                {
                    "name": "Your Support Tickets",
                    "link": "support_mysupport"
                },
                {
                    "name": "Blogs",
                    "link": "https://blog.freewebstore.com/",
                    "external": true
                },
                {
                    "name": "CP Updates",
                    "link": "support_cp_updates"
                },
            ]
        },
        {
            "name": "App Center",
            "link": "appstore/appstorev2",
            "icon": "th",
            "tourid": "nav-menu-apps"
        }
    ];


    var performNavAppCheck = new Array();
    var performNavAppEnabled = new Array();
    (function buildMainNav() {
        var currentPage = location.pathname;
        var navHtml = '';

        [].slice.call(pages).forEach(function(page) {
            var visual = '';
            if (page.icon != null) {
                visual = "<i class='fa fa-" + page.icon + " nav_item_link_icon'></i>";
            }
            var tourId = "";
            if (page.tourid != null) {
                tourId = "data-tourid='" + page.tourid + "'";
            }

            var name = "<span>" + page.name + "</span>";

            var subsIcon = '';
            var hasSubs = '';
            var subs = '';
            var theLink = '<a href="/' + page.link + '" ' + tourId + ' class="nav_item_link ' + hasSubs + '">' + visual + name + '</a>';
            var subToggle = '';
            if (page.subs != null && page.subs.length > 0) {
                subsIcon = "<div class='nav_item_dropdown_button' data-name='" + page.name + "'><i class='fa fa-chevron-down'></i></div>";
                hasSubs = 'nav_item_link_has_subs';
                hasSubsToggle = "";
                theLink = '<a ' + tourId + ' class="nav_item_link ' + hasSubs + '"><div>' + visual + name + '</div>' + subsIcon + '</a>';
                subToggle = 'onclick="navDropdownToggle(\'' + page.name + '\')";';
                subs += buildMainNavSubs(page.subs, page.name);
            }

            var item = '<div class="nav_item_group">';
            item += '<div class="nav_item" data-name="' + page.name + '" ' + subToggle + '>';
            item += theLink;
            item += '</div>';
            item += subs;
            item += '</div>';

            navHtml += item;
        });

        document.getElementById("nav_inner_items").innerHTML = navHtml;
        delete navHtml;
        performNavAppCheckGet();
    })();

    function buildMainNavSubs(theSubs, parent) {

        var allSubs = '';

        for (var s = 0; s < theSubs.length; s++) {

            var theSub = theSubs[s];

            var theSubTourId = "";
            if (theSub.tourid != null) {
                theSubTourId = "data-tourid='" + theSub.tourid + "'";
            }

            var subName = "<span>" + theSub.name + "</span>";

            var subsIcon = '';
            var hasSubs = '';
            var subs = '';

            var altLinks = '';
            if (theSub.altLinks != null && theSub.altLinks.length > 0) {
                altLinks = 'data-altLinks="' + theSub.altLinks + '"';
            }

            var link = "/" + theSub.link;
            var external = '';
            if (theSub.external != null) {
                if (theSub.external == true) {
                    external = "target='_blank'";
                    link = theSub.link;
                }
            }

            var status = "";
            if (theSub.status != null) {
                if (theSub.statusIcon != null) {
                    status = '<span class="nav_item_link_status" data-status="' + theSub.status + '">' + theSub.statusIcon + '</span>';
                } else {
                    status = '<span class="nav_item_link_status" data-status="' + theSub.status + '">' + theSub.status + '</span>';
                }
                
            }

            var theLink = '<a href="' + link + '" ' + theSubTourId + ' class="nav_item_link ' + hasSubs + '" ' + altLinks + ' ' + external + '>' + subName + status + '</a>';
            var subToggle = '';
            if (theSub.subs != null && theSub.subs.length > 0) {
                subsIcon = "<div class='nav_item_dropdown_button' data-name='" + theSub.name + "'><i class='fa fa-chevron-down'></i></div>";
                hasSubs = 'nav_item_link_has_subs';
                theLink = '<a ' + theSubTourId + ' class="nav_item_link ' + hasSubs + '"><div>' + subName + '</div>' + subsIcon + '</a>'
                subToggle = 'onclick="navDropdownToggle(\'' + theSub.name + '\', \'' + parent + '\')";';
                subs += buildMainNavSubs(theSub.subs, theSub.name);

            }

            var navPlanRequired = false;
            if (theSub.plan != null && theSub.plan.length > 0) {
                if (theSub.plan.indexOf(packageTypeId.toString()) == -1) {
                    navPlanRequired = true;
                }
            }
            if (theSub.cpv2 != null) {
                if (theSub.cpv2 == true) {
                    if (controlPanelVersion < 3) {
                        navPlanRequired = false;
                    }
                }
            }
            if (theSub.linkedDomain != null) {
                if (theSub.linkedDomain == true) {
                    if (checkUrlIsDomain(storeUrl) == false) {
                        navPlanRequired = false;
                    }
                }
            }

            var appLoading = false;
            if (navPlanRequired == true) {
                if (theSub.app != null) {
                    if (theSub.app.length > 0) {
                        appLoading = true;
                        for (var a = 0; a < theSub.app.length; a++) {
                            if (performNavAppCheck.indexOf(theSub.app[a]) == -1) {
                                performNavAppCheck.push(theSub.app[a]);
                            }
                        }
                        
                    }
                }
            }

            var subItem = '<div class="nav_item_group">';
                subItem += '<div class="nav_item" data-parent="' + parent + '" data-name="' + theSub.name + '" ' + subToggle + ' data-planrequired="' + navPlanRequired + '" data-apploading="' + appLoading+ '">';
                        subItem += theLink;
                    subItem += '</div>';
                    subItem += subs;
                subItem += '</div>';

            allSubs += subItem;
        }

        var allSubsContainer = '<div class="nav_item_sub_container" data-parent="' + parent + '">';
                allSubsContainer += allSubs;
           allSubsContainer += '</div>';

        return allSubsContainer;

    }

    function navDropdownToggle(parent, additionalParent) {

        $(".nav_item_sub_container:not([data-parent='" + parent + "']):not([data-parent='" + additionalParent + "'])").slideUp();
        $(".nav_item_dropdown_button:not([data-name='" + parent + "']):not([data-name='" + additionalParent + "']) i").removeClass("nav_item_dropdown_button_active");

        $(".nav_item_sub_container[data-parent='" + parent + "']").slideToggle();
        $(".nav_item_dropdown_button[data-name='" + parent + "'] i").toggleClass("nav_item_dropdown_button_active");

    }

    function performNavAppCheckGet() {

        

        if (typeof checkifAppEnabledStoreListAll == "undefined") {
            checkifAppEnabledStoreListAll = null;
        }
        
        if (checkifAppEnabledStoreListAll == null) {

            axiosGet('/services/appstore/apps.svc/ListStoreApps?storeId=' + storeId).then(function (data) {
                //trace("ListStoreApps:success");
                var checkifAppEnabledStoreList = data.d;

                if (checkifAppEnabledStoreList != null) {

                    if (checkifAppEnabledStoreList.length > 0) {

                        for (var i = 0; i < performNavAppCheck.length; i++) {

                            checkifAppEnabledStoreList.filter(function (obj) {
                                if (obj.appId == performNavAppCheck[i] && obj.status == "ACTIVE") {

                                    performNavAppEnabled.push(performNavAppCheck[i]);

                                }
                            });

                        }

                    }

                    performNavAppCheckBuild();

                }

            }).catch(function () {
                performNavAppCheckBuild();
            }).then(function () {

            });

        } else {
            if (checkifAppEnabledStoreList != null) {

                if (checkifAppEnabledStoreList.length > 0) {
                    for (var i = 0; i < performNavAppCheck.length; i++) {

                        checkifAppEnabledStoreList.filter(function (obj) {
                            if (obj.appId == performNavAppCheck[i] && obj.status == "ACTIVE") {

                                performNavAppEnabled.push(performNavAppCheck[i]);

                            }
                        });

                    }
                    

                } 

                performNavAppCheckBuild();
            }
        }

    }

    function performNavAppCheckBuild() {

        if (performNavAppEnabled.length > 0) {
            for (var i = 0; i < performNavAppEnabled.length; i++) {
                $(".nav_item[data-apploading='true']").attr("data-apploading", "false");

                if (performNavAppEnabled[i] == "statistics") {
                    $(".nav_item[data-name='Order Stats']").attr("data-planrequired", "false");
                    $(".nav_item[data-name='Visitor Stats']").attr("data-planrequired", "false");
                    $(".nav_item[data-name='Product Stats']").attr("data-planrequired", "false");
                    $(".nav_item[data-name='Search Engine Hits']").attr("data-planrequired", "false");
                    $(".nav_item[data-name='Web Spider Hits']").attr("data-planrequired", "false");
                    $(".page_navigation_box[data-app='statistics']").removeClass("page_navigation_box_disabled");
                }

                if (performNavAppEnabled[i] == "order-exporter") {
                    $(".nav_item[data-parent='Orders'][data-name='Export']").attr("data-planrequired", "false");
                    $(".page_navigation_box[data-app='order-exporter']").removeClass("page_navigation_box_disabled");
                }

                if (performNavAppEnabled[i] == "coupons-vouchers" || performNavAppEnabled[i] == "startup-pack") {
                    $(".nav_item[data-name='Discount Codes']").attr("data-planrequired", "false");
                    $(".page_navigation_box[data-app='coupons-vouchers']").removeClass("page_navigation_box_disabled");
                }

                if (performNavAppEnabled[i] == "language-packs") {
                    $(".nav_item[data-name='Language Packs']").attr("data-planrequired", "false");
                    $(".page_navigation_box[data-app='language-packs']").removeClass("page_navigation_box_disabled");
                }

            }
        } else {
            $(".nav_item[data-apploading='true']").attr("data-apploading", "false");
        }

    }


</script>


            </div>
            <div class="nav_footer">
                <div id="nav_footer_plan_outer" class="nav_footer_plan_outer_active">
                    <div id="nav_footer_plan" data-plan="community">
                    <div id="nav_footer_plan_inner">
                        <div id="nav_footer_plan_left">
                            <div id="nav_footer_plan_left_stars">
                                <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>
                                <svg version="1.1" id="nav_footer_plan_left_stars_ridge_icon" x="0px" y="0px" height="16px" viewBox="0 0 617.456 337.659" enable-background="new 0 0 617.456 337.659" xml:space="preserve"><polygon fill="#172550" points="324.824,162.43 617.456,337.659 280.733,0 0,337.795 279.001,92.771 279.001,259.354 "></polygon></svg>
                            </div>
                        </div>
                        <div id="nav_footer_plan_right">
                            <div id="nav_footer_plan_right_title">Community User</div>
                            <div id="nav_footer_plan_right_info">See how you can <strong>benefit</strong> from our Startup plan.</div>
                            <div id="nav_footer_plan_right_info_link">Learn More<span>?</span></div>
                        </div>
                    </div>

                    <div id="nav_footer_plan_modal">
                        <div class="nav_footer_plan_modal_outer">

                            <div class="nav_footer_plan_modal_inner" data-plan="expiring">
                                <div class="nav_footer_plan_modal_title">Subscription Expiring</div>
                                <div class="nav_footer_plan_modal_info">Your subscription is currently expiring. Re-Upgrade so you don't lose features such as:</div>
                                <div class="nav_footer_plan_modal_list">
                                    <div class="nav_footer_plan_modal_list_item">Banner Removal</div>
                                    <div class="nav_footer_plan_modal_list_item">Customer Accounts</div>
                                    <div class="nav_footer_plan_modal_list_item">Multiple Payment Gateways</div>
                                    <div class="nav_footer_plan_modal_list_item">Increased Turnover</div>
                                    <div class="nav_footer_plan_modal_list_item">And More...</div>
                                </div>
                                <a href="https://stylez360.github.io/upgrade.aspx" class="button button_white margint10">View Plans</a>
                            </div>

                            <div class="nav_footer_plan_modal_inner" data-plan="community">
                                <div class="nav_footer_plan_modal_title"><i class="fa fa-star"></i>Community User</div>
                                <div class="nav_footer_plan_modal_info">You are currently on the Community Plan which includes:</div>
                                <div class="nav_footer_plan_modal_list">
                                    <div class="nav_footer_plan_modal_list_item">Hosted Online Store</div>
                                    <div class="nav_footer_plan_modal_list_item">Unlimited Products</div>
                                    <div class="nav_footer_plan_modal_list_item">Domain &amp; SSL</div>
                                    <div class="nav_footer_plan_modal_list_item">Online Checkout</div>
                                    <div class="nav_footer_plan_modal_list_item">And More...</div>
                                </div>
                                <div class="nav_footer_plan_modal_additional">Take a look at our <span class="nav_footer_plan_modal_additional_plan" data-plan="startup"><i class="fa fa-star"></i><i class="fa fa-star"></i> Startup</span> plan for more features and increased limits</div>
                                <a href="https://stylez360.github.io/upgrade.aspx" class="button button_white margint10">View Plans</a>
                            </div>

                            <div class="nav_footer_plan_modal_inner" data-plan="startup-pack">
                                <div class="nav_footer_plan_modal_title">Startup Pack App</div>
                                <div class="nav_footer_plan_modal_info">You are currently on the Startup Pack App which includes:</div>
                                <div class="nav_footer_plan_modal_list">
                                    <div class="nav_footer_plan_modal_list_item">Banner Removal</div>
                                    <div class="nav_footer_plan_modal_list_item">PayPal</div>
                                    <div class="nav_footer_plan_modal_list_item">Unlimited Pages</div>
                                    <div class="nav_footer_plan_modal_list_item">Coupons &amp; Vouchers</div>
                                </div>
                                <div class="nav_footer_plan_modal_additional">Take a look at our <span class="nav_footer_plan_modal_additional_plan" data-plan="startup"><i class="fa fa-star"></i><i class="fa fa-star"></i> Startup</span> plan for more features and increased limits at the same price</div>
                                <a href="https://stylez360.github.io/upgrade.aspx" class="button button_white margint10">View Plans</a>
                            </div>

                            <div class="nav_footer_plan_modal_inner" data-plan="startup">
                                <div class="nav_footer_plan_modal_title"><i class="fa fa-star"></i><i class="fa fa-star"></i>Startup User</div>
                                <div class="nav_footer_plan_modal_info">You are currently on the Startup Plan which includes:</div>
                                <div class="nav_footer_plan_modal_list">
                                    <div class="nav_footer_plan_modal_list_item">Banner Removal</div>
                                    <div class="nav_footer_plan_modal_list_item">Customer Accounts</div>
                                    <div class="nav_footer_plan_modal_list_item">Multiple Payment Gateways</div>
                                    <div class="nav_footer_plan_modal_list_item">Increased Turnover</div>
                                    <div class="nav_footer_plan_modal_list_item">And More...</div>
                                </div>
                                <div class="nav_footer_plan_modal_additional">Take a look at our <span class="nav_footer_plan_modal_additional_plan" data-plan="pro"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> Pro</span> plan for more features and increased limits</div>
                                <a href="https://stylez360.github.io/upgrade.aspx" class="button button_white margint10">View Plans</a>
                            </div>

                            <div class="nav_footer_plan_modal_inner" data-plan="pro">
                                <div class="nav_footer_plan_modal_title"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>Pro User</div>
                                <div class="nav_footer_plan_modal_info">You are currently on the Pro Plan which includes:</div>
                                <div class="nav_footer_plan_modal_list">
                                    <div class="nav_footer_plan_modal_list_item">Free Domain Name</div>
                                    <div class="nav_footer_plan_modal_list_item">Offline Payment Methods</div>
                                    <div class="nav_footer_plan_modal_list_item">Domain &amp; SSL</div>
                                    <div class="nav_footer_plan_modal_list_item">All Apps Free</div>
                                    <div class="nav_footer_plan_modal_list_item">And More...</div>
                                </div>
                                <div class="nav_footer_plan_modal_additional">Still looking for more? Take a look at our <span class="nav_footer_plan_modal_additional_plan" data-plan="ridge">Ridge</span> plan</div>
                                <a href="https://stylez360.github.io/upgrade.aspx" class="button button_white margint10">View Ridge Plans</a>
                            </div>

                            <div class="nav_footer_plan_modal_inner" data-plan="charity">
                                <div class="nav_footer_plan_modal_title"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>Charity User</div>
                                <div class="nav_footer_plan_modal_info">You are currently on the Charity Plan which includes:</div>
                                <div class="nav_footer_plan_modal_list">
                                    <div class="nav_footer_plan_modal_list_item">Increased Turnover</div>
                                    <div class="nav_footer_plan_modal_list_item">Offline Payment Methods</div>
                                    <div class="nav_footer_plan_modal_list_item">Domain &amp; SSL</div>
                                    <div class="nav_footer_plan_modal_list_item">All Apps Free</div>
                                    <div class="nav_footer_plan_modal_list_item">And More...</div>
                                </div>
                                <div class="nav_footer_plan_modal_additional">Need some help? Contact our Support Team</div>
                                <a href="https://stylez360.github.io/support_new_ticket.aspx" class="button button_white margint10">Contact Support</a>
                            </div>

                            <div class="nav_footer_plan_modal_inner" data-plan="ridge">
                                <div class="nav_footer_plan_modal_title"><svg version="1.1" id="nav_footer_plan_modal_title_ridge" x="0px" y="0px" height="16px" viewBox="0 0 617.456 337.659" enable-background="new 0 0 617.456 337.659" xml:space="preserve"><polygon fill="#FFFFFF" points="324.824,162.43 617.456,337.659 280.733,0 0,337.795 279.001,92.771 279.001,259.354 "></polygon></svg>Ridge User</div>
                                <div class="nav_footer_plan_modal_info">You are currently on the Ridge Plan which includes:</div>
                                <div class="nav_footer_plan_modal_list">
                                    <div class="nav_footer_plan_modal_list_item">Unlimited</div>
                                    <div class="nav_footer_plan_modal_list_item">Business Insights</div>
                                    <a href="https://stylez360.github.io/activityv3.aspx" class="nav_footer_plan_modal_list_item">Realtime Activity Monitor</a>
                                    <a href="https://stylez360.github.io/marketing_statistics_liveorders.aspx" class="nav_footer_plan_modal_list_item">Live Order Maps</a>
                                    <div class="nav_footer_plan_modal_list_item">And More...</div>
                                </div>
                                <a href="https://stylez360.github.io/upgrade.aspx?plan=11" id="nav_footer_plan_modal_button_ridge" class="button button_white margint10">View Plans</a>
                            </div>

                        </div>
                    </div>

                </div>
                </div>
                <!--<a class="nav_link_container background_secondary" onclick="providePageFeedback();"><i class="fa fa-commenting-o" aria-hidden="true"></i> <span>Give Feedback</span></a>-->
                <!--<a class="nav_link_container background_secondary" onclick="providePageRequestFeature();"><i class="fa fa-thumbs-up" aria-hidden="true"></i> <span>Request a Feature</span></a>-->
                <div class="nav_footer_bottom">
                    <a href="https://stylez360.github.io/apiv2.aspx">API</a>
                    <a href="https://stylez360.github.io/affiliate.aspx">Affiliates</a>
                    <a href="https://blog.freewebstore.com/" target="_blank">Blog</a>
                    <div class="nav_footer_more">
                        <a>More <i class="fa fa-angle-up" aria-hidden="true"></i></a>
                        <div class="nav_footer_more_menu">
                            <a href="https://freewebstore.com/terms.html" target="_blank">Terms</a>
                            <a href="https://freewebstore.com/privacy.html" target="_blank">Privacy</a>
                            <a href="https://stylez360.github.io/support_cp_updates.aspx">CP Updates<span class="nav_footer_more_menu_cpupdates">New</span></a>
                            <a href="https://affiliates.freewebstore.com/" target="_blank">Affiliates CP</a>
                            <a href="https://freewebstore.com/partners.html" target="_blank">Our Partners</a>
                            <div class="hide_overflow nav_footer_more_menu_extra">
                                <a href="https://www.facebook.com/freewebstoreofficial/" target="_blank"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                                <a href="https://twitter.com/freewebstore" target="_blank"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                                <a href="https://www.instagram.com/freewebstore/" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                                <a href="https://www.youtube.com/user/freewebstore" target="_blank"><i class="fa fa-youtube-play" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </nav>

        <div class="all">
            <main>
                <header>
                    <div class="header_menu_button" data-tourid="nav-menu-mobile-button"><i class="fa fa-bars" aria-hidden="true"></i></div>
                    <div class="header_search_icon" onclick="toggleSearchBar();"><i class="fa fa-search" aria-hidden="true"></i></div>
                    

<div class="header_search" style="display: none;">
    <input id="header_search_input" class="background_secondary" title="Search Control Panel &amp; Products..." onclick="searchMain();" type="text" placeholder="Search Control Panel &amp; Products..." readonly="" onfocus="if (this.hasAttribute(&#39;readonly&#39;)) {this.removeAttribute(&#39;readonly&#39;);this.blur(); this.focus(); }" autocomplete="off" aria-label="Search Control Panel">
    <div id="main_search">
        <div class="main_search_nav_info">Use <strong>↑ ↓</strong> to navigate, <strong>enter</strong> to select and <strong>esc</strong> to dismiss.</div>
        <div id="main_search_section_control" class="main_search_section">
            <div class="main_search_title">Control Panel</div>
            <div class="main_search_container">
            </div>
        </div>
        <div id="main_search_product_section_control" class="main_search_section margint10">
            <div class="main_search_title">Products</div>
            <div class="main_search_container">
                <span class="main_search_loader" id="main_search_loader_products">
                    <span class="busy_wait_line">
                        <span class="busy_wait_line_item busy_wait_line1"></span>
                        <span class="busy_wait_line_item busy_wait_line2"></span>
                        <span class="busy_wait_line_item busy_wait_line3"></span>
                        <span class="busy_wait_line_text">Searching</span>
                    </span>
                </span>
            </div>
        </div>
    </div>
</div>

<script>
    function toggleSearchBar() {
        var e = document.querySelector('.header_search');
        e.style.display = ((e.style.display != 'none') ? 'none' : 'block');
        if (e.style.display == "block") {
            e.querySelector("#header_search_input").focus();
            e.querySelector("#header_search_input").click();
        }
    }

    var searchPages = {
        "pages": [
            { "title": "Add Product", "icon": "archive", "link": "/manage_products.aspx?prodNew=true", "description": "Add a brand new product", "tags": ["add", "products"] },
            { "title": "List All Products", "icon": "list-ul", "link": "/manage_products_list.aspx", "description": "View all your products", "tags": ["view", "products", "list", "featured", "inventory"] },
            { "title": "Product Categories", "icon": "sitemap", "link": "/manage_products_categories.aspx", "description": "Add, edit and delete categories", "tags": ["products", "categories", "category"] },
            { "title": "Product Suppliers", "image": "suppliers", "icon": "truck", "link": "/manage_products_suppliers.aspx", "description": "Add, edit and delete suppliers", "tags": ["products", "suppliers"] },
            { "title": "Import Products", "image": "import-products", "icon": "upload", "link": "/manage_products_importv2.aspx", "description": "Import multiple products to your store", "tags": ["products", "import", "csv", "importer"] },
            { "title": "Export Products", "image": "product-exporter", "icon": "download", "link": "/manage_products_exportsv2.aspx", "description": "Export your products in a CSV file", "tags": ["products", "export", "csv", "exporter"] },
            { "title": "Product Brands", "image": "brands", "icon": "tags", "link": "/manage_products_brands.aspx", "description": "Add, edit and delete product brands", "tags": ["products", "brands"] },
            { "title": "Product Options/ Variations", "image": "product-options", "icon": "cubes", "link": "/manage_products_options.aspx", "description": "Add, edit and delete product options/ variations", "tags": ["products", "options", "variations"] },
            { "title": "Product Reviews", "image": "customer-reviews", "icon": "star", "link": "/manage_products_reviews.aspx", "description": "View your customer reviews for your products", "tags": ["products", "reviews", "feedback"] },
            { "title": "Product Stock", "image": "product-stock", "icon": "cubes", "link": "/manage_products_stock.aspx", "description": "Manage your product stock and stock settings", "tags": ["product", "stock", "inventory"] },
            { "title": "Stock Request Emails", "icon": "cubes", "link": "/manage_products_stock_requests.aspx", "description": "Manage your product stock requests and emails", "tags": ["product", "stock", "notification", "requests", "emails"] },
            { "title": "Product Checkout Forms", "image": "checkout-forms", "icon": "list-alt", "link": "/manage_products_checkoutforms.aspx", "description": "Manage your product checkout forms", "tags": ["products", "checkout", "forms"] },
            { "title": "Product Groups", "image": "product-groups", "icon": "users", "link": "/manage_products_groups.aspx", "description": "Manage your product groups", "tags": ["products", "groups", "group", "bulk", "mass", "multiple", "changes", "actions"] },
            
            { "title": "Manage Pages", "icon": "file-text-o", "link": "/manage_pages.aspx", "description": "Add, edit and delete pages", "tags": ["pages", "edit"] },
            { "title": "Instagram Gallery", "image": "instagram-gallery", "icon": "instagram", "link": "/manage_pages_instagramv3.aspx", "description": "Manage your Instagram gallery", "tags": ["instagram", "gallery", "pages"] },
            { "title": "Integrated Blog", "image": "blog-integrated", "icon": "file-text-o", "link": "/app/storeblog/index.aspx", "description": "Manage your store blog", "tags": ["store blog", "blog", "integrated blog", "wordpress", "tumblr", "pages"] },
            { "title": "Custom Error Pages", "image": "custom404", "icon": "exclamation", "link": "/app/custom404/index.aspx", "description": "Customize your error pages", "tags": ["404", "500", "error", "custom", "pages"] },
            { "title": "Manage Images", "icon": "picture-o", "link": "/manage_images.aspx", "description": "Manage your store images", "tags": ["images", "add", "edit", "pictures"] },
            { "title": "Import Images", "image": "image-importer", "icon": "upload", "link": "/manage_images_import.aspx", "description": "Import multiple images", "tags": ["import", "images"] },
            { "title": "Export Images", "image": "image-exporter", "icon": "download", "link": "/manage_images_export.aspx", "description": "Export multiple images", "tags": ["export", "images"] },
            { "title": "Shipping", "icon": "truck", "link": "/manage_shipping.aspx", "description": "Manage your shipping rules", "tags": ["shipping", "postage", "fedex", "ups", "delivery"] },
            { "title": "Fedex", "image": "fedex-shipping", "icon": "truck", "link": "/manage_shipping_fedex.aspx", "description": "Manage your Fedex shipping rules", "tags": ["shipping", "postage", "fedex"] },
            { "title": "UPS", "image": "ups-parcels", "icon": "truck", "link": "/manage_shipping_ups.aspx", "description": "Manage your UPS shipping rules", "tags": ["shipping", "postage", "ups"] },
            { "title": "List All Orders", "icon": "list-ul", "link": "/orders_view_list.aspx", "description": "View all your orders", "tags": ["view", "orders", "list", "income", "revenue"] },
            { "title": "Abandoned Carts", "image": "abandoned-carts", "icon": "cart-arrow-down", "link": "/orders_abandoned_carts.aspx", "description": "Abandoned carts", "tags": ["orders", "abandoned carts"] },
            { "title": "Payment Gateways", "icon": "shopping-cart", "link": "/orders_payment_gateways.aspx", "description": "Payment gateways including PayPal, Stripe and Worldpay", "tags": ["checkouts", "payments", "money", "offline", "paypal", "paypal express", "paypal pro hosted", "stripe", "worldpay", "adyen", "authorize.net", "cardsave", "ccavenue", "2checkout", "barclaycard epdq", "epdq", "ideal", "mollie", "ingenico", "mygate", "nochex", "paymentsense", "payumoney", "sagepay", "totalwebsolutions", "eway"] },

            { "title": "PayPal", "image": "checkout-paypal", "link": "/checkouts/paypalv2/index.aspx", "description": "Manage PayPal Payment Gateway", "tags": ["checkout", "payments", "money", "payment gateway", "paypal", "pay pal", "express"] },
            { "title": "Stripe", "image": "checkout-stripe", "link": "/checkouts/stripe/index.aspx", "description": "Manage Stripe Payment Gateway", "tags": ["checkout", "payments", "money", "payment gateway", "stripe"] },
            { "title": "2Checkout", "image": "checkout-2checkout", "link": "/checkouts/2checkout/index.aspx", "description": "Manage 2Checkout Payment Gateway", "tags": ["checkout", "payments", "money", "payment gateway", "2checkout"] },
            
            { "title": "Authorize.net", "image": "checkout-authorize", "link": "/checkouts/authorizenet/index.aspx", "description": "Manage Authorize.net Payment Gateway", "tags": ["checkout", "payments", "money", "payment gateway", "authorize", "net", "authorize.net"] },
            { "title": "Barclaycard EPDQ", "image": "checkout-epdq", "link": "/checkouts/barclaycardepdq/index.aspx", "description": "Manage Barclaycard EPDQ Payment Gateway", "tags": ["checkout", "payments", "money", "payment gateway", "Barclaycard EPDQ", "epdq"] },
            { "title": "Cardsave", "image": "checkout-cardsave", "link": "/checkouts/cardsave/index.aspx", "description": "Manage Cardsave Payment Gateway", "tags": ["checkout", "payments", "money", "payment gateway", "cardsave"] },
            { "title": "CCAvenue", "image": "checkout-ccavenue", "link": "/checkouts/ccavenue/index.aspx", "description": "Manage CCAvenue Payment Gateway", "tags": ["checkout", "payments", "money", "payment gateway", "ccavenue"] },
            { "title": "eWay", "image": "checkout-eway", "link": "/checkouts/eway/index.aspx", "description": "Manage eWay Payment Gateway", "tags": ["checkout", "payments", "money", "payment gateway", "eway"] },
            { "title": "iDeal", "image": "checkout-ideal", "link": "/checkouts/ideal/index.aspx", "description": "Manage Ideal Payment Gateway", "tags": ["checkout", "payments", "money", "payment gateway", "ideal"] },
            { "title": "Ingenico", "image": "checkout-ingenico", "link": "/checkouts/ingenico/index.aspx", "description": "Manage Ingenico Payment Gateway", "tags": ["checkout", "payments", "money", "payment gateway", "ingenico"] },
            { "title": "Mygate", "image": "checkout-mygate", "link": "/checkouts/mygate/index.aspx", "description": "Manage Mygate Payment Gateway", "tags": ["checkout", "payments", "money", "payment gateway", "mygate"] },
            { "title": "Nochex", "image": "checkout-nochex", "link": "/checkouts/nochex/index.aspx", "description": "Manage Nochex Payment Gateway", "tags": ["checkout", "payments", "money", "payment gateway", "nochex"] },
            { "title": "PaymentSense", "image": "checkout-paymentsense", "link": "/checkouts/paymentsense/index.aspx", "description": "Manage PaymentSense Payment Gateway", "tags": ["checkout", "payments", "money", "payment gateway", "paymentsense"] },
            { "title": "PayUMoney", "image": "checkout-payumoney", "link": "/checkouts/payumoney/index.aspx", "description": "Manage PayUMoney Payment Gateway", "tags": ["checkout", "payments", "money", "payment gateway", "payumoney"] },
            { "title": "Sagepay", "image": "checkout-sagepay", "link": "/checkouts/sagepay/index.aspx", "description": "Manage Sagepay Payment Gateway", "tags": ["checkout", "payments", "money", "payment gateway", "sagepay"] },
            { "title": "TotalWebSolutions", "image": "checkout-totalwebsolutions", "link": "/checkouts/totalwebsolutions/index.aspx", "description": "Manage TotalWebSolutions Payment Gateway", "tags": ["checkout", "payments", "money", "payment gateway", "totalwebsolutions", "total web solutions"] },
            { "title": "Worldpay", "image": "checkout-worldpay", "link": "/checkouts/worldpay/index.aspx", "description": "Manage Worldpay Payment Gateway", "tags": ["checkout", "payments", "money", "payment gateway", "worldpay"] },


            { "title": "Customers", "icon": "users", "link": "/orders_customers.aspx", "description": "Manage your customers and wishlists", "tags": ["view", "customers", "accounts", "guest", "login", "wishlists", "checkout"] },
            { "title": "Export Customers", "image": "customer-exporter", "icon": "download", "link": "/orders_customers_export.aspx", "description": "Export your customers", "tags": ["customers", "export"] },
            { "title": "Accounting", "icon": "calculator", "link": "/orders_accounting.aspx", "description": "Enable accounting software for your orders", "tags": ["accounting", "kashflow"] },
            { "title": "Kashflow", "image": "kashflow", "link": "/orders_accounting_kashflow.aspx", "description": "Online accounting system for UK small businesses", "tags": ["accounting", "kashflow", "kash flow", "cashflow"] },
            { "title": "Export Orders", "image": "order-exporter", "icon": "download", "link": "/orders_export.aspx", "description": "Export your orders", "tags": ["orders", "export"] },
            { "title": "Invoices", "image": "invoices", "icon": "file-text-o", "link": "/orders_invoices.aspx", "description": "Customize your invoices", "tags": ["orders", "invoices", "template"] },
            { "title": "Notification Emails", "image": "notification-emails", "icon": "bell-o", "link": "/orders_notifications.aspx", "description": "Setup order notification emails", "tags": ["orders", "notifications", "email"] },
            { "title": "Dispatch Emails", "image": "dispatch-emails", "icon": "envelope-o", "link": "/orders_dispatch.aspx", "description": "Customize your dispatch emails", "tags": ["orders", "dispatch", "emails"] },
            { "title": "Theme Editor", "icon": "pencil", "link": "/editor.aspx", "description": "Customize your design", "tags": ["theme editor", "design", "customize", "logo", "advanced css", "edit", "header", "colors", "colour", "banners", "fonts", "backgrounds", "default language", "removal", "featured products"] },

            { "title": "Theme Editor &#10230; Add New Page", "icon": "pencil", "link": "/editor.aspx?edid=add-new-page", "description": "Add a new page to your store", "tags": ["theme editor", "add", "new", "page", "pages"] },
            { "title": "Add New Page &#10230; Standard Page", "icon": "pencil", "link": "/editor.aspx?edid=add-new-page", "description": "Add a new page to your store", "tags": ["theme editor", "add", "new", "page", "pages", "standard", "blank"] },
            { "title": "Add New Page &#10230; FAQ Page", "icon": "pencil", "link": "/editor.aspx?edid=add-new-page", "description": "Add a new FAQ page to your store", "tags": ["theme editor", "add", "new", "page", "pages", "faqs", "frequently asked questions"] },
            { "title": "Add New Page &#10230; Link Page", "icon": "pencil", "link": "/editor.aspx?edid=add-new-page", "description": "Add a new external link page to your store", "tags": ["theme editor", "add", "new", "page", "pages", "link", "external"] },
            { "title": "Theme Editor &#10230; Manage Pages", "icon": "pencil", "link": "/editor.aspx?edid=manage-pages", "description": "Manage existing pages on your store", "tags": ["theme editor", "edit", "manage", "pages"] },
            { "title": "Theme Editor &#10230; Add New Section", "icon": "pencil", "link": "/editor.aspx?edid=add-new-section", "description": "Add a new section to your store", "tags": ["theme editor", "add", "new", "section"] },
            { "title": "Theme Editor &#10230; Featured Products", "icon": "pencil", "link": "/editor.aspx?edid=featured-products", "description": "Edit the number of featured products", "tags": ["theme editor", "featured products"] },
            { "title": "Theme Editor &#10230; Slideshow", "icon": "pencil", "link": "/editor.aspx?edid=slideshow", "description": "Edit your slideshow", "tags": ["theme editor", "slideshow", "hero banner"] },
            { "title": "Theme Editor &#10230; Colors", "icon": "pencil", "link": "/editor.aspx?edid=colors", "description": "Change your theme colors", "tags": ["theme editor", "colors", "colours"] },
            { "title": "Theme Editor &#10230; Background", "icon": "pencil", "link": "/editor.aspx?edid=background", "description": "Change your theme background", "tags": ["theme editor", "background"] },
            { "title": "Theme Editor &#10230; Fonts", "icon": "pencil", "link": "/editor.aspx?edid=fonts", "description": "Update your theme font", "tags": ["theme editor", "font", "fonts"] },
            { "title": "Theme Editor &#10230; Image Graphics", "icon": "pencil", "link": "/editor.aspx?edid=image-graphics", "description": "Update your image graphics", "tags": ["theme editor", "image graphics", "special offer overlay", "free shipping overlay", "sold out overlay", "image padding color"] },
            { "title": "Theme Editor &#10230; Custom CSS", "icon": "pencil", "link": "/editor.aspx?edid=custom-css", "description": "Add custom CSS code", "tags": ["theme editor", "custom css", "css"] },
            { "title": "Theme Editor &#10230; Age Verification", "icon": "pencil", "link": "/editor.aspx?edid=age-verification", "description": "Restrict access to a certain age", "tags": ["theme editor", "age", "verification"] },
            { "title": "Theme Editor &#10230; Vacation Mode", "icon": "pencil", "link": "/editor.aspx?edid=vacation-mode", "description": "Publish and unpublish your store", "tags": ["theme editor", "vacation", "mode", "publish"] },
            { "title": "Theme Editor &#10230; Notification Bar", "icon": "pencil", "link": "/editor.aspx?edid=notification-bar", "description": "Add &amp; edit your store notification bar", "tags": ["theme editor", "notification", "bar"] },
            { "title": "Theme Editor &#10230; Logo", "icon": "pencil", "link": "/editor.aspx?edid=logo", "description": "Edit your store logo", "tags": ["theme editor", "logo"] },
            { "title": "Theme Editor &#10230; Search Bar", "icon": "pencil", "link": "/editor.aspx?edid=search", "description": "Enable &amp; disable your store search bar", "tags": ["theme editor", "seach", "bar"] },
            { "title": "Theme Editor &#10230; Newsletter", "icon": "pencil", "link": "/editor.aspx?edid=newsletter", "description": "Enable &amp; disable your newsletter", "tags": ["theme editor", "newsletter"] },
            { "title": "Theme Editor &#10230; Currency", "icon": "pencil", "link": "/editor.aspx?edid=currency", "description": "Enable &amp; disable your Currency selector", "tags": ["theme editor", "currency"] },
            { "title": "Theme Editor &#10230; Social Media Icons", "icon": "pencil", "link": "/editor.aspx?edid=social-media-icons", "description": "Update your social media icons", "tags": ["theme editor", "social", "media", "icons"] },
            { "title": "Theme Editor &#10230; Language &amp; Translations", "icon": "pencil", "link": "/editor.aspx?edid=language", "description": "Update your langauge &amp; translations", "tags": ["theme editor", "language", "translations", "translate"] },
            { "title": "Theme Editor &#10230; Banners", "icon": "pencil", "link": "/editor.aspx?edid=banners", "description": "Edit your store banner regions", "tags": ["theme editor", "banners"] },
            { "title": "Theme Editor &#10230; Categories", "icon": "sitemap", "link": "/editor.aspx?edid=categories", "description": "Add and re-order your categories", "tags": ["theme editor", "categories", "category"] },

            { "title": "Switch Theme", "icon": "undo", "link": "/design_switch_design.aspx", "description": "Change your design", "tags": ["switch design", "change", "themes"] },
            { "title": "Language Packs", "image": "language-packs", "icon": "language", "link": "/design_languagepacks.aspx", "description": "Translate your store", "tags": ["language packs", "translate", "translation"] },
            { "title": "Favicon", "image": "favicon", "icon": "star", "link": "/design_favicon.aspx", "description": "Upload a favicon", "tags": ["favicon", "browser icon"] },
            { "title": "Slideshow", "icon": "columns", "link": "/design_slideshow.aspx", "description": "Manage your slideshow", "tags": ["slideshow", "images", "carousel", "slider", "hero", "marquee", "banner", "header"] },
            { "title": "Domain Names", "icon": "map-signs", "link": "/marketing_domains.aspx", "description": "Attach a domain name", "tags": ["domains", "names", "attach", "sub-domains", "url", "dns", "website url", "nameservers"] },
            { "title": "Buy a Domain Name", "icon": "map-signs", "link": "/marketing_domains.aspx?type=bdn", "description": "Buy and register your own domain name", "tags": ["domains", "names", "attach", "sub-domains", "url", "dns", "buy", "purchase", "register"] },
            { "title": "Transfer a Domain Name", "icon": "map-signs", "link": "/marketing_domains.aspx?type=tdn", "description": "Transfer a domain name into your Freewebstore account", "tags": ["domains", "names", "attach", "sub-domains", "url", "dns", "buy", "purchase", "register", "transfer"] },
            { "title": "Social Media", "icon": "bullhorn", "link": "/marketing_socialmedia.aspx", "description": "Connect your store with social media sites", "tags": ["social", "media", "facebook", "twitter", "google", "instagram", "pinterest", "blogger", "youtube", "wordpress", "skype", "linkedin", "tumblr", "vimeo", "share"] },
            { "title": "Social Media Icons", "image": "social-media-icons", "icon": "share-alt-square", "link": "/marketing_socialmediaicons.aspx", "description": "Manage your stores social media icons", "tags": ["share", "social", "media", "icons"] },
            { "title": "Share This Icons", "image": "share-this-icons", "icon": "share-square", "link": "/marketing_socialmediashare.aspx", "description": "Allow product sharing on your store", "tags": ["share", "social", "media", "icons"] },
            { "title": "Sell on Facebook &amp; Instagram", "image": "facebook-shops", "icon": "shopping-basket", "link": "/app/facebook-shop/index.aspx", "description": "Sell on Facebook and Instagram", "tags": ["facebook", "instagram", "shops", "store", "storefront", "feed"] },
            { "title": "Facebook Pixel", "image": "pixel", "icon": "code", "link": "/app/pixel/index.aspx", "description": "Track conversion with Facebook Pixel", "tags": ["facebook", "pixel", "ads", "track"] },
            { "title": "Facebook Messenger Live Chat", "image": "messenger-chat", "icon": "commenting-o", "link": "/app/messenger/index.aspx", "description": "Live chat with your shoppers", "tags": ["facebook", "messenger", "live chat", "social media"] },
            { "title": "Share to Twitter", "image": "share-to-twitter", "icon": "twitter", "link": "/marketing_twitter.aspx", "description": "Post status updates on your Twitter account", "tags": ["twitter", "store", "share", "social media"] },
            { "title": "Site Verification", "icon": "globe", "link": "/marketing_siteverification.aspx", "description": "Verify and claim ownership of your store", "tags": ["metatags", "meta", "tags", "site verification", "verification", "claim", "ownership", "verify"] },
            { "title": "Meta Tags", "image": "meta-tags", "icon": "file-code-o", "link": "/marketing_metatags.aspx", "description": "Add custom meta tags and script", "tags": ["metatags", "meta", "tags"] },
            { "title": "Google Tools", "icon": "google", "link": "/marketing_google.aspx", "description": "Useful tools provided by Google", "tags": ["google", "tools"] },
            { "title": "Google Shopping", "image": "google-shopping", "icon": "shopping-basket", "link": "/marketing_googleshoppingv2.aspx", "description": "Upload products to Google Shopping", "tags": ["google", "shopping", "listings", "merchant", "center"] },
            { "title": "Google Categories", "icon": "sitemap", "link": "/marketing_googleshopping_categoryassign.aspx", "description": "Assign Google Categories ", "tags": ["google", "shopping", "categories", "category"] },
            { "title": "Google Analytics", "icon": "line-chart", "link": "/marketing_googleanalyticsv2.aspx", "description": "View a wide range of detailed statistics", "tags": ["google", "analytics", "statistics", "stats"] },
            { "title": "Webmaster Tools", "image": "google-webmaster", "icon": "wrench", "link": "/marketing_googlewebmastertools.aspx", "description": "Get your store listed on Google", "tags": ["google", "webmaster", "tools", "sitemap"] },
            { "title": "Google Adsense", "image": "google-adsense", "icon": "money", "link": "/marketing_googleadsense.aspx", "description": "Add advertisements to your store", "tags": ["google", "adsense", "adverts", "advertise"] },
            { "title": "G-Suite", "image": "g-suite", "icon": "google", "link": "/app/gsuite/index.aspx", "description": "Manage your G-Suite account", "tags": ["gsuite", "g-suite", "google", "suite", "email", "domain email", "calenders", "storage", "video meeting", "gmail", "mailbox"] },
            { "title": "Order Conversion Tracking", "image": "google-conversiontracking", "icon": "thumb-tack", "link": "/marketing_googleorderconversiontracking.aspx", "description": "Track your orders with Google", "tags": ["google", "order", "conversion", "tracking"] },
            { "title": "Newsletter", "image": "newsletter", "icon": "newspaper-o", "link": "/marketing_newsletter.aspx", "description": "Manage your newsletter mailing list", "tags": ["newsletter", "mailing", "mailchimp"] },
            { "title": "Discount Codes", "image": "coupons-vouchers", "icon": "tags", "link": "/marketing_coupons.aspx", "description": "Create and manage discount codes", "tags": ["coupons", "code", "discounts", "vouchers", "offers", "promotion"] },
            { "title": "Import Discount Codes", "icon": "upload", "link": "/marketing_coupons_import.aspx", "description": "Import Discount Codes", "tags": ["coupons", "code", "discounts", "vouchers", "offers", "import", "promotion"] },
            { "title": "Discount Code Report", "image": "coupons-vouchers", "icon": "tags", "link": "/marketing_coupons_report.aspx", "description": "View a report on your used discount codes", "tags": ["coupons", "code", "discounts", "vouchers", "offers", "report", "promotion"] },
            { "title": "Search Engine Optimization", "icon": "line-chart", "link": "/marketing_searchengineoptimization.aspx", "description": "Help search engines index your store", "tags": ["seo", "search engine optimization", "index", "ranking", "google", "bing", "yahoo", "keywords", "meta"] },
            { "title": "Product Feeds", "image": "product-feeds", "icon": "archive", "link": "/marketing_productfeeds.aspx", "description": "Submit your products to shopping platforms", "tags": ["product", "feeds", "shopping", "platform", "bing", "ciao", "choozen", "dooyoo", "leguide", "pricegrabber", "shopmania", "shopping.com", "shopzilla", "twenga", "shoppydoo"] },
            { "title": "Statistics Dashboard", "image": "statistics", "icon": "pie-chart", "link": "/marketing_statistics.aspx", "description": "View your statistics dashboard", "tags": ["statistics", "stats"] },
            { "title": "Order Statistics", "image": "statistics", "icon": "shopping-basket", "link": "/marketing_statistics_orders.aspx", "description": "Statistics on orders, sales and more", "tags": ["statistics", "stats", "orders", "sales"] },
            { "title": "Visitor Statistics", "image": "statistics", "icon": "user", "link": "/marketing_statistics_visitors.aspx", "description": "Information on hits, traffic sources and your visitors", "tags": ["statistics", "stats", "traffic", "visitors", "users", "referrers"] },
            { "title": "Product Statistics", "image": "statistics", "icon": "archive", "link": "/marketing_statistics_products.aspx", "description": "View the popularity of your products, categories and searches", "tags": ["statistics", "stats", "product"] },
            { "title": "Search Engine Hits", "image": "statistics", "icon": "search", "link": "/marketing_statistics_searchenginehits.aspx", "description": "Check the search terms that led customers to your store", "tags": ["statistics", "stats", "search", "engine", "hits"] },
            { "title": "Web Spider Hits", "image": "statistics", "icon": "globe", "link": "/marketing_statistics_crawlerhits.aspx", "description": "Check which web spiders are visiting your store", "tags": ["statistics", "stats", "crawlers", "spider", "hits"] },
            { "title": "Live Orders Map", "image": "live-orders-map", "icon": "globe", "link": "/marketing_statistics_liveorders.aspx", "description": "Visualize orders on an interative map", "tags": ["statistics", "stats", "live", "orders", "map"] },
            { "title": "Settings", "icon": "cog", "link": "/settings.aspx", "description": "Manage your store and control panel settings", "tags": ["settings", "store", "name", "vacation", "holiday", "age", "status", "display", "currency", "weight", "units", "character set", "utf-8", "pricing", "tax", "rates"] },
            //{ "title": "Store Settings", "icon": "building", "link": "/settings_store.aspx", "description": "Change basic settings about your store", "tags": ["settings", "store", "name", "url", "age", "verification", "vacation", "holiday", "age", "status", "display", "currency", "weight", "units", "character set", "utf-8"] },
            //{ "title": "Design Settings", "icon": "paint-brush", "link": "/settings_design.aspx", "description": "Browsing options and design features", "tags": ["settings", "design", "browsing", "options", "display", "featured", "categories", "sub-categories", "child", "images", "graphics"] },
            //{ "title": "Cart Settings", "icon": "shopping-cart", "link": "/settings_basket.aspx", "description": "Customize your cart and checkout process", "tags": ["settings", "basket", "side by side", "checkout theme", "theme", "additional instructions", "vat", "customer accounts", "guest checkout", "accounts", "checkout country", "postage", "shipping", "estimator", "order value", "terms and conditions", "cart"] },
            //{ "title": "Pricing &amp; Tax Settings", "icon": "money", "link": "/settings_pricing.aspx", "description": "Manage your tax and VAT", "tags": ["settings", "pricing", "tax", "vat"] },
            { "title": "Cookie Consent", "image": "cookie-consent", "icon": "database", "link": "/app/cookieconsent/index.aspx", "description": "Alert shoppers to the use of cookies on your store", "tags": ["cookie", "consent", "privacy"] },
            { "title": "App Center", "icon": "th", "link": "/appstore/appstorev2.aspx", "description": "Add apps to your store and control panel", "tags": ["apps", "applications", "app store", "widgets", "appstore", "app center"] },
            //{ "title": "Suggest an App", "icon": "lightbulb-o", "link": "/appstore/appstore_suggest.aspx", "description": "Suggest an app and view our progress", "tags": ["apps", "applications", "app store", "widgets", "appstore", "app center", "suggest", "recommend", "coming soon"] },
            { "title": "Support", "icon": "question-circle", "link": "/supportv2.aspx", "description": "Get all the help you need", "tags": ["support", "help", "question", "issue", "tutorials", "walkthroughs"] },
            { "title": "Support Tickets", "icon": "envelope", "link": "/support_mysupport.aspx", "description": "Your open and closed support tickets", "tags": ["support", "help", "question", "issue", "customer support", "tickets", "open", "closed"] },
            { "title": "Ask a Question", "icon": "question", "link": "/support_new_ticket.aspx", "description": "Ask our friendly support team a question", "tags": ["support", "help", "question", "issue", "customer support", "tickets", "bug", "ask"] },
            { "title": "Upgrade", "icon": "thumbs-up", "link": "/upgrade.aspx", "description": "Upgrade your account", "tags": ["packages", "upgrade", "plans", "subscription", "buy", "boost", "pay", "premium", "prime", "pro", "startup", "ridge", "community"] },
            { "title": "My Account", "icon": "user", "link": "/accountv2.aspx", "description": "Manage account details, subscriptions and more", "tags": ["account", "my account", "login", "email address", "password", "password reset", "change", "billing", "subscription", "invoices", "close", "store", "hibernate", "pause"] },
            { "title": "Login Details", "icon": "key", "link": "/account_login_details.aspx", "description": "Change your login email address and password", "tags": ["account", "my account", "login", "email address", "password", "password reset", "change"] },
            { "title": "Security", "icon": "shield", "link": "/account_twofactor.aspx", "description": "Manage your two factor authentication settings", "tags": ["account", "my account", "two factor authentication", "2 step verification", "security", "secure", "2fa"] },
            { "title": "Account Settings", "icon": "cog", "link": "/account_settings.aspx", "description": "Manage your account settings and preferences", "tags": ["account", "my account", "settings", "username", "currency", "timezone", "date format", "control panel themes", "preferences"] },
            { "title": "Account Subscription", "icon": "cubes", "link": "/account_subscription.aspx", "description": "Manage your account plan", "tags": ["account", "my account", "subscription", "payment", "apps", "addons", "add-ons", "plan", "subscription", "pro", "startup"] },
            { "title": "Billing Details", "icon": "file-text-o", "link": "/account_billing_details.aspx", "description": "Manage your billing details", "tags": ["account", "my account", "billing details"] },
            { "title": "Payment Methods", "icon": "credit-card", "link": "/account_payment_methods.aspx", "description": "Manage your account payment methods", "tags": ["account", "my account", "payment", "methods", "cards", "credit", "debit"] },
            { "title": "Account Invoices", "icon": "file-text-o", "link": "/account_invoices.aspx", "description": "View your account invoices", "tags": ["account", "my account", "invoices"] },
            { "title": "Usage", "icon": "pie-chart", "link": "/account_usage.aspx", "description": "View your account usage details", "tags": ["account", "usage", "revenue", "storage", "bandwidth", "turnover", "limits"] },
            { "title": "Affiliates", "icon": "money", "link": "/affiliate.aspx", "description": "Refer friends and earn $$$", "tags": ["affiliates", "refer a friend", "referrals", "earn money"] },
            { "title": "API", "icon": "cogs", "link": "/apiv2.aspx", "description": "Integrate with the Freewebstore API", "tags": ["API", "api", "application programming interface"] },
            { "title": "CP Updates", "icon": "file-text-o", "link": "/support_cp_updates.aspx", "description": "See our latest updates", "tags": ["cp updates", "control panel updates", "version", "freewebstore", "news"] },
            { "title": "Activity Feed", "icon": "bell-o", "link": "/activityv3.aspx", "description": "View your live activity", "tags": ["activity", "feed", "wall", "updates", "live", "notifications"] },
            { "title": "Messages", "icon": "comment-o", "link": "/messages.aspx", "description": "View your control panel messages and notifications", "tags": ["messages", "notifications", "email", "suppport"] },
            { "title": "Achievements", "icon": "star-o", "link": "/account_achievements.aspx", "description": "View your account achievements", "tags": ["achievements", "awards", "stars", "rewards"] },
            { "title": "Store Health", "icon": "thermometer-three-quarters", "link": "/store_health.aspx", "description": "View your store health", "tags": ["store", "health", "targets", "achievements"] },
            { "title": "Account Credit", "icon": "database", "link": "/account_credit.aspx", "description": "Manage your account credit and transactions", "tags": ["account", "credit", "rates", "offline payments", "funds", "balance"] },
            { "title": "Notification Bar", "image": "notification-bar", "icon": "commenting-o", "link": "/editor.aspx?edid=notification-bar", "description": "Alert users of sales and more", "tags": ["notification", "banner", "bar", "design"] },
            { "title": "QR Codes", "image": "qr-codes", "icon": "qrcode", "link": "/app/storeqrcodes/index", "description": "Generate store QR Codes", "tags": ["qr", "codes", "quick response code", "barcode", "scan"] },
        ]
    };

    var startIndex = 0;
    var searchItems = $(".main_search_items");
    var headerSearchInput = document.getElementById("header_search_input");
    var mainSearch = document.getElementById("main_search");

    var moveWhich = "#main_search_section_control";

    $("#header_search_input").on('keyup', function (e) {
        if (headerSearchInput.value.length >= 1) {
            var searchItemsLength = $("#main_search_section_control .main_search_item").length;
            var prodSearchItemsLength = $("#main_search_product_section_control .main_search_item").length;
            $(".main_search_item").removeClass("main_search_item_toggle");

            if (searchItemsLength == 0 && prodSearchItemsLength > 0) {
                moveWhich = "#main_search_product_section_control";
            }

            if (searchItemsLength != 0 || prodSearchItemsLength != 0) {
                if (e.which == 40) {
                    if (moveWhich == "#main_search_section_control" && startIndex == searchItemsLength) {
                        if (moveWhich == "#main_search_section_control" && prodSearchItemsLength != 0) {
                            moveWhich = "#main_search_product_section_control";
                            startIndex = 1;
                        }
                        $(moveWhich +" .main_search_item:nth-of-type(" + startIndex + ")").addClass("main_search_item_toggle");
                    } else {
                        if (moveWhich == "#main_search_product_section_control" && startIndex == prodSearchItemsLength) {
                            $(moveWhich + " .main_search_item:nth-of-type(" + startIndex + ")").addClass("main_search_item_toggle");
                        } else {
                            startIndex++;
                            $(moveWhich + " .main_search_item:nth-of-type(" + startIndex + ")").addClass("main_search_item_toggle");
                        }
                    }

                    /*var searchItemPosition = $(moveWhich +" .main_search_item:nth-of-type(" + startIndex + ")").offsetParent.top;
                    var searchContainerPosition = $(moveWhich + " .main_search_container").scrollTop();

                    console.log("searchItemPosition " + searchItemPosition);
                    console.log("searchContainerPosition " + searchContainerPosition);

                    if (searchItemPosition > 170 && moveWhich == "#main_search_section_control") {
                        $(moveWhich +" .main_search_container").animate({ scrollTop: searchContainerPosition + 55 }, 100);
                    }
                    if (searchItemPosition > 435 && moveWhich == "#main_search_product_section_control") {
                        $(moveWhich + " .main_search_container").animate({ scrollTop: searchContainerPosition + 55 }, 100);
                    }*/
                    if (startIndex > 1) {
                        var searchContainerPosition = $(moveWhich + " .main_search_container").scrollTop();
                        $(moveWhich + " .main_search_container").animate({ scrollTop: searchContainerPosition + 55 }, 100);
                    }

                } else if (e.which === 38) {

                    if (startIndex === 0) {
                        startIndex++;
                        $(moveWhich +" .main_search_item:nth-of-type(" + startIndex + ")").addClass("main_search_item_toggle");
                    } else {
                        startIndex--;
                        if (startIndex === 0) {
                            startIndex++;
                            if (moveWhich === "#main_search_product_section_control" && searchItemsLength != 0) {
                                moveWhich = "#main_search_section_control";
                                startIndex = searchItemsLength;
                            }
                            $(moveWhich +" .main_search_item:nth-of-type(" + startIndex + ")").addClass("main_search_item_toggle");
                        } else {
                            $(moveWhich +" .main_search_item:nth-of-type(" + startIndex + ")").addClass("main_search_item_toggle");
                        }

                    }

                    /*var searchItemPosition = $(moveWhich + " .main_search_item:nth-of-type(" + startIndex + ")").position().top;
                    console.log(searchItemPosition)
                    var searchContainerPosition = $(moveWhich +" .main_search_container").scrollTop();
                    if (searchItemPosition < 60 && moveWhich == "#main_search_section_control") {
                        $(moveWhich +" .main_search_container").animate({ scrollTop: searchContainerPosition - 55 }, 100);
                    }
                    if (searchItemPosition < 270 && moveWhich == "#main_search_product_section_control") {
                        $(moveWhich + " .main_search_container").animate({ scrollTop: searchContainerPosition - 55 }, 100);
                    }*/
                    if (moveWhich == "#main_search_section_control" && startIndex != searchItemsLength) {
                        var searchContainerPosition = $(moveWhich + " .main_search_container").scrollTop();
                        $(moveWhich + " .main_search_container").animate({ scrollTop: searchContainerPosition - 55 }, 100);
                    }
                    if (moveWhich == "#main_search_product_section_control" && startIndex != prodSearchItemsLength) {
                        var searchContainerPosition = $(moveWhich + " .main_search_container").scrollTop();
                        $(moveWhich + " .main_search_container").animate({ scrollTop: searchContainerPosition - 55 }, 100);
                    }

                } else if (e.which == 13) {
                    var searchAnchor = $(moveWhich +" .main_search_item:nth-of-type(" + startIndex + ")").attr("href");
                    if (searchAnchor != null) {
                        window.location.href = searchAnchor;
                    }
                } else if (e.which == 27) {
                    mainSearch.classList.remove("main_search_active");
                    headerSearchInput.blur();
                } else {
                    startIndex = 0;
                    searchMain();
                }
            } else {
                if (e.which == 27) {
                    mainSearch.classList.remove("main_search_active");
                    headerSearchInput.blur();
                } else {
                    startIndex = 0;
                    searchMain();
                }
            }
        }
    });


    function searchMain() {
        if (headerSearchInput.value.length <= 1) {
            mainSearch.classList.remove("main_search_active");

        } else {
            mainSearch.classList.add("main_search_active");
            runPageSearch();
            if (!location.href.match("localhost:")) {
                if (typeof user !== "undefined") {
                    if (user.isSupport !== true) {
                        searchDelay(function () {
                            var searchInput = headerSearchInput.value.toLowerCase().trim();
                            searchInput = stripHTML(searchInput);
                            searchInput = searchInput.replace(/[^a-z0-9-_ ]/gi, "");
                            var beaverSearch = new Logger({ storeId: storeId, prefix: "MAIN-SEARCH", uuid: beaverGuid });
                            beaverSearch.warn(searchInput);

                        }, 1000);
                    }
                }
            }
        }
    }

    var searchDelay = (function () {
        var searchTimer = 0;
        return function (callback, ms) {
            clearTimeout(searchTimer);
            searchTimer = setTimeout(callback, ms);
        };
    })();

    var searchPagesHasRan = false;

    function runPageSearch() {
        if (!searchPagesHasRan) {
            searchPagesHasRan = !searchPagesHasRan;
            //Get Pages for search
            axiosGet("/services/Pages.svc/getPagesForSearch?storeId=" + storeId).then(function (result) {
                var items = result.d;
                $.each(items, function (index, item) {
                    delete item.__type;
                    item.tags = item.tags.split(",").map(function (tagItem) {
                        return tagItem.trim();
                    });
                    searchPages.pages.push(item);
                });

                buildSearch();
            });
        } else buildSearch();
    }

    function mainSearchProducts(q) {
        var productDisplayCount = false;
        q = q.replace(/[^a-z0-9-_ %.'+\/]/gi, "");
        axiosGet("/services/Products.svc/quickSearch?storeId=" + storeId + "&q=" + q + "&start=0&pgsize=10").then(function (data) {
            var search = data.d || data;
            if (search.found > 0) {
                productDisplayCount = true;
                var rawHTML = "";
                [].slice.call(search.list).forEach(function(item) {
                    var iconImage = '<i class="fa fa-archive" aria-hidden="true"></i>';
                    if (item.Value[1] != null && item.Value[1].length > 0) {
                        iconImage = '<img src="' + item.Value[1] + '" alt="' + item.Value[0] + '" />';
                    }

                    rawHTML += '<a href="/manage_products_editv2.aspx?prodid=' + item.Key + '" class="main_search_item" title="' + item.Value[0] + '">' +
                        '<div class="main_search_item_icon">' + iconImage + '</div>' +
                        '<div class="main_search_item_info">' +
                        '<div class="main_search_item_info_title">' + item.Value[0] + '</div>' +
                        '<div class="main_search_item_info_desc">' + currency_options.symbol + item.Value[2] + '</div>' +
                        '</div>' +
                        '</a>';
                });
                document.querySelector("#main_search_product_section_control .main_search_container").innerHTML += rawHTML;
                delete rawHTML;
            }
        }).catch().then(function () {
            hideById("main_search_loader_products");
            if (productDisplayCount === false) {
                document.querySelector("#main_search_product_section_control .main_search_container").innerHTML += '<p>No products found</p>';
            }
        });
    }

    var mainSearchProductDelay = (function () {
        var mainSearchProductTimer = 0;
        return function (callback, ms) {
            clearTimeout(mainSearchProductTimer);
            mainSearchProductTimer = setTimeout(callback, ms);
        };
    })();

    function buildSearch() {
        $("#main_search_section_control .main_search_container a, #main_search_section_control .main_search_container p").remove();
        var searchInput = headerSearchInput.value.toLowerCase().trim();
        searchInput = stripHTML(searchInput);

        var productSearchInput = searchInput;
        showById("main_search_loader_products");
        $("#main_search_product_section_control .main_search_container a, #main_search_product_section_control .main_search_container p").remove();

        mainSearchProductDelay(function () {
            mainSearchProducts(productSearchInput);
        }, 400);

        searchInput = searchInput.replace(/[^a-z0-9-_ ]/gi, "");

        searchInput = searchInput.split(" ");
        searchInput = searchInput.filter(function (entry) { return entry.trim() !== ''; });

        [].slice.call(searchInput).forEach(function(item, index) {
            if (item.length < 2) {
                searchInput.splice(index, 1);
            }
        });

        var count;
        var displayCount = 0;
        var rawHTML = "";
        [].slice.call(searchPages.pages).forEach(function(item) {
            var tags = item.tags;
            count = 0;
            var searchLength = searchInput.length;
            [].slice.call(tags).forEach(function(tag) {
                [].slice.call(searchInput).forEach(function(text) {
                    if (text.length >= 1) {
                        if (tag.toLowerCase().match(text.toLowerCase())) {
                            count++;
                        }
                    } else {
                        searchLength--;
                    }
                });
            });

            if (count / searchLength >= 1) {
                displayCount++;
                var iconImage = '<i class="fa fa-' + item.icon + '" aria-hidden="true"></i>';
                if (item.image != null && item.image.length > 0) {
                    iconImage = '<img src="//d11fdyfhxcs9cr.cloudfront.net/design_media/freewebstore/appstore/freewebstore/' + item.image + '/icon.jpg" alt="' + item.title + '" />';
                }

                rawHTML += '<a href="' + item.link + '" class="main_search_item" title="' + item.title + '">' +
                    '<div class="main_search_item_icon">' + iconImage + '</div>' +
                    '<div class="main_search_item_info">' +
                    '<div class="main_search_item_info_title">' + item.title + '</div>' +
                    '<div class="main_search_item_info_desc">' + item.description + '</div>' +
                    '</div>' +
                    '</a>';
            }
        });

        document.querySelector("#main_search_section_control .main_search_container").innerHTML += rawHTML;
        delete rawHTML;
        if (displayCount === 0) {
            document.querySelector("#main_search_section_control .main_search_container").innerHTML += '<p>No pages found</p>';
        }
    }
</script>
                    <div class="header_account">
                        <div id="header_account_button_id" class="header_account_button" data-tourid="nav-menu-preview">
                            <span class="header_account_button_name"><span class="header_account_button_name_inner">Hey, <span id="master_user_name">james</span></span> <i class="fa fa-caret-down" aria-hidden="true"></i></span>
                        </div>

                        <div id="header_account_menu_id" class="header_account_menu">
                            <div class="header_account_menu_info">
                                <h2>Account Info</h2>
                                <div class="header_account_menu_info_body">
                                    <p><span>Last Login: </span><strong class="account_details_lastLogin"></strong></p>
                                    <p><span>Store Name: </span><strong class="account_details_name" title="Stylez360">Stylez360</strong></p>
                                    <p><span>Store ID: </span><strong>733006</strong></p>
                                    <p><span>Package: </span><strong class="account_details_packages">Community Package</strong></p>
                                </div>
                            </div>
                            <a href="https://ddsees.my-online.store/" target="fws_preview_tab" data-tourid="nav-menu-preview2" id="master_store_url" onclick="giveAchievement(&#39;ACHIEVEMENT_PREVIEW_STORE&#39;);">Preview Store <i class="fa fa-external-link" aria-hidden="true"></i></a>
                            <a class="header_account_button_info">Account Info</a>
                            <a class="header_account_xfuncs" href="https://stylez360.github.io/xfuncs">xFuncs</a>
                            <a href="https://stylez360.github.io/accountv2.aspx">My Account</a>
                            <a id="master_store_switch" onclick="buildSwitchAccountModal();" style="display: none;">Switch Accounts</a>
                            <a onclick="buildCreateNewStoreModal();">Create Additional Store</a>
                            <a onclick="runLogout();" data-no-instant="">Log Out</a>
                        </div>
                    </div>
                    <a id="header_notification_order" href="https://stylez360.github.io/orders_view_list.aspx?isNew=false" class="header_notification_item" title="View your Orders">
                        <i class="fa fa-shopping-basket" aria-hidden="true"></i>
                        <span class="header_notification_item_pulse"></span>
                    </a>
                    <a id="header_notification_message" href="https://stylez360.github.io/messages.aspx" class="header_notification_item" title="View your Messages">
                        <i class="fa fa-comment-o" aria-hidden="true"></i>
                        <span class="header_notification_item_pulse"></span>
                    </a>
                    
                    
                </header>

                <div id="liveChat">
	
                    <script type="text/javascript">
                        function decodeHTML(str){
                            return str.replace(/&#([0-9]{1,3});/gi, function(match, num) {
                                return String.fromCharCode(parseInt(num));
                            });
                        }

                        if (!location.href.includes("orders_checkoutsv2.aspx")) {
                            var url = "https://chatcreate.com/api/bots/1200/standalone/snippet";

                            var chatbotConnectScript = document.createElement('script');
                            chatbotConnectScript.setAttribute("async", "true");
                            chatbotConnectScript.setAttribute('id', 'cc-snippet');
                            chatbotConnectScript.setAttribute('src', url);
                            document.body.appendChild(chatbotConnectScript);

                            var chatbotScript = document.querySelector('#cc-snippet');
                            chatbotScript.addEventListener('load', function () {
                                if (document.getElementById("cc-button") != null) {
                                    document.getElementById("cc-button").classList.add("cc-button_working");
                                } else {
                                }
                            });

                            chatbotScript.addEventListener('error', function (err) {
                                console.error(err);
                            });
                        }

                    </script>
                    <script>var ChatCreateHandoffName = 733006;</script>
                    <style>
                        #cc-button{
                            z-index: 9997 !important;
                            opacity: 0;
                            visibility: hidden;
                            transition: 0.4s;
                        }
                        #cc-button.cc-button_working{
                            opacity: 1;
                            visibility: visible;
                        }
                    </style>
                
</div>

                

                <script>                    

                    var cognitoIdToken = Cookies.getJSON('cognitoIdToken');

                    var ridgeToken = Cookies.getJSON('ridgeToken');
                    $(document).ready(function () {
                        $('body').click(function (evt) {
                            if ($(evt).is("header_account_button")) {
                                $(".header_account_menu").toggleClass("header_account_menu_active");
                                $(".header_account").toggleClass("header_account_active");
                                if (tourIsLive == true && tourIsLiveId == "ACHIEVEMENT_PREVIEW_STORE") {
                                    setupTourNext();
                                }
                                if (tourIsLive == true && tourIsLiveId == "ACHIEVEMENT_PREVIEW_STORE2") {
                                    setupTourNextId = "ACHIEVEMENT_PREVIEW_STORE";
                                    setupTourNext();
                                }
                            } else if ($(evt.target).closest('.header_account_button').length) {
                                $(".header_account_menu").toggleClass("header_account_menu_active");
                                $(".header_account").toggleClass("header_account_active");
                                if (tourIsLive == true && tourIsLiveId == "ACHIEVEMENT_PREVIEW_STORE") {
                                    setupTourNext();
                                }
                                if (tourIsLive == true && tourIsLiveId == "ACHIEVEMENT_PREVIEW_STORE2") {
                                    setupTourNextId = "ACHIEVEMENT_PREVIEW_STORE";
                                    setupTourNext();
                                }
                            } else if ($(evt.target).closest('.header_account_menu').length) {

                            } else {
                                if ($(".header_account_menu").hasClass("header_account_menu_active")) {
                                    $(".header_account_menu").toggleClass("header_account_menu_active");
                                    $(".header_account").toggleClass("header_account_active");
                                    $(".header_account_menu_info").removeClass("header_account_menu_info_active");
                                    $(".header_account_button_info").removeClass("header_account_button_info_active");

                                    if (tourIsLive == true && tourIsLiveId == "ACHIEVEMENT_PREVIEW_STORE2") {
                                        setupTourNextId = "ACHIEVEMENT_PREVIEW_STORE";
                                        setupTourNext();
                                    }

                                }
                            }

                            if ($("#quicksearch_results").hasClass("quicksearch_results_active")) {
                                if (!$(evt.target).closest(".quicksearch_results_container").length) {
                                    $("#quicksearch_results").removeClass("quicksearch_results_active");
                                }
                            }

                            if ($("#main_search").hasClass("main_search_active")) {
                                if ((!$(evt.target).closest("#main_search").length) && (!$(evt.target).is("#header_search_input"))) {
                                    $("#main_search").removeClass("main_search_active");
                                }
                            }

                        });

                        $(".header_account_button_info").click(function () {
                            $(".header_account_menu_info").toggleClass("header_account_menu_info_active");
                            $(".header_account_button_info").toggleClass("header_account_button_info_active");
                        });

                        $(".header_menu_button").click(function () {
                            $("nav").animate({ 'left': '0px' }, { duration: 400 });
                            $("main").animate({ 'left': '350px' }, { duration: 400 });
                            $(".nav_overlay").fadeIn();
                            $("body").addClass("body_modal_is_open");
                            hideById("cc-button");
                        });

                        $(".nav_overlay, #nav_close_button").click(function () {
                            $("nav").animate({ 'left': '-350px' }, { duration: 400 });
                            $("main").animate({ 'left': '0' }, { duration: 400 });
                            $(".nav_overlay").fadeOut();
                            $("body").removeClass("body_modal_is_open");
                            showById("cc-button");
                            if (tourIsLive == true) {
                                setupTourNext();
                            }
                        });
                        
                        $("nav").hover(function () {
                            if (tourIsLive == true) {
                                var viewportWidth = Math.max(document.documentElement.clientWidth, window.innerWidth || 0);
                                /*if (viewportWidth > 899 && viewportWidth < 1251) {
                                    setupTourNext();
                                }*/
                                if (viewportWidth > 899) {
                                    setupTourNext();
                                }
                            }
                        });
                        getUserV2(cognitoIdToken, ridgeToken);
                    });

                    $(window).resize(function () {
                        
                        if (tourIsLive == true) {
                            delayTour(function () {
                                setupTourNext();
                            }, 200);
                        }
                    });

                    var delayTour = (function () {
                        var timerTour = 0;
                        return function (callback, ms) {
                            clearTimeout(timerTour);
                            timerTour = setTimeout(callback, ms);
                        };
                    })();

                    function runLogout() {
                        var url = new URL(location.href);
                        axiosGet(url.origin + '/services/auth/Helpers.svc/Logout?storeId=' + storeId)
                            .then(function (res) {
                                if (res.d.length > 0) location = res.d;
                                else location = '/logout.aspx';
                            })
                            .catch(function (err) {
                                console.error('Failed to logout, err:', err)
                            })
                            .then(function () {
                                //location = "/logout.aspx";
                            });
                    }

                    function helpVideo(url) {
                        $(".overlay_forced, .modal_help_videos").fadeIn();
                        $("body").addClass("body_modal_is_open");
                        $("#modal_help_videos_frame").html('');
                        $("#modal_help_videos_frame").append('<iframe width="100%" height="315" src="https://www.youtube.com/embed/'+url+'" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>');
                    }
                    function helpVideoClose() {
                        $(".overlay_forced, .modal_help_videos").hide();
                        $("body").removeClass("body_modal_is_open");
                        $("#modal_help_videos_frame").html('');
                    }
                </script>

                <div class="main">
                    <!--<div id="ie_banner">
                        <p>We will be dropping support for your browser very soon. check out these <a class="alternative_link" href="/supported.aspx">alternatives</a></p>
                    </div>-->
                    

<div id="breadcrumbs_main_container"><div id="breadcrumbs"><div class="breadcrumbs_container"><a href="https://stylez360.github.io/main.aspx" title="Back to Homepage"><i class="fa fa-home" aria-hidden="true"></i></a><a id="" href="https://stylez360.github.io/manage.aspx">Manage</a><a id="" href="https://stylez360.github.io/manage_products.aspx">Products</a><a id="" href="https://stylez360.github.io/manage_products_list.aspx">List All</a></div><div id="breadcrumbs_save" data-tourid="save-the-page"><a class="main_save_button button button_primary button_disabled has_tool_tip" onclick="runSaveButton();"><span class="tool_tip tool_tip_bottom tool_tip_red">Change something first!</span>Save</a></div></div></div>

<script>
    function createBreadcrumbs() {
        var mainPageBreadcrumbs = mainBreadcrumbs.breadcrumbs;
        var mainPageSave = mainBreadcrumbs.save;

        // Only adds the breadcrumb bar if there is a save or breadcrumbs
        if (mainPageBreadcrumbs.length > 0 || mainPageSave == true) {
            document.querySelector("#breadcrumbs_main_container").innerHTML += '<div id="breadcrumbs"><div class="breadcrumbs_container"></div></div>';
        }


        var mainPageBreadcrumbsHtml = '<a href="/main.aspx" title="Back to Homepage"><i class="fa fa-home" aria-hidden="true"></i></a>';
        for (var i = 0; i < mainPageBreadcrumbs.length; i++) {

            var mainPageBreadcrumbsHtmlId = '';

            if (mainPageBreadcrumbs[i].id != null && mainPageBreadcrumbs[i].id.length > 0) {
                mainPageBreadcrumbsHtmlId = mainPageBreadcrumbs[i].id;
            }

            mainPageBreadcrumbsHtml += '<a id="'+ mainPageBreadcrumbsHtmlId +'" href="' + mainPageBreadcrumbs[i].link + '">' + mainPageBreadcrumbs[i].name + '</a>';

        }

        document.querySelector(".breadcrumbs_container").innerHTML = mainPageBreadcrumbsHtml;

        if (mainPageSave == true) {

            var mainPageBreadcrumbsSaveHtml = '<div id="breadcrumbs_save" data-tourid="save-the-page">';
            mainPageBreadcrumbsSaveHtml += '<a class="main_save_button button button_primary button_disabled has_tool_tip" onclick="runSaveButton();"><span class="tool_tip tool_tip_bottom tool_tip_red">Change something first!</span>Save</a>';
            mainPageBreadcrumbsSaveHtml += '</div>';

            document.querySelector("#breadcrumbs").innerHTML += mainPageBreadcrumbsSaveHtml;

        }

    }

</script>


                    

    <script>
        var mainBreadcrumbs = {
            "breadcrumbs": [
                { "name": "Manage", "link": "/manage.aspx" },
                { "name": "Products", "link": "/manage_products.aspx" },
                { "name": "List All", "link": "/manage_products_list.aspx" }
            ],
            "save": true
        }
        createBreadcrumbs();
    </script>

    <div class="main_container">
        
        <div class="layout1 layout_overflow">

            <div id="restore_products_warning" class="bootstrap_warning" style="display: block;">
                <div id="restore_products_warning_inner">
                    <div id="restore_products_warning_inner_left"><i class="fa fa-exclamation-triangle" aria-hidden="true"></i></div>
                    <div id="restore_products_warning_inner_right"><span id="restore_products_warning_number">3 Deleted Products are</span> available to restore. <a href="https://stylez360.github.io/manage_products_list_deleted.aspx" class="link_color_dgrey">View</a></div>
                </div>
            </div>

            <div class="panel_collapsable" id="products_filters_panel" style="display: none;">
                <div class="panel_white">
                    <div class="panel_collapsable_header">
                        <h2>Page View</h2>
                        <i class="fa fa-caret-down" aria-hidden="true"></i>
                    </div>
                    <div class="panel_collapsable_body">
                        <div class="panel_section">
                            <p>Use the check buttons below to show and hide different attributes.</p>
                            <div class="input_container inline_checkboxes lists_filters">
                                <div class="checkbox_container">
                                    <input type="checkbox" id="product_list_filter_item0" name="product_list_filter_item" checked="checked">
                                    <label for="product_list_filter_item0"><span>Name</span></label>
                                </div>
                                <div class="checkbox_container">
                                    <input type="checkbox" id="product_list_filter_item1" name="product_list_filter_item" checked="checked">
                                    <label for="product_list_filter_item1"><span>Image</span></label>
                                </div>
                                <div class="checkbox_container">
                                    <input type="checkbox" id="product_list_filter_item14" name="product_list_filter_item" checked="checked">
                                    <label for="product_list_filter_item14"><span>Availability</span></label>
                                </div>
                                <div class="checkbox_container">
                                    <input type="checkbox" id="product_list_filter_item2" name="product_list_filter_item" checked="checked">
                                    <label for="product_list_filter_item2"><span>Category</span></label>
                                </div>
                                <div class="checkbox_container">
                                    <input type="checkbox" id="product_list_filter_item3" name="product_list_filter_item" checked="checked">
                                    <label for="product_list_filter_item3"><span>Price</span></label>
                                </div>
                                <div class="checkbox_container">
                                    <input type="checkbox" id="product_list_filter_item4" name="product_list_filter_item" checked="checked">
                                    <label for="product_list_filter_item4"><span>Code</span></label>
                                </div>
                                <div class="checkbox_container">
                                    <input type="checkbox" id="product_list_filter_item5" name="product_list_filter_item">
                                    <label for="product_list_filter_item5"><span>Date Added</span></label>
                                </div>
                                <div class="checkbox_container">
                                    <input type="checkbox" id="product_list_filter_item6" name="product_list_filter_item">
                                    <label for="product_list_filter_item6"><span>Stock</span></label>
                                </div>
                                <div class="checkbox_container">
                                    <input type="checkbox" id="product_list_filter_item9" name="product_list_filter_item">
                                    <label for="product_list_filter_item9"><span>Shipping</span></label>
                                </div>
                                <div class="checkbox_container">
                                    <input type="checkbox" id="product_list_filter_item10" name="product_list_filter_item">
                                    <label for="product_list_filter_item10"><span>Weight</span></label>
                                </div>
                                <div class="checkbox_container">
                                    <input type="checkbox" id="product_list_filter_item11" name="product_list_filter_item">
                                    <label for="product_list_filter_item11"><span>Rating</span></label>
                                </div>
                                <div class="checkbox_container">
                                    <input type="checkbox" id="product_list_filter_item12" name="product_list_filter_item">
                                    <label for="product_list_filter_item12"><span>Brand</span></label>
                                </div>
                                <div class="checkbox_container">
                                    <input type="checkbox" id="product_list_filter_item13" name="product_list_filter_item">
                                    <label for="product_list_filter_item13"><span>Stars</span></label>
                                </div>
                            </div>
                        </div>
                        <div class="panel_section">
                            <div class="input_container">
                                <label for="dlSort">Sort By</label>
                                <select id="dlSort" onchange="productListSortChange(this);">
                                    <option value="name" data-sort="asc" data-sortcooke="nameasc">Product Name (Aa - Zz)</option>
                                    <option value="name" data-sort="dsc" data-sortcooke="namedsc">Product Name (Zz - Aa)</option>
                                    <option value="brand" data-sort="asc" data-sortcooke="brandasc">Brand Name (Aa - Zz)</option>
                                    <option value="brand" data-sort="dsc" data-sortcooke="branddsc">Brand Name (Zz - Aa)</option>
                                    <option value="price" data-sort="asc" data-sortcooke="priceasc">Price (Low - High)</option>
                                    <option value="price" data-sort="dsc" data-sortcooke="pricedsc">Price (High - Low)</option>
                                    <option value="createdon" data-sort="dsc" data-sortcooke="createdondsc">Date (New &gt; Old)</option>
                                    <option value="createdon" data-sort="asc" data-sortcooke="createdonasc">Date (Old &gt; New)</option>
                                    <option value="stock" data-sort="asc" data-sortcooke="stockasc">Stock (Low - High)</option>
                                    <option value="stock" data-sort="dsc" data-sortcooke="stockdsc">Stock (High - Low)</option>
                                    <option value="rating" data-sort="dsc" data-sortcooke="ratingdsc">Rating (A - E)</option>
                                    <option value="rating" data-sort="asc" data-sortcooke="ratingasc">Rating (E - A)</option>
                                    <option value="sku" data-sort="asc" data-sortcooke="skuasc">Code (Aa - Zz)</option>
                                    <option value="sku" data-sort="dsc" data-sortcooke="skudsc">Code (Zz - Aa)</option>
                                    <option value="weight" data-sort="asc" data-sortcooke="weightasc">Weight (Low - High)</option>
                                    <option value="weight" data-sort="dsc" data-sortcooke="weightdsc">Weight (High - Low)</option>
                                    <option value="stars" data-sort="dsc" data-sortcooke="starsdsc">Stars (High - Low)</option>
                                    <option value="stars" data-sort="asc" data-sortcooke="starsasc">Stars (Low - High)</option>
                                </select>
                            </div>
                            <div class="input_container">
                                <label for="dlPageSize">Page Size</label>
                                <select id="dlPageSize" onchange="productListSizeChange(this);">
                                    <option value="10">10</option>
                                    <option value="25">25</option>
                                    <option value="50">50</option>
                                    <option value="100">100</option>
                                    <option value="250">250</option>
                                    <option value="500">500</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="layout1" id="products_search_panel">
                <div class="panel panel_overflow border_bottom_5">
                    <div class="quicksearch_results_container" style="display: none;">
                        <div class="input_container">
                            <input id="txtQuickSearch" type="search" placeholder="Search products..." autocomplete="off">                         
                        </div>
                        <div id="quicksearch_need_more_chars" style="display: none;">
                            <p class="alert_search color_red">Search for 3 or more characters</p>
                        </div>
                        <div id="quicksearch_results">
                            <div class="busy_wait busy_wait_static busy_wait_product_list_search">
                                <div class="busy_wait_content">
                                    <div class="sk-cube-grid">
                                        <div class="sk-cube sk-cube1"></div>
                                        <div class="sk-cube sk-cube2"></div>
                                        <div class="sk-cube sk-cube3"></div>
                                        <div class="sk-cube sk-cube4"></div>
                                        <div class="sk-cube sk-cube5"></div>
                                        <div class="sk-cube sk-cube6"></div>
                                        <div class="sk-cube sk-cube7"></div>
                                        <div class="sk-cube sk-cube8"></div>
                                        <div class="sk-cube sk-cube9"></div>
                                    </div>
                                    <span>Searching for Products</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a onclick="openAddNewProductModal();" id="btnAddNewProduct" class="button button_primary">Add Product</a>
                </div>
            </div>
            <div class="panel_expandable">
                <div id="applied_filter" class="panel_white">
                    <h2>Your products are being filtered:</h2>
                    <p>Click on a filter to remove it.</p>
                    <div class="button button_dgrey create_group_num marginr5" onclick="createGroupNum(1);">Save as Group</div>
                    <div id="lists_apply_filter_button2" onclick="openProductFilterModal();" class="button button_white marginr5"><i class="fa fa-plus"></i> Add</div>
                </div>
                <div class="overlimit" style="display: none;">Fetched <strong class="overlimit1"></strong> of <strong class="overlimit2"></strong> products <a class="question_mark_tool_tip has_tool_tip">?<div class="question_mark_tool_tip_span_middle">Over 10,000 product matches have been found. To see products over the 10,000 mark you will need to use the Apply Filter button or use the Search to search for individual products.</div></a></div>
                <div class="pagination hide_overflow" data-type="product"></div>
                <div class="panel_white panel_table_list">

                    <div id="products_being_created" style="display: none;">
                        <h2><i class="fa fa-spinner fa-spin color_primary" aria-hidden="true"></i> <span id="products_being_created_count"></span> Product(s) Being Created</h2>
                        <p>They will appear in your list shortly.</p>
                    </div>

                    <div class="lists_table_container_most_outer">
                        <a id="lists_apply_filter_button" onclick="openProductFilterModal();" class="table_button button_dgrey" style="display: none;"><i class="fa fa-filter" aria-hidden="true"></i><span>Apply Filter</span></a>
                        <div class="table_container lists_table_container">
                            <table id="lists_table" style="display: none;">
                                <thead>
                                    <tr>
                                        <th class="table_checkbox_small">
                                            <div class="checkbox_container">
                                                <input type="checkbox" id="lists_selectall" name="lists_selectall">
                                                <label for="lists_selectall"></label>
                                            </div>
                                        </th>
                                        <th colspan="3" class="table_hidden_buttons">
                                            <div class="table_hidden_buttons_section" style="display: none;">
                                                <div class="table_button button_lgrey has_dropdown">Selected (<span class="table_button_number"></span>) <i class="fa fa-caret-down" aria-hidden="true"></i>
                                                    <div class="dropdown_menu">
                                                        <a onclick="createGroupNum(2);">Create Group</a>
                                                        <a id="dropdown_menu_edit_single" onclick="editSingle();" style="display: block;">Edit</a>
                                                        <a onclick="editTab();">Edit in New Tab</a>
                                                        <a id="dropdown_menu_copy_single" onclick="copySingle();" style="display: block;">Copy</a>
                                                        <a onclick="previewProducts();">Preview</a>
                                                        <a onclick="deselectAllSelectedProducts();">Deselect Selected</a>
                                                        <a onclick="deleteSeleted();">Delete Selected</a>
                                                    </div>
                                                </div>
                                                <div class="table_button button_lgrey has_dropdown">All (<span class="table_button_select_all_number"></span>) <i class="fa fa-caret-down" aria-hidden="true"></i>
                                                    <div class="dropdown_menu">
                                                        <a class="delete_all_products" onclick="deleteAllProducts();">Delete All</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </th>  
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="table_header_titles">
                                        <td class="table_checkbox_small"></td>
                                        <td></td>
                                        <td class="table_header_titles_item table_header_titles_image" style="display: table-cell;"></td>
                                        <td class="table_header_titles_item table_header_titles_name" style="display: table-cell;">Name</td>
                                        <td class="table_header_titles_item table_header_titles_availability" style="display: table-cell;">Availability</td>
                                        <td class="table_header_titles_item table_header_titles_category" style="display: table-cell;">Category</td>
                                        <td class="table_header_titles_item table_header_titles_price" style="display: table-cell;">Price</td>
                                        <td class="table_header_titles_item table_header_titles_code" style="display: table-cell;">Code</td>
                                        <td class="table_header_titles_item table_header_titles_date">Date Added</td>
                                        <td class="table_header_titles_item table_header_titles_stock" style="display: none;">Stock</td>
                                        <td class="table_header_titles_item table_header_titles_shipping" style="display: none;">Shipping</td>
                                        <td class="table_header_titles_item table_header_titles_weight" style="display: none;">Weight</td>
                                        <td class="table_header_titles_item table_header_titles_rating" style="display: none;">Rating</td>
                                        <td class="table_header_titles_item table_header_titles_brand" style="display: none;">Brand</td>
                                        <td class="table_header_titles_item table_header_titles_stars" style="display: none;">Stars</td>
                                        <td></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="busy_wait busy_wait_static busy_wait_product_list" style="display: none;">
                        <div class="busy_wait_content">
                            <div class="sk-cube-grid">
                                <div class="sk-cube sk-cube1"></div>
                                <div class="sk-cube sk-cube2"></div>
                                <div class="sk-cube sk-cube3"></div>
                                <div class="sk-cube sk-cube4"></div>
                                <div class="sk-cube sk-cube5"></div>
                                <div class="sk-cube sk-cube6"></div>
                                <div class="sk-cube sk-cube7"></div>
                                <div class="sk-cube sk-cube8"></div>
                                <div class="sk-cube sk-cube9"></div>
                            </div>
                            <span>Loading your Products</span>
                        </div>
                    </div>
                    <div class="zero_products" style="display: block;">
                        <h2>Zero Products Found</h2>
                        <p>This could mean that you have set a filter that does not match any of your products.</p>
                        <p>Alternatively, you may be seeing this message because you do not currently have any products listed on your store.</p>
                    </div>
                </div>
                <div class="pagination hide_overflow" data-type="product"></div>
            </div>
        
            <div class="save_panel_bottom">
                <a class="main_save_button button button_primary button_disabled has_tool_tip" onclick="runSaveButton();"><span class="tool_tip tool_tip_top tool_tip_red">Change something first!</span>Save</a>
            </div>

        </div>
    </div>

    <div class="product_list_custom_menu" style="">
        <a class="product_list_custom_menu_edit"><i class="fa fa-pencil" aria-hidden="true"></i>Edit</a>
        <a class="product_list_custom_menu_edit_tab" target="_blank"><i class="fa fa-pencil" aria-hidden="true"></i>Edit in New Tab</a>
        <a class="product_list_custom_menu_copy"><i class="fa fa-clone" aria-hidden="true"></i>Copy</a>
        <a class="product_list_custom_menu_preview" target="_blank"><i class="fa fa-eye" aria-hidden="true"></i>Preview</a>
        <a class="product_list_custom_menu_delete color_red"><i class="fa fa-times" aria-hidden="true"></i>Delete</a>
    </div>
<script src="./manage_products_list_files/product_list.js.download"></script>
<script src="./manage_products_list_files/pagination.js.download"></script>
<script>
    var storeId = 733006;

    var filters = new Array();

    window.addEventListener("beforeunload", function (e) {
        if (save_changes_detected == false) {
            return;
        }
        (e || window.event).returnValue = null;
        return null;
    }); 

    $().ready(function () {

        var isFilterUrl = window.location.href.split("=").pop();
        if (isFilterUrl == "weight") {
            var addWeightFilter = { field: "weight", comparison: "EQUALS", type: "NUMBER", values: ["0", ""] };
            filters.push(addWeightFilter);
            Cookies.set('fwsProductListApplyFilters_' + storeId, filters);
            Cookies.set('fwsProductListStart_' + storeId, 0);
        }

        


        if (Cookies.get('fwsProductListViews_' + storeId)) {
            $("input[name='product_list_filter_item']").prop('checked', false);
            var listJson = Cookies.get("fwsProductListViews_" + storeId);
            var listObj = JSON.parse(listJson);

            if (listObj.name === "true") { $("input[id='product_list_filter_item0']").prop('checked', true); }
            if (listObj.image === "true") { $("input[id='product_list_filter_item1']").prop('checked', true); }
            if (listObj.category === "true") { $("input[id='product_list_filter_item2']").prop('checked', true); }
            if (listObj.price === "true") { $("input[id='product_list_filter_item3']").prop('checked', true); }
            if (listObj.code === "true") { $("input[id='product_list_filter_item4']").prop('checked', true); }
            if (listObj.date === "true") { $("input[id='product_list_filter_item5']").prop('checked', true); }
            if (listObj.stock === "true") { $("input[id='product_list_filter_item6']").prop('checked', true); }
            if (listObj.shipping === "true") { $("input[id='product_list_filter_item9']").prop('checked', true); }
            if (listObj.weight === "true") { $("input[id='product_list_filter_item10']").prop('checked', true); }
            if (listObj.rating === "true") { $("input[id='product_list_filter_item11']").prop('checked', true); }
            if (listObj.brand === "true") { $("input[id='product_list_filter_item12']").prop('checked', true); }
            if (listObj.stars === "true") { $("input[id='product_list_filter_item13']").prop('checked', true); }
            if (listObj.availability === "true") { $("input[id='product_list_filter_item14']").prop('checked', true); }
        }

        if (Cookies.get('fwsProductListSorts_' + storeId)) {
            var cookieGetSort = Cookies.get('fwsProductListSorts_' + storeId);
            document.querySelector("#dlSort option[data-sortcooke='" + cookieGetSort + "']").selected = true;
        }

        if (Cookies.get('fwsProductListSize_' + storeId)) {
            var cookieGetSize = Cookies.get('fwsProductListSize_' + storeId);
            document.getElementById("dlPageSize").value = cookieGetSize;
        }

        if (Cookies.get('fwsProductListStart_' + storeId)) {
            var cookieGetStart = Cookies.get('fwsProductListStart_' + storeId);
            startpg = cookieGetStart;
        } else {
            startpg = 0;
        }

        LoadProducts(startpg);
    });

    // function to create and set list cookies
    $("input[name='product_list_filter_item']").click(function () {

        var name = { name: "false" };
        var image = { image: "false" };
        var category = { category: "false" };
        var price = { price: "false" };
        var code = { code: "false" };
        var date = { date: "false" };
        var stock = { stock: "false" };
        var shipping = { shipping: "false" };
        var weight = { weight: "false" };
        var rating = { rating: "false" };
        var brand = { brand: "false" };
        var stars = { stars: "false" };
        var availability = { availability: "false" };

        if ($("input[id='product_list_filter_item0']").is(":checked")) { var name = { name: "true" }; }
        if ($("input[id='product_list_filter_item1']").is(":checked")) { var image = { image: "true" }; }
        if ($("input[id='product_list_filter_item2']").is(":checked")) { var category = { category: "true" }; }
        if ($("input[id='product_list_filter_item3']").is(":checked")) { var price = { price: "true" }; }
        if ($("input[id='product_list_filter_item4']").is(":checked")) { var code = { code: "true" }; }
        if ($("input[id='product_list_filter_item5']").is(":checked")) { var date = { date: "true" }; }
        if ($("input[id='product_list_filter_item6']").is(":checked")) { var stock = { stock: "true" }; }
        if ($("input[id='product_list_filter_item9']").is(":checked")) { var shipping = { shipping: "true" }; }
        if ($("input[id='product_list_filter_item10']").is(":checked")) { var weight = { weight: "true" }; }
        if ($("input[id='product_list_filter_item11']").is(":checked")) { var rating = { rating: "true" }; }
        if ($("input[id='product_list_filter_item12']").is(":checked")) { var brand = { brand: "true" }; }
        if ($("input[id='product_list_filter_item13']").is(":checked")) { var stars = { stars: "true" }; }
        if ($("input[id='product_list_filter_item14']").is(":checked")) { var availability = { availability: "true" }; }

        var listFilterJson = $.extend(name, image, category, price, code, date, stock, shipping, weight, rating, brand, stars, availability);

        Cookies.set('fwsProductListViews_' + storeId, listFilterJson);


    });

    function productListSortChange(el) {
        
        var cookieSort = el.value + $("#dlSort option:selected").attr("data-sort");
        Cookies.set('fwsProductListSorts_' + storeId, cookieSort);
        startpg = 0;
        LoadProducts(startpg);
    }

    function productListSizeChange(el) {
        var cookieSize = el.value;
        Cookies.set('fwsProductListSize_' + storeId, cookieSize);
        Cookies.set('fwsProductListStart_' + storeId, 0);
        startpg = 0;
        LoadProducts(startpg);
    }

    
    var allProducts;
    var paginationTotalItems;
    var paginationPageItems;
    var paginationPageStart;
    var paginationShowAll;
    var startpg = 0;
    var limit = document.getElementById("dlPageSize").value;
    var sort = "created";
    var ascending = false;

    function LoadProducts(startpg) {
        limit = document.getElementById("dlPageSize").value;
        
        showByClass("busy_wait_product_list");
        $(".lists_table_items, .pagination_text_results[data-type='product'], .pagination_number_results[data-type='product']").remove();

        if (Cookies.get('fwsProductListApplyFilters_' + storeId)) {
            if (Cookies.get('fwsProductListApplyFilters_' + storeId) === "[]"){
                filters;
            } else {
                var listPCPJson = Cookies.get("fwsProductListApplyFilters_" + storeId);
                var listPCPObj = JSON.parse(listPCPJson);
                filters = listPCPObj;
                LoadEnabledFilters(listPCPObj);
            }
        } else {
            filters;
        }

        BuildProductList(startpg);
    }

    function rebuildPaginationproduct(paginationRebuildNumber) {
        limit = document.getElementById("dlPageSize").value;
        startpg = parseInt(paginationRebuildNumber.getAttribute("data-pagnum"));
        startpg = startpg * limit;
        Cookies.set('fwsProductListStart_' + storeId, startpg);
        $(".lists_table_items, .pagination_text_results[data-type='product'], .pagination_number_results[data-type='product']").remove();

        if (Cookies.get('fwsProductListApplyFilters_' + storeId)) {
            var listPCPJson = Cookies.get("fwsProductListApplyFilters_" + storeId);
            var listPCPObj = JSON.parse(listPCPJson);
            filters = listPCPObj;
        } else {
            filters;
        }

        BuildProductList(startpg);
    }

    

    function rebuildProductsFilters(startpg) {
        limit = document.getElementById("dlPageSize").value;
        showByClass("busy_wait_product_list");
        $(".lists_table_items").remove();
        getFilters();
        var listPCPJson = Cookies.get("fwsProductListApplyFilters_" + storeId);
        var listPCPObj = JSON.parse(listPCPJson);
        filters = listPCPObj;

        Cookies.set('fwsProductListStart_' + storeId, startpg);
        startpg = startpg;

        BuildProductList(startpg);
    }

    var checkFluxChangeLoaded = false;
    function BuildProductList(startpg) {

        sort = document.getElementById("dlSort").value;
        hideByClass("zero_products", "overlimit", "overlimit_panel");
        hideById("lists_table", "lists_apply_filter_button");
        showByClass("busy_wait_product_list");
        hideByQueryAll("#lists_table .table_hidden_buttons_section");

        var selectedSort = $("#dlSort option:selected").attr("data-sort");

        switch (selectedSort) {
        case "asc":
            ascending = true;
            break;
        case "dsc":
            ascending = false;
            break;
        }

        if (startpg == null || startpg == "undefined") {
            startpg = 0;
        }

        console.log("--------");
        console.log(filters);
        console.log("--------");

        var urlExtension = storeId + "&limit=" + limit + "&start=" + startpg + "&sort=" + sort + "&ascending=" + ascending + "&filters=" + JSON.stringify(filters);

        axiosGet("/services/Products.svc/listProducts?storeId=" + urlExtension).then(function (data) {
            allProducts = data.d || data;
            console.log(allProducts);
            
            paginationDataFound = allProducts.found;
            paginationDataType = "product";
            productsInFlux(allProducts);
            LoadProductList();

            if (checkFluxChangeLoaded === false) {
                console.log("Check flux loaded");
                checkFluxChangeLoaded = true;
                setTimeout(function () {
                    checkFluxChange();
                }, 10000);
            }

            // Disable 'Delete ALL' button when filters are enabled
            // BUG: It deletes all products, instead of the filtered list
            if (filters && filters.length) {
                // Hide the btn
                document.querySelectorAll('#lists_table .table_button.button_lgrey.has_dropdown')[1].setAttribute('style', 'display:none !important');
            }

        }).catch(function (err) {
            formatErrorMessageAxios(err.Message);

            hideByClass("busy_wait_product_list");
            $("#error_panel").show();
            if (err.Message == "Unauthorized") location - 'logout.aspx';
        }).then(function () {
            $(".busy_wait_product_list").hide();

            if (!allProducts) {
                allProducts = { found: 0 }
            }

            $(".pagination_text_results[data-type='product'], .pagination_number_results[data-type='product']").remove();

            if (allProducts.found === 0) {
                $(".zero_products").show();
                $("#lists_table, #products_filters_panel, .quicksearch_results_container").hide();
                hideById("lists_apply_filter_button");
                $("#products_search_panel").removeClass("layout1_left_mobile").addClass("layout1");
            } else {
                $("#lists_table, #products_filters_panel, .quicksearch_results_container").show();
                showByIdInline("lists_apply_filter_button");
                $("#products_search_panel").removeClass("layout1").addClass("layout1_left_mobile");
                $(".zero_products").hide();

                
                paginationTotalItems = allProducts.found;
                paginationPageItems = parseInt(document.getElementById("dlPageSize").value);
                $(".table_button_select_all_number").text(allProducts.found);


                paginationPageStart = startpg / limit;
                paginationPageStart = Math.ceil(paginationPageStart);
                paginationShowAll = false;

                pagination(paginationTotalItems, paginationPageItems, paginationPageStart, paginationShowAll);
            }
        });
    }

    

    

    

    function GetDateString(when) {
        var then = moment(when, moment.ISO_8601);
        var now = moment(new Date());

        var duration = moment.duration(now.diff(then));
        var days = duration.asDays();
        var hours = duration.asHours();
        var mins = duration.asMinutes();

        var userDate = then.calendar();

        if (mins < 1)
            userDate = "Just now";
        else if (hours < 1)
            userDate = Math.round(mins) + " mins ago";
        else if (days < 1)
            userDate = Math.round(hours) + " hours ago";


        return userDate;
    }
</script>

<script>

var productPageId = '7625436';

$(document).ready(function () {

    $(document).on("contextmenu", ".lists_table_items[data-deleting='false']", function (event) {
        event.preventDefault();

        var pageYPosition = event.pageY - 40;

        $(".product_list_custom_menu").finish().show(100).

            // In the right position (the mouse)
            css({
                top: pageYPosition + "px",
                left: event.pageX + "px"
            });

        var productUrl = $(this).find(".list_table_url a").attr("href");
        $(".product_list_custom_menu_edit, .product_list_custom_menu_edit_tab").attr("href", productUrl);

        var copyId = $(this).attr("data-id");
        $(".product_list_custom_menu_copy").attr("onclick", "copyProduct(" + copyId + "); closeContextMenu();");


        //<i class="fa fa-undo" title="Undo Delete"></i>

        var deleteId = $(this).attr("data-id");
        if ($(this).attr("data-delete") == "true") {
            $(".product_list_custom_menu_delete").html('<i class="fa fa-undo" title="Undo Delete"></i>Undo Delete');
        } else {
            $(".product_list_custom_menu_delete").html('<i class="fa fa-times" aria-hidden="true"></i>Delete');
        }
        $(".product_list_custom_menu_delete").attr("onclick", "tableRowDelete('lists_table_items', " + deleteId + "); closeContextMenu();");

        if (productPageId !== "-1") {
            var productId = $(this).attr("data-id");
            var productPreview = storeUrl + "/product_preview/p" + productPageId + "_" + productId + ".aspx";
            $(".product_list_custom_menu_preview").attr("href", "https://" + productPreview).attr("onclick", "closeContextMenu();");
        } else {
            $(".product_list_custom_menu_preview").remove();
        }
    });

    $(document).bind("mousedown", function (e) {
        if (!$(e.target).parents(".product_list_custom_menu").length > 0) {
            $(".product_list_custom_menu").hide(100);
        }
    });
    
});

function closeContextMenu() {
    $(".product_list_custom_menu").hide(100);
}
</script>


                    <div class="notification_panel_bottom">
                        <div class="notification_panel_bottom_text">You have an outstanding invoice</div>
                        <a class="button button_white notification_panel_bottom_button">View Details</a>
                    </div>
                </div>
            </main>
        </div>

        

    <!-- Image Gallery -->
    
<link rel="stylesheet" type="text/css" href="./manage_products_list_files/image_gallery.css">
<link rel="stylesheet" type="text/css" href="./manage_products_list_files/reusable(1).css">
<link rel="stylesheet" type="text/css" href="./manage_products_list_files/dropzone.css">
<script src="./manage_products_list_files/dropzone.js.download"></script>
<script>

    Dropzone.autoDiscover = false;

    var imagesLoaded = 0;
    var imageGalleryType;
    var imageGalleryLimit;
    var imageGallerySelected = new Array();
    var imageGalleryAddedCount = 0;
    var dropzoneLoadedCount = 0;

    function openImageGallery(theLimit, type) {

        $(".checkbox_ucImageGallery").attr("disabled", false);

        if (type != null && type != "logo" && type != "headerImage" && type != "logoAdd" && type != "slideshowAdd" && type != "slideshowReplace" && type != "headerAdd") {
            $("#recommended_logo_dimensions").hide();
        }

        console.log("Assume run")
        imageGalleryLimit = theLimit;
        imageGalleryType = type;
        loadImageGalleryDropzone(theLimit, imageGalleryType);
        $(".modal_overlay, .modal_image_gallery").fadeIn();
        setTimeout(function () {
            $("body").addClass("body_modal_is_open");
        }, 300);

        imageGallerySelected = new Array();

        $(".checkbox_ucImageGallery").prop('checked', false);
        $("#uc_imageGallery_add_button").addClass("button_disabled");
        $("#uc_imageGallery_add_button span").text("");

        // Theme Editor iframe needs pointer-events disabled in order for drag and drop to work
        if (location.href.indexOf("design_themeeditor") !== -1) {
            document.getElementById("theme_editor_iframe").classList.add("theme_editor_iframe_no_pointer");
        }

    }

    var myDropzone;
    function loadImageGalleryDropzone(theLimit, imageGalleryType) {
        var uploadingFileName = "";
        var myDropzoneMaxFiles = null;
        if (imageGalleryType == 'texteditor' || theLimit == 1) {
            myDropzoneMaxFiles = 1;
        }

        if (dropzoneLoadedCount > 0) {
            myDropzone.destroy();
        }

        dropzoneLoadedCount++;

        document.querySelector(".tab_nav_item[data-tab='2'][data-tabid='imageGallery']").style.display = "block";

        var acceptedGalleryFiles = "image/jpeg,image/png,image/gif";

        if (imageGalleryType == 'texteditor' || imageGalleryType == "texteditorBannerArea") {

            acceptedGalleryFiles = "image/jpeg,image/png,image/gif,application/pdf";

        } else if (imageGalleryType == 'faviconAdd') {

            document.querySelector(".tab_nav_item[data-tab='2'][data-tabid='imageGallery']").style.display = "none";
            acceptedGalleryFiles = "image/jpeg,image/png,image/ico";

        }


        var isProdImg = false;
        myDropzone = new Dropzone("div#drop-target",{
            url: "#",
            maxFilesize: 4.5,
            autoProcessQueue: true,
            maxFiles: myDropzoneMaxFiles,
            acceptedFiles: acceptedGalleryFiles,
            method: "put",
            headers: {
                "x-amz-acl": "public-read"
            },
            accept: function (file, done) {
                myDropzone = this;
                if (file.size == 0) {
                    done("Invalid Image! File is empty.");
                } else {
                    console.log(file.name);
                    myDropzone.options.method = "PUT";
                    var noMime = /(.*)\.[^.]+$/.exec(file.name);
                    var imageFileName = noMime[1] + "_" + new Date().getTime().toString() + "." + file.name.split('.').pop();
                    if (file.type == "application/pdf") {

                        imageFileName = imageFileName.toLowerCase();
                        getSignedUrlPdf(storeId, imageFileName, "application/pdf", function (signedUrl) {
                            file.uploadURL = signedUrl.url;
                            console.log("Parsed:" + signedUrl.filename);
                            uploadingFileName = signedUrl.filename;
                            file.parsedname = signedUrl.filename;
                            console.log("Filename:" + file.parsedname);
                            console.log(file);
                            done();
                        });

                    } else if (imageGalleryType == "faviconAdd") {

                        var iconFileName = new Date().getTime() + ".ico";

                        getSignedUrl(storeId, iconFileName, file.type, 'favicon', function (signedUrl) {
                            file.uploadURL = signedUrl.url;
                            uploadingFileName = signedUrl.filename;
                            file.parsedname = signedUrl.filename;
                            done();
                            giveAchievement('ACHIEVEMENT_ADD_FAVICON');
                        });

                    } else {
                        myDropzone.options.method = "POST";
                        isProdImg = true;
                        file.uploadURL = "/services/image/service.svc/uploadImage";
                        uploadingFileName = file.name;
                        file.parsedname = file.name;
                        file.parsedname = cleanProdImageName(file.parsedname);
                        checkImageExists(file.parsedname, function (output) {
                            file.parsedname = cleanProdImageName(output);
                            done();
                        });
                    }
                }
            },
            sending: function (file, xhr) {
                if (isProdImg) {
                    xhr.setRequestHeader("storeId", storeId);
                    xhr.setRequestHeader("fileName", file.parsedname);
                } else {
                    xhr.setRequestHeader("Content-Type", file.type);
                }
                var _send = xhr.send
                xhr.send = function () {
                    _send.call(xhr, file)
                }
            },
            init: function () {
                this.on("addedfile", function (file) { console.log("File Added: " + file.name); });
                this.on("removedfile", function (file) { console.log("File Removed: " + file.name); });
				this.on("complete", function(file){});
                this.on("success", function (file) {
                    console.log("File uploaded successfully!");

                    imageGallerySelected.push(file.parsedname);

                    var imageGallerySelectionCount = imageGallerySelected.length;
                    if (imageGallerySelectionCount > 0) {
                        $("#uc_imageGallery_add_button").removeClass("button_disabled");
                        $("#uc_imageGallery_add_button span").text(" (" + imageGallerySelectionCount + ")");
                    } else {
                        $("#uc_imageGallery_add_button").addClass("button_disabled");
                        $("#uc_imageGallery_add_button span").text("");
                    }

                    if (imageGalleryType == "texteditor"  || theLimit == 1) {
                        $("body").removeClass("body_modal_is_open");
                        imageGalleryFinal();
                    }

                });
                this.on("dragenter", function (event) { console.log("Drag Enter"); $("#drop-target").addClass("dragover"); });
                this.on("dragleave", function (event) { console.log("Drag Leave"); $("#drop-target").removeClass("dragover"); });
                this.on("processing", function (file) { console.log("onProcessing to:" + file.uploadURL); this.options.url = file.uploadURL; });
                this.on("sending", function (file, xhr, formData) { console.log("onSending"); });
                this.on("error", function (file, error, xhr) { console.log("onERROR"); console.log(error); });
            }
        });
    }


    

    var paginationTotalItems;
    var paginationPageItems;
    var paginationPageStart;
    var paginationShowAll;
    var imagesGallery;
    var startpg = 0;

    function getImageGallery() {

        var showPdf = false;
        if (imageGalleryType == "texteditor" || imageGalleryType == "texteditorBannerArea") {
            showPdf = true;
        }

        jQuery.ajax({
            async: true,
            cache: false,
            url: "/services/Images.svc/ListImages?storeid=" + storeId + "&showPdf=" + showPdf,
            dataType: "json",
            success: function (data) {
                //trace('ListImages:success');
                imagesGallery = data.d || data;

                paginationDataFound = imagesGallery.count;
                paginationDataType = "image";
                buildImageGallery(startpg);
            },
            error: function (request, status, error) {
                //trace('ListImages:error');
                formatErrorMessage(request, error);
            },
            complete: function () {
                //trace('ListImages:complete');
                $(".busy_wait_image_gallery").hide();
                $("#image_gallery").show();
            }
        });

    }

    function dynamicSort(property) {
        var sortOrder = 1;
        if (property[0] === "-") {
            sortOrder = -1;
            property = property.substr(1);
        }
        return function (a, b) {
            var result = (a[property] < b[property]) ? -1 : (a[property] > b[property]) ? 1 : 0;
            return result * sortOrder;
        }
    }

    function buildImageGallery(startpg) {

        var limit = $("#dlSize_ucImageGallery").val();
        var imageSort = $("#dlSort_ucImageGallery").val();

        var startpg = startpg * limit;

        $("#lists_images_table_ucImageGallery, .lists_images_table_ucImageGallery").hide();
        $("#lists_images_table_ucImageGallery tbody .lists_images_table_items_ucImageGallery, .pagination_number_results[data-type='image'], .pagination_text_results[data-type='image']").remove();

        var newLimit = parseInt(startpg) + parseInt(limit);
        var imagePage = imagesGallery.images;

        if (imageSort === "NAME_DESC") {
            imagePage.sort(dynamicSort("name"));
            imagePage.reverse();
        } else if (imageSort === "DATE_ASC") {
            imagePage.sort(dynamicSort("uploaded"));
            imagePage.reverse();
        } else if (imageSort === "DATE_DESC") {
            imagePage.sort(dynamicSort("uploaded"));
        } else if (imageSort === "FILE_ASC") {
            imagePage.sort(dynamicSort("sizekb"));
        } else if (imageSort === "FILE_DESC") {
            imagePage.sort(dynamicSort("sizekb"));
            imagePage.reverse();
        } else {
            imagePage.sort(dynamicSort("name"));
        }

        var imagePage = imagePage.slice(startpg, newLimit);

        $.each(imagePage, function () {

            var imageGalleryAdded = 0;
            var imageGalleryChecked = "";
            var imageGalleryname = this.name;
            if (imageGallerySelected.length > 0) {
                $.each(imageGallerySelected, function (i) {
                    if (imageGallerySelected[i] === imageGalleryname) {
                        imageGalleryChecked = "checked";
                    }
                });
            }

            var visibleName = imageGalleryname;
            var tableContent = "<img src='https://d13z1xw8270sfc.cloudfront.net/resize/" + storeId + "/" + imageGalleryname + "/100/140/0/' />";

            if (imageGalleryType == "texteditor" || imageGalleryType == "texteditorBannerArea") {
                if (visibleName.includes("Templates/" + storeId + "/myimages/")) {
                    visibleName = visibleName.replace("Templates/" + storeId + "/myimages/", "");
                    tableContent = "<i class='fa fa-file-pdf-o lists_images_table_items_pdf'></i>"
                }
            }
            
            $("#lists_images_table_ucImageGallery tbody").append("<tr class='lists_images_table_items_ucImageGallery' data-name='" + imageGalleryname + "' data-id='" + imageGalleryname + "'>" +
                "<td>" +
                "<div class='checkbox_container'>" +
                "<input type='checkbox' onclick='check_ucImageGallery(this);' class='checkbox_ucImageGallery' data-checkUcImageGallery='" + imageGalleryname + "' id='check_ucImageGallery" + imageGalleryname + "' " + imageGalleryChecked+" />" +
                "<label for='check_ucImageGallery" + imageGalleryname + "'><span class='lists_table_label_name' title='" + imageGalleryname + "'>" + visibleName + "</span></label>" +
                "</div>" +
                "</td>" +
                "<td class='lists_table_image'>" + tableContent + "</td>" +
                "<td class='lists_table_name'><span>" + imageGalleryname + "</span></td>" +
                "<td class='lists_table_date'>" + GetDateString(this.uploaded) + "</td>" +
                "</tr>");

       });

        $("#lists_images_table_ucImageGallery, .lists_images_table_ucImageGallery").show();

        paginationDataType = "image";
        paginationTotalItems = imagesGallery.count;
        paginationPageItems = limit;
        paginationPageStart = startpg / limit;
        paginationPageStart = Math.ceil(paginationPageStart);
        paginationShowAll = true;

        pagination(paginationTotalItems, paginationPageItems, paginationPageStart, paginationShowAll);

    }

    function GetDateString(when) {

        var then = moment(when, moment.ISO_8601);
        var now = moment(new Date());

        var duration = moment.duration(now.diff(then));
        var days = duration.asDays();
        var hours = duration.asHours();
        var mins = duration.asMinutes();
        var userDate = then.calendar();

        if (mins < 1)
            userDate = "Just now";
        else if (hours < 1)
            userDate = Math.round(mins) + " mins ago";
        else if (days < 1)
            userDate = Math.round(hours) + " hours ago";

        return userDate;
    }

    function rebuildPaginationimage(el){
        var newstartpg = $(el).attr("data-pagnum");
        buildImageGallery(newstartpg);
    }

    function check_ucImageGallery(el) {
        var imageGallerySelection = $(el).attr("data-checkUcImageGallery");

        if (imageGalleryLimit == 1) {
            $(".checkbox_ucImageGallery").attr("disabled", true);
        }

        if ($(el).is(':checked')) {
            imageGallerySelected.push(imageGallerySelection);
        } else {
            for (var i = imageGallerySelected.length - 1; i >= 0; i--) {
                if (imageGallerySelected[i] === imageGallerySelection) {
                    imageGallerySelected.splice(i, 1);
                    break;
                }
            }
        }

        console.log("Should be final now: " + imageGalleryLimit);

        if (imageGalleryLimit === 1){         
            imageGalleryFinal();
        } else {
            var imageGallerySelectionCount = imageGallerySelected.length;
            if (imageGallerySelectionCount > 0) {
                $("#uc_imageGallery_add_button").removeClass("button_disabled");
                $("#uc_imageGallery_add_button span").text(" (" + imageGallerySelectionCount + ")");
            } else {
                $("#uc_imageGallery_add_button").addClass("button_disabled");
                $("#uc_imageGallery_add_button span").text("");
            }
        }
        
    }

    function check_ucImageGallerySearch(el) {
        var imageGallerySelection = $(el).attr("data-checkUcImageGallery");

        if (imageGalleryLimit === 1) {
            imageGallerySelected.push(imageGallerySelection);
            imageGalleryFinal();
        } else {
            var imageGallerySearchAdded = 0;
            for (var i = imageGallerySelected.length - 1; i >= 0; i--) {
                if (imageGallerySelected[i] === imageGallerySelection) {
                    imageGallerySearchAdded = 1;
                    break;
                }
            }
            if (imageGallerySearchAdded === 0) {
                imageGallerySelected.push(imageGallerySelection);
                $(".checkbox_ucImageGallery").each(function () {
                    var imageSearchCheckName = $(this).attr("data-checkucimagegallery");
                    if (imageSearchCheckName === imageGallerySelection) {
                        $(this).prop('checked', true);
                    }
                });
            }
            var imageGallerySelectionCount = imageGallerySelected.length;
            if (imageGallerySelectionCount > 0) {
                $("#uc_imageGallery_add_button").removeClass("button_disabled");
                $("#uc_imageGallery_add_button span").text(" (" + imageGallerySelectionCount + ")");
            } else {
                $("#uc_imageGallery_add_button").addClass("button_disabled");
                $("#uc_imageGallery_add_button span").text("");
            }
        }

    }

    function uc_imageGallery_multiAddButton() {
        imageGalleryFinal();
    }

    function imageGalleryFinal() {
        imageGalleryAddedCount = 1;

        $("#uc_imageGallery_add_button").text("Adding...").addClass("button_disabled");

        setTimeout(function () {
            $("#uc_imageGallery_add_button").html("Add <span></span>");
            Dropzone.forElement("#drop-target").removeAllFiles(true);
            $(".modal_overlay, .modal_image_gallery").hide();

            if (document.getElementById("editor_overlay") != null && document.querySelector(".editor_is_active_modal") == null) {
                document.getElementById("editor_overlay").classList.remove("editor_overlay_active");
            }

            $("body").removeClass("body_modal_is_open");
            imageGalleryFinalClient(imageGalleryType);
        }, 1500);
    }

    $(document).ready(function () {

        $("input[name='images_view_type_ucImageGallery']").click(function () {
            if ($("input[id='images_view_type1_ucImageGallery']").is(":checked")) {
                $("#image_gallery .table_container").removeClass("lists_images_table_list_ucImageGallery").addClass("lists_images_table_grid_ucImageGallery");
            } else {
                $("#image_gallery .table_container").removeClass("lists_images_table_grid_ucImageGallery").addClass("lists_images_table_list_ucImageGallery");
            }
        });

        $("#dlSort_ucImageGallery").change(function () {
            buildImageGallery(0);
        });

        $("#dlSize_ucImageGallery").change(function () {
            buildImageGallery(0);
        });

        $(".tab_nav_item[data-tabid='imageGallery']").click(function () {
            $(this).parent().find(".tab_nav_item[data-tabid='imageGallery']").removeClass("selected");
            $(this).addClass("selected");
            $(this).parent().parent().find(".tab_section[data-tabid='imageGallery']").hide();
            var tabShow = $(this).attr("data-tab");
            $(this).parent().parent().find("[data-tabsection='tab" + tabShow + "'][data-tabid='imageGallery']").show();

            if (tabShow == "2") {
                if (imagesLoaded === 0) {
                    $(".busy_wait_image_gallery").show();
                    getImageGallery();
                    imagesLoaded++;
                }
            }

        });

    });

    var delay = (function () {
        var timer = 0;
        return function (callback, ms) {
            clearTimeout(timer);
            timer = setTimeout(callback, ms);
        };
    })();

    function imageQuickSearch() {
        delay(function () {
            var q = $(".txtQuickSearch[data-qSearch='image_gallery']").val();
            q = stripHTML(q);
            $(".quicksearch_results[data-qSearch='image_gallery']").addClass("quicksearch_results_active");

            if (q.length < 3) {
                $(".quicksearch_results[data-qSearch='image_gallery']").removeClass("quicksearch_results_active");
                return;
            } else {
                QuickImageSearch(q);
            }

        }, 400);
    }

    function QuickImageSearch(q) {
        var quickImageArray = [];
        var q = q.toLowerCase();

        $.each(imagesGallery.images, function () {
            if (this.name.match(q)) {
                quickImageArray.push(this);
            }
        });

        $(".quicksearch_results[data-qSearch='image_gallery']").html("<div class='quicksearch_results_message quicksearch_results_message_number'>Found: <strong>" + quickImageArray.length + " results</strong> for \"<strong>" + q + "</strong>\"</div>");

        if (quickImageArray.length > 0) {

            $.each(quickImageArray, function () {

                if (imageGallerySelected.length > 0) {
                    var imageGalleryQuickSearchAdded = 0;
                    for (var i = imageGallerySelected.length - 1; i >= 0; i--) {
                        if (imageGallerySelected[i] === this.name) {
                            imageGalleryQuickSearchAdded = 1;
                            break;
                        }
                    }

                    var imageGalleryQuickSearchAddedSelected = '';
                    var imageGalleryQuickSearchAddedSelected1 = "onclick='check_ucImageGallerySearch(this);'";
                    var imageGalleryQuickSearchAddedSelected2 = '';

                    if (imageGalleryQuickSearchAdded > 0) {
                        imageGalleryQuickSearchAddedSelected = "<i class='fa fa-check color_green' aria-hidden='true'></i> <span>Selected</span>";
                        imageGalleryQuickSearchAddedSelected1 = "";
                        imageGalleryQuickSearchAddedSelected2 = "quicksearch_results_item_nohover";
                    } 

                    $(".quicksearch_results[data-qSearch='image_gallery']").append("<li class='quicksearch_results_item'>" +
                            "<a "+imageGalleryQuickSearchAddedSelected1+" data-checkUcImageGallery='" + this.name + "' class='hide_overflow "+imageGalleryQuickSearchAddedSelected2+"'>" +
                            "<img class='quicksearch_results_item_image' src='https://d13z1xw8270sfc.cloudfront.net/resize/" + storeId + "/" + this.name + "/100/140/0/' >" +
                            "<div class='quicksearch_results_item_text'>" +
                            "<div class='quicksearch_results_item_text1'>" + this.name + "</div>" +
                            "<div class='quicksearch_results_item_text2'>" + GetDateString(this.uploaded) + "</div>" +
                            imageGalleryQuickSearchAddedSelected +
                            "</div>" +
                            "</a>" +
                            "</li>");

                } else {
                    $(".quicksearch_results[data-qSearch='image_gallery']").append("<li class='quicksearch_results_item'>" +
                        "<a onclick='check_ucImageGallerySearch(this);' data-checkUcImageGallery='" + this.name + "' class='hide_overflow'>" +
                        "<img class='quicksearch_results_item_image' src='https://d13z1xw8270sfc.cloudfront.net/resize/" + storeId + "/" + this.name + "/100/140/0/' >" +
                        "<div class='quicksearch_results_item_text'>" +
                        "<div class='quicksearch_results_item_text1'>" + this.name + "</div>" +
                        "<div class='quicksearch_results_item_text2'>" + GetDateString(this.uploaded) + "</div>" +
                        "</div>" +
                        "</a>" +
                        "</li>");
                }

            });

            $(".quicksearch_results[data-qSearch='image_gallery']").show();
        }

    }

    
</script>

<!-- http://momentjs.com/ -->
<script src="./manage_products_list_files/moment.min.js(1).download" type="text/javascript"></script>
<script src="./manage_products_list_files/pagination.js(1).download"></script>
<div class="modal modal_image_gallery">
    <div class="modal_header">
        <div class="modal_title">Image Gallery</div>
        <div class="modal_expand" data-expand="normal"><i class="fa fa-window-maximize" aria-hidden="true"></i></div>
        <div class="modal_close uc_imageGallery_close_modal_button"><i class="fa fa-times" aria-hidden="true"></i></div>
    </div>
    <div class="modal_body_outer_container">
        <div class="modal_body">
            <div id="image_gallery_container">

                <div class="tab_container tab_container_nobg_noshad_pad_bor">
                    <div class="tab_nav">
                        <div class="tab_nav_item selected" data-tab="1" data-tabid="imageGallery">Upload</div>
                        <div class="tab_nav_item" data-tab="2" data-tabid="imageGallery">Gallery</div>
                    </div>
                    <div class="tab_section_container">
                        <div class="tab_section" id="tab1" data-tabsection="tab1" data-tabid="imageGallery">
                            <div class="dropzone" id="drop-target"></div>
                        </div>
                        <div class="tab_section" id="tab2" data-tabsection="tab2" data-tabid="imageGallery">
                            <div class="busy_wait busy_wait_static busy_wait_image_gallery">
                                <div class="busy_wait_content">
                                    <div class="sk-cube-grid">
                                        <div class="sk-cube sk-cube1"></div>
                                        <div class="sk-cube sk-cube2"></div>
                                        <div class="sk-cube sk-cube3"></div>
                                        <div class="sk-cube sk-cube4"></div>
                                        <div class="sk-cube sk-cube5"></div>
                                        <div class="sk-cube sk-cube6"></div>
                                        <div class="sk-cube sk-cube7"></div>
                                        <div class="sk-cube sk-cube8"></div>
                                        <div class="sk-cube sk-cube9"></div>
                                    </div>
                                    <span>Loading Image Gallery</span>
                                </div>
                            </div>
                            <div id="image_gallery">
                                <div class="hide_overflow">
                                <div class="input_container input_container_50">
                                    <div class="quicksearch_results_container" style="display: none;">
                                        <label for="">Search</label>
                                        <input class="txtQuickSearch" data-qsearch="image_gallery" type="text" placeholder="Search Image Name" onkeyup="imageQuickSearch();">
                                    </div>
                                    <div class="quicksearch_results" data-qsearch="image_gallery"></div>
                                </div>
                                <div class="input_container_50">
                                    <div class="input_container inline_checkboxes images_view_type_ucImageGallery">
                                        <div class="checkbox_container">
                                            <input type="radio" id="images_view_type1_ucImageGallery" name="images_view_type_ucImageGallery" checked="checked">
                                            <label for="images_view_type1_ucImageGallery"><span>Grid</span></label>
                                        </div>
                                        <div class="checkbox_container">
                                            <input type="radio" id="images_view_type2_ucImageGallery" name="images_view_type_ucImageGallery">
                                            <label for="images_view_type2_ucImageGallery"><span>List</span></label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                <div class="hide_overflow">
                                    <div class="input_container input_container_50">
                                        <label for="dlSort_ucImageGallery">Sort By</label>
                                        <select id="dlSort_ucImageGallery">
                                            <option value="DATE_ASC">Uploaded (Newest - Oldest)</option>
                                            <option value="DATE_DESC">Uploaded (Oldest - Newest)</option>
                                            <option value="NAME_ASC">Image Name (A - Z)</option>
                                            <option value="NAME_DESC">Image Name (Z - A)</option>
                                            <option value="FILE_ASC">File Size (Smallest - Largest)</option>
                                            <option value="FILE_DESC">File Size (Largest - Smallest)</option>
                                        </select>
                                    </div>
                                    <div class="input_container input_container_50">
                                        <label for="dlSize_ucImageGallery">Page Size</label>
                                        <select id="dlSize_ucImageGallery">
                                            <option value="10" data-size="10">10</option>
                                            <option value="25" data-size="25">25</option>
                                            <option value="50" data-size="50">50</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="pagination pagination_small hide_overflow" data-type="image"></div>
                                <div class="table_container lists_table_container marginb50 lists_images_table_grid_ucImageGallery">
                                    <table id="lists_images_table_ucImageGallery">
                                        <tbody>
                                            <tr class="table_header_titles">
                                                <td></td>
                                                <td>Image Name</td>
                                                <td>Date Added</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div class="modal_footer">
        <a class="button button_dgrey modal_footer_left close_modal_button uc_imageGallery_close_modal_button">Cancel</a>
        <a id="uc_imageGallery_add_button" onclick="uc_imageGallery_multiAddButton();" class="button button_primary button_disabled modal_footer_right">Add<span></span></a>
    </div>
</div>

    <!-- End Image Gallery -->

    <!-- Apply Filters Modal -->
    

<style>

#applied_filter{
    display: none;
}

#applied_filter a{
    margin-right: 10px;
}

#applied_filter a i{ 
    margin-right: 5px; 
    color: #ea1636;
}

#applied_filter a:hover i{
    color: #FFF;
}

#lists_apply_filter_button{
    position: absolute;
    top: 13px;
    right: 0px;
    z-index: 3;
}

#lists_apply_filter_button span{
    display: none;
}

@media only screen and (min-width:600px){ 
    #lists_apply_filter_button span{
        display: inline-block;
        margin-left: 5px;
    }
}

.apply_filters_section .checkbox_container{
    margin-bottom: 5px;
    margin-top: 15px;
}

.apply_filters_section_main{
    display: none;
    background-color: #F5F5F7;
    border: 1px solid #ddd;
    padding: 10px 10px 0px 10px;
    margin-bottom: 5px;
}
</style>

<div class="modal modal_apply_filters">
    <div class="modal_header">
        <div class="modal_title">Apply Filter</div>
        <div class="modal_expand" data-expand="normal"><i class="fa fa-window-maximize" aria-hidden="true"></i></div>
        <div class="modal_close"><i class="fa fa-times" aria-hidden="true"></i></div>
    </div>
    <div class="modal_body_outer_container">
        <div class="modal_body">
            <p>This will allow you to filter the products that are shown on this page. For example, you could choose to display products only from within a certain category and price range.</p>
            <p>Once you are happy with the filters you have set, click the <strong>Apply Filter</strong> button at the bottom of the modal.</p>
        </div>
        <div id="apply_filters_list" class="modal_body paddingb10">
            <p><strong>Filter by:</strong></p>

            <div class="apply_filters_section">
                <div class="checkbox_container">
                    <input type="checkbox" id="apply_filter_item1" name="apply_filter_item">
                    <label for="apply_filter_item1"><span>Product Name</span></label>
                </div>
                <div class="apply_filters_section_main">
                    <div class="input_container_2_outer">
                        <div class="input_container input_container_2">
                            <select id="apply_filter_item1_options" data-type="STRING">
                                <option value="EQUALS">Exact Match</option>
                                <option value="CONTAINS">Starts With</option>
                                <option value="NOTCONTAIN">Does not Contain</option>
                            </select>
                        </div>
                        <div class="input_container input_container_2">
                            <input id="apply_filter_item1_text" type="text" placeholder="e.g. Star Wars">
                        </div>
                    </div>
                </div>
            </div> <!-- Name -->

            <div class="apply_filters_section">
                <div class="checkbox_container">
                    <input type="checkbox" id="apply_filter_item2" name="apply_filter_item">
                    <label for="apply_filter_item2"><span>Product Category</span></label>
                </div>
                <div class="apply_filters_section_main">
                    <div id="category_tree_container">
                        <div class="busy_wait_filter busy_wait_filter_categories">
                            <div class="sk-cube-grid">
                                <div class="sk-cube sk-cube1"></div>
                                <div class="sk-cube sk-cube2"></div>
                                <div class="sk-cube sk-cube3"></div>
                                <div class="sk-cube sk-cube4"></div>
                                <div class="sk-cube sk-cube5"></div>
                                <div class="sk-cube sk-cube6"></div>
                                <div class="sk-cube sk-cube7"></div>
                                <div class="sk-cube sk-cube8"></div>
                                <div class="sk-cube sk-cube9"></div>
                            </div>
                            <span>Loading your Categories</span>
                        </div>
                        <div class="apply_filter_error">
                            <p>Error loading content.</p>
                            <a class="button button_red retry_filter_categories">Retry</a>
                        </div>
                    </div>
                </div>
            </div> <!-- Category -->

            <div class="apply_filters_section">
                <div class="checkbox_container">
                    <input type="checkbox" id="apply_filter_item3" name="apply_filter_item">
                    <label for="apply_filter_item3"><span>Product Code</span></label>
                </div>
                <div class="apply_filters_section_main">
                    <div class="input_container_2_outer">
                        <div class="input_container input_container_2">
                            <select id="apply_filter_item3_options" data-type="STRING">
                                <option value="EQUALS">Exact Match</option>
                                <option value="CONTAINS">Starts With</option>
                                <option value="NOTCONTAIN">Does not Contain</option>
                            </select>
                        </div>
                        <div class="input_container input_container_2">
                            <input id="apply_filter_item3_text" type="text" placeholder="e.g. EBSX002">
                        </div>
                    </div>
                </div>
            </div> <!-- Code -->

            <div class="apply_filters_section">
                <div class="checkbox_container">
                    <input type="checkbox" id="apply_filter_item4" name="apply_filter_item">
                    <label for="apply_filter_item4"><span>Product Price</span></label>
                </div>
                <div class="apply_filters_section_main paddingt0">
                    <div class="input_container">
                        <div class="width_50">
                            <select id="apply_filter_item4_options" class="margint10" data-type="NUMBER">
                                <option value="EQUALS">Equal to</option>
                                <option value="LESSTHAN">Less than</option>
                                <option value="MORETHAN">More than</option>
                                <option value="BETWEEN">Between</option>
                            </select>
                        </div>
                        <div class="width_50">
                            <input id="apply_filter_item4a_number" class="margint10" type="number" placeholder="12.00">
                            <input id="apply_filter_item4b_number" class="margint10" type="number" placeholder="16.00" style="display:none">
                        </div>
                    </div>
                </div>
            </div> <!-- Price -->

            <div class="apply_filters_section">
                <div class="checkbox_container">
                    <input type="checkbox" id="apply_filter_item5" name="apply_filter_item">
                    <label for="apply_filter_item5"><span>Stock Level</span></label>
                </div>
                <div class="apply_filters_section_main paddingt0">
                    <div class="input_container" data-type="NUMBER">
                        <div class="width_50">
                            <select id="apply_filter_item5_options" class="margint10" data-type="NUMBER">
                                <option value="EQUALS">Equal to</option>
                                <option value="LESSTHAN">Less than</option>
                                <option value="MORETHAN">More than</option>
                                <option value="BETWEEN">Between</option>
                            </select>
                        </div>
                        <div class="width_50">
                            <input id="apply_filter_item5a_number" class="margint10" type="number" placeholder="10">
                            <input id="apply_filter_item5b_number" class="margint10" type="number" placeholder="20" style="display:none">
                        </div>
                    </div>
                </div>
            </div> <!-- Stock Level -->

            <div class="apply_filters_section">
                <div class="checkbox_container">
                    <input type="checkbox" id="apply_filter_item6" name="apply_filter_item">
                    <label for="apply_filter_item6"><span>Shipping Price</span></label>
                </div>                
                <div class="apply_filters_section_main hide_overflow">
                    <div class="input_container input_container_50">
                        <select id="apply_filter_item6_options">
                            <option value="0">Default Shipping (Rules)</option>
                            <option value="1">Fixed Shipping</option>
                        </select>
                    </div>
                </div>
            </div> <!-- Shipping price -->

            <div class="apply_filters_section">
                <div class="checkbox_container">
                    <input type="checkbox" id="apply_filter_item7" name="apply_filter_item">
                    <label for="apply_filter_item7"><span>Featured Product</span></label>
                </div>
                <div class="apply_filters_section_main hide_overflow">
                    <div class="input_container input_container_50">
                        <select id="apply_filter_item7_options">
                            <option value="0">Non-Featured Product</option>
                            <option value="1">Featured Product</option>
                        </select>
                    </div>
                </div>
            </div> <!-- Featured -->

            <div class="apply_filters_section">
                <div class="checkbox_container">
                    <input type="checkbox" id="apply_filter_item8" name="apply_filter_item">
                    <label for="apply_filter_item8"><span>Special Offer Products</span></label>
                </div>
                    <div class="apply_filters_section_main hide_overflow">
                    <div class="input_container input_container_50">
                        <select id="apply_filter_item8_options">
                            <option value="0">No Offer</option>
                            <option value="2">% Discount</option>
                            <option value="1">Money Off</option>
                            <option value="3">Any Offer</option>
                        </select>
                    </div>
                </div>
            </div> <!-- Special Offer -->

            <div class="apply_filters_section">
                <div class="checkbox_container">
                    <input type="checkbox" id="apply_filter_item9" name="apply_filter_item">
                    <label for="apply_filter_item9"><span>Display Status</span></label>
                </div>
                <div class="apply_filters_section_main hide_overflow">
                    <div class="input_container input_container_50">
                        <select id="apply_filter_item9_options">
                            <option value="0">Active (Visible)</option>
                            <option value="1">Hidden</option>
                            <!--<option value="apply_filter_item9_option3">Visible but Checkout Disabled</option>-->
                        </select>
                    </div>
                </div>
            </div> <!-- Display Status -->

            <div class="apply_filters_section">
                <div class="checkbox_container">
                    <input type="checkbox" id="apply_filter_item10" name="apply_filter_item">
                    <label for="apply_filter_item10"><span>Brand Name</span></label>
                </div>
                <div class="apply_filters_section_main hide_overflow">
                    <div class="input_container input_container_50">
                        <select id="lstBrands"></select>
                    </div>

                </div>
            </div> <!-- Brand Name -->

            <div class="apply_filters_section">
                <div class="checkbox_container">
                    <input type="checkbox" id="apply_filter_item11" name="apply_filter_item">
                    <label for="apply_filter_item11"><span>Supplier Name</span></label>
                </div>
                <div class="apply_filters_section_main hide_overflow">
                    <div class="input_container input_container_50">
                        <select id="lstSuppliers">                        
                        </select>
                    </div>
                </div>
            </div> <!-- Supplier Name -->

            <div class="apply_filters_section">
                <div class="checkbox_container">
                    <input type="checkbox" id="apply_filter_item14" name="apply_filter_item">
                    <label for="apply_filter_item14"><span>Supplier SKU</span></label>
                </div>
                <div class="apply_filters_section_main">
                    <div class="input_container_2_outer">
                        <div class="input_container input_container_2">
                            <select id="apply_filter_item14_options" data-type="STRING">
                                <option value="EQUALS">Exact Match</option>
                                <option value="CONTAINS">Starts With</option>
                                <option value="NOTCONTAIN">Does not Contain</option>
                            </select>
                        </div>
                        <div class="input_container input_container_2">
                            <input id="apply_filter_item14_text" type="text" placeholder="e.g. EBSX002">
                        </div>
                    </div>
                </div>
            </div> <!-- Supplier SKU -->

            <div class="apply_filters_section">
                <div class="checkbox_container">
                    <input type="checkbox" id="apply_filter_item12" name="apply_filter_item">
                    <label for="apply_filter_item12"><span>Weight</span></label>
                </div>
                <div class="apply_filters_section_main paddingt0">
                    <div class="input_container">
                        <div class="width_50">
                            <select id="apply_filter_item12_options" class="margint10" data-type="NUMBER">
                                <option value="EQUALS">Equal to</option>
                                <option value="LESSTHAN">Less than</option>
                                <option value="MORETHAN">More than</option>
                                <option value="BETWEEN">Between</option>
                            </select>
                        </div>
                        <div class="width_50">
                            <input id="apply_filter_item12a_number" class="margint10" type="number" placeholder="4">
                            <input id="apply_filter_item12b_number" class="margint10" type="number" placeholder="6" style="display:none">
                        </div>
                    </div>
                </div>
            </div> <!-- Weight -->

            <div class="apply_filters_section">
                <div class="checkbox_container">
                    <input type="checkbox" id="apply_filter_item13" name="apply_filter_item">
                    <label for="apply_filter_item13"><span>Google Eligible</span></label>
                </div>
                <div class="apply_filters_section_main hide_overflow">
                    <div class="input_container input_container_50">
                        <select id="apply_filter_item13_options">
                            <option value="0">Not Google Eligible</option>
                            <option value="1">Google Eligible</option>
                        </select>
                    </div>
                </div>
            </div> <!-- Google Eligible -->

        </div>
    </div>
    <div class="modal_footer">
        <a class="button button_dgrey modal_footer_left close_modal_button">Cancel</a>
        <a class="button button_primary modal_footer_right modal_apply_filter_button" onclick="productFilterApplyModal();">Apply</a>
    </div>
</div>


<script src="./manage_products_list_files/products_list_apply_filters.js.download"></script>
    <!-- End Apply Filters Modal -->

    

<div class="modal_links add_new_product_modal">
    <h2 class="color_white">How would you like to Add a Product?</h2>
    <div class="modal_links_body">

        <div class="modal_links_body_item">
            <i class="fa fa-archive" aria-hidden="true"></i>
            <strong>Add Product</strong>
            <!--<div class="color_primary">Basic Details</div>-->
            <p>Add a product to your store.</p>
            <a class="button button_primary" id="btnQuickAddProduct" onclick="btnQuickAddProduct();">Add</a>
        </div>

        <!--<div class="modal_links_body_item">
            <i class="fa fa-archive" aria-hidden="true"></i>
            <strong>Add Product</strong>
            <div class="color_primary">Full Details</div>
            <p>Add a product with all the details you need.</p>
            <a id="btnAddProduct" class="button button_primary button_disabled">Add</a>
        </div>-->

        <div class="modal_links_body_item">
            <i class="fa fa-cloud-upload" aria-hidden="true"></i>
            <strong>Import Products</strong>
            <!--<div class="color_primary">Bulk Add</div>-->
            <p>Import multiple products onto your store at once.</p>
            <a href="https://stylez360.github.io/manage_products_importv2.aspx" class="button button_primary" id="btnAddLink">Import</a>
        </div>

    </div>
</div>


<link rel="stylesheet" type="text/css" href="./manage_products_list_files/products_categories.css">

<div class="modal quick_add_product_modal">
    <div class="modal_header">
        <div class="modal_title">Add Product</div>
        <div class="modal_expand" data-expand="normal"><i class="fa fa-window-maximize" aria-hidden="true"></i></div>
        <div class="modal_close close_quick_add_modal_button"><i class="fa fa-times" aria-hidden="true"></i></div>
    </div>
    <div class="modal_body_outer_container">
        <div class="modal_body">
            <p>Enter the basic details of your product. You'll then be able to manage and edit your product in more detail.</p>
        </div>
        <div class="modal_body modal_body_quick_add_product_busy">
            <div class="busy_wait busy_wait_static busy_wait_quick_create_product">
                <div class="busy_wait_content">
                    <div class="sk-cube-grid">
                        <div class="sk-cube sk-cube1"></div>
                        <div class="sk-cube sk-cube2"></div>
                        <div class="sk-cube sk-cube3"></div>
                        <div class="sk-cube sk-cube4"></div>
                        <div class="sk-cube sk-cube5"></div>
                        <div class="sk-cube sk-cube6"></div>
                        <div class="sk-cube sk-cube7"></div>
                        <div class="sk-cube sk-cube8"></div>
                        <div class="sk-cube sk-cube9"></div>
                    </div>
                    <span>Creating your Product</span>
                </div>
            </div>
            <div class="quick_create_product_error2">
                <div class="quick_create_product_error1_inner">
                    <p><strong>Error creating product</strong></p>
                    <p>If you continue to see this error please feel free to contact our support team directly via email via support@freewebstore.org</p>
                    <a class="button button_white quick_create_product_error2_button" onclick="quickAddProductButtonSave();">Try Again</a>
                </div>
            </div>
            <div class="general_success_tick quick_create_product_success">
                <div class="general_success_tick_container">
                    <svg width="30" height="30">
                        <path class="general_success_tick_check" d="M2.5,15.5 l5.5,5.5 l15.75,-12.5"></path>
                    </svg>
                </div>
                <span class="general_success_tick_text">Product Added</span>
                <div class="alert alert_quick_create_product_error_description">
                    <p>However, there was an issue adding the description.<br>
                    Click the <em>Add More Details</em> button to add a description and more.</p>
                </div>
                <p>It can take up to 1 minute for your product to become live.</p>
                <div class="hide_overflow align_center">
                    <a class="button button_primary table_button" id="quick_create_product_success_edit">Add More Details</a>
                    <a class="quick_create_product_success_add button button_white table_button" onclick="quickAddProductAnother();">Add Another Product</a>
                </div>
            </div>
        </div>
        <div class="modal_body modal_body_quick_add_product">
            <br>
            <div class="hide_overflow">
                <div class="input_container input_container_50">
                    <label for="quick_add_product_name">Product Name<span class="static_tool_tip right" onclick="inputHelpText(&#39;name&#39;)">?</span></label>
                    <input type="text" id="quick_add_product_name" placeholder="Product Name">
                    <div class="input_help_text" data-help="name">
                        <p>We recommend that you include several relevant keywords and variations to help with search engine ranking and Google Shopping uploads. Keywords are words and phrases that you think your customers may search for on search engines such as Google.</p>
                        <p>Example:<br><em>If this product is a pair of shoes, try not to use a simple generic term for your Product Name such as "Shoes". Instead, add more descriptive, relevant keywords and variations. For example, "Adidas Men's Stylish Suede Shoes/Trainers/Sneakers - Blue".</em></p>
                    </div>
                    <div class="alert alert_quickname">Please enter a name</div>
                </div>
                <div class="input_container input_container_50">
                    <label for="quick_add_product_price">Product Price</label>
                    <input type="number" id="quick_add_product_price" min="0.01" value="1.00">
                    <div class="alert alert_quickprice">Please enter a price</div>
                </div>
            </div>
            <div class="hide_overflow">
                <div class="width_50">
                    <div id="category_container_main">
                        <div class="input_container">
                            <label for="product_edit_category">Category</label>
                            <input type="text" id="product_edit_category" placeholder="Category" onfocus="showCategoryList();keyCategoryMatch();" onkeydown="categoryKeyPress(event);" onchange="keyCategoryMatch();" onkeyup="keyCategoryMatch();">
                            <div class="product_edit_category_container_outer">
                                <div id="product_edit_category_container">
                                    <div class="busy_wait busy_wait_static busy_wait_category_list">
                                        <div class="busy_wait_content">
                                            <div class="sk-cube-grid">
                                                <div class="sk-cube sk-cube1"></div>
                                                <div class="sk-cube sk-cube2"></div>
                                                <div class="sk-cube sk-cube3"></div>
                                                <div class="sk-cube sk-cube4"></div>
                                                <div class="sk-cube sk-cube5"></div>
                                                <div class="sk-cube sk-cube6"></div>
                                                <div class="sk-cube sk-cube7"></div>
                                                <div class="sk-cube sk-cube8"></div>
                                                <div class="sk-cube sk-cube9"></div>
                                            </div>
                                            <span>Loading Categories</span>
                                        </div>
                                    </div>
                                    <div id="category_container_add_new" onclick="addBrandNewCategory();">
                                        <div class="product_edit_category_search_item_path">Click or press <strong>enter</strong> to add</div>
                                        Add "<strong id="category_container_add_new_name" class="color_primary"></strong>" as a new category
                                    </div>
                                </div>
                            </div>
                            <div class="alert alert_product_edit_category">Product requires at least one category</div>
                        </div>

                        <div id="adding_category_load" class="marginb10">
                            <span class="busy_wait_line">
                                <span class="busy_wait_line_item busy_wait_line1"></span>
                                <span class="busy_wait_line_item busy_wait_line2"></span>
                                <span class="busy_wait_line_item busy_wait_line3"></span>
                                <span class="busy_wait_line_text">Adding Category</span>
                            </span>
                        </div>
                        <div id="category_container" class="hide_overflow"></div>
                    </div>
                </div>
                <div class="input_container input_container_50">
                    <label for="quick_add_product_sku">Product SKU/ Code<span class="static_tool_tip right" onclick="inputHelpText(&#39;sku&#39;)">?</span></label>
                    <input type="text" id="quick_add_product_sku" placeholder="Product SKU/ Code">
                    <div class="input_help_text" data-help="sku">
                        <p>This can be used to help you manage your stock and orders. The Product SKU/ Code may display on your store when viewing the details of a product (dependent on your selected design).</p>
                        <p>If you do not enter a Unique Product Identifier for a product, we will automatically use the Product SKU/ Code as the MPN.</p>
                    </div>
                    <div class="alert alert_quicksku">Please enter a SKU/ code</div>
                </div>
            </div>
            <div class="hide_overflow">
                <div class="input_container input_container_50">
                    <label>Product Image</label>
                    <a class="button button_white" id="openImageGalleryQuickAddProductImage_button" onclick="openImageGalleryQuickAdd();">Add Image</a>
                    <div id="quick_add_product_image_container" class="hide_overflow"></div>
                </div>
                <div class="width_50 marginb20nodesk">
                    <label class="block marginb10"><strong>Visible</strong></label>
                    <div class="checkbox_container">
                        <input type="checkbox" id="quick_add_product_visible" name="quick_add_product_visible" checked="">
                        <label for="quick_add_product_visible"><span>Visible on Store</span></label>
                    </div>
                </div>
            </div>
            <div class="hide_overflow">
                <div class="input_container">
                    <label for="quick_add_product_description">Product Description</label>
                    <textarea id="quick_add_product_description"></textarea>
                </div>
            </div>
        </div>
    </div>
    <div class="modal_footer">
        <a class="button button_dgrey modal_footer_left close_quick_add_modal_button">Close</a>
        <a class="button button_primary modal_footer_right" id="quick_add_modal_button" onclick="quickAddProductButtonSave();">Add</a>
    </div>
</div>

<script src="./manage_products_list_files/products_categories.js.download"></script>
<script>

    function btnQuickAddProduct() {
        quickAddProductAnother();
        document.getElementById("quick_add_product_sku").value = JwitRandomIDGenerator();
        $(".modal_doverlay, .modal_x_button, .add_new_product_modal, .quick_create_product_error2, .modal_body_quick_add_product_busy, .alert_quick_create_product_error_description").hide();
        $(".modal_body_quick_add_product").show();
        $(".forced_doverlay, .quick_add_product_modal").fadeIn();
        $("#quick_add_modal_button").show();
        $("#quick_add_modal_button").removeClass("button_disabled");
    }

     $(".close_quick_add_modal_button").click(function(){
        $(".forced_doverlay, .quick_add_product_modal").hide();
         $(".modal_doverlay, .modal_x_button, .add_new_product_modal").hide();
         if (location.pathname.includes("manage_products_list")) {
             location.reload();
         }
    });

    function openImageGalleryQuickAdd() {
        $(".forced_doverlay, .quick_add_product_modal").hide();
        if (isRidgePackageTypeId == 'True' || packageTypeId == 12 || packageTypeId == 13 || packageTypeId == -1) {
            openImageGallery(2, 'quickAddProduct');
        } else {
            openImageGallery(1, 'quickAddProduct');
        }
    }

    function imageGalleryFinalClient(imageGalleryType) {
        console.log("You now have an array of items in a variable called: imageGallerySelected " + imageGallerySelected);
        console.log("Where should we add the images: " + imageGalleryType);

        if (imageGalleryType == "quickAddProduct") {
            $.each(imageGallerySelected, function () {

                var imageDate = new Date().getTime();
                console.log(imageDate)
                if (isRidgePackageTypeId == 'True' || packageTypeId == 12 || packageTypeId == 13 || packageTypeId == -1) {
                    $("#quick_add_product_image_container").append('<div class="quick_add_product_image_item" data-src="' + this + imageDate + '" data-originalsrc="' + this + '">' +
                        '<i class="quick_add_image_delete table_row_delete_icon fa fa-times" data-src="' + this + '" aria-hidden="true" onclick="removeQuickAddImage(\'' + this + imageDate + '\')"></i>' +
                        '<img src="//d13z1xw8270sfc.cloudfront.net/resize/' + storeId + '/' + this + '/50/50/0/" data-src="' + this + '" />' +
                        '</div>');
                } else {
                    $("#quick_add_product_image_container").html('<div class="quick_add_product_image_item" data-src="' + this + imageDate + '" data-originalsrc="' + this + '">' +
                        '<i class="quick_add_image_delete table_row_delete_icon fa fa-times" data-src="' + this + '" aria-hidden="true" onclick="removeQuickAddImage(\'' + this + imageDate + '\')"></i>' +
                        '<img src="//d13z1xw8270sfc.cloudfront.net/resize/' + storeId + '/' + this + '/50/50/0/" data-src="' + this + '" />' +
                        '</div>');
                    document.getElementById("openImageGalleryQuickAddProductImage_button").innerText = "Change Image";
                }
            });
            $(".forced_doverlay, .quick_add_product_modal").fadeIn();
        }
    }

    $(".uc_imageGallery_close_modal_button").click(function () {
        setTimeout(function () {
            $(".forced_doverlay, .quick_add_product_modal").fadeIn();
        }, 500);
    });

    function removeQuickAddImage(src) {
        if (isRidgePackageTypeId == 'True' || packageTypeId == 12 || packageTypeId == 13 || packageTypeId == -1) {
            $(".quick_add_product_image_item[data-src='" + src + "']").remove();
        } else {
            $(".quick_add_product_image_item[data-src='" + src + "']").remove();
            document.getElementById("openImageGalleryQuickAddProductImage_button").innerText = "Add Image";
        }
    }

    var creatingNewCategory = false;
    function quickAddProductButtonSave() {

        // Resets
        $(".alert_quickname, .alert_quickprice, .alert_quicksku").hide();
        $("#quick_add_product_name, #quick_add_product_price, #quick_add_product_sku").removeClass("input_alert");

        var requiredElements = false;

        var name = stripHTMLPost(document.getElementById("quick_add_product_name").value.trim());
        var price = document.getElementById("quick_add_product_price").value;
        var sku = stripHTML(document.getElementById("quick_add_product_sku").value.trim());

        if (name.length == 0 || name == null || name == undefined) {
            document.getElementById("quick_add_product_name").classList.add("input_alert");
            $(".alert_quickname").show();
            requiredElements = true;
        }

        if (price == undefined) {
            document.getElementById("quick_add_product_price").classList.add("input_alert");
            $(".alert_quickprice").show();
            requiredElements = true;
        }

        if (price.length == 0) {
            document.getElementById("quick_add_product_price").classList.add("input_alert");
            $(".alert_quickprice").show();
            requiredElements = true;
        }

        if (price < 0.01) {
            document.getElementById("quick_add_product_price").value = 1;
            price = 1;
        }

        if (selectedCategories.length == 0) {
            var categoryInputLength = document.getElementById("product_edit_category").value.trim().length;
            if (categoryInputLength > 0) {
                creatingNewCategory = true;
                addBrandNewCategory();
            } else {
                document.getElementById("product_edit_category").classList.add("input_alert");
                $(".alert_product_edit_category").show();
                requiredElements = true;
            }
        }

        if (sku == undefined || sku.length == 0) {
            document.getElementById("quick_add_product_sku").classList.add("input_alert");
            showByClass("alert_quicksku");
            requiredElements = true;
        }

        if (requiredElements == false) {
            $("#quick_add_modal_button").hide();
            $("#quick_add_modal_button").addClass("button_disabled");
            $(".modal_body_quick_add_product, .quick_create_product_error2, .alert_quick_create_product_error_description").hide();
            $(".modal_body_quick_add_product_busy, .busy_wait_quick_create_product").show();
            quickAddProductBuildCheck(name, sku, price, selectedCategories);
        }

    }


    function quickAddProductBuildCheck(name, sku, price, selectedCategories) {
        if (creatingNewCategory == false) {
            quickAddProductBuild(name, sku, price, selectedCategories)
        } else {
            setTimeout(function () {
                quickAddProductBuildCheck(name, sku, price, selectedCategories);
            }, 1500);
        }
    }

    // Create the new product
    function quickAddProductBuild(name, sku, price, selectedCategories){
        trace('Creating quick product');

        var myProduct = {}

        // Name
        if (name) {
            name = name.replace(/[^\u0020-\uD7FF]/gm, '');
            myProduct.name = name;
        }

        // Image
        var theAdditionalImages = [];
        var primaryImage;
        $(".quick_add_product_image_item").each(function (i) {

            if (i == 0) {
                primaryImage = $(this).attr("data-originalsrc");
            } else {
                theAdditionalImages.push($(this).attr("data-originalsrc"));
            }

        });

        myProduct.images = {
            "primary": primaryImage,
            "other": theAdditionalImages
        };

        // Price
        if (price) myProduct.price = parseFloat(price);

        // Code/Sku
        if (sku) {
            myProduct.code = sku;
        } else {
            myProduct.code = JwitRandomIDGenerator();
        }

        // Category 
        var primaryCategoryId;
        var otherCategories = new Array();

        $.each(selectedCategories, function (i) {

            if (i == 0) {
                primaryCategoryId = parseInt(this.id);
            } else {
                otherCategories.push(parseInt(this.id));
            }

        });

        myProduct.category = {
            "primary": primaryCategoryId,
            "other": otherCategories
        };

        // Visible
        var isVisible = document.getElementById("quick_add_product_visible").checked;
        if (isVisible == false) {
            myProduct.hidden = true;
        } else {
            myProduct.hidden = false;
        }

        myProduct.active = true;

        trace(myProduct);

        myProduct = JSON.stringify(myProduct);

        var save_product_data = JSON.stringify({
            storeId: storeId,
            productId: "-1",
            product: myProduct,
            is_new: true
		})

		// Product data
        trace('New product:', save_product_data);

		// Services
		var save_product_uri = './services/manage/products/edit.svc/SaveProduct';
		
		// Save product desc & product async
		trace('Saving product...');

		axios.post(save_product_uri, save_product_data)
			.then(function (data) {
				trace('Response from save product:', data);

				var productId = JSON.parse(data.data.d).productId;

				console.log('ProductId:', productId);

                giveAchievement("ACHIEVEMENT_ADD_PRODUCT");

                $("#quick_create_product_success_edit").attr("href", "/manage_products_editv2.aspx?prodid=" + productId);
                $(".quick_create_product_success").show();
                $(".busy_wait_quick_create_product").hide();

				return Promise.resolve(productId);
			})
			.catch(function (r) {
				trace('Caught error when saving product & save description.');

				trace(r);
				trace('QuickAddProduct:error');

                $(".quick_create_product_error2").show();
                $(".busy_wait_quick_create_product").hide();

                if (r && r.responseJSON && r.responseJSON.Message == "Unauthorized")
					location - 'logout.aspx';

				throw r;
			})
			.then(function (productId) {
				// Save description
                var description = stripHTMLPost(document.getElementById("quick_add_product_description").value.trim());
                description = description.replace(/\r?\n/g, '<br />');
                var save_desc_data = JSON.stringify({ storeId: storeId, productId: productId, description: description });
				var save_desc_uri = './services/Products.svc/UpdateDescription';

				console.log('New description:', save_desc_data);
				console.log('Saving product description...');

				axios.post(save_desc_uri, save_desc_data)
					.then(function (res) {
						console.log('Successfully saved product description.', res);

						// Hide loaders
						

						trace('QuickAddProduct:complete');
					})
					.catch(function (err) {
                        $(".alert_quick_create_product_error_description").show();

						console.error('Failed to save product description.', err);

						throw err;
					})
			})
    }

    function quickAddProductAnother() {
        $(".quick_create_product_success, .modal_body_quick_add_product_busy, .alert_quick_create_product_error_description").hide();
        $(".modal_body_quick_add_product").show();
        $("#quick_add_product_name, #quick_add_product_sku, #quick_add_product_description, #product_edit_category").val("");
        document.getElementById("quick_add_product_sku").value = JwitRandomIDGenerator();
        $("#quick_add_product_price").val("1.00");
        $(".quick_add_product_image_item, .category_item, .product_edit_category_search_item").remove();

        $(".alert_quickname, .alert_quickprice, .alert_quicksku, .alert_product_edit_category").hide();
        $("#quick_add_product_name, #quick_add_product_price, #quick_add_product_sku, #product_edit_category").removeClass("input_alert");

        selectedCategories = new Array();
        newCategorySequence = 0;
        categoryListLoaded = false;
        $(".product_edit_category_search_item").remove();

        document.getElementById("openImageGalleryQuickAddProductImage_button").innerText = "Add Image";

        $("#quick_add_modal_button").removeClass("button_disabled").show();

    }
</script>

<style>
   
    .modal_body_quick_add_product_busy, .quick_create_product_success{
        display: none;
    }

    .busy_wait_content span.busy_wait_quick_create_product1, .busy_wait_content span.busy_wait_quick_create_product2,
    .alert_quick_create_product_error_description{ display: none; }

    .quick_create_product_error1, .quick_create_product_error2{
        display: none;
        background-color: #ea1636; color: #FFF;
        text-align: center;
        margin: 20px;
    }

    .quick_create_product_error1 .quick_create_product_error1_inner, .quick_create_product_error2 .quick_create_product_error1_inner{
        padding: 10px;
    }

    #quick_add_product_description{
        min-height: 150px;
    }

    #category_container_main{
        display: block;
    }

    #product_edit_category_container{
        max-height: 150px;
    }

    #category_container{
        margin-bottom: 10px;
    }

    .quick_add_product_image_item{
        border: 3px dashed #e9e9e9;
        padding: 5px;
        position: relative;
        float: left;
        width: 30%;
        margin-top: 10px;
        margin-left: 5%;
        text-align: center;
    }

    .quick_add_product_image_item:nth-child(3n+1){
        margin-left: 0%
    }

    .quick_add_product_image_item img{
        margin: 0 auto;
        max-width: 100%;
        width: 100%;
        display: block;
    }

    .quick_add_image_delete{
        position: absolute;
        top: 5px;
        right: 5px;
        height: 20px;
        line-height: 20px !important;
        opacity: 0;
        visibility: hidden;
        width: 20px;
        text-align: center;
        background-color: #ea1636;
        color: #fff;
        border-radius: 4px;
        cursor: pointer;
        transition: all 0.4s ease;
        z-index: 1;
    }

    .quick_add_image_delete:hover{
        background-color: #bb112b;
    }

    .quick_add_product_image_item:hover .quick_add_image_delete{
        opacity: 1;
        visibility: visible;
    }
</style>

<div class="modal modal_create_group">
    <div class="modal_header">
        <div class="modal_title">Create Group</div>
        <div class="modal_expand" data-expand="normal"><i class="fa fa-window-maximize" aria-hidden="true"></i></div>
        <div class="modal_close"><i class="fa fa-times" aria-hidden="true"></i></div>
    </div>
    <div class="modal_body_outer_container">
        <div class="modal_body">
            <p>You can save these products in a group of their own that you can then apply actions to via the <a href="https://stylez360.github.io/manage_products_groups.aspx" class="link_color_primary">Manage &gt; Products &gt; Groups</a> section.</p>
            <p>You can also assign coupons to these groups so that the coupon can only be used against these products.</p>
        </div>
        <div class="modal_body align_center paddingt10" id="modal_create_group_zeroproducts">
            <h2>Zero Products</h2>
            <p>Sorry, you are unable to create a group with zero products.</p>
            <p>Try removing some filters.</p>
        </div>
        <div class="modal_body align_center paddingt10" id="modal_create_group_toomanyproducts">
            <h2>Limit: 500 Products</h2>
            <p>Sorry, you are unable to create a group with more than 500 products.</p>
            <p>Try adding more filters to reduce your product count.</p>
        </div>
        <div class="modal_body">
            <div id="modal_create_group1">
                <p>Please enter the name of your new group.</p>
                <div class="hide_overflow margint10">
                    <div class="input_container input_container_50">
                        <label for="create_group">Group Name</label>
                        <input type="text" id="create_group" placeholder="e.g. My New Group Name">
                        <div class="alert alert_create_group_noname">Goup name must be 1 or more characters</div>
                    </div>
                </div>
                <p class="errorgroup color_red" style="display: none;">This Group Already Exists. Try a different name.</p>
            </div>
            <div id="modal_create_group_creating">
                <div class="busy_wait busy_wait_static busy_wait_creating_product_group">
                    <div class="busy_wait_content">
                        <div class="sk-cube-grid">
                            <div class="sk-cube sk-cube1"></div>
                            <div class="sk-cube sk-cube2"></div>
                            <div class="sk-cube sk-cube3"></div>
                            <div class="sk-cube sk-cube4"></div>
                            <div class="sk-cube sk-cube5"></div>
                            <div class="sk-cube sk-cube6"></div>
                            <div class="sk-cube sk-cube7"></div>
                            <div class="sk-cube sk-cube8"></div>
                            <div class="sk-cube sk-cube9"></div>
                        </div>
                        <span>Creating Group</span>
                    </div>
                </div>
            </div>
            <div id="modal_create_group2">
                <div class="general_success_tick">
                    <div class="general_success_tick_container">
                        <svg width="30" height="30">
                            <path class="general_success_tick_check" d="M2.5,15.5 l5.5,5.5 l15.75,-12.5"></path>
                        </svg>
                    </div>
                    <span class="general_success_tick_text">Group Created</span>
                </div>
                <div class="align_center">
                    <a href="https://stylez360.github.io/manage_products_groups.aspx" class="button button_primary marginb10">Go To: Manage Groups</a>
                </div>
            </div>
            <div id="modal_create_group3" class="align_center paddingt10">
                <h2>Oops!</h2>
                <p>Sorry, we were unable to create your group at this time.</p>
                <p>Please <a class="button button_primary" onclick="createGroup();">try again</a> or <a href="https://stylez360.github.io/support_new_ticket.aspx" class="link_color_primary">contact support</a>.</p>
            </div>
        </div>
    </div>
    <div class="modal_footer">
        <a class="button button_dgrey modal_footer_left close_modal_button">Close</a>
        <a class="button button_primary modal_footer_right" id="modal_create_group_button" onclick="createGroup();">Create Group</a>
    </div>
</div>


<div class="modal modal_copy_product">
    <div class="modal_header">
        <div class="modal_title">Copy Product</div>
        <div class="modal_expand" data-expand="normal"><i class="fa fa-window-maximize" aria-hidden="true"></i></div>
    </div>
    <div class="modal_body_outer_container">
        <div class="modal_body" id="modal_copy_product1">
            <div class="busy_wait busy_wait_static busy_wait_copying_product">
                <div class="busy_wait_content">
                    <div class="sk-cube-grid">
                        <div class="sk-cube sk-cube1"></div>
                        <div class="sk-cube sk-cube2"></div>
                        <div class="sk-cube sk-cube3"></div>
                        <div class="sk-cube sk-cube4"></div>
                        <div class="sk-cube sk-cube5"></div>
                        <div class="sk-cube sk-cube6"></div>
                        <div class="sk-cube sk-cube7"></div>
                        <div class="sk-cube sk-cube8"></div>
                        <div class="sk-cube sk-cube9"></div>
                    </div>
                    <span>Copying Product</span>
                </div>
            </div>
        </div>
        <div class="modal_body" id="modal_copy_product2">
            <div class="general_success_tick">
                <div class="general_success_tick_container">
                    <svg width="30" height="30">
                        <path class="general_success_tick_check" d="M2.5,15.5 l5.5,5.5 l15.75,-12.5"></path>
                    </svg>
                </div>
                <span id="modal_copy_product2_success_text" class="general_success_tick_text">Product Copied</span>
            </div>
        </div>
        <div class="modal_body paddingt20 align_center" id="modal_copy_product3">
            <h2 class="color_red"><i class="fa fa-exclamation-triangle" aria-hidden="true"></i> Oops</h2>
            <p>Sorry, we were unable to copy your product at this time.</p>
            <p>Please try again or <a class="link_color_primary link_word_break" href="https://stylez360.github.io/support_new_ticket.aspx">Contact Support</a></p>
        </div>
        <div class="modal_body paddingt20 align_center" id="modal_copy_product4">
            <h2 class="color_red"><i class="fa fa-clock-o" aria-hidden="true"></i> Delayed</h2>
            <p>This is taking longer than expected.</p>
            <p>Please come back later to view your copied product.</p>
        </div>
    </div>
    <div class="modal_footer">
        <a id="modal_copy_product_close" class="button button_dgrey modal_footer_left close_modal_button button_disabled" onclick="copyProductClose();">Close</a>
    </div>
</div>



<script src="./manage_products_list_files/categoryTree.js.download"></script>
<script src="./manage_products_list_files/categorySearchAdd.js.download"></script>
<script>

$(document).ready(function () {
    
    // Show search container and start load when focused
    $('body').click(function () {
        if ($("#category_search").is(":focus")) {
            $(".category_search_container").addClass("category_search_container_active");
            if (!$(".category_search_container").hasClass("category_search_container_ready")) {
                $(".category_search_container").addClass("category_search_container_ready");
                buildCategorySearchAdd(733006);
            }
        } else {
            $(".category_search_container").removeClass("category_search_container_active");
        }
        if ($("#category_search").val()){
            var tabbedNewCat = $("#category_search").val().toLowerCase();

            var foundTabbed;

            $(".category_search_container li").each(function () {
                divText = $(this).text().toLowerCase();
                if (divText === tabbedNewCat) {
                    $(this).click();
                    foundTabbed = true;
                    return false; 
                } else {
                    foundTabbed = false;
                }
            });

            if (foundTabbed === false){
                $(".category_search_container_addnew").click();
            }
                
        }
    });
    $(window).keyup(function (e) {
        var code = (e.keyCode ? e.keyCode : e.which);
        if (code == 9 && $('#category_search:focus').length) {
            $(".category_search_container").addClass("category_search_container_active");
            if (!$(".category_search_container").hasClass("category_search_container_ready")) {
                $(".category_search_container").addClass("category_search_container_ready");
                buildCategorySearchAdd(733006);
            }
        } else if (code == 9 && $('#quick_add_product_sku:focus').length) {
            if ($("#category_search").val()){
                var tabbedNewCat = $("#category_search").val().toLowerCase();

                var foundTabbed;

                $(".category_search_container li .category_search_container_item").each(function () {
                    divText = $(this).text().toLowerCase();
                        if (divText === tabbedNewCat) {
                            $(this).parent().click();
                            foundTabbed = true;
                            return false; 
                        } else {
                            foundTabbed = false;
                        }
                });

                if (foundTabbed === false){
                    $(".category_search_container_addnew").click();
                }
                
            }
        }
    });


});




    $("#txtQuickSearch").keyup(function () {
        txtQuickSearch();
    });
    $("#txtQuickSearch").click(function () {
        txtQuickSearch();
    });

    function txtQuickSearch() {
        delay(function () {
            var q = $("#txtQuickSearch").val();
            q = q.replace(/'/g, "%27");
            q = stripHTML(q);
            $("#quicksearch_results").addClass("quicksearch_results_active");
            $('#quicksearch_need_more_chars').hide();
            if (q.length < 3) {
                $("#quicksearch_results").removeClass("quicksearch_results_active");
                $('#quicksearch_need_more_chars').show();
                if (q.length == 0) { $('#quicksearch_need_more_chars').hide(); }
                return;
            } else {
                QuickProductSearch(q);
            }

        }, 400);
    }

    $("#btnQuickSearch").click(function () {
        //If they press the button then do a "proper" search
        var q = $("#txtQuickSearch").val();
        window.location.replace("manage_products_search.aspx?searchProduct=" + q);
    });

    var delay = (function () {
        var timer = 0;
        return function (callback, ms) {
            clearTimeout(timer);
            timer = setTimeout(callback, ms);
        };
    })();

    function QuickProductSearch(q)
    {
        $(".busy_wait_product_list_search").show();
        
        var start = 0;   //which result to start it (so we can page, show more etc)
        var pgsize = 10; //how many to show

        q = stripHTML(q);
        q = q.trim();
        q = q.replace(/[^a-z0-9-_ %.'+\/]/gi, "");
        axiosGet("/services/Products.svc/quickSearch?storeId=" +
            733006 +
            "&q=" +
            q +
            "&start=" +
            start +
            "&pgsize=" +
            pgsize).then(function (data) {
            trace('quickSearch:success');
            $("#quicksearch_results").show();
            var search = data.d || data;

            if (search.found == 10) //if it returns 10 do we assume more????
                $("#quicksearch_results").html(
                    "<div class='quicksearch_results_message quicksearch_results_message_number'>Found: <strong>" +
                    search.found +
                    " results</strong> in " +
                    search.duration +
                    "ms for \"<strong>" +
                    search.query +
                    "</strong>\"<a></a></div>");
            else
                $("#quicksearch_results").html(
                    "<div class='quicksearch_results_message quicksearch_results_message_number'>Found: <strong>" +
                    search.found +
                    " results</strong> in " +
                    search.duration +
                    "ms for \"<strong>" +
                    search.query +
                    "</strong>\"</div>");

            if (search.found > 0) {

                $.each(search.list,
                    function () {

                        var text = $(this)[0].Value[0];
                        text = text.replace(/â€“/g, "-");

                        //do something
                        console.log(search)
                        $("#quicksearch_results").append("<li class='quicksearch_results_item'>" +
                            "<a href=\"manage_products_editv2.aspx?prodid=" +
                            $(this)[0].Key +
                            "\" class='hide_overflow'>" +
                            "<img class='quicksearch_results_item_image' src=" +
                            $(this)[0].Value[1] +
                            ">" +
                            "<div class='quicksearch_results_item_text'>" +
                            "<div class='quicksearch_results_item_text1'>" +
                            text +
                            "</div>" +
                            "<div class='quicksearch_results_item_text2'>" + currency_options.symbol +
                            $(this)[0].Value[2] +
                            "</div>" +
                            "</div>" +
                            "</a>" +
                            "</li>");

                    });

            }
        }).catch(function (err) {
            trace('quickSearch:error');
            formatErrorMessageAxios(err.Message);
            if (err.Message == "Unauthorized") location - 'logout.aspx';
        }).then(function () {
            $(".busy_wait_product_list_search").hide();
        });
    }



    function deleteAllProducts() {

        $(".modal_delete_input_error").hide();

        var delete_item_word = "delete"+paginationTotalItems;

        $(".modal_overlay, .modal_delete").fadeIn();
        $("body").addClass("body_modal_is_open");
        $("#delete_input").val("");

        $(".delete_item_name").text("all " + paginationTotalItems + " products");
        $(".delete_item_word").text(delete_item_word);

        $(".delete_modal_button").click(function () {
            var delete_item_word_val = $("#delete_input").val().toLowerCase();

            if (delete_item_word == delete_item_word_val) {
                console.log("Delete All Products");
                deleteAllProductsConfirm();
            } else {
                $(".modal_delete_input_error").show();
            }
        });

    }

    function deleteAllProductsConfirm() {

        $(".modal_overlay, .modal_delete").hide();
        $("body").removeClass("body_modal_is_open");

        var returningPageName = "Products";
        var returningPageLink = "/manage_products.aspx";
        var currentPageLink = "/manage_products_list.aspx";
        var saveType = "get";
        var saveUrl = '/services/manage/products/delete.svc/deleteAllProducts?storeId=' + storeId;

        runFinalSave(returningPageName, returningPageLink, currentPageLink, saveType, saveUrl);
    }

</script>



        <div id="session_expires_modal">
            <h2>No Activity for a while!</h2>
            <p>It looks like there hasn't been any activity on your store for a while.</p>
            <p>For security purposes, we'll automatically log you out in:</p>
            <div id="session_expires_modal_timer">05:00</div>
            <a class="button button_primary" onclick="userActionUserTimeoutContinue();">Continue Session</a>
        </div>

        <div class="save_modal">
            <div class="save_modal_overlay"></div>
            <div class="save_modal_body">
                <div class="save_process1">
                    <div class="save_process_main">
                        <div class="save_process_cube sk-cube-grid">
                            <div class="sk-cube sk-cube1"></div>
                            <div class="sk-cube sk-cube2"></div>
                            <div class="sk-cube sk-cube3"></div>
                            <div class="sk-cube sk-cube4"></div>
                            <div class="sk-cube sk-cube5"></div>
                            <div class="sk-cube sk-cube6"></div>
                            <div class="sk-cube sk-cube7"></div>
                            <div class="sk-cube sk-cube8"></div>
                            <div class="sk-cube sk-cube9"></div>
                        </div>
                        <div class="save_process_text">Saving</div>
                        <p>Currently saving your changes.</p>
                    </div>
                    <div class="save_process1_saved1">
                        <div class="save_success_tick">
                            <div class="save_success_tick_container">
                                <svg width="30" height="30">
                                    <path class="save_success_tick_check" d="M2.5,15.5 l5.5,5.5 l15.75,-12.5"></path>
                                </svg>
                            </div>
                            <span class="save_success_tick_text">Saved</span>
                            <div class="saved_success_buttons">
                                <div class="saved_success_return">
                                    <a id="save_success_stay_button" class="button button_primary">Stay On Page (<span class="saved_success_return_number">5</span>)</a>
                                </div>
                                <a id="save_success_return_button" class="button button_primary">Return to <span class="saved_success_return_text"></span></a>
                            </div>
                        </div>
                    </div>
                    <div class="save_process1_saved2">
                        <div class="save_success_tick">
                            <div class="save_success_tick_container">
                                <svg width="30" height="30">
                                    <path class="save_success_tick_check" d="M2.5,15.5 l5.5,5.5 l15.75,-12.5"></path>
                                </svg>
                            </div>
                            <span class="save_success_tick_text">Saved</span>
                        </div>
                    </div>
                </div>
                <div class="save_process2">
                    <h2>Sorry! :(</h2>
                    <p>Something went wrong and we couldn't complete your request.</p>

                    <p><strong id="error_status">Internal Server Error</strong></p>
                    <p id="error_detail">Error Details Here</p>

                    <div class="save_process2_buttons">
                        <a id="save_process2_cancel" class="link_color_white">Dismiss</a> -
                <a href="https://stylez360.github.io/support_new_ticket.aspx" class="link_color_white">Report</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="save_modal_many">
            <div class="save_modal_overlay"></div>
            <div class="save_modal_many_body">
                <strong>Saving</strong>
                <div class="save_modal_many_list"></div>
            </div>
        </div>

        <div class="modal modal_delete">
            <div class="modal_header">
                <div class="modal_title">Delete</div>
                <div class="modal_close"><i class="fa fa-times" aria-hidden="true"></i></div>
            </div>
            <div class="modal_body_outer_container">
                <div class="modal_body">
                    <p>You have chosen to delete: <span class="delete_item_name highlight highlight_red"></span></p>
                </div>
                <div class="modal_body">
                    <p>Type <span class="delete_item_word highlight highlight_dgrey" translate="no"></span> into the text box below to confirm:</p>
                    <div class="input_container">
                        <input type="text" id="delete_input" placeholder="Enter the delete word here...">
                        <div class="modal_delete_input_error">
                            <p class="color_red">The word you entered does not match: <strong class="delete_item_word" translate="no"></strong>. Please try again.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal_footer">
                <a class="button button_dgrey modal_footer_left close_modal_button">Cancel</a>
                <a class="button button_red modal_footer_right delete_modal_button">Delete</a>
            </div>
        </div>

        <!-- MODALS -->
        <div class="modal_overlay"></div>
        <div class="additional_overlay"></div>
        <div class="modal_doverlay"></div>
        <div class="forced_noverlay"></div>
        <div class="forced_doverlay"></div>
        <div class="modal_x_button">
            <i class="fa fa-times" aria-hidden="true"></i>
        </div>

        <div class="pyro">
          <div class="pyro_before"></div>
          <div class="pyro_after"></div>
        </div>
        <div class="modal_achievements"></div>

        <div class="modal modal_cancel">
            <div class="modal_header">
                <div class="modal_title">Cancel Changes</div>
                <div class="modal_close"><i class="fa fa-times" aria-hidden="true"></i></div>
            </div>
            <div class="modal_body_outer_container">
                <div class="modal_body">
                    <p>Are you sure you want to cancel your changes?</p>
                    <p>Any changes made will <strong>NOT</strong> be saved.</p>
                </div>
            </div>
            <div class="modal_footer">
                <a href="https://stylez360.github.io/main.aspx" class="button button_dgrey leave_button modal_footer_left close_modal_button">Leave</a>
                <a class="button button_primary modal_footer_right close_modal_button">Stay</a>
            </div>
        </div>

        <div class="modal modal_unsaved_warning">
            <div class="modal_header">
                <div class="modal_title">Save Your Changes?</div>
                <div class="modal_close"><i class="fa fa-times" aria-hidden="true"></i></div>
            </div>
            <div class="modal_body_outer_container">
                <div class="modal_body">
                    <p>Unsaved changes detected. Please save or cancel your changes before leaving.</p>
                </div>
            </div>
            <div class="modal_footer">
                <a class="button button_primary modal_footer_right close_modal_button">Dismiss</a>
            </div>
        </div>

        <div class="modal modal_warning">
            <div class="modal_header">
                <div class="modal_title">Save Warning</div>
                <div class="modal_close"><i class="fa fa-times" aria-hidden="true"></i></div>
            </div>
            <div class="modal_body_outer_container">
                <div class="modal_body">
                    <p>We've found some issues with your content and before saving you might want to change them.</p>
                </div>
                <div class="modal_body modal_warning_body">
                </div>
            </div>
            <div class="modal_footer">
                <a href="javascript:void(0);" class="button button_dgrey modal_footer_left close_modal_button">Cancel Save</a>
                <a class="button button_primary modal_footer_right save_anyway_button">Save Anyway</a>
            </div>
        </div>

        <div class="modal modal_switch_accounts">
            <div class="modal_header">
                <div class="modal_title">Switch Accounts</div>
                <div class="modal_close"><i class="fa fa-times" aria-hidden="true"></i></div>
            </div>
            <div class="modal_body_outer_container">
                <div style="padding:0;" class="modal_body switch_accounts hide_overflow">
                    <div class="switch_accounts_zero">
                        <p>Sorry, you don't have any other stores associated with this account.</p>
                        <p>Why not <strong class="color_primary">create a new store</strong>?</p>
                    </div>
                </div>
            </div>
            <div class="modal_footer">
                <a class="button button_dgrey modal_footer_left close_modal_button">Close</a>
            </div>
        </div>

        <div class="modal modal_switch_accounts_verify">
            <div class="modal_header">
                <div class="modal_title">Activation Email Sent</div>
                <div class="modal_close"><i class="fa fa-times" aria-hidden="true"></i></div>
            </div>
            <div class="modal_body_outer_container">
                <div class="modal_body modal_switch_accounts_verify_success">
                    <p>We've sent an activation email for your unverified store.</p>
                    <p>Please check your spam/ junk mail if you have not yet received an activation email.</p>
                </div>
                <div class="modal_body modal_switch_accounts_verify_error">
                    <p>Sorry, there was an error sending your verification email.</p>
                    <p>Please try again.</p>
                </div>
            </div>
            <div class="modal_footer">
                <a class="button button_dgrey modal_footer_left close_modal_button">Close</a>
            </div>
        </div>

        <div class="modal modal_help_videos">
            <div class="modal_header">
                <div class="modal_title">Help Video</div>
                <div class="modal_close" onclick="helpVideoClose();"><i class="fa fa-times" aria-hidden="true"></i></div>
            </div>
            <div class="modal_body_outer_container">
                <div class="modal_body">
                    <div id="modal_help_videos_frame"></div>
                </div>
            </div>
            <div class="modal_footer">
                <a class="button button_dgrey modal_footer_left close_modal_button" onclick="helpVideoClose();">Close</a>
            </div>
        </div>

        <div id="setting_up_your_account">
            <i class="fa fa-cog fa-spin"></i>
            <div id="setting_up_your_account_title">Setting Up Your Account</div>
            <div id="setting_up_your_account_text"><span id="setting_up_your_account_text1"></span><span></span><span></span><span></span></div>
        </div>

        <div class="modal modal_help_wizard_contact">
            <div class="modal_header">
                <div class="modal_title">Contact Support</div>
                <div class="modal_close"><i class="fa fa-times" aria-hidden="true"></i></div>
            </div>
            <div class="modal_body_outer_container">
                <div class="modal_body">
                    <p>Please feel free to get in touch using the form below and a member of our Support Team will get back in touch as soon as possible.</p>

                    <div class="input_container">
                        <input type="text" id="modal_help_wizard_contact_subject" placeholder="Your Ticket Subject">
                        <div class="alert">Subject cannot be empty</div>
                    </div>
                    <div class="input_container_checkbox modal_help_wizard_contact_type">
                        <div class="checkbox_container">
                            <input type="radio" id="help_wizard_contact_message1" checked="checked" name="modal_help_wizard_contact_type_check">
                            <label for="help_wizard_contact_message1"><span>Question</span></label>
                        </div>
                        <div class="checkbox_container">
                            <input type="radio" id="help_wizard_contact_message2" name="modal_help_wizard_contact_type_check">
                            <label for="help_wizard_contact_message2"><span>Page Feedback</span></label>
                        </div>
                        <div class="checkbox_container">
                            <input type="radio" id="help_wizard_contact_message3" name="modal_help_wizard_contact_type_check">
                            <label for="help_wizard_contact_message3"><span>Feature Request</span></label>
                        </div>
                        <div class="checkbox_container">
                            <input type="radio" id="help_wizard_contact_message4" name="modal_help_wizard_contact_type_check">
                            <label for="help_wizard_contact_message4"><span>Bug Report</span></label>
                        </div>
                    </div>
                    <div class="input_container">
                        <label for="modal_help_wizard_contact_message">Message</label>
                        <textarea id="modal_help_wizard_contact_message" placeholder="Enter your support ticket query here"></textarea>
                        <div class="alert">Message cannot be empty</div>
                    </div>

                    <div class="user_data_info">
                        <ul class="hide_overflow">
                        </ul>
                    </div>
                </div>
            </div>
            <div class="modal_footer">
                <a href="javascript:void(0);" class="button button_dgrey modal_footer_left close_modal_button">Cancel</a>
                <a class="button button_primary modal_footer_right modal_help_wizard_contact_button">Send Ticket</a>
            </div>
        </div>

        <div class="modal modal_page_feedback">
            <div class="modal_header">
                <div class="modal_title">Feedback</div>
                <div class="modal_close"><i class="fa fa-times" aria-hidden="true"></i></div>
            </div>
            <div class="modal_body_outer_container">
                <div class="modal_body">
                    <p>We'd love to hear your feedback for this page. All feedback, good or bad is reviewed and appreciated.</p>
                </div>
                <div class="modal_body paddingt10">
                    <strong>Rating</strong>
                    <div class="hide_overflow page_feedback_stars">
                        <i class="fa fa-star-o color_primary page_feedback_stars_first" aria-hidden="true"></i>
                        <i class="fa fa-star-o color_primary" aria-hidden="true"></i>
                        <i class="fa fa-star-o color_primary" aria-hidden="true"></i>
                        <i class="fa fa-star-o color_primary" aria-hidden="true"></i>
                        <i class="fa fa-star-o color_primary" aria-hidden="true"></i>
                    </div>
                    <div class="input_container">
                        <label for="page_feedback_text">Feedback</label>
                        <textarea id="page_feedback_text" onchange="pageFeedbackTextChange();" onkeyup="pageFeedbackTextChange();"></textarea>
                    </div>
                </div>
            </div>
            <div class="modal_footer">
                <a class="button button_dgrey modal_footer_left close_modal_button">Cancel</a>
                <a class="button button_primary modal_footer_right button_disabled" id="modal_feedback_send_button" onclick="sendPageFeedback();">Send Feedback</a>
            </div>
        </div>

        <div class="modal modal_page_request_feature">
            <div class="modal_header">
                <div class="modal_title">Request A Feature</div>
                <div class="modal_close"><i class="fa fa-times" aria-hidden="true"></i></div>
            </div>
            <div class="modal_body_outer_container">
                <div class="modal_body">
                    <p>We're always on the lookout for new apps and features to add. Please enter your request below and a member of our support team will review your request.</p>
                </div>
                <div class="modal_body paddingt10">
                    <div class="input_container">
                        <label for="page_feedback_text">Feedback</label>
                        <textarea id="page_request_text" onchange="pageRequestTextChange();" onkeyup="pageRequestTextChange();"></textarea>
                    </div>
                </div>
            </div>
            <div class="modal_footer">
                <a class="button button_dgrey modal_footer_left close_modal_button">Cancel</a>
                <a class="button button_primary modal_footer_right button_disabled" id="modal_request_send_button" onclick="sendPageFeatureRequest();">Send</a>
            </div>
        </div>

        <div class="modal modal_create_new_store">
            <div class="modal_header">
                <div class="modal_title">Create Additional Store</div>
                <div class="modal_close"><i class="fa fa-times" aria-hidden="true"></i></div>
            </div>
            <div class="modal_body_outer_container">
                <div class="modal_body" id="modal_create_new_store1">
                    <p id="newStoreHelpText">To create a new store simply enter your new stores name and then enter your current password to confirm.</p>
                    <div class="hide_overflow">
                        <div class="input_container input_container_50">
                            <label for="create_new_store_input_name">New Store Name</label>
                            <input type="text" placeholder="Store Name" id="create_new_store_input_name" onchange="createNewStoreChange();" onkeypress="createNewStoreChange();" oninput="createNewStoreChange();">
                            <div class="alert alert_create_new_store_input_name"></div>
                            <div class="alert alert_create_new_store_input_ascii"></div>
                        </div>
                        
                            <div class="input_container input_container_50">
                                <label for="create_new_store_input_password">Current Password</label>
                                <div class="input_container_password">
                                    <input type="text" placeholder="Password" id="create_new_store_input_password" autocomplete="newpassword" onchange="createNewStoreChange();" onkeypress="createNewStoreChange();" oninput="createNewStoreChange();">
                                    <div class="input_container_password_reveal" onclick="passwordReveal(&#39;create_new_store_input_password&#39;);"><i class="fa fa-eye-slash" data-id="create_new_store_input_password" aria-hidden="true"></i></div>
                                </div>
                                <div class="alert alert_create_new_store_input_password"></div>
                            </div>
                        
                        
                    </div>
                </div>
                <div class="modal_body" id="modal_create_new_store2">
                    <div class="busy_wait busy_wait_static busy_wait_modal_create_new_store2">
                        <div class="busy_wait_content">
                            <div class="sk-cube-grid">
                                <div class="sk-cube sk-cube1"></div>
                                <div class="sk-cube sk-cube2"></div>
                                <div class="sk-cube sk-cube3"></div>
                                <div class="sk-cube sk-cube4"></div>
                                <div class="sk-cube sk-cube5"></div>
                                <div class="sk-cube sk-cube6"></div>
                                <div class="sk-cube sk-cube7"></div>
                                <div class="sk-cube sk-cube8"></div>
                                <div class="sk-cube sk-cube9"></div>
                            </div>
                            <span>Creating New Store</span>
                        </div>
                    </div>
                </div>
                <div class="modal_body" id="modal_create_new_store3">
                    <div class="general_success_tick">
                        <div class="general_success_tick_container">
                            <svg width="30" height="30">
                                <path class="general_success_tick_check" d="M2.5,15.5 l5.5,5.5 l15.75,-12.5"></path>
                            </svg>
                        </div>
                        <span class="general_success_tick_text">Store Created</span>
                    </div>
                    <div class="align_center">
                        <p>You will be able to access your new store by logging in again or by clicking the <strong>Switch Accounts</strong> button in the account drop down menu in the top right of your control panel.</p>
                    </div>
                </div>
                <div class="modal_body align_center paddingt10" id="modal_create_new_store4">
                    <h2>Your Store Is Almost Ready</h2>
                    <p>In the next few minutes your store will be created.</p>
                    <p>You will be able to access your new store by logging in again or by clicking the <strong>Switch Accounts</strong> button in the account drop down menu in the top right of your control panel.</p>
                </div>
            </div>
            <div class="modal_footer">
                <a class="button button_dgrey modal_footer_left close_modal_button">Close</a>
                <a class="button button_primary modal_footer_right button_disabled" id="modal_create_new_store_button" onclick="createNewStoreButtonModal();">Create Store</a>
            </div>
        </div>

        <div class="sending_modal">
            <div class="sending_modal_overlay"></div>
            <div class="sending_modal_body">
                <div class="sending_process1">
                    <div class="sending_process_main">
                        <div class="save_process_cube sk-cube-grid">
                            <div class="sk-cube sk-cube1"></div>
                            <div class="sk-cube sk-cube2"></div>
                            <div class="sk-cube sk-cube3"></div>
                            <div class="sk-cube sk-cube4"></div>
                            <div class="sk-cube sk-cube5"></div>
                            <div class="sk-cube sk-cube6"></div>
                            <div class="sk-cube sk-cube7"></div>
                            <div class="sk-cube sk-cube8"></div>
                            <div class="sk-cube sk-cube9"></div>
                        </div>
                        <div class="sending_process_text">Sending</div>
                        <p>Currently sending your support ticket.</p>
                    </div>
                    <div class="sending_process1_sending1">
                        <div class="sending_success_tick">
                            <div class="sending_success_tick_container">
                                <svg width="30" height="30">
                                    <path class="save_success_tick_check" d="M2.5,15.5 l5.5,5.5 l15.75,-12.5"></path>
                                </svg>
                            </div>
                            <span class="sending_success_tick_text">Successfully Sent :)</span>
                            <p>A member of our support team will be in touch soon with the information you need. We aim to answer all tickets within 24 hours.</p>
                        </div>
                    </div>
                    <div class="sending_process1_failed1">
                        <h2>Failed to send</h2>
                        <p>Something happened when sending your ticket. Try Again.</p>
                    </div>
                </div>
                <div class="sending_process2">
                    <h2>Sorry! :(</h2>
                    <p>Something went wrong and we couldn't complete your request.</p>

                    <p><strong id="sending_error_status">Internal Server Error</strong></p>
                    <p id="sending_error_detail">Error Details Here</p>

                    <p>If you continue to see this error then please feel free to contact our support team directly via email via support@freewebstore.org</p>
                    <p>Or you can contact us via our Twitter account <a href="https://twitter.com/freewebstore" target="_blank">@Freewebstore</a> or our <a href="https://www.facebook.com/freewebstoreofficial/" target="_blank">Facebook page</a></p>

                    <div class="sending_process2_buttons">
                        <a id="sending_process2_cancel" class="link_color_white">Try Again</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="error_modal">
            <div class="error_modal_container">
                <h2>Sorry! :(</h2>
                <p>Something went wrong and we couldn't complete your request</p>
                <div class="error_modal_issue">
                    <strong class="error_modal_issue1">Internal Server Error</strong>
                    <p class="error_modal_issue2">Error details here</p>
                </div>
                <p>If you continue to see this error then please feel free to contact our support team directly via email: support@freewebstore.org</p>
                <p>Or you can contact us via our <a href="https://twitter.com/freewebstore" target="_blank" class="link_color_white">Twitter account</a> or our <a href="https://www.facebook.com/freewebstoreofficial/" class="link_color_white" target="_blank">Facebook Page</a></p>
            </div>
            <div class="error_modal_footer">
                <a class="button button_white error_modal_close">Close</a>
            </div>
        </div>


        <div class="modal modal_all_usage_charts">
            <div class="modal_header">
                <div class="modal_title">Usage</div>
                
                <div class="modal_close"><i class="fa fa-times" aria-hidden="true"></i></div>
            </div>
            <div class="modal_body_outer_container">
                <div class="modal_body">
                    <div class="busy_wait busy_wait_static busy_wait_all_usage_charts">
                        <div class="busy_wait_content">
                            <div class="sk-cube-grid">
                                <div class="sk-cube sk-cube1"></div>
                                <div class="sk-cube sk-cube2"></div>
                                <div class="sk-cube sk-cube3"></div>
                                <div class="sk-cube sk-cube4"></div>
                                <div class="sk-cube sk-cube5"></div>
                                <div class="sk-cube sk-cube6"></div>
                                <div class="sk-cube sk-cube7"></div>
                                <div class="sk-cube sk-cube8"></div>
                                <div class="sk-cube sk-cube9"></div>
                            </div>
                            <span>Loading Usage Charts</span>
                        </div>
                    </div>
                    <div id="all_usage_charts" class="align_center paddingb20 paddingt20">
                        <h2>Storage, Bandwidth &amp; Revenue Usage</h2>
                        <div id="all_usage_stat_chart" style="height: 350px; width: 100%;"></div>
                        <a class="button button_table button_primary margint20" href="https://stylez360.github.io/account_usage.aspx">View Usage Details</a>
                        <a class="button button_table button_ridge margint20" href="https://stylez360.github.io/upgrade.aspx">Increase Limit</a>
                    </div>
                </div>
            </div>
            <div class="modal_footer">
                <a class="button button_dgrey modal_footer_left close_modal_button">Close</a>
            </div>
        </div>

        <div class="modal modal_new_dashboard">
            <div class="modal_header">
                <div class="modal_title">Getting Started Achievements Complete</div>
                <div class="modal_expand" data-expand="normal"><i class="fa fa-window-maximize" aria-hidden="true"></i></div>
            </div>
             <div class="modal_body_outer_container">
                <div class="modal_body align_center">
                    <p>Congratulations! You have completed the Getting Started Achievements.</p>
                    <div id="modal_new_dashboard_icons">
                        <i class="fa fa-home background_primary"></i>
                        <i class="fa fa-paint-brush background_primary"></i>
                        <i class="fa fa-shopping-cart background_primary"></i>
                        <i class="fa fa-home background_primary"></i>
                        <i class="fa fa-eye background_primary"></i>
                    </div>
                    <p>There are plenty more achievements to unlock.</p>
                    <h2>Welcome to your New Dashboard <i class="fa fa-smile-o color_primary" aria-hidden="true"></i></h2>
                </div>
            </div>
            <div class="modal_footer">
                <a class="button button_dgrey modal_footer_left" onclick="closeNewDashboardModal();">Close</a>
            </div>
        </div>

        <div class="modal modal_new_dashboard_colors">
            <div class="modal_header">
                <div class="modal_title">Confirm Your Control Panel Color Theme</div>
                <div class="modal_expand" data-expand="normal"><i class="fa fa-window-maximize" aria-hidden="true"></i></div>
            </div>
             <div class="modal_body_outer_container">
                <div class="modal_body align_center">
                    <p>Select a color theme you'd like for your control panel.</p>
                    <div id="new_cp_color_theme_container">
                        <div class="new_cp_color_theme_item" onclick="newChangeCpTheme(this, &#39;1a&#39;);" data-id="1a"></div>
                        <div class="new_cp_color_theme_item" onclick="newChangeCpTheme(this, &#39;2a&#39;);" data-id="2a"></div>
                        <div class="new_cp_color_theme_item" onclick="newChangeCpTheme(this, &#39;6a&#39;);" data-id="6a"></div>
                        <div class="new_cp_color_theme_item" onclick="newChangeCpTheme(this, &#39;5a&#39;);" data-id="5a"></div>
                        <div class="new_cp_color_theme_item" onclick="newChangeCpTheme(this, &#39;3a&#39;);" data-id="3a"></div>
                        <div class="new_cp_color_theme_item" onclick="newChangeCpTheme(this, &#39;4a&#39;);" data-id="4a"></div>
                    </div>
                    <div id="alert_modal_new_dashboard_colors" class="margint20 alert">Oops! Something went wrong. Please try again.</div>
                </div>
            </div>
            <div class="modal_footer">
                <a id="modal_new_dashboard_colors_button" class="button button_primary modal_footer_right" onclick="confirmNewDashboardColors();">Confirm</a>
            </div>
        </div>

        <script>
            if (cpThemeEmpty == "True") {

                var url = new URL(window.location.href);
                var selectTheirTheme = url.searchParams.get("fTheme");

                if (selectTheirTheme != "1") {

                    if (businessUser != 0) {
                        document.getElementById("new_cp_color_theme_container").classList.add("new_cp_color_theme_container_premium");
                    }

                    if (cpTheme != null) {
                        var currentThemeSelected = "1a";
                        switch (cpTheme) {
                            case "fws_pink":
                                currentThemeSelected = "1a";
                                break;
                            case "fws_blue":
                                currentThemeSelected = "2a";
                                break;
                            case "ridge_dblue":
                                currentThemeSelected = "3a";
                                break;
                            case "ridge_lblue":
                                currentThemeSelected = "4a";
                                break;
                            case "fws_dark":
                                currentThemeSelected = "5a";
                                break;
                            case "fws_green":
                                currentThemeSelected = "6a";
                                break;
                            default:
                                currentThemeSelected = "1a";
                                break;
                        }

                        if (document.querySelector(".new_cp_color_theme_item[data-id='" + currentThemeSelected + "']") != null) {
                            document.querySelector(".new_cp_color_theme_item[data-id='" + currentThemeSelected + "']").classList.add("new_cp_color_theme_item_selected");
                        }
                    }
                }

                divFadeIn(".overlay_forced", ".modal_new_dashboard_colors");
            }
            function newChangeCpTheme(el) {
                $(".new_cp_color_theme_item_selected").removeClass("new_cp_color_theme_item_selected");
                $(el).addClass("new_cp_color_theme_item_selected");

                var theme = $(".new_cp_color_theme_item_selected").attr("data-id");

                switch (theme) {
                    case "1a":
                        newCpTheme = "fws_pink";
                        break;
                    case "2a":
                        newCpTheme = "fws_blue";
                        break;
                    case "5a":
                        newCpTheme = "fws_dark";
                        break;
                    case "3a":
                        newCpTheme = "ridge_dblue";
                        break;
                    case "4a":
                        newCpTheme = "ridge_lblue";
                        break;
                    case "6a":
                        newCpTheme = "fws_green";
                        break;
                    default:
                        newCpTheme = "fws_pink";
                        break;
                }
                setAttrByClass('cp_theme_stylesheet_link', 'href', "/css/cp_theme/" + newCpTheme + ".css?v=" + new Date().getTime().toString());

            }

            function confirmNewDashboardColors() {

                hideById("alert_modal_new_dashboard_colors");

                document.getElementById("modal_new_dashboard_colors_button").innerHTML = '<i class="fa fa-spinner fa-spin"></i> Confirming';
                document.getElementById("modal_new_dashboard_colors_button").classList.add("button_disabled");

                var selectedNewCpThemeColor = $(".new_cp_color_theme_item_selected").attr("data-id");

                var preferences = JSON.stringify({
                    storeId: storeId,
                    theme: selectedNewCpThemeColor
                });

                axiosPost('/services/account/account_preferences.svc/setTheme', preferences).then(function (data) {

                    var result = data.d;

                    if (result == false) {
                        showById("alert_modal_new_dashboard_colors");
                        document.getElementById("modal_new_dashboard_colors_button").innerHTML = 'Confirm';
                        document.getElementById("modal_new_dashboard_colors_button").classList.remove("button_disabled");
                    } else {
                        hideByClass("overlay_forced", "modal_new_dashboard_colors");
                        document.querySelector("body").classList.remove("body_modal_is_open");
                    }
                }).catch(function () {
                    showById("alert_modal_new_dashboard_colors");
                    document.getElementById("modal_new_dashboard_colors_button").innerHTML = 'Confirm';
                    document.getElementById("modal_new_dashboard_colors_button").classList.remove("button_disabled");
                }).then(function () {

                });

            }
        </script>

        <!--<div class="modal modal_beta_feedback">
            <div class="modal_header">
                <div class="modal_title">Welcome To Your New Control Panel</div>
                <div class="modal_close"><i class="fa fa-times" aria-hidden="true"></i></div>
            </div>
            <div class="modal_body_outer_container">
                <div class="modal_body">
                    <p>Welcome to your new Control Panel and thanks for being a Beta Tester!</p>
                    <p>As a valued customer, we would appreciate any feedback you can provide to allow us to give you the best experience we can.</p>
                    <p>So, feel free to have a play around with all the features and press the <strong>Give Feedback</strong> button in the menu on the left if you have any comments.</p>
                    <p>Good luck and have fun!</p>
                    <div class="align_center">
                        <div class="modal_beta_feedback_button background_secondary"><i class="fa fa-commenting-o" aria-hidden="true"></i> Give Feedback</div>
                    </div>
                </div>
            </div>
            <div class="modal_footer">
                <a class="button button_dgrey modal_footer_left close_modal_button">Close</a>
            </div>
        </div>-->

        <!-- https://dribbble.com/shots/5789138-No-Internet-Connetction -->
        <div class="modal offline_modal">
            <div class="modal_body_outer_container">
                <div class="modal_body">
                    <div class="_circle">
                      <i class="fa fa-wifi"></i>
                    </div>
                    <div class="offline_msg">
                        <h2>No connection</h2>
                        <p>This popup will close when network connection returns.</p>
                    </div>
                </div>
            </div>
        </div>

        

<style>

    #startup_plan_offer_failed, #startup_plan_offer_success{
        display: none;
    }

    #startup_plan_offer{
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
        
    }

    .startup_plan_offer_item_container{
        max-width: 270px;
        min-width: 250px;
        width: 48%;
        margin-top: 20px;
    }

    .startup_plan_offer_item_current{
        line-height: 20px;
        height: 20px;
        text-align: center;
    }

    .startup_plan_offer_item{
        border: 1px solid #cfd7d9;
        border-radius: 4px;
        border: 1px solid #cfd7d9;
        padding: 10px;
        width: 100%;
        text-align: center;
    }

    .startup_plan_offer_item_title{
        background-color: #5DC548;
        border-radius: 4px;
        line-height: 25px;
        padding: 0px 5px;
        color: #FFF;
        display: inline-block;
        margin: 0 auto;
    }
    
    .startup_plan_offer_item_title i{
        margin-right: 5px;
    }

    .startup_plan_offer_item_price{
        margin-top: 10px;
        padding-top: 10px;
        border-top: 1px dashed #ddd;
        display: flex;
        flex-wrap: nowrap;
        justify-content: center;
        align-items: baseline;
    }

    .startup_plan_offer_item_price_inner{
        font-size: 2rem;
        font-weight: bold;
        color: #b5b5b5;
    }

    .startup_plan_offer_item_price_mo{
        margin-left: 5px;
        font-size: 0.7rem;
        color: #b5b5b5;
    }

</style>

<div class="modal modal_offer_startup_plan">
    <div class="modal_header">
        <div class="modal_title">Startup Plan Offer</div>
        <div id="modal_offer_startup_plan_close" class="modal_close" onclick="closeStartupPlanSwitch();"><i class="fa fa-times" aria-hidden="true"></i></div>
    </div>
    <div class="modal_body_outer_container">
        <div class="modal_body align_center">
            <p>Switch to the Startup Plan today for more features at <strong>no extra cost!</strong></p>
            <p><em>You will <strong>NOT</strong> be charged for switching and can <strong>cancel anytime</strong>!</em></p>
        </div>
        <div class="modal_body paddingb20">
            
            <div id="startup_plan_offer_failed" class="align_center margint20">
                <h2>Oops!</h2>
                <p>Something went wrong trying to switch you to the new startup plan!</p>
                <p>Please <a class="button button_primary" onclick="confirmStartupPlanSwitch();">try again</a> or <a class="link_color_primary" href="https://stylez360.github.io/support_new_ticket.aspx?subject=Failed%20To%20Switch%20To%20Startup%20Plan">contact support</a> who will manually make the switch for you!</p>
            </div>

            <div id="startup_plan_offer_container">
                <div id="startup_plan_offer">

                <div class="startup_plan_offer_item_container">
                    <div class="startup_plan_offer_item_current"><strong class="color_primary">Current</strong></div>
                    <div class="startup_plan_offer_item">
                        <div class="startup_plan_offer_item_title">Startup Pack App</div>
                        <div class="startup_plan_offer_item_list">
                            <p><strong>Banner Removal</strong></p>
                            <p><strong>PayPal Checkout</strong></p>
                            <p><strong id="startup_plan_offer_item_list_existing_limit"></strong></p>
                            <p><strong>Coupons &amp; Vouchers</strong></p>
                            <p><strong>Unlimited Pages</strong></p>
                        </div>
                        <div class="startup_plan_offer_item_price">
                            <div class="startup_plan_offer_item_price_inner"></div>
                            <div class="startup_plan_offer_item_price_mo">/mo</div>
                        </div>
                    </div>
                </div>

                <div class="startup_plan_offer_item_container">
                    <div class="startup_plan_offer_item_current"></div>
                    <div class="startup_plan_offer_item">
                        <div class="startup_plan_offer_item_title"><i class="fa fa-star"></i><i class="fa fa-star"></i>Startup Plan</div>
                        <div class="startup_plan_offer_item_list">
                            <p><strong>Everything in Startup Pack App</strong></p>
                            <p><em>Plus...</em></p>
                            <p><strong id="startup_plan_offer_item_list_new_limit">Increased Limits</strong></p>
                            <p><strong>Multiple Payment Gateways</strong></p>
                            <p><strong>Integrated Blog</strong></p>
                            <p><strong>Statistics</strong></p>
                            <p><strong>Increased Storage Limits</strong></p>
                            <p><strong>Increased Bandwidth Limits</strong></p>
                            <p><strong>Image Importer &amp; Exporter</strong></p>
                            <p><strong>Saved Designs</strong></p>
                            <p><strong>Product Feeds</strong></p>
                            <p><strong>Advanced CSS</strong></p>
                            <p><strong>Order Exporter</strong></p>
                            <p><strong>Customer Exporter</strong></p>
                        </div>
                        <div class="startup_plan_offer_item_price">
                            <div class="startup_plan_offer_item_price_inner"></div>
                            <div class="startup_plan_offer_item_price_mo">/mo</div>
                        </div>
                    </div>
                </div>

            </div>
            </div>

            <div id="startup_plan_offer_success" class="align_center margint20">
                <div class="general_success_tick">
                    <div class="general_success_tick_container">
                        <svg width="30" height="30">
                            <path class="general_success_tick_check" d="M2.5,15.5 l5.5,5.5 l15.75,-12.5"></path>
                        </svg>
                    </div>
                    <span class="general_success_tick_text">Switched To Startup Plan</span>
                </div>
                <div class="align_center">
                    <a id="successfullySwitchToStartupPlan_button" class="button button_primary marginb10" onclick="successfullySwitchToStartupPlan();">Continue</a>
                </div>
            </div>

        </div>
    </div>
    <div class="modal_footer">
        <a id="closeStartupPlanSwitch_button" class="button button_dgrey modal_footer_left close_modal_button" onclick="closeStartupPlanSwitch();">Close</a>
        <a id="confirmStartupPlanSwitch_button" class="button button_primary modal_footer_right" onclick="confirmStartupPlanSwitch();">Confirm Switch</a>
    </div>
</div>

<script>
    function offerStartupPlanUpgrade() {

        if (typeof hasSubscription !== "undefined") {
            console.log("----------------");

            Date.prototype.yyyymmdd = function () {
                var mm = this.getMonth() + 1; // getMonth() is zero-based
                var dd = this.getDate();

                return [
                    this.getFullYear() + "-" + (mm > 9 ? '' : '0') + mm + "-" + (dd > 9 ? '' : '0') + dd + "T00:00:00Z"
                ].join('');
            };

            var date = new Date();
            var currentDate = date.yyyymmdd();
            console.log(currentDate);
            var startupPackOverdue = false;
            if (hasSubscription.paid_through_date < currentDate) {
                console.log("overdue");
                startupPackOverdue = true;
            }

            var fwsSwitchDate = new Date();
            console.log(fwsSwitchDate.getDate());
            if (localStorage.fwsSwitchPlan != fwsSwitchDate.getDate() && startupPackOverdue == false) {
                hideById("startup_plan_offer_failed", "startup_plan_offer_success");
                showById("startup_plan_offer_container");
                document.getElementById("confirmStartupPlanSwitch_button").classList.remove("button_disabled");
                document.getElementById("confirmStartupPlanSwitch_button").innerHTML = "Confirm Switch";
                document.getElementById("closeStartupPlanSwitch_button").classList.remove("button_disabled");
                showById("modal_offer_startup_plan_close");

                divFadeIn(".overlay_forced", ".modal_offer_startup_plan");

                getStartupPlanPrice();
            } else {
                console.log("Offer already shown today or user overdue")
            }
            console.log("----------------")
        }

    }

    function bypassOfferStartupPlanUpgradeCookie() {
        localStorage.fwsSwitchPlan = "";
        offerStartupPlanUpgrade();
    }

    var startupSwitchPackageId = null;
    var startupSwitchPrice = null;
    var startupSwitchCurrency = "USD";
    function getStartupPlanPrice() {

        axiosGet('/services/billing/billingv2.svc/ListPackagesV2?storeId=' + storeId).then(function (data) {

            var getStartupPlanPriceList = data.d || data;
            getStartupPlanPriceList = JSON.parse(getStartupPlanPriceList);
            console.log(getStartupPlanPriceList);

            if (getStartupPlanPriceList != null) {
                getStartupPlanPriceList.filter(function (obj) {
                    if (obj.packageTypeId == 12 && obj.isAnnual == false) {

                        startupSwitchPackageId = obj.id;
                        startupSwitchPrice = obj.price;
                        startupSwitchCurrency = obj.currency;

                        var currency = "&dollar;";
                        if (obj.currency == "GBP") {
                            currency = "&pound";
                        } else if (obj.currency == "EUR") {
                            currency = "&euro;";
                        }

                        $(".startup_plan_offer_item_price_inner").html(currency + obj.price);
                        $("#startup_plan_offer_item_list_new_limit").html("Turnover Limit: <span class='color_primary'>" + currency_options.symbol + obj.max_revenue + "</span>");
                    }
                });
            } else {
                $(".startup_plan_offer_item_price").hide();
            }

        }).catch(function () {

        }).then(function () {

        });

        axiosGet("/services/account/account.svc/getAllowedTurnover?currency=" + storeCurrency).then(function (data) {

            var existingTurnover = data.d;
            console.log(existingTurnover)

            if (existingTurnover != null) {
                $("#startup_plan_offer_item_list_existing_limit").html("Turnover Limit: " + currency_options.symbol + existingTurnover.free_limit);
            }

        }).catch(function () {

        }).then(function () {

        });

    }

    function confirmStartupPlanSwitch() {

        document.getElementById("confirmStartupPlanSwitch_button").classList.add("button_disabled");
        document.getElementById("confirmStartupPlanSwitch_button").innerHTML = "<i class='fa fa-spinner fa-spin'></i> Switching";
        document.getElementById("closeStartupPlanSwitch_button").classList.add("button_disabled");
        hideById("modal_offer_startup_plan_close");

        hideById("startup_plan_offer_failed");
        showById("startup_plan_offer_container");

        axiosGet('/services/billing/billingv2.svc/switchToStartupPlan?storeId=' + storeId + '&packageId=' + startupSwitchPackageId + '&price=' + startupSwitchPrice + '&currency=' + startupSwitchCurrency).then(function (data) {
            trace("switchToStartupPlan:success");

            var switched = data.d;
            console.log(switched);

            if (switched == false) {
                failedStartupPlanSwitch();
            } else {
                showById("startup_plan_offer_success");
                hideById("startup_plan_offer_container");
                document.getElementById("confirmStartupPlanSwitch_button").innerHTML = "<i class='fa fa-check color_green'></i> Successfully Switched";
            }

            

        }).catch(function () {
            trace("switchToStartupPlan:failed");
            failedStartupPlanSwitch();
        }).then(function () {
            trace("switchToStartupPlan:complete");
        });

    }

    function failedStartupPlanSwitch() {

        document.getElementById("confirmStartupPlanSwitch_button").classList.remove("button_disabled");
        document.getElementById("confirmStartupPlanSwitch_button").innerHTML = "Confirm Switch";
        document.getElementById("closeStartupPlanSwitch_button").classList.remove("button_disabled");
        showById("modal_offer_startup_plan_close");

        showById("startup_plan_offer_failed");
        hideById("startup_plan_offer_container");

    }

    function successfullySwitchToStartupPlan() {
        
        document.getElementById("successfullySwitchToStartupPlan_button").classList.add("button_disabled");
        document.getElementById("successfullySwitchToStartupPlan_button").innerHTML = "<i class='fa fa-spinner fa-spin'></i> Loading";
        location.reload();
    }

    function closeStartupPlanSwitch() {
        var fwsSwitchDate = new Date();
        localStorage.fwsSwitchPlan = fwsSwitchDate.getDate();
    }

</script>
        

<style>
   
    #new_paypal_offer{
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
    }

    @media only screen and (min-width:600px) {
        #new_paypal_offer{
            justify-content: space-between;
        }
    }

    .new_paypal_offer_item_container{
        max-width: 270px;
        min-width: 250px;
        width: 48%;
        margin-top: 20px;
    }

    .new_paypal_offer_item_current{
        line-height: 20px;
        height: 20px;
        text-align: center;
        color: #0f3087;
    }

    .new_paypal_offer_item{
        border: 1px solid #cfd7d9;
        border-radius: 4px;
        border: 1px solid #cfd7d9;
        padding: 10px;
        width: 100%;
        text-align: center;
    }

    .new_paypal_offer_item_title{
        background-color: #239BDF;
        border-radius: 4px;
        line-height: 25px;
        padding: 0px 5px;
        color: #FFF;
        display: inline-block;
        margin: 0 auto;
    }
    
    .new_paypal_offer_item_title i{
        margin-right: 5px;
    }

    .new_paypal_offer_item_price{
        margin-top: 10px;
        padding-top: 10px;
        border-top: 1px dashed #ddd;
        display: flex;
        flex-wrap: nowrap;
        justify-content: center;
        align-items: baseline;
    }

    .new_paypal_offer_item_price_inner{
        font-size: 2rem;
        font-weight: bold;
        color: #b5b5b5;
    }

    #new_paypal_offer_item_price_inner_free{
        color: #0f3087;
    }

    .new_paypal_offer_item_price_mo{
        margin-left: 5px;
        font-size: 0.7rem;
        color: #b5b5b5;
    }

    #new_paypal_offer_button{
        background-color: #239BDF;
        border-color: #239BDF;
    }

    #new_paypal_offer_button:hover{
        background-color: #0f3087;
        border-color: #0f3087;
    }

</style>

<div class="modal modal_offer_paypal">
    <div class="modal_header">
        <div class="modal_title"><i class="fa fa-exclamation-triangle color_red" aria-hidden="true"></i> Your PayPal Checkout is Retiring</div>
        <div class="modal_close" onclick="closeNewPayPalSwitch();"><i class="fa fa-times" aria-hidden="true"></i></div>
    </div>
    <div class="modal_body_outer_container">
        <div class="modal_body align_center">
            <p>Your current PayPal Checkout is being retired in: <strong>July 2021</strong>.</p>
            <p>This means if you do not enable the new PayPal Commerce Platform, your customers will not be able to pay using PayPal.</p>
            <!--<p>Enable our new PayPal integration <strong>for free!</strong></p>
            <p>This will disable your old PayPal checkout and you will no longer be charged for it!</p>-->
        </div>
        <div class="modal_body paddingb20">
           
            <div id="new_paypal_offer_container">
                <div id="new_paypal_offer">

                    <div class="new_paypal_offer_item_container">
                        <div class="new_paypal_offer_item_current"><strong>Current</strong></div>
                        <div class="new_paypal_offer_item">
                            <div class="new_paypal_offer_item_title">PayPal Standard</div>
                            <div class="new_paypal_offer_item_list">
                                <p><strong>PayPal Checkout</strong></p>
                                <p><strong>PayPal Express</strong></p>
                                <p><strong>2.9% Commission</strong></p>
                            </div>
                            <!--<div class="new_paypal_offer_item_price">
                                <div id="new_paypal_offer_item_price_inner_price" class="new_paypal_offer_item_price_inner">$2</div>
                                <div class="new_paypal_offer_item_price_mo">/mo</div>
                            </div>-->
                        </div>
                    </div>

                    <div class="new_paypal_offer_item_container">
                        <div class="new_paypal_offer_item_current"></div>
                        <div class="new_paypal_offer_item">
                            <div class="new_paypal_offer_item_title">PayPal Commerce Platform</div>
                            <div class="new_paypal_offer_item_list">
                                <p><strong>PayPal Checkout</strong></p>
                                <p><strong>PayPal Express</strong></p>
                                <p><strong><i class="fa fa-star color_orange"></i> From <span class="color_pink">1.2%</span> Commission <i class="fa fa-star color_orange"></i></strong></p>
                                <p><strong>Higher Conversion Rate</strong></p>
                                <p><strong>Direct Card Payments</strong></p>
                                <p><strong>PayPal Pay Later</strong></p>
                                <p><strong>PayPal Buy Button on Products</strong></p>
                                <p><strong>Smart Checkout Buttons</strong></p>
                                <p><strong>Advanced Fraud Tools</strong></p>
                            </div>
                            <!--<div class="new_paypal_offer_item_price">
                                <div id="new_paypal_offer_item_price_inner_free" class="new_paypal_offer_item_price_inner">FREE</div>
                            </div>-->
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </div>
    <div class="modal_footer">
        <a class="button button_dgrey modal_footer_left close_modal_button" onclick="closeNewPayPalSwitch();">Close</a>
        <a href="https://stylez360.github.io/orders_checkoutsv2.aspx" class="button modal_footer_right" id="new_paypal_offer_button">Setup PayPal Commerce Platform</a>
    </div>
</div>

<script>

    var oldPaypalToNewPayPalCount = 0;

    function oldPaypalToNewPayPal() {

        var fwsPayPalSwitchDate = new Date();
        console.log(fwsPayPalSwitchDate.getDate());
        if (localStorage.fwsPayPalSwitch != fwsPayPalSwitchDate.getDate()) {

            divFadeIn(".modal_overlay", ".modal_offer_paypal");
        }
       
    }

    function closeNewPayPalSwitch() {
        var fwsPayPalSwitchDate = new Date();
        localStorage.fwsPayPalSwitch = fwsPayPalSwitchDate.getDate();
    }

</script>

        

<div id="help_panel_overlay" onclick="closeHelpPanel();"></div>
<div id="help_panel">
    <div class="busy_wait busy_wait_static busy_wait_help_panel">
        <div class="busy_wait_content">
            <div class="sk-cube-grid">
                <div class="sk-cube sk-cube1"></div>
                <div class="sk-cube sk-cube2"></div>
                <div class="sk-cube sk-cube3"></div>
                <div class="sk-cube sk-cube4"></div>
                <div class="sk-cube sk-cube5"></div>
                <div class="sk-cube sk-cube6"></div>
                <div class="sk-cube sk-cube7"></div>
                <div class="sk-cube sk-cube8"></div>
                <div class="sk-cube sk-cube9"></div>
            </div>
            <span>Loading Help</span>
        </div>
    </div>
    <div id="help_panel_success">
        <div id="help_panel_close" onclick="closeHelpPanel();"><i class="fa fa-times" aria-hidden="true"></i></div>
        <div class="panel_section" id="help_panel_intro">
            <h2 id="help_panel_intro_title"></h2>
            <div id="help_panel_intro_desc"></div>
        </div>
        <div class="panel_section" id="help_panel_faqs">
            <h2>FAQs</h2>    
            <div class="faqs"></div>
        </div>
        <div class="panel_section">
            <h2>Help</h2>
            <div class="help_panel_more">
                <div class="help_panel_more_link" data-type="question" onclick="toggleHelpPanelMessage(&#39;question&#39;);"><i class="fa fa-question" aria-hidden="true"></i><span>Ask a Question</span></div>
                <div class="help_panel_more_content" data-type="question">
                    <div class="help_panel_more_message_success align_center" data-type="question">
                        <h2>Thanks</h2>
                        <p>Your question has been submitted!</p>
                        <p>A member of our support team will be in touch soon!</p>
                    </div>
                    <div class="help_panel_more_message_form" data-type="question">
                        <div class="input_container">
                            <label for="help_panel_more_question_text">Question</label>
                            <textarea id="help_panel_more_question_text"></textarea>
                            <div class="alert alert_help_panel_more_question_text">Please enter your question</div>
                        </div>
                        <div class="hide_overflow">
                            <div class="alert alert_help_panel_more_question_fail right">Oops! We were unable to submit your question. Please try again or contact support.</div>
                            <a id="help_panel_send_question_button" class="button button_primary right" onclick="helpPanelSendMessage(&#39;question&#39;);">Submit Question</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="help_panel_more">
                <div class="help_panel_more_link" data-type="livechat" onclick="toggleHelpPanelMessageLiveChat();"><i class="fa fa-comments-o" aria-hidden="true"></i><span>Live Chat</span></div>
                <div class="help_panel_more_content" data-type="livechat">
                    <div id="help_panel_more_livechat_closed">
                        <p>Live chat is currently closed or unavailable for your browser.</p>
                        <p>Please contact us via the <a href="https://stylez360.github.io/support_new_ticket.aspx" class="link_color_primary">Support Section</a></p>
                    </div>
                </div>
            </div>
            <div class="help_panel_more">
                <div class="help_panel_more_link" data-type="bug" onclick="toggleHelpPanelMessage(&#39;bug&#39;);"><i class="fa fa-bug" aria-hidden="true"></i><span>Report a Bug</span></div>
                <div class="help_panel_more_content" data-type="bug">
                    <div class="help_panel_more_message_success align_center" data-type="bug">
                        <h2>Thanks</h2>
                        <p>Your bug report has been submitted!</p>
                    </div>
                    <div class="help_panel_more_message_form" data-type="bug">
                        <div class="input_container">
                            <label for="help_panel_more_bug_text">Bug</label>
                            <textarea id="help_panel_more_bug_text"></textarea>
                            <div class="alert alert_help_panel_more_bug_text">Please enter your bug</div>
                        </div>
                        <div class="hide_overflow">
                            <div class="alert alert_help_panel_more_bug_fail right">Oops! We were unable to submit your bug. Please try again or contact support.</div>
                            <a id="help_panel_send_bug_button" class="button button_primary right" onclick="helpPanelSendMessage(&#39;bug&#39;);">Submit Bug</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="help_panel_more">
                <div class="help_panel_more_link" data-type="feedback" onclick="toggleHelpPanelMessage(&#39;feedback&#39;);"><i class="fa fa-star" aria-hidden="true"></i><span>Give Feedback</span></div>
                <div class="help_panel_more_content" data-type="feedback">
                    <div class="help_panel_more_message_success align_center" data-type="feedback">
                        <h2>Thanks</h2>
                        <p>Your feedback has been submitted!</p>
                    </div>
                    <div class="help_panel_more_message_form" data-type="feedback">
                        <div class="hide_overflow">
                            <div class="input_container input_container_50">
                                <label for="help_panel_more_feedback_stars">Rating</label>
                                <select id="help_panel_more_feedback_stars">
                                    <option value="-1">Please Select</option>
                                    <option value="5">5 Stars</option>
                                    <option value="4">4 Stars</option>
                                    <option value="3">3 Stars</option>
                                    <option value="2">2 Stars</option>
                                    <option value="1">1 Stars</option>
                                </select>
                                <div class="alert alert_help_panel_more_feedback_stars">Please select your rating</div>
                            </div>
                        </div>
                        <div class="input_container">
                            <label for="help_panel_more_feedback_text">Feedback</label>
                            <textarea id="help_panel_more_feedback_text"></textarea>
                            <div class="alert alert_help_panel_more_feedback_text">Please enter your feedback</div>
                        </div>
                        <div class="hide_overflow">
                            <div class="alert alert_help_panel_more_feedback_fail right">Oops! We were unable to submit your feedback. Please try again or contact support.</div>
                            <a id="help_panel_send_feedback_button" class="button button_primary right" onclick="helpPanelSendMessage(&#39;feedback&#39;);">Submit Feedback</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="help_panel_more">
                <a href="https://stylez360.github.io/support_mysupport.aspx" class="help_panel_more_link"><i class="fa fa-external-link" aria-hidden="true"></i><span>View Support Tickets</span></a>
            </div>
        </div>
    </div>
</div>

<script>
    
    var openHelpPanelBool = false;
    function openHelpPanel() {

        if (openHelpPanelBool === false && typeof helpPanelUrl != "undefined") {

            showByClass("busy_wait_help_panel");
            hideById("help_panel_success");

            setTimeout(function () {
                axiosGet('services/support/Support.svc/getHelpPanel?storeId=' + storeId + '&path=' + helpPanelUrl).then(function (data) {
                    trace("getHelpPanel:success");
                    var helpInfo = data.d;

                    if (helpInfo != null && helpInfo.length > 0) {
                        helpInfo = JSON.parse(helpInfo);
                        console.log(helpInfo);

                        document.getElementById("help_panel_intro_title").innerHTML = helpInfo.title;
                        document.getElementById("help_panel_intro_desc").innerHTML = helpInfo.desc;

                        if (helpInfo.faqs != null) {
                            if (helpInfo.faqs.length > 0) {

                                var faqHtml = '';
                                for (var i = 0; i < helpInfo.faqs.length; i++) {
                                    var faq = '<details>';
                                    faq += '<summary>' + helpInfo.faqs[i].summary + '</summary>';
                                    faq += '<div class="faqs_inner">';
                                    faq += helpInfo.faqs[i].info;
                                    faq += '</div>';
                                    faq += '</details>';
                                    faqHtml += faq;
                                }
                                document.querySelector("#help_panel_faqs > .faqs").innerHTML = faqHtml;

                            } else {
                                hideById("help_panel_faqs");
                            }
                        } else {
                            hideById("help_panel_faqs");
                        }

                    } else {
                        hideById("help_panel_intro");
                        hideById("help_panel_faqs");
                    }

                    hideByClass("busy_wait_help_panel");
                    showById("help_panel_success");

                    openHelpPanelBool = true;

                }).catch(function (err) {
                    trace("getHelpPanel:error");
                    hideById("help_panel_intro");
                    hideById("help_panel_faqs");
                    hideByClass("busy_wait_help_panel");
                    showById("help_panel_success");
                }).then(function () {
                    trace("getHelpPanel:complete");
                });
            }, 1500);
        } else {
            if (!openHelpPanelBool) {
                if (typeof helpInfo == "undefined") {
                    hideById("help_panel_faqs", "help_panel_intro");
                }
            }
        }

        document.querySelector("#help_panel").classList.add("help_panel_active");
        document.querySelector("#help_panel_overlay").classList.add("help_panel_overlay_active");
        document.querySelector("body").classList.add("body_modal_is_open");

    }

    function closeHelpPanel() {
        document.querySelector("#help_panel").classList.remove("help_panel_active");
        document.querySelector("#help_panel_overlay").classList.remove("help_panel_overlay_active");
        document.querySelector("body").classList.remove("body_modal_is_open");
    }

    function toggleHelpPanelMessage(type) {
        document.querySelector(".help_panel_more_link[data-type='" + type + "']").classList.toggle("help_panel_more_link_active");
        document.querySelector(".help_panel_more_content[data-type='" + type + "']").classList.toggle("help_panel_more_content_active");
    }

    function helpPanelSendMessage(type) {

        var validationSuccess = true;
        var subject = "";
        var message = "";

        switch (type) {
            case "feedback":
                hideByClass("alert_help_panel_more_feedback_stars", "alert_help_panel_more_feedback_text", "alert_help_panel_more_feedback_fail");

                subject = document.getElementById("help_panel_more_feedback_stars").value;
                message = stripHTML(document.getElementById("help_panel_more_feedback_text").value).trim();

                if (subject == -1 || subject == "") {
                    showByClass("alert_help_panel_more_feedback_stars");
                    validationSuccess = false;
                } else {
                    subject = subject + " Stars"
                }

                if (message.length === 0) {
                    showByClass("alert_help_panel_more_feedback_text");
                    validationSuccess = false;
                } else {
                    message = message;
                }

                break;
            case "bug":
                hideByClass("alert_help_panel_more_bug_text", "alert_help_panel_more_bug_fail");

                subject = "Bug Report";
                message = stripHTML(document.getElementById("help_panel_more_bug_text").value).trim();

                if (message.length === 0) {
                    showByClass("alert_help_panel_more_bug_text");
                    validationSuccess = false;
                } else {
                    message = message;
                }

                break;
            case "question":
                hideByClass("alert_help_panel_more_question_text", "alert_help_panel_more_question_fail");

                subject = "Ask a Question";
                message = stripHTML(document.getElementById("help_panel_more_question_text").value).trim();

                if (message.length === 0) {
                    showByClass("alert_help_panel_more_question_text");
                    validationSuccess = false;
                } else {
                    message = message;
                }

                break;
        }


        if (validationSuccess === true) {
            var messageLocation = location.pathname;
            messageLocation = messageLocation.replace("/", "").replace(".aspx", "").replaceAll("_", "-");

            var message = {
                storeId: storeId,
                subject: subject,
                message: message,
                type: messageLocation
            };

            console.log(message)

            helpPanelSendMessageFinal(message, type)
            
        }

    }

    function helpPanelSendMessageFinal(message, type) {

        document.getElementById("help_panel_send_" + type + "_button").classList.add("button_disabled");
        document.getElementById("help_panel_send_" + type + "_button").innerHTML = '<i class="fa fa-spinner fa-spin"></i> Submitting';

        var url = "/services/support/Support.svc/CreateTicket";
        var data = JSON.stringify({ 'shopkeeper': storeId, 'ticket': message });

        axiosPost(url, data).then(function (res) {
            console.log(res);
            if (res.d == true) {
                helpPanelSendMessageFinalSuccess(type);
            } else {
                helpPanelSendMessageFinalFailed(type);
            }

        }).catch(function (err) {
            helpPanelSendMessageFinalFailed(type);
        }).then(function () {

        });

    } 

    function helpPanelSendMessageFinalSuccess(type) {
        document.querySelector(".help_panel_more_message_form[data-type='" + type + "']").style.display = "none";
        document.querySelector(".help_panel_more_message_success[data-type='" + type + "']").style.display = "block";
    }

    function helpPanelSendMessageFinalFailed(type) {

        document.getElementById("help_panel_send_"+type+"_button").classList.remove("button_disabled");
        document.getElementById("help_panel_send_" + type + "_button").innerHTML = 'Submit ' + type;
        showByClass("alert_help_panel_more_" + type +"_fail");

    }

</script>

        <script>

            // Declare Modal Overlays
            var modalOverlay = document.querySelector(".modal_overlay");
            var additionalModalOverlay = document.querySelector(".additional_overlay");
            var modalDOverlay = document.querySelector(".modal_doverlay");
            var forcedNOverlay = document.querySelector(".forced_noverlay");
            var forcedDOverlay = document.querySelector(".forced_doverlay");

            var accountInfoUrl = storeUrl.replace("www.", "");
            $("#homepage_store_info_thumbnail_container, #homepage_store_info_details_url").attr("href", "//" + storeUrl).attr("target", "fws_preview_tab").attr("title", "href://" + storeUrl);
            $("#homepage_store_info_details_url").text(accountInfoUrl)

            
            
            var planName = 'Community';

            switch (packageTypeId) {
            case -1:
                $('.account_details_packages').text(packageName);
                try {
                    /*$(".page_navigation_box_stars").attr("data-plan", "charity");
                    $(".page_navigation_box_stars_pr_only").attr("data-plan", "charity");*/
                    $(".page_navigation_box").removeClass("page_navigation_box_disabled");
                    document.getElementById("nav_footer_plan").setAttribute("data-plan", "charity");
                    document.getElementById("nav_footer_plan_right_title").innerText = "Charity User";
                    document.getElementById("nav_footer_plan_right_info").innerHTML = 'You are benefiting from our <strong>Charity</strong> Plan.'

                    document.getElementById("homepage_store_info_details_package").innerHTML = "<span id='homepage_store_info_details_package_tab' data-plan='charity'><i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star'></i> Charity</span>";
                    planName = 'Charity'
                } catch (Err) { }
                break;
            case 9:
                $('.account_details_packages').text(packageName);
                try {
                    /*$(".page_navigation_box_stars").attr("data-plan", "ridge"); 
                    $(".page_navigation_box_stars_pr_only").attr("data-plan", "ridge");*/
                    $(".page_navigation_box").removeClass("page_navigation_box_disabled");
                    document.getElementById("nav_footer_plan").setAttribute("data-plan", "ridge");
                    document.getElementById("nav_footer_plan_right_title").innerText = "Ridge User";
                    document.getElementById("nav_footer_plan_right_info").innerHTML = 'You are benefiting from <strong>free</strong> apps &amp; <strong>increased</strong> limits.';
                    hideById("nav_footer_plan_modal_button_ridge");

                    document.getElementById("homepage_store_info_details_package").innerHTML = "<span id='homepage_store_info_details_package_tab' data-plan='ridge'>Ridge</span>";
                    planName = 'Ridge';
                } catch (Err) { }
                break;
            case 10:
                $('.account_details_packages').text(packageName);
                try {
                    /*$(".page_navigation_box_stars").attr("data-plan", "ridge");
                    $(".page_navigation_box_stars_pr_only").attr("data-plan", "ridge");*/
                    $(".page_navigation_box").removeClass("page_navigation_box_disabled");
                    document.getElementById("nav_footer_plan").setAttribute("data-plan", "ridge");
                    document.getElementById("nav_footer_plan_right_title").innerText = "Ridge User";
                    document.getElementById("nav_footer_plan_right_info").innerHTML = 'You are benefiting from <strong>free</strong> apps &amp; <strong>increased</strong> limits.'
                    hideById("nav_footer_plan_modal_button_ridge");

                    document.getElementById("homepage_store_info_details_package").innerHTML = "<span id='homepage_store_info_details_package_tab' data-plan='ridge'>Ridge</span>";
                    planName = 'Ridge';
                } catch (Err) { }
                break;
            case 11:
                $('.account_details_packages').text(packageName);
                try {
                    /*$(".page_navigation_box_stars").attr("data-plan", "ridge");
                    $(".page_navigation_box_stars_pr_only").attr("data-plan", "ridge");*/
                    $(".page_navigation_box").removeClass("page_navigation_box_disabled");
                    document.getElementById("nav_footer_plan").setAttribute("data-plan", "ridge");
                    document.getElementById("nav_footer_plan_right_title").innerText = "Ridge User";
                    document.getElementById("nav_footer_plan_right_info").innerHTML = 'You are benefiting from <strong>free</strong> apps &amp; <strong>no</strong> limits.'

                    document.getElementById("homepage_store_info_details_package").innerHTML = "<span id='homepage_store_info_details_package_tab' data-plan='ridge'>Ridge</span>";
                    planName = 'Ridge';
                } catch (Err) { }
                break;
            case 12:
                $('.account_details_packages').text(packageName);
                try {
                    /*$(".page_navigation_box_stars").attr("data-plan", "startup");
                    $(".page_navigation_box_stars_pr_only").attr("data-plan", "pro");*/
                    $(".page_navigation_box[data-minplan='startup']").removeClass("page_navigation_box_disabled");
                    document.getElementById("nav_footer_plan").setAttribute("data-plan", "startup");
                    
                    document.getElementById("nav_footer_plan_right_info").innerHTML = 'You are benefiting from <strong>more</strong> features &amp; <strong>increased</strong> limits.';
                    if (startupTrialActive == "False") {
                        document.getElementById("nav_footer_plan_right_title").innerText = "Startup User";
                        document.getElementById("homepage_store_info_details_package").innerHTML = "<span id='homepage_store_info_details_package_tab' data-plan='startup'><i class='fa fa-star'></i><i class='fa fa-star'></i> Startup</span> <a href='/upgrade.aspx' id='homepage_store_info_details_package_tab_button' class='homepage_store_info_details2_link_button'>View</a>";
                    } else {
                        document.getElementById("nav_footer_plan_right_title").innerText = "Startup Trial User";
                        document.getElementById("homepage_store_info_details_package").innerHTML = "<span id='homepage_store_info_details_package_tab' data-plan='startup'><i class='fa fa-star'></i><i class='fa fa-star'></i> Startup Trial</span> <a href='/upgrade.aspx' id='homepage_store_info_details_package_tab_button' class='homepage_store_info_details2_link_button'>View</a>";
                    }
                    planName = 'Startup';
                } catch (Err) { }
                break;
            case 13:
                $('.account_details_packages').text(packageName);
                try {
                    /*$(".page_navigation_box_stars").attr("data-plan", "pro");
                    $(".page_navigation_box_stars_pr_only").attr("data-plan", "pro");*/
                    $(".page_navigation_box[data-minplan='startup']").removeClass("page_navigation_box_disabled");
                    $(".page_navigation_box[data-minplan='pro']").removeClass("page_navigation_box_disabled");
                    document.getElementById("nav_footer_plan").setAttribute("data-plan", "pro");
                    document.getElementById("nav_footer_plan_right_title").innerText = "Pro User";
                    document.getElementById("nav_footer_plan_right_info").innerHTML = 'You are benefiting from <strong>free</strong> apps &amp; <strong>increased</strong> limits.';

                    document.getElementById("homepage_store_info_details_package").innerHTML = "<span id='homepage_store_info_details_package_tab' data-plan='pro'><i class='fa fa-star'></i><i class='fa fa-star'></i><i class='fa fa-star'></i> Pro</span> <a href='/upgrade.aspx' id='homepage_store_info_details_package_tab_button' class='homepage_store_info_details2_link_button'>View</a>";
                    planName = 'Pro';
                } catch (Err) { }
                break;
            default:
                $('.account_details_packages').text(packageName);
                try {

                    $("#nav_footer_plan").attr("data-plan", "community")
                    /*$(".page_navigation_box_stars_pr_only").attr("data-plan", "pro");*/
                    $("#nav_footer_plan_right_title").text("Community User");
                    $("#nav_footer_plan_right_info").html('See how you can <strong>benefit</strong> from our Startup plan.');
                        
                    $("#homepage_store_info_details_package").html("<span id='homepage_store_info_details_package_tab' data-plan='community'><i class='fa fa-star'></i> Community</span> <a href='/upgrade.aspx' id='homepage_store_info_details_package_tab_button' class='homepage_store_info_details2_link_button'>View</a>");
                    $("#homepage_available_plans_which").html("<span id='homepage_available_plans_which_tab' data-plan='community'><i class='fa fa-star'></i> Community</span> plan");

                    if (packageTypeId == 7 && (controlPanelVersion == 2 || storeId == 674971)) {
                        checkifAppEnabled("startup-pack").then(function (res) {
                            if (res == true) {
                                $("#nav_footer_plan").attr("data-plan", "startup-pack")
                                $("#nav_footer_plan_right_title").text("Startup Pack App");
                                $("#homepage_store_info_details_package").html("<span id='homepage_store_info_details_package_tab' data-plan='startup'>Startup Pack App</span> <a href='/upgrade.aspx' id='homepage_store_info_details_package_tab_button' class='homepage_store_info_details2_link_button'>View</a>");
                                $("#homepage_available_plans_which").html("<span id='homepage_available_plans_which_tab' data-plan='startup'>Startup Pack App</span>")
                                $("#homepage_available_plans_which_container").append("<p>Select the Startup Plan below for more benefits at the same price.</p>");

                                // We should then offer to upgrade them to the Startup Plan for free
                                offerStartupPlanUpgrade();

                            } else {
                                checkifAppEnabled("checkout-paypal").then(function (res) {
                                    if (res == true) {
                                        // We should then offer to upgrade their paypal
                                    }
                                });
                            }
                        });
                    }

                        
                    showById("homepage_available_plans_outer");
                    planName = 'Community';
                } catch (Err) { }
                break;
            }

            if (controlPanelVersion == 2) {
                $(".page_navigation_box[data-allowcpv2='true']").removeClass("page_navigation_box_disabled");
            }

            try {
                if (subscriptionStatus != null) {
                    if (subscriptionStatus == "expiring") {
                        document.getElementById("nav_footer_plan").setAttribute("data-expiring", "true");
                        document.getElementById("nav_footer_plan_right_info").innerHTML = 'Your subscription is currently <strong>expiring</strong>!';
                        document.getElementById("homepage_store_info_details_package_tab").setAttribute("data-expiring", "true");
                    }
                }
            } catch (e) {

            }

            document.getElementById("nav_footer_plan_outer").classList.add("nav_footer_plan_outer_active");

            try {
                var planNameTitle = 'Your ' + planName + ' Plan';

                if (packageTypeId == 0) {
                    planNameTitle = 'Startup Plan';
                    planName = 'Startup';
                }

                var planHtml = '';
                if (packageTypeId != 9 && packageTypeId != 10) {
                    planHtml = '<a href="/upgrade.aspx" class="homepage_meta_item" data-plan="' + packageTypeId + '">';
                    planHtml += '<div class="homepage_meta_item_left">';
                    planHtml += '<i class="fa fa-star-o homepage_meta_item_icon" aria-hidden="true"></i>';
                    planHtml += '</div>';
                    planHtml += '<div class="homepage_meta_item_right">';
                    planHtml += '<div class="homepage_meta_item_title"><span>' + planNameTitle + '</span></div>';
                    planHtml += '<div class="homepage_meta_item_text">What do I get with the ' + planName + ' Plan?</div>';
                    planHtml += '</div>';
                    planHtml += '</a>';
                }

                document.getElementById("homepage_meta").innerHTML += planHtml;

                var socialHtml = '<div id="homepage_meta_item_sc_title">Follow Us On Social Media</div>';
                socialHtml += '<div id="homepage_meta_item_sc" class="homepage_meta_item">';
                socialHtml += '<a href="https://www.facebook.com/freewebstoreofficial/" target="_blank" title="View our Facebook Posts" class="homepage_meta_item_sc_fb"><i class="fa fa-facebook" aria-hidden="true"></i></a>';
                socialHtml += '<a href="https://twitter.com/freewebstore" target="_blank" title="Read our Tweets" class="homepage_meta_item_sc_tw"><i class="fa fa-twitter" aria-hidden="true"></i></a>';
                socialHtml += '<a href="https://www.instagram.com/freewebstore/" target="_blank" title="See our Instagram Posts" class="homepage_meta_item_sc_in"><i class="fa fa-instagram" aria-hidden="true"></i></a>';
                socialHtml += '<a href="https://www.youtube.com/user/freewebstore" target="_blank" title="Watch our YouTube Videos" class="homepage_meta_item_sc_yt"><i class="fa fa-youtube-play" aria-hidden="true"></i></a>';
                socialHtml += '</div>';

                document.getElementById("homepage_meta").innerHTML += socialHtml;

            } catch (Err) { }

            /* Page Feedback */
            $(".page_feedback_stars i").hover(function () {
                $(this).removeClass("fa-star-o").addClass("fa-star");
                $(this).prevUntil("strong").removeClass("fa-star-o").addClass("fa-star");
            }, function() {
                $(".page_feedback_stars i:not('.page_feedback_stars_active')").removeClass("fa-star").addClass("fa-star-o");
            });

            $(".page_feedback_stars i").click(function () {
                $(".page_feedback_stars i").removeClass("page_feedback_stars_active");
                $(this).prevUntil("strong").addClass("page_feedback_stars_active");
                $(this).addClass("page_feedback_stars_active");
                if ($("#page_feedback_text").val().trim().length > 0) {
                    $("#modal_feedback_send_button").removeClass("button_disabled");
                } else {
                    $("#modal_feedback_send_button").addClass("button_disabled");
                }
            });

            function pageFeedbackTextChange() {

                if ($("#page_feedback_text").val().trim().length > 0) {
                    if ($(".page_feedback_stars i").hasClass("page_feedback_stars_active")) {
                        $("#modal_feedback_send_button").removeClass("button_disabled");
                    } else {
                        $("#modal_feedback_send_button").addClass("button_disabled");
                    }
                } else {
                    $("#modal_feedback_send_button").addClass("button_disabled");
                }

            }

            function providePageFeedback() {
                $(".modal_overlay, .modal_page_feedback").fadeIn();
            }

            function sendPageFeedback() {

                var feedbackLocation = location.pathname;
                feedbackLocation = feedbackLocation.replace("/", "").replace(".aspx", "").replaceAll("_", "-");
                feedbackLocation == "" ? feedbackLocation = "Home" : feedbackLocation;
                var pageFeedback = {
                    storeId: '733006',
                    subject: $(".page_feedback_stars_active").length + " Stars",
                    message: stripHTML($("#page_feedback_text").val().trim()),
                    type: feedbackLocation 
                };

                SubmitSupportTicket(pageFeedback);
            }

            function pageRequestTextChange() {

                if ($("#page_request_text").val().trim().length > 0) {
                    $("#modal_request_send_button").removeClass("button_disabled");
                } else {
                    $("#modal_request_send_button").addClass("button_disabled");
                }

            }

            function providePageRequestFeature() {
                $(".modal_overlay, .modal_page_request_feature").fadeIn();
            }

            function sendPageFeatureRequest() {
                var requestFeatureLocation = location.pathname;
                requestFeatureLocation = requestFeatureLocation.replace("/", "").replace(".aspx", "").replaceAll("_", "-");

                var pageFeedback = {
                    storeId: '733006',
                    subject: "Request a Feature",
                    message: stripHTML($("#page_request_text").val().trim()),
                    type: requestFeatureLocation
                };

                SubmitSupportTicket(pageFeedback);
            }

            /* End of page feedback */


            var leaveButtonUrl = $("#breadcrumbs li:nth-child(2) a").attr("href")
            $(".leave_button").attr("href", leaveButtonUrl);

            /* Get breadcrumb path - Used for Contact Form on Page */
            var breadcrumbPath = [];

            $("#breadcrumbs li").each(function () {
                if (!$(this).text() == "") {
                    breadcrumbPath.push($(this).text());
                }
            }).promise().done(function () {

                if (breadcrumbPath.length > 0)
                    $("#modal_help_wizard_contact_subject").val(breadcrumbPath.join(" > "));
                else
                    $("#modal_help_wizard_contact_subject").val('General Question');
            });

            function helpWizardQuestion() {

                if (breadcrumbPath.length > 0)
                    $("#modal_help_wizard_contact_subject").val(breadcrumbPath.join(" > "));
                else
                    $("#modal_help_wizard_contact_subject").val('General Question');

                $(".user_data_info ul li").remove();

                getGEO('', function (data) {
                    if (data) {
                        $(".user_data_info ul").append("<li><i class=\"fa fa-globe\" aria-hidden=\"true\"\"></i> " + data.region_name + ", " + data.country_name + "</li>");
                    }
                });

            

                //https://github.com/faisalman/ua-parser-js
                var parser = new UAParser();
                var result = parser.getResult();

            

                if (result != undefined) {
                    if (result.browser.name != undefined) {

                        switch (result.browser.name) {
                        case "Android Browser":
                            $(".user_data_info ul").append("<li><i class=\"fa fa-android\" aria-hidden=\"true\"\"></i> " + result.browser.name + " (" + result.browser.version + ") " + result.engine.name + "</li>");
                            break;
                        case "Edge":
                            $(".user_data_info ul").append("<li><i class=\"fa fa-edge\" aria-hidden=\"true\"\"></i> " + result.browser.name + " (" + result.browser.version + ") " + result.engine.name + "</li>");
                            break;
                        case "Chrome":
                            $(".user_data_info ul").append("<li><i class=\"fa fa-chrome\" aria-hidden=\"true\"\"></i> " + result.browser.name + " (" + result.browser.version + ") " + result.engine.name + "</li>");
                            break;
                        case "Firefox":
                            $(".user_data_info ul").append("<li><i class=\"fa fa-firefox\" aria-hidden=\"true\"\"></i> " + result.browser.name + " (" + result.browser.version + ") " + result.engine.name + "</li>");
                            break;
                        case "Safari":
                            $(".user_data_info ul").append("<li><i class=\"fa fa-safari\" aria-hidden=\"true\"\"></i> " + result.browser.name + " (" + result.browser.version + ") " + result.engine.name + "</li>");
                            break;
                        case "IE": case "IE [Mobile]":
                            $(".user_data_info ul").append("<li><i class=\"fa fa-internet-explorer\" aria-hidden=\"true\"\"></i> " + result.browser.name + " (" + result.browser.version + ") " + result.engine.name + "</li>");
                            break;
                        case "Opera [Mini/Mobi/Tablet]":
                            $(".user_data_info ul").append("<li><i class=\"fa fa-opera\" aria-hidden=\"true\"\"></i> " + result.browser.name + " (" + result.browser.version + ") " + result.engine.name + "</li>");
                            break;
                        default:
                            $(".user_data_info ul").append("<li>" + result.browser.name + " - " + result.browser.version + result.engine.name + "</li>");
                            break;
                        }

                    }
                    if (result.device.model != undefined) {
                        $(".user_data_info ul").append("<br />" + result.device.model + " - " + result.device.type + " - " + result.device.vendor);
                    }
                    if (result.os.name != undefined) {

                        switch (result.os.name) {
                        case "Windows [Phone/Mobile]":
                        case "Windows":
                            $(".user_data_info ul").append("<li><i class=\"fa fa-windows\" aria-hidden=\"true\"\"></i> " + result.os.name + " (" + result.os.version + ") [" + result.cpu.architecture + "]</li>");
                            break;
                        case "Mac OS":
                            $(".user_data_info ul").append("<li><i class=\"fa fa-apple\" aria-hidden=\"true\"\"></i> " + result.os.name + " (" + result.os.version + ") [" + result.cpu.architecture + "]</li>");
                            break;
                        case "Linux": case "RedHat": case "Ubuntu": case "FreeBSD": case "Fedora": case "SUSE": case "UNIX":
                            $(".user_data_info ul").append("<li><i class=\"fa fa-linux\" aria-hidden=\"true\"\"></i> " + result.os.name + " (" + result.os.version + ") [" + result.cpu.architecture + "]</li>");
                            break;
                        case "Android":
                            $(".user_data_info ul").append("<li><i class=\"fa fa-android\" aria-hidden=\"true\"\"></i> " + result.os.name + " (" + result.os.version + ") [" + result.cpu.architecture + "]</li>");
                            break;
                        default:
                            $(".user_data_info ul").append("<li>" + result.os.name + " - (" + result.os.version + ") [" + result.cpu.architecture + "]</li>");
                            break;

                        }

                    }
                }

                $(".modal_overlay, .modal_help_wizard_contact").fadeIn();
                $("body").addClass("body_modal_is_open");
                $("#modal_help_wizard_contact_message").focus();
            }

            /* Help Contact Form */
            $(".modal_help_wizard_contact_button").click(function () {
                if ((!$("#modal_help_wizard_contact_message").val() == 0) && (!$("#modal_help_wizard_contact_subject").val() == 0)) {
                    helpWizardContact();
                } else {
                    if ($("#modal_help_wizard_contact_message").val() == 0) {
                        $("#modal_help_wizard_contact_message").addClass("input_alert");
                        $("#modal_help_wizard_contact_message").parent().find(".alert").addClass("alert_show");
                    } else {
                        $("#modal_help_wizard_contact_message").removeClass("input_alert");
                        $("#modal_help_wizard_contact_message").parent().find(".alert").removeClass("alert_show");
                    }
                    if ($("#modal_help_wizard_contact_subject").val() == 0) {
                        $("#modal_help_wizard_contact_subject").addClass("input_alert");
                        $("#modal_help_wizard_contact_subject").parent().find(".alert").addClass("alert_show");
                    } else {
                        $("#modal_help_wizard_contact_subject").removeClass("input_alert");
                        $("#modal_help_wizard_contact_subject").parent().find(".alert").removeClass("alert_show");
                    }
                }
            });

            $("#sending_process2_cancel").click(function () {
                $(".sending_process2").hide();
                $(".sending_modal").hide();
                $(".modal_help_wizard_contact, .modal_overlay").show();
                $("body").addClass("body_modal_is_open");
            });

            function helpWizardContact() {

                var parseUA = new UAParser().getResult();

                var helpWizardContact = {
                    storeId: '733006',
                    subject: $("#modal_help_wizard_contact_subject").val(),
                    type: $('input[name=modal_help_wizard_contact_type_check]:checked').parent().find("label span").text(),
                    message: $("#modal_help_wizard_contact_message").val(),
                    location: $(".user_data_location").html(),
                    browser: parseUA.browser.name + " - " + parseUA.browser.version,
                    platform: parseUA.os.name + " - " + parseUA.os.version,
                    ip: '',
                    section: breadcrumbPath.join(" > ")
                };

                SubmitSupportTicket(helpWizardContact);
            }

            $(".modal_overlay, .modal_close, .close_modal_button, .modal_doverlay, .modal_x_button, .modal_achievements_close").click(function () {
                /*if (typeof pending !== 'undefined' && pending) return*/

                $("body").removeClass("body_modal_is_open");
                $(".modal_overlay, .modal, .modal_forced, .overlay_forced, .modal_doverlay, .modal_links, .modal_x_button, .modal_achievements, .pyro").fadeOut();
                $(".pyro").removeClass("pyro_active");
            });

            function closeAchievementModal() {
                $("body").removeClass("body_modal_is_open");
                $(".modal_overlay, .modal_achievements, .pyro").fadeOut();
                $(".pyro").removeClass("pyro_active");
            }

            $(".modal_expand").click(function () {
                var expand = $(this).attr("data-expand");
                if (expand === "normal") {
                    $(this).attr("data-expand", "maximised");
                    $(this).find("i").removeClass("fa-window-maximize").addClass("fa-window-restore");
                    $(this).parent().parent().addClass("modal_expanded");
                } else {
                    $(this).attr("data-expand", "normal");
                    $(this).find("i").removeClass("fa-window-restore").addClass("fa-window-maximize");
                    $(this).parent().parent().removeClass("modal_expanded");
                }
            });

            /*$('button, .button').click(function () {
                $("body").removeClass("body_modal_is_open");
            })*/

            $(".error_modal_close, .modal_overlay").click(function () {
                /*if (typeof pending !== 'undefined' && pending) return*/

                $(".error_modal, .overlay_forced").hide();
                $("body").removeClass("body_modal_is_open");
                if (typeof runErrorModalClose == 'function') {
                    runErrorModalClose();
                }
            });

            $(".cancel_button").click(function () {
                $(".modal_overlay, .modal_cancel").fadeIn();
                $("body").addClass("body_modal_is_open");
            });

            $(".close_modal_button").click(function () {
                // Only close modal if the image has been uploaded
                /*if (typeof pending !== 'undefined' && !pending) {
                    $(".modal_warning").fadeOut();
                }*/
            });

            $(".save_anyway_button, #save_process2_try_button").click(function () {
                save_process();
            });

            $("#save_process2_cancel").click(function () {
                $(".save_modal").hide();
                $(".save_process2").hide();
                $(".save_process1").show();
            });

            $(".dropdown_main").click(function () {
                $(this).parent().find(".dropdown_container").toggle();
            });

            $(".panel_toggle_header").click(function () {
                $(this).parent().toggleClass("panel_toggle_open");
                $(this).find("i").toggleClass("fa-caret-down").toggleClass("fa-caret-up");
            });

            $(".panel_collapsable_header").click(function () {
                $(this).parent().toggleClass("panel_collapsable_collapsed");
                $(this).find("i").toggleClass("fa-caret-down").toggleClass("fa-caret-up");
                $(".panel_expandable").toggleClass("panel_expandable_collapsed");
            });

            $(".hidden_section_title").click(function () {
                $(this).parent().find(".hidden_section").slideToggle();
                $(this).find("i").toggleClass("fa-caret-down").toggleClass("fa-caret-up");
            });

            var delete_item_words = Array("delete", "remove", "trash", "empty", "rubbish", "destroy");
            
            getAccountDetails(733006);
            var accountDetails;

            function getAccountDetails(storeId, pendingVerication) {
                $(".busy_wait_account_email").show();

                if (pendingVerication) $('.account_email_section').hide();
                else $('.account_email_section, .account_verified_section').hide();

                axiosGet('/services/account/account.svc/accountDetails?storeId=' + storeId).then(function(response) {
                    accountDetails = response.d;

                    $('.account_details_name, #homepage_store_info_details_name span').text(accountDetails.shopname);
                    $("#homepage_store_info_details_name span").attr("title", accountDetails.shopname);
                    $('.account_details_name').attr('title', accountDetails.shopname);

                    if (accountDetails.ageVerification != null) {
                        if (accountDetails.ageVerification == true) {
                            if (document.getElementById("homepage_store_info_details_info_inner_item_18") != null) {
                                document.getElementById("homepage_store_info_details_info_inner_item_18").style.display = "flex";
                            }
                        }
                    }

                }).catch(function(err) {
                    console.log(err);
                }).then(function() {
                    $(".busy_wait_account_email").hide();
                })
            }

            function GetDateString(when) {
                var userDate;
                try {
                    var then = moment(when, moment.ISO_8601);
                    var now = moment(new Date());
                    var duration = moment.duration(now.diff(then));
                    var days = duration.asDays();
                    var hours = duration.asHours();
                    var mins = duration.asMinutes();
                    userDate = then.calendar();
                    if (mins < 1)
                        userDate = "Just now";
                    else if (hours < 1)
                        userDate = Math.round(mins) + " mins ago";
                    else if (days < 1)
                        userDate = Math.round(hours) + " hours ago";
                } catch (Err) {
                    userDate = when;
                }
                return userDate;
            }

            // Nav Open/ Close
            function closeNav() {
                $("nav, header, .main, #breadcrumbs").toggleClass("nav_closed");
                if (tourIsLive == true) {
                    setupTourNext();
                }

                if ($("nav").hasClass("nav_closed")) {
                    Cookies.set("fws_menu_minimized_" + storeId, true);
                } else {
                    Cookies.set("fws_menu_minimized_" + storeId, false);
                }

            }

            // Check for unpaid invoices
            checkUnpaidInvoices();

            function checkUnpaidInvoices() {
                axiosGet('/services/account/account_invoices.svc/checkUnpaidInvoices?storeId=' + storeId).then(
                    function(data) {
                        var unpaidInvoices = data.d;
                        if (unpaidInvoices !== "") {
                            var url_string = window.location.href
                            var url = new URL(url_string);

                            if (url.pathname !== "/account_invoices_unpaid") {
                                $(".notification_panel_bottom").show();
                                $(".notification_panel_bottom_button").attr("href",
                                    "/account_invoices_unpaid?invoiceId=" + unpaidInvoices);
                            }
                        }
                    }).catch(function(err) {
                    console.log(err);
                }).then(function() {

                });
            }

        </script>

        <script>
            var messageCount = 0;
            var orderCount = 0;
            window.onload = function () {
                getMessagesCount(storeId, true);
                getOrders(storeId, true);
            }
            function getMessagesCount(id, firstrun) {
                axiosGet('/services/Messages.svc/GetMessageCount?storeId=' + id).then(function(data) {
                    var count = data.d;

                    if (firstrun) {
                        messageCount = count;
                    }

                    if (count > messageCount) {
                        messageCount = count;
                    }
                    if (count === 0) {
                        messageCount = count;
                    }
                    if (count > 0) {
                        document.getElementById("dashboard_quick_links_item_notification_messages").innerText = count;
                        document.getElementById("dashboard_quick_links_item_notification_messages").classList.add("dashboard_quick_links_item_notification_active");
                        $('#header_notification_message').addClass("header_notification_item_active");
                    } else {
                        $('#header_notification_message').removeClass("header_notification_item_active");
                    }
                }).catch(function(err) {
                });
            }
            function getOrders(id, firstrun) {
                axiosGet('/services/Orders.svc/GetOrderCount?storeId=' + id).then(function(data) {
                    var count = data.d;
                    if (firstrun) {
                        orderCount = count;
                    }
                    if (count > orderCount) {
                        orderCount = count;
                        var type = (count > 1 ? "orders" : "order");
                    }
                    if (count == 0) {
                        orderCount = count;
                    }
                    if (count > 0) {
                        document.getElementById("dashboard_quick_links_item_notification_orders").innerText = count;
                        document.getElementById("dashboard_quick_links_item_notification_orders").classList.add("dashboard_quick_links_item_notification_active");
                        document.getElementById("dashboard_quick_links_item_notification_orders_link").setAttribute("href", "/orders_view_list.aspx?isNew=true");
                        $('#header_notification_order').addClass("header_notification_item_active").attr("href", "/orders_view_list.aspx?isNew=true");
                    } else {
                        $('#header_notification_order').removeClass("header_notification_item_active").attr("href", "/orders_view_list.aspx?isNew=false");
                    }
                }).catch(function (err) {
                });
            }

            

            /* Add active class to active nav */

            activeNavTab();
            function activeNavTab() {

                var pathname = window.location.pathname;
                pathname = pathname.replace(/\//, "").replace(".aspx", "").replace(/\./g, "");
                pathname = pathname.toLowerCase();

                switch (pathname) {
                case "main_ridge":
                case "main_free":
                case "main":
                    activeNavTabDiff("Home");
                    break;
                default:

                    var navFound = false;

                    $(".nav_inner a").each(function () {

                        var linkPathName = $(this).attr("href");
                        if (linkPathName != null && linkPathName.length != 0) {
                            linkPathName = linkPathName.replace(/\//g, "").replace(".aspx", "").replace(/\./g, "");

                            var altLinks = $(this).attr("data-altLinks");
                            var altLinkFound = false;
                            if (altLinks != null && altLinks.length > 0) {
                                altLinks = altLinks.split(",");
                                if (altLinks.indexOf(pathname) > -1) {
                                    altLinkFound = true;
                                }
                                if (pathname.includes("checkouts/")) {
                                    for (var i = 0; i < altLinks.length; i++) {
                                        var checkoutMatch = /^(checkouts\/[a-z0-9*]+\/index)$/;
                                        if (checkoutMatch.test(altLinks[i])) {
                                            altLinkFound = true;
                                        }
                                    }
                                }
                            }

                            if (pathname === linkPathName || altLinkFound == true) {
                                $(this).parent().addClass("active");
                                var parent = $(this).parent().attr("data-parent");
                                if (parent != undefined) {

                                    $(".nav_item[data-name='" + parent + "']").addClass("nav_parent_active");

                                    if ($(".nav_item[data-name='" + parent + "']").attr("data-parent")) {
                                        var additionalParent = $(".nav_item[data-name='" + parent + "']").attr("data-parent");
                                        $(".nav_item_sub_container[data-parent='" + additionalParent + "']").show();
                                        $(".nav_item_dropdown_button[data-name='" + additionalParent + "'] i").addClass("nav_item_dropdown_button_active");
                                        $(".nav_item[data-name='" + additionalParent + "']").addClass("nav_parent_active");
                                    }

                                    if ($(".nav_item[data-parent='" + parent + "']").find(".nav_item_dropdown_button")) {
                                        $(".nav_item_sub_container[data-parent='" + parent + "']").show();
                                        $(".nav_item_dropdown_button[data-name='" + parent + "'] i").addClass("nav_item_dropdown_button_active");
                                    }
                                }
                                navFound = true;
                                return false;
                            }
                        }
                    });

                    var navFoundSecond = false;
                    if (navFound == false) {
                        $(".nav_inner a").each(function () {

                            var linkPathName = $(this).attr("href");
                            if (linkPathName != null && linkPathName.length != 0) {
                                linkPathName = linkPathName.replace(/\//g, "").replace(".aspx", "").replace(/\./g, "");

                                var altLinks = $(this).attr("data-altLinks");
                                var altLinkFound = false;
                                if (altLinks != null && altLinks.length > 0) {
                                    altLinks = altLinks.split(",");
                                    if (altLinks.indexOf(pathname) > -1) {
                                        altLinkFound = true;
                                    }
                                    if (pathname.includes("checkouts/")) {
                                        for (var i = 0; i < altLinks.length; i++) {
                                            var checkoutMatch = /^(checkouts\/[a-z0-9*]+\/index)$/;
                                            if (checkoutMatch.test(altLinks[i])) {
                                                altLinkFound = true;
                                            }
                                        }
                                    }
                                }

                                var breadcrumbPathName = $("#breadcrumbs a:first-child").attr("href");
                                if (breadcrumbPathName != null && breadcrumbPathName != undefined) {
                                    breadcrumbPathName = breadcrumbPathName.replace(/\//g, "").replace(".aspx", "").replace(/\./g, "");

                                    if (breadcrumbPathName === linkPathName || altLinkFound == true) {
                                        $(this).parent().addClass("active");
                                        var parent = $(this).parent().attr("data-parent");
                                        if (parent != undefined) {

                                            $(".nav_item[data-name='" + parent + "']").addClass("nav_parent_active");

                                            if ($(".nav_item[data-name='" + parent + "']").attr("data-parent")) {
                                                var additionalParent = $(".nav_item[data-name='" + parent + "']").attr("data-parent");
                                                $(".nav_item_sub_container[data-parent='" + additionalParent + "']").show();
                                                $(".nav_item_dropdown_button[data-name='" + additionalParent + "'] i").addClass("nav_item_dropdown_button_active");
                                                $(".nav_item[data-name='" + additionalParent + "']").addClass("nav_parent_active");
                                            }

                                            if ($(".nav_item[data-parent='" + parent + "']").find(".nav_item_dropdown_button")) {
                                                $(".nav_item_sub_container[data-parent='" + parent + "']").show();
                                                $(".nav_item_dropdown_button[data-name='" + parent + "'] i").addClass("nav_item_dropdown_button_active");
                                            }
                                        }

                                        navFoundSecond = true;
                                        return false;
                                    }
                                }
                            }
                        });
                    }

                    /*if (navFound != true && navFoundSecond == false) {
                        alert("Still not found");
                    }*/

                    break;
                }

                function activeNavTabDiff(el) {
                    $(".nav_item[data-name='" + el + "']").addClass("active");
                }

            }

            

            if (newDashboard == "true" && (location.pathname.includes("main_ridge") || location.pathname.includes("main_free"))) {
                divFadeIn(".modal_new_dashboard", ".overlay_forced");
                if (location.pathname.includes("main_ridge")) {
                    window.history.replaceState({}, document.title, "/" + "main_ridge.aspx");
                } else {
                    window.history.replaceState({}, document.title, "/" + "main_free.aspx");
                }
            }

            function closeNewDashboardModal() {
                $(".modal_new_dashboard, .overlay_forced").hide();
                checkUncollectedAchievements();
            }
        </script>
    </form><script async="true" id="cc-snippet" src="./manage_products_list_files/snippet"></script><iframe src="./manage_products_list_files/iframe.html" id="cc-window" style="border: none; background-color: transparent; z-index: 999999; transform: scale(0) translateY(85px); transform-origin: calc(100% - 52px) calc(100% + 26px); position: fixed; transition: all 250ms cubic-bezier(0.645, 0.045, 0.355, 1) 0s, top 0s ease 0s, bottom 0s ease 0s; opacity: 0; width: 420px; max-width: 100%; height: 0px; max-height: calc(100% - 72px); min-height: 0px; margin-right: 0px; right: 0px; bottom: 72px;"></iframe><iframe src="./manage_products_list_files/button.html" id="cc-button" style="border: 0; width: 110px; height: 110px; position: fixed; bottom: 0; right: 0; z-index: 999998;" class="cc-button_working"></iframe>
    <script src="./manage_products_list_files/t.js.download"></script>
    <script>
        if (location.hostname != "localhost") {
            TrackJS.install({
                token: "a32e563fb84543f88c831dd9d04625bd",
                application: "ridge",
                sessionId: storeId,
                network: { error: false },
                console: {
                    display: (location.hostname === "localhost" || location.hostname.includes("ngrok") || location.hostname == "ridge-ppcp.fw1.biz" || location.hostname == "ridge.fw1.biz" ? true : false) // Hides console logs from the users/dev tools, but keeps them in your timeline
                }
            });

            // Attach a callback for when network errors occur
            $(document).ajaxError(function(evt, xhr, opts, message) {
                if (!window.TrackJS) { return; } // Safety Check

                // Log the relevant info to the Telemetry Console
                TrackJS.console.log({
                    message: message,
                    method: opts.type,
                    url: opts.url,
                    status: xhr.status,
                    statusText: xhr.statusText,
                    request: opts.data,
                    response: xhr.responseText
                });

                // Record the Error
                TrackJS.track(xhr.status + " " + xhr.statusText + ": " + opts.type + " " + url);
            });
        }
    </script>
    <script src="./manage_products_list_files/css_variables.js.download"></script>
    <script id="profitwell-js" data-pw-auth="7d282069308758bb67af09899b8fe4cd">
        (function (i, s, o, g, r, a, m) {
            i[o] = i[o] || function () { (i[o].q = i[o].q || []).push(arguments) };
            a = s.createElement(g); m = s.getElementsByTagName(g)[0]; a.async = 1; a.src = r + '?auth=' +
                s.getElementById(o + '-js').getAttribute('data-pw-auth'); m.parentNode.insertBefore(a, m);
        })(window, document, 'profitwell', 'script', 'https://public.profitwell.com/js/profitwell.js');
        profitwell('start', { 'user_id': '733006' });
    </script>
    <script type="text/javascript">
        (function (c, l, a, r, i, t, y) {
            c[a] = c[a] || function () { (c[a].q = c[a].q || []).push(arguments) };
            t = l.createElement(r); t.async = 1; t.src = "https://www.clarity.ms/tag/" + i;
            y = l.getElementsByTagName(r)[0]; y.parentNode.insertBefore(t, y);
        })(window, document, "clarity", "script", "8funo71987");
        if (clarity) clarity("set", "storeId", storeId);
    </script>


</body></html>