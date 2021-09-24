
<!DOCTYPE html>


<html lang="en">

<head id="Head1"><meta charset="UTF-8" /><meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" type="text/css" href="/css/main.css?v=566a67aa5c4d675ed7af7841de2b0fb6" />
    <script>
        var __VER__ = "1.0.0", storeId = -1, beaverGuid = guid(); function guid() { return s4() + s4() + "-" + s4() + "-" + s4() + "-" + s4() + "-" + s4() + s4() + s4() } function s4() { return Math.floor(65536 * (1 + Math.random())).toString(16).substring(1) } function _instanceof(e, t) { return null != t && "undefined" != typeof Symbol && t[Symbol.hasInstance] ? !!t[Symbol.hasInstance](e) : e instanceof t } function _toConsumableArray(e) { return _arrayWithoutHoles(e) || _iterableToArray(e) || _unsupportedIterableToArray(e) || _nonIterableSpread() } function _nonIterableSpread() { throw new TypeError("Invalid attempt to spread non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.") } function _unsupportedIterableToArray(e, t) { if (e) { if ("string" == typeof e) return _arrayLikeToArray(e, t); var r = Object.prototype.toString.call(e).slice(8, -1); return "Object" === r && e.constructor && (r = e.constructor.name), "Map" === r || "Set" === r ? Array.from(e) : "Arguments" === r || /^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(r) ? _arrayLikeToArray(e, t) : void 0 } } function _iterableToArray(e) { if ("undefined" != typeof Symbol && Symbol.iterator in Object(e)) return Array.from(e) } function _arrayWithoutHoles(e) { if (Array.isArray(e)) return _arrayLikeToArray(e) } function _arrayLikeToArray(e, t) { (null == t || t > e.length) && (t = e.length); for (var r = 0, n = new Array(t); r < t; r++)n[r] = e[r]; return n } function _classCallCheck(e, t) { if (!_instanceof(e, t)) throw new TypeError("Cannot call a class as a function") } function _defineProperties(e, t) { for (var r = 0; r < t.length; r++) { var n = t[r]; n.enumerable = n.enumerable || !1, n.configurable = !0, "value" in n && (n.writable = !0), Object.defineProperty(e, n.key, n) } } function _createClass(e, t, r) { return t && _defineProperties(e.prototype, t), r && _defineProperties(e, r), e } function _defineProperty(e, t, r) { return t in e ? Object.defineProperty(e, t, { value: r, enumerable: !0, configurable: !0, writable: !0 }) : e[t] = r, e } var Logger = function () { "use strict"; function e(t) { _classCallCheck(this, e), _defineProperty(this, "_storeId", -1), _defineProperty(this, "_prefix", "[CONTROLPANEL]"), _defineProperty(this, "_debugEnabled", !1), _defineProperty(this, "_uuid", null), _defineProperty(this, "_isDev", !1), void 0 !== t && null !== t && (t.storeId && (this._storeId = t.storeId), t.prefix && (this._prefix = t.prefix), t.debugEnabled && (this._debugEnabled = t.debugEnabled), t.uuid && (this._uuid = t.uuid), t.isDev && (this._isDev = t.isDev)) } return _createClass(e, [{ key: "isDebugEnabled", value: function () { return this._debugEnabled } }, { key: "log", value: function (e) { if (this._isDev) { for (var t, r = arguments.length, n = new Array(r > 1 ? r - 1 : 0), o = 1; o < r; o++)n[o - 1] = arguments[o]; (t = console).log.apply(t, ["".concat(location.href, " [").concat(this._prefix, "] [").concat(this._storeId, "] [").concat(this._uuid, "] [").concat((new Date).toISOString(), "] ").concat(e, " ")].concat(n)) } this._isDev || this.sendToServer.apply(this, ["[".concat((new Date).toISOString(), " - ").concat(__VER__, "] ").concat(e), 0].concat(n)) } }, { key: "warn", value: function (e) { for (var t, r = arguments.length, n = new Array(r > 1 ? r - 1 : 0), o = 1; o < r; o++)n[o - 1] = arguments[o]; (t = console).warn.apply(t, ["".concat(location.href, " [").concat(this._prefix, "] [").concat(this._storeId, "] [").concat(this._uuid, "] [").concat((new Date).toISOString(), "] ").concat(e, " ")].concat(n)), this._isDev || this.sendToServer.apply(this, ["[".concat((new Date).toISOString(), " - ").concat(__VER__, "] ").concat(e), 1].concat(n)) } }, { key: "error", value: function (e) { for (var t, r = arguments.length, n = new Array(r > 1 ? r - 1 : 0), o = 1; o < r; o++)n[o - 1] = arguments[o]; (t = console).error.apply(t, ["".concat(location.href, " [").concat(this._prefix, "] [").concat(this._storeId, "] [").concat(this._uuid, "] [").concat((new Date).toISOString(), "] ").concat(e, " ")].concat(n)), this._isDev || this.sendToServer.apply(this, ["[".concat((new Date).toISOString(), " - ").concat(__VER__, "] ").concat(e), 2].concat(n)) } }, { key: "debug", value: function (e) { for (var t = arguments.length, r = new Array(t > 1 ? t - 1 : 0), n = 1; n < t; n++)r[n - 1] = arguments[n]; var o; this._debugEnabled && (o = console).log.apply(o, ["".concat(location.href, " [").concat(this._prefix, "] [").concat(this._storeId, "] [").concat(this._uuid, "] [").concat((new Date).toISOString(), "] ").concat(e, " ")].concat(r)); this._isDev || this.sendToServer.apply(this, ["[".concat((new Date).toISOString(), " - ").concat(__VER__, "] ").concat(e), 0].concat(r)) } }, { key: "sendToServer", value: function (e, t) { var r = new XMLHttpRequest; r.open("POST", "/services/utilities/beaver.svc/log", !0), r.setRequestHeader("Content-Type", "application/json"); for (var n = "", o = arguments.length, a = new Array(o > 2 ? o - 2 : 0), i = 2; i < o; i++)a[i - 2] = arguments[i]; try { n = JSON.stringify.apply(JSON, _toConsumableArray(a || "")) } catch (e) { } "{}" === n && (n = JSON.stringify.apply(JSON, a.concat([Object.getOwnPropertyNames.apply(Object, a)]))), void 0 === n && (n = ""); var c = { shopkeeper: this._storeId, action: "RIDGE#CLIENT#" + this._prefix, errorlevel: t, type: "DEBUG_ID", typeid: this._uuid, message: e + " ".concat(n) }, s = JSON.stringify({ log: c }); r.send(s); var u = this; r.onload = function () { 200 !== r.status && console.error("Error in sendToServer. Status ".concat(r.status, ":").concat(r.statusText)) }, r.onerror = function () { }, r.ontimeout = function () { console.error("Error in sendToServer ontimeout handler. ResponseText: [".concat(r.responseText, "]. Status: [").concat(r.status, "]")) } } }]), e }();
    </script>
    <script src="/javascript/reusable/axios.js?v=7c7f2e13ba172f1bea56a6ffa1d86da7"></script>
    
        <title>StyleZ 360 Control Panel</title>
        <link rel="icon" sizes="192x192" id="freewebstore_cp_favicon" href="//d11fdyfhxcs9cr.cloudfront.net/design_media/freewebstore/logo/favicon-fws_opt.png">
        <meta name="theme-color" content="#20b7e6">
        <meta name="msapplication-navbutton-color" content="#3bf10d">
        <meta name="apple-mobile-web-app-status-bar-style" content="#3bf10d">
        <link rel="stylesheet" type="text/css" href="/css/cp_theme/fws_pink.css?v=778001f3d9892ab88bf1456b10f9ced5" />
        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-44336959-1"></script>
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
    

    <link rel="stylesheet" type="text/css" href="/css/cp_theme/base_elements.css?v=9638a3688f9b63c14d96422490725e3a" />
    <link rel="stylesheet" type="text/css" href="/css/cp_theme/light.css?v=fcf069b46cf0753ce46bd8ce9240c60f" />
    <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:700" rel="stylesheet" />

    <script>
        var storeCurrency;
        var packageTypeId = 0;
        var featuredManual = "0";
    </script>
    <link rel="stylesheet" type="text/css" href="//d11fdyfhxcs9cr.cloudfront.net/design_media/freewebstore/fonts/stylesheet.min.css" /><link href="https://fonts.googleapis.com/css?family=Raleway&amp;display=swap" rel="stylesheet" />
    <script src="https://use.fontawesome.com/4c2ebf00cc.js"></script>

    <script src="/javascript/reusable/jquery-1.11.3.min.js?v=f1b904c2136d1ed15438bee154a6b7b7"></script>
    <script src="https://cdn.polyfill.io/v3/polyfill.min.js"></script>
    <script src="/javascript/js-cookie/js.cookie.js?v=6d7222a7d9c6b29d0a294ae647ce3726"></script>
    <script src="/javascript/utilities.js?v=28dab99e208826eb8f909055e8520c20"></script>
    <script src="/javascript/reusable/purify.min.js?v=70b4e64b071ed24804f2f6fb1d2ec6dc"></script>
    <script src="/javascript/reusable/cleanxss.js?v=a14ec8b27e4cd556fa42bab74e6a0265"></script>


    
    <link rel="stylesheet" type="text/css" href="/css/editor/editor.css?v=8bda7c4a127aecefe4ac3fc29394ecc2" />
    <link rel="stylesheet" type="text/css" href="/css/reusable.css?v=eaa50f3de1f76b2c78efdde3a5d65ec8" />
    <link rel="stylesheet" type="text/css" href="/javascript/dokajs/pintura.css?v=a8be7ac98ae1d25c199a39215e2e2da1" />
    <script src="/javascript/dokajs/pintura-umd.js?v=ecd55fbf7b3648bcab6b06b1a246c766"></script>
    <script src="javascript/Sortable.min.js?v=d1fb67dba04f4ec5e291b8d42c4cd5af"></script>
    <script src="javascript/reusable/pagination.js?v=6318792d996037633970e8fc4a866af3"></script>
    <script src="javascript/reusable/accountingCurrency.js?v=59aeff6efc6b6faf255de5656215d0eb"></script>
    <script src="/javascript/inline-editor/inline-editor.js?v=02b75a3c40da1039689af32b1e2bf89c"></script>
    <script>
        var storeId = 733006;
        var storeCurrency = "USD";
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
    </script>

<title>

</title></head>
<body>
    <script src="/javascript/reusable/preload.js?v=877faf1f54a23b1db502fd4462437da9"></script>
    <form method="post" action="./editor.aspx" id="form1">
<div class="aspNetHidden">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="65FCmByQ4dA+GxI+vQ4GxNzv6bTLhK8ZJhtjEm6QASXb9Ea/PTvHpNnESQCTEvro/Rp43i+PTkb6XUy34oBxLzKJ+D+6S7+mSAXRdrAa3pc1C9y7pUW3AWrE9iHiWf/sS2cRlOizkdQ6Rg1CoOqfIQ==" />
</div>

<div class="aspNetHidden">

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="311D9F70" />
</div>
    <div>
        

    <div id="editor_loader">
        <div id="editor_loader_inner">
            <div class="lds-roller"><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div></div>
            <div id="editor_loader_text">Launching...</div>
        </div>
    </div>


    <div id="editor_whole">


    <!-- EDITOR HEADER -->
        <div id="editor_header">

        <div class="editor_header_nav">

            <a id="editor_header_nav_item_back" class="editor_header_nav_item" href="/design.aspx" title="Exit Editor">
                <i class="fa fa-caret-left"></i><span class="editor_header_nav_item_title">Exit</span>
            </a>

            <div id="editor_header_nav_item_page-menu" class="editor_header_nav_item editor_header_nav_item_has_dropdown">
                <div id="editor_header_pages_menu_selected" class="editor_header_nav_item_dropdown_title" onclick="toggleHeaderMenu('pages')" title="Home page"><span id="editor_header_pages_menu_selected_text">Home page</span><i class="fa fa-caret-down"></i></div>
                <div class="editor_header_nav_item_dropdown" data-type="pages">
                    <div id="editor_header_nav_item_dropdown_pages_list"></div>
                    <div class="editor_header_nav_item_dropdown_item" onclick="openPanelToggle('add-new-page');"><i class="fa fa-plus"></i><span>Add New Page</span></div>
                    <div class="editor_header_nav_item_dropdown_item" onclick="openPanelToggle('manage-pages');"><i class="fa fa-cog"></i><span>Manage Pages</span></div>
                </div>
            </div>

            <div id="editor_header_nav_item_add" class="editor_header_nav_item editor_header_nav_item_has_dropdown" title="Add Sections and Pages">
                <div class="editor_header_nav_item_dropdown_title" onclick="toggleHeaderMenu('add')"><i class="fa fa-plus" aria-hidden="true"></i><span class="editor_header_nav_item_title">Add</span></div>
                <div class="editor_header_nav_item_dropdown" data-type="add">
                    <div class="editor_header_nav_item_dropdown_item" onclick="openPanelToggle('add-new-section');"><span>Section to Page</span></div>
                    <div class="editor_header_nav_item_dropdown_item" onclick="openPanelToggle('add-new-page');"><span>Page</span></div>
                </div>
            </div>

        </div>

        <div class="editor_header_nav">

            <div id="editor_header_nav_item_publish" class="editor_header_nav_item" title="Publish Store">
                <div class="editor_header_nav_item_dropdown_title" onclick="openPanelToggle('vacation-mode');"><i class="fa fa-star" aria-hidden="true"></i><span class="editor_header_nav_item_title">Publish Store</span></div>
            </div>

            <div id="editor_header_nav_item_preview" class="editor_header_nav_item" title="Preview Store">
                <div class="editor_header_nav_item_dropdown_title" onclick="previewStore();"><i class="fa fa-eye" aria-hidden="true"></i><span class="editor_header_nav_item_title">Preview</span></div>
            </div>

            <div id="editor_header_nav_item_translate" class="editor_header_nav_item" title="Translate">
                <div class="editor_header_nav_item_dropdown_title" onclick="openLanguageModal()"><i class="fa fa-language" aria-hidden="true"></i><span class="editor_header_nav_item_title">ABC</span></div>
            </div>

            <div id="editor_header_nav_item_design" class="editor_header_nav_item editor_header_nav_item_has_dropdown" title="Edit Colors, Fonts, and More...">
                <div class="editor_header_nav_item_dropdown_title" onclick="toggleHeaderMenu('design')"><i class="fa fa-paint-brush" aria-hidden="true"></i><span class="editor_header_nav_item_title">Design</span></div>
                <div class="editor_header_nav_item_dropdown" data-type="design">
                    <div class="editor_header_nav_item_dropdown_item" onclick="openPanelToggle('colors');"><span>Colors</span></div>
                    <div id="editor_header_nav_item_dropdown_item_background_button" class="editor_header_nav_item_dropdown_item" onclick="openPanelToggle('background');"><span>Background</span></div>
                    <div class="editor_header_nav_item_dropdown_item" onclick="openPanelToggle('fonts');"><span>Fonts</span></div>
                    <div class="editor_header_nav_item_dropdown_item" onclick="openPanelToggle('image-graphics');"><span>Image Graphics</span></div>
                    <div class="editor_header_nav_item_dropdown_item" onclick="openPanelToggle('custom-css');"><span>Custom CSS</span></div>
                    <div class="editor_header_nav_item_dropdown_item" onclick="openPanelToggle('age-verification');"><span>Age Verification</span></div>
                    <div class="editor_header_nav_item_dropdown_item" onclick="openPanelToggle('vacation-mode');"><span>Vacation Mode</span></div>
                    <a class="editor_header_nav_item_dropdown_item" href="/design_switch_design.aspx" onclick="externalLinkIconAnimation(this);"><span><i class="fa fa-external-link" aria-hidden="true"></i>Switch Themes</span></a>
                </div>
            </div>
        </div>

    </div>
    <!-- END EDITOR HEADER -->

        

        <div id="editor_body">

        <!-- EDITOR IFRAME -->
             <div id="iframe_scroll_wrapper">
                <div id="iframe_browser_header">
                    <div id="iframe_browser_header_loader"></div>
                    <div id="iframe_browser_header_status" onclick="openPanelToggle('vacation-mode');">
                        <div id="iframe_browser_header_status_which" data-status="live">
                            <span id="iframe_browser_header_status_preview_info">You are currently viewing your store in Preview mode. This means any change you see here isn't live until you Save.</span>
                            <span id="iframe_browser_header_status_which_text">Live</span>
                        </div>
                    </div>
                    <div id="iframe_browser_header_url_bar">
                        <div id="iframe_browser_header_url_container">
                            <div id="iframe_browser_header_url_favicon" onclick="openPanelToggle('favicon');"><i class="fa fa-circle-o-notch fa-spin color_primary"></i></div>
                            <span id="iframe_browser_header_url_https"><i class="fa fa-lock" aria-hidden="true"></i></span>
                            <span id="iframe_browser_header_url_link"></span>
                        </div>
                        <a href="/marketing_domains.aspx" id="iframe_browser_header_url_connect" class="color_primary">Connect <span id="iframe_browser_header_url_connect_your">Your</span> Domain</a>
                    </div>
                    <div id="iframe_browser_header_responsive">
                        <div id="iframe_browser_header_responsive_which" onclick="toggleIframeResponsiveMenu();"><i class="fa fa-desktop" aria-hidden="true"></i></div>
                        <div id="iframe_browser_header_responsive_menu">
                            <div class="iframe_browser_header_responsive_menu_item" data-type="mobile" onclick="toggleIframeResponsive('mobile');"><i class="fa fa-mobile" aria-hidden="true"></i><span>Mobile</span></div>
                            <div class="iframe_browser_header_responsive_menu_item iframe_browser_header_responsive_menu_item_active" data-type="desktop" onclick="toggleIframeResponsive('desktop');"><i class="fa fa-desktop" aria-hidden="true"></i><span>Desktop</span></div>
                        </div>
                    </div>

                </div>
                <iframe id="theme_editor_iframe"></iframe>
            </div>
        <!-- END EDITOR IFRAME -->

            

        <!-- EDITOR PANEL -->

            <div id="editor_panel">
                
                <div id="editor_panel_inner">

                    <div id="editor_panel_header">
                        <div id="editor_panel_header_title"></div>
                        <div id="editor_panel_header_buttons">
                            <a id="editor_panel_header_buttons_item_popup" class="editor_panel_header_buttons_item" onclick="editPanelWindowToggle();"><i class="fa fa-window-restore"></i></a>
                            <a id="editor_panel_header_buttons_item_close" class="editor_panel_header_buttons_item" onclick="cancelEditor();"><i class="fa fa-times"></i></a>
                        </div>
                    </div>

                    <div id="editor_panel_loader">
                        <div class="lds-roller"><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div></div>
                        <div id="editor_panel_loader_text">Launching...</div>
                    </div>

                    <div id="editor_panel_error">
                        <div class="editor_info_panel" data-type="error">
                            <div class="editor_info_panel_header">
                                <div class="editor_info_panel_title"><i class="fa fa-exclamation-triangle"></i>Oops!</div>
                            </div>
                            <div class="editor_info_panel_details">
                                <div id="editor_panel_error_message_load">
                                    <p>It looks like something went wrong and we were unable to load this section.</p>
                                    <p>Please <a class="button button_red" onclick="errorOccurredLoadAgain();">try again</a> or <a class="link_color_red" href="/support_new_ticket.aspx">contact support</a>.</p>
                                </div>
                                <div id="editor_panel_error_message_save">
                                    <p>It looks like something went wrong and we were unable to save your changes.</p>
                                    <p>Please <a class="button button_red" onclick="errorOccurredSaveAgain();">save again</a> or <a class="link_color_red" href="/support_new_ticket.aspx">contact support</a>.</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    

<style>
    #editor_panel_chosen_font_container{
        background-color: #f5f5f7;
        padding: 20px;
        text-align: center;
        position: relative;
    }

    #editor_panel_chosen_font_title{
        position: absolute;
        top: -12.5px;
        left: 0; right: 0;
        text-align: center;
    }

    #editor_panel_chosen_font_title span{
        display: inline-block;
        line-height: 25px;
        border-radius: 4px;
        color: #FFF;
        padding: 0 10px;
    }

    #editor_panel_chosen_font{
        font-size: 1.4rem;
        font-weight: bold;
    }


    #editor_panel_all_fonts{
        margin-top: 30px;
        display: flex;
        flex-wrap: wrap;
        justify-content: space-around;
    }

    .theme_editor_font_item{
        background-color: #f5f5f7;
        padding: 20px;
        text-align: center;
        margin-bottom: 10px;
        border: 1px solid #f5f5f7;
        position: relative;
        cursor: pointer;
        transition: 0.4s;
        width: 100%;
        max-width: 310px;
    }

    .theme_editor_font_item:hover{
        box-shadow: 0 2px 5px -2px #757575;
    }

    .theme_editor_font_item.theme_editor_font_item_selected{
        border: 1px solid #ddd;
    }

    .theme_editor_font_item_selected_visual{
        position: absolute;
        top: -12.5px;
        left: 0; right: 0;
        text-align: center;
        opacity: 0;
        visibility: hidden;
    }

    .theme_editor_font_item.theme_editor_font_item_selected .theme_editor_font_item_selected_visual{
        opacity: 1;
        visibility: visible;
    }

    .theme_editor_font_item_selected_visual span{
        display: inline-block;
        line-height: 25px;
        border-radius: 4px;
        color: #FFF;
        padding: 0 10px;
    }

    .theme_editor_font_item_title{
        font-size: 1.2rem;
    }

</style>

<div class="editor_panel_item" data-type="fonts">

    <div id="editor_panel_chosen_font_container">
        <div id="editor_panel_chosen_font_title"><span class="background_primary">Current Font</span></div>
        <div id="editor_panel_chosen_font"></div>
    </div>

    <div id="editor_panel_all_fonts"></div>

    <div class="align_center">
        <a id="loadMoreFonts_button" class="button button_primary" onclick="loadMoreFonts();">Load More Fonts</a>
    </div>

    <div class="editor_info_panel margint40" data-type="info">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title">Info</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-up" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_subtitle">What are Fonts?</div>
            <p>This section allows you to change the font of your text on your store.</p>
            <p>There are over 1000 fonts available with more added monthly.</p>
        </div>
    </div>

    <div class="editor_info_panel margint20" data-type="help">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title">Help</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-up" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_subtitle">Font Not Available</div>
            <p>Unfortunately, if the font you want to use isn't in the list you won't be able to use it. However, there are over 1000 fonts available to choose from so you should be able to find a similar one.</p>
            <div class="editor_info_panel_subtitle">Font Not Applying To Some Text</div>
            <p>If a font applies to some, but not all text on your store, it's likely that this text font isn't editable.</p>
            <p>Contact our support team who might be able to provide further assistance.</p>
        </div>
    </div>

</div>

<script>

    var defaultFonts = [
        "Courier New",
        "Garamond",
        "Arial",
        "Georgia",
        "Tahoma",
        "Times New Roman",
        "Verdana"
    ];

    var editorFontsLoaded = false;
    var allGoogleFonts;
    var currentFontLoadPage = 0;
    function buildFontsPanel() {

        if (editorFontsLoaded == false) {

            var font = store.design.font;
            var visibleFont = font;

            if (font != null) {
                if (font.startsWith("//fonts.googleapis.com")) {
                    var gFontBreakdown = font.match(/\=.+?\:/g);
                    gFontBreakdown = gFontBreakdown[0].replace(/[=]/g, '')
                    gFontBreakdown = gFontBreakdown.replace(/[:]/g, '');
                    gFontBreakdown = gFontBreakdown.replace(/[+]/g, ' ');
                    visibleFont = gFontBreakdown;


                    var googleFontFile = document.createElement("link")
                    googleFontFile.setAttribute("rel", "stylesheet")
                    googleFontFile.setAttribute("type", "text/css")
                    googleFontFile.setAttribute("href", font)

                    document.getElementsByTagName("head")[0].appendChild(googleFontFile);

                }
            } else {
                if (storeDesign.font != null) {
                    visibleFont = storeDesign.font;
                }
            }

            document.getElementById("editor_panel_chosen_font").style.fontFamily = visibleFont;
            document.getElementById("editor_panel_chosen_font").innerText = visibleFont;



            ajaxGetUtil("https://www.googleapis.com/webfonts/v1/webfonts?key=AIzaSyDK4Jz71F7DQCrUhXYaF3xgEXoQGLDk5iE&sort=popularity", function (data) {
                allGoogleFonts = data.items;
                console.log(allGoogleFonts)
                addDefaultFontList();
                if (allGoogleFonts != null) {
                    buildFontList(currentFontLoadPage);
                } else {
                    hideById("loadMoreFonts_button");
                }

                

                /*defaultFonts.forEach(function (font) {
                    $('#editor_panel_all_fonts').append(fontItemHtml({ family: font, isGoogleFont: false }));
                });*/

                document.querySelector(".editor_panel_item[data-type='fonts']").classList.add("editor_panel_item_active");
                hideById("editor_panel_loader");

                
            });


            editorFontsLoaded = true;

        } else {
            document.querySelector(".editor_panel_item[data-type='fonts']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");
        }

    }

    function addDefaultFontList() {

        var markup = '';

        for (var i = 0; i < defaultFonts.length; i++) {

            var item = '<div class="theme_editor_font_item" data-isgooglefont="false" data-font="' + defaultFonts[i] + '" onclick="selectFont(\'' + defaultFonts[i] + '\');">';
            item += '<div class="theme_editor_font_item_selected_visual"><span class="background_primary">Selected Font</span></div>';
            item += '<div class="theme_editor_font_item_title" style="font-family: ' + defaultFonts[i] + ';">' + defaultFonts[i] + '</div>';
            item += '</div>';

            markup += item;
        }

        $('#editor_panel_all_fonts').append(markup)

    }

    function buildFontList(page) {
        console.log("shoudl build more");
        var pageLimit = page + 10;
        if (allGoogleFonts != null) {
            var allGoogleFontsItems = allGoogleFonts.slice(page, pageLimit);
            console.log(allGoogleFontsItems);
            var newGoogleFileUrl = "https://fonts.googleapis.com/css2";

            var markup = '';

            for (var i = 0; i < allGoogleFontsItems.length; i++) {

                var item = '<div class="theme_editor_font_item" data-isgooglefont="true" data-font="' + allGoogleFontsItems[i].family + '" onclick="selectFont(\'' + allGoogleFontsItems[i].family + '\');">';
                item += '<div class="theme_editor_font_item_selected_visual"><span class="background_primary">Selected Font</span></div>';
                item += '<div class="theme_editor_font_item_title" style="font-family: ' + allGoogleFontsItems[i].family + ';">' + allGoogleFontsItems[i].family + '</div>';
                item += '</div>';


                if (i == 0) {
                    newGoogleFileUrl += "?family=" + allGoogleFontsItems[i].family;
                } else {
                    newGoogleFileUrl += "&family=" + allGoogleFontsItems[i].family;
                }

                markup += item;
            }

            var googleFontFileAdditional = document.createElement("link")
            googleFontFileAdditional.setAttribute("rel", "stylesheet")
            googleFontFileAdditional.setAttribute("type", "text/css")
            googleFontFileAdditional.setAttribute("href", newGoogleFileUrl);
            document.getElementsByTagName("head")[0].appendChild(googleFontFileAdditional);

            //console.log(markup)

            $('#editor_panel_all_fonts').append(markup);
        }

    }

    function loadMoreFonts() {
        console.log("load more");
        currentFontLoadPage = currentFontLoadPage + 10;
        buildFontList(currentFontLoadPage);
    }

    function selectFont(font) {

        document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");

        if (document.querySelector(".theme_editor_font_item_selected") != null) {
            document.querySelector(".theme_editor_font_item_selected").classList.remove("theme_editor_font_item_selected");
        }

        document.querySelector(".theme_editor_font_item[data-font='" + font + "']").classList.add("theme_editor_font_item_selected");

        cssBaseAttributes.font = font

        runBaseCssFileChange();
    }

    function cancelFonts() {
        if (document.querySelector(".theme_editor_font_item_selected") != null) {
            document.querySelector(".theme_editor_font_item_selected").classList.remove("theme_editor_font_item_selected");
        }
    }

    function saveFonts() {
        console.log("Save Font");

        var selectedFont = document.querySelector(".theme_editor_font_item_selected").getAttribute("data-font");
        var isGoogleFont = document.querySelector(".theme_editor_font_item_selected").getAttribute("data-isgooglefont");

        var fontUrl = null;

        if (isGoogleFont == "true") {
            allGoogleFonts.filter(function (obj) {

                if (obj.family == selectedFont) {

                    var apiUrl = [];
                    apiUrl.push('https://fonts.googleapis.com/css?family=');
                    apiUrl.push(obj.family.replace(/ /g, '+'));
                    if (obj.variants.length) {
                        var variants = obj.variants.map(function (item) { return item; })
                        apiUrl.push(':')
                        apiUrl.push(variants)
                    }

                    if (obj.subsets.length) {
                        var variants = obj.subsets.map(function (item) { return item; })
                        apiUrl.push('&subset=')
                        apiUrl.push(variants)
                    }

                    fontUrl = apiUrl.join('');

                    finalizeSaveFont(selectedFont, fontUrl);

                }

            });

        } else {
            finalizeSaveFont(selectedFont, fontUrl);
        }

    }

    function finalizeSaveFont(selectedFont, fontUrl) {

        var fontSaveData = {
            'shopkeeper': storeId,
            'apiUrl': fontUrl,
            'newFont': selectedFont
        }

        fontSaveData = JSON.stringify(fontSaveData);

        axiosPost('./services/theme_editor/Fonts.svc/PostGoogleFont', fontSaveData).then(function (res) {

            document.getElementById("editor_panel_chosen_font").style.fontFamily = selectedFont;
            document.getElementById("editor_panel_chosen_font").innerText = selectedFont;
            document.querySelector(".theme_editor_font_item_selected").classList.remove("theme_editor_font_item_selected");

            editorSaved();

        }).catch(function () {

            console.log("ERROR:Fonts:PostGoogleFont");
            typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
            errorOccurred("save", "fonts", "PostGoogleFont");

        }).then(function () {

        });

    }

</script>
                    

<style>
    #addPages_upgrade_info_panel{
        display: none;
    }
</style>

<div class="editor_panel_item" data-type="add-new-page">

    <div class="editor_panel_widget_options" id="editor_panel_widget_options_pages-add"></div>

</div>

<script>

    var pagesAvailableToAdd = [
        {
            "name": "Standard Page",
            "icon": "fa-file-text-o",
            "desc": "Add a standard non-product page, similar to the About page.",
            "link": null,
            "onclick": "addNewNormalPage();",
            "premium": false
        },
        {
            "name": "Link",
            "icon": "fa-link",
            "desc": "Add internal or external links to different pages and websites.",
            "link": null,
            "onclick": "addNewExternalLinkPage();",
            "premium": false
        },
        {
            "name": "FAQs",
            "icon": "fa-list-ol",
            "desc": "Add a FAQ page to provide questions and answers for your customers.",
            "link": null,
            "onclick": "addNewPageFaq();",
            "premium": false,
            "status": "New"
        },
        {
            "name": "Instagram Gallery",
            "icon": "fa-instagram",
            "desc": "Showcase your Instagram gallery on an internal page.",
            "link": "/manage_pages_instagramv3.aspx",
            "premium": false,
            "app": true
        },
        {
            "name": "Blog",
            "icon": "fa-rss",
            "desc": "Write about your store, products, and lifestyle.",
            "link": "/app/storeblog/index.aspx",
            "premium": true
        },
        {
            "name": "Error Pages",
            "icon": "fa-exclamation-triangle",
            "desc": "Inform users of whats happened if they experience an issue.",
            "link": "/app/custom404/index.aspx",
            "premium": true
        },
    ]

    var buildPagesAddPanelLoaded = false;
    function buildPagesAddPanel() {

        if (buildPagesAddPanelLoaded == false) {

            var pagesBusiess = true;
            if (checkIfPremium() == false) {
                pagesBusiess = false;
            }

            var pageTypesHtml = '';

            for (var i = 0; i < pagesAvailableToAdd.length; i++) {

                var link = '';

                if (pagesAvailableToAdd[i].link != null) {
                    link = 'href="' + pagesAvailableToAdd[i].link + '"';
                }

                var onclick = '';
                if (pagesAvailableToAdd[i].onclick != null) {
                    onclick = 'onclick="' + pagesAvailableToAdd[i].onclick + '"';
                }

                var pagesLockIcon = '';
                if (pagesBusiess == false && pagesAvailableToAdd[i].premium == true) {
                    link = 'href="/upgrade2.aspx"';
                    pagesLockIcon = '<div class="editor_panel_widget_options_item_top_right" data-connected="loading">Premium</div>';
                }

                if (pagesAvailableToAdd[i].app != null && pagesAvailableToAdd[i].app == true) {
                    pagesLockIcon = '<div class="editor_panel_widget_options_item_top_right" data-connected="loading">App</div>';
                }

                if (pagesAvailableToAdd[i].status != null && pagesAvailableToAdd[i].status.length > 0) {
                    pagesLockIcon = '<div class="editor_panel_widget_options_item_top_right" data-connected="true">New</div>';
                }


                var item = '<a ' + link + ' ' + onclick + ' class="editor_panel_widget_options_item">';
                        item += pagesLockIcon
                        item += '<div class="editor_panel_widget_options_item_left">';
                            item += '<i class="fa ' + pagesAvailableToAdd[i].icon + '" aria-hidden="true"></i>';
                        item += '</div>';
                        item += '<div class="editor_panel_widget_options_item_right">';
                            item += '<div class="editor_panel_widget_options_item_right_title">' + pagesAvailableToAdd[i].name + '</div>';
                            item += '<div class="editor_panel_widget_options_item_right_info">' + pagesAvailableToAdd[i].desc + '</div>';
                        item += '</div>';
                    item += '</a>';

                pageTypesHtml += item;

            }

            document.getElementById("editor_panel_widget_options_pages-add").innerHTML = pageTypesHtml;

            setTimeout(function () {
                document.querySelector(".editor_panel_item[data-type='add-new-page']").classList.add("editor_panel_item_active");
                hideById("editor_panel_loader");
            }, 1000);

            buildPagesAddPanelLoaded = true;

        } else {

            document.querySelector(".editor_panel_item[data-type='add-new-page']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

        }

    }

    function addNewNormalPage() {
        thePageIsNew = true;
        addNewPageType = 11;
        openPanelToggle("edit-page");
    }

    function addNewExternalLinkPage() {
        thePageIsNew = true;
        addNewPageType = 13;
        openPanelToggle("edit-page");
    }

    function addNewPageFaq() {
        selectPageFaqTemplate(true);
    }

</script>
                    

<style>
    .manage_pages_item_container:not(:first-child){
        margin-top: 30px;
    }

    .manage_pages_item_title{
        font-weight: bold;
    }

    .manage_pages_item_list{
        border-left: 5px solid #ddd;
        margin-top: 10px;
        position: relative;
    }

    .manage_pages_item_list_disabled::after {
        display: flex;
        font-family: FontAwesome;
        content: '\f05e';
        position: absolute;
        left: 0;
        right: 0;
        width: 100%;
        margin: 0 auto;
        top: 50%;
        transform: translateY(-50%);
        text-align: center;
        z-index: 1001;
        font-size: 1.5rem;
        height: 100%;
        background-color: rgb(241 241 241 / 50%);
        flex-wrap: nowrap;
        justify-content: center;
        align-items: center;
    }

    .manage_pages_item_list_empty{
        height: 35px;
        border-left: none;
    }

    .manage_pages_item_list_empty::before{
        content: 'Drop Pages Here';
        position: absolute;
        z-index: 4;
        height: 35px;
        line-height: 20px;
        padding: 5px 0;
        left: 0px;
        right: 0px;
        text-align: center;
        border: 2px dashed #ddd;
        color: #b9b8b8;
        white-space: pre;
    }


    .manage_pages_item_list_item{
        display: flex;
        flex-wrap: nowrap;
        justify-content: space-between;
        height: 35px;
        align-items: center;
        padding-right: 10px;
    }

    .manage_pages_list_item_ghost{
        background: rgba(51, 158, 255, 0.3);
        font-weight: bold;   
    }

    .manage_pages_item_list_item_left, manage_pages_item_list_item_right{
        display: flex;
        flex-wrap: nowrap;
        height: 35px;
        align-items: center;
    }

    .manage_pages_list_item_ghost .manage_pages_item_list_item_move_icon i{
        color: #212121 !important;
    }

    .manage_pages_item_list_item_move_icon, .manage_pages_item_list_item_edit_icon{
        width: 35px;
        height: 35px;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .manage_pages_item_list_item_name{
        height: 35px;
        line-height: 35px;
    }

    .manage_pages_item_list_item:not(.manage_pages_item_list_item_unmoveable) .manage_pages_item_list_item_move_icon{
        cursor: grab;
    }

    .manage_pages_item_list_item_edit_icon:hover{
        cursor: pointer;
    }

    .manage_pages_item_list_item_move_icon i, .manage_pages_item_list_item_edit_icon i{
        position: relative;
        top: 0px;
        color: #ddd;
        transition: 0.25s;
    }

    .manage_pages_item_list_item:not(.manage_pages_item_list_item_unmoveable):hover .manage_pages_item_list_item_move_icon i,
    .manage_pages_item_list_item:hover .manage_pages_item_list_item_edit_icon i{
        color: #339eff;
    }



</style>

<div class="editor_panel_item" data-type="manage-pages">
    
    <div class="manage_pages_item_container">
        <div class="manage_pages_item_title">Main Navigation</div>
        <div id="manage_pages_item_list_main" class="manage_pages_item_list"></div>
    </div>

    <div class="manage_pages_item_container">
        <div class="manage_pages_item_title">Additional Navigation</div>
        <div id="manage_pages_item_list_additional" class="manage_pages_item_list"></div>
    </div>

    <div class="manage_pages_item_container">
        <div class="manage_pages_item_title">Hidden Pages</div>
        <div id="manage_pages_item_list_hidden" class="manage_pages_item_list"></div>
    </div>

    <div class="manage_pages_item_container">
        <div class="manage_pages_item_title">Core Pages</div>
        <div id="manage_pages_item_list_core" class="manage_pages_item_list"></div>
    </div>

    <div class="editor_info_panel margint40" data-type="translations">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title"><i class="fa fa-language" aria-hidden="true"></i>Edit Labels</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-down" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_details_tokens_list"></div>
        </div>
    </div>

</div>

<script>


    var buildManagePagesPanelLoaded = false;
    function buildManagePagesPanel() {

        if (buildManagePagesPanelLoaded == false) {

            var managePagesListMain = '';
            var managePagesListAdditional = '';
            var managePagesListHidden = '';
            var managePagesListCore = '';

            for (var i = 0; i < result.pages.length; i++) {

                if (result.pages[i].type != 8 && result.pages[i].type != 12) {

                    var corePages = [4, 5, 12, 8, 9, 10];

                    var icon = '<i class="fa fa-lock"></i>';
                    var unmoveable = 'manage_pages_item_list_item_unmoveable';

                    var editIcon = '<i class="fa fa-pencil"></i>';
                    var editIconAction = 'onclick="openPageEdit(\'' + result.pages[i].id + '\', \'' + result.pages[i].title + '\', \'' + result.pages[i].type + '\')"';

                    if (corePages.indexOf(result.pages[i].type) == -1 && result.pages[i].type != 1) {
                        icon = '<i class="fa fa-arrows"></i>';
                        unmoveable = '';
                    }

                    var blockSections = '';
                    if (result.pages[i].type == 2) {
                        blockSections = 'page_move_block_hidden';
                    }
                    if (result.pages[i].type == 3 || result.pages[i].type == 6) {
                        blockSections = 'page_move_block_additional page_move_block_hidden';
                        icon = '<i class="fa fa-arrows-v"></i>';
                    }

                    if (result.pages[i].type == 3) {
                        editIconAction = 'onclick="openBasketEdit(\'' + result.pages[i].id + '\', \'' + result.pages[i].title + '\', \'' + result.pages[i].type + '\')"';
                    }

                    if (result.pages[i].type == 6) {
                        editIconAction = 'onclick="loadEditorIframe(\'' + result.pages[i].id + '\', \'' + result.pages[i].title + '\'); openPanelToggle(\'edit-contact-page\');"';
                    }

                    var item = '<div class="manage_pages_item_list_item ' + unmoveable + ' ' + blockSections + '" data-id="' + result.pages[i].id + '">';
                            item += '<div class="manage_pages_item_list_item_left">';
                                    item += '<div class="manage_pages_item_list_item_move_icon">' + icon + '</div>';
                                    item += '<div class="manage_pages_item_list_item_name">' + result.pages[i].title + '</div>';
                            item += '</div>';
                            item += '<div class="manage_pages_item_list_item_left">';
                                item += '<div class="manage_pages_item_list_item_edit_icon" ' + editIconAction + '>' + editIcon + '</div>';
                            item += '</div>';
                        item += '</div>';



                    // Add to relevant sections
                
                    if (corePages.indexOf(result.pages[i].type) >= 0) {
                        managePagesListCore += item;
                    } else if (result.pages[i].navigation == true) {
                        managePagesListMain += item;
                    } else if (result.pages[i].navigation == false && result.pages[i].hidden == false) {
                        managePagesListAdditional += item;
                    } else if (result.pages[i].hidden == true) {
                        managePagesListHidden += item;
                    }

                }
            }

            document.getElementById("manage_pages_item_list_main").innerHTML = managePagesListMain;
            document.getElementById("manage_pages_item_list_additional").innerHTML = managePagesListAdditional;
            document.getElementById("manage_pages_item_list_hidden").innerHTML = managePagesListHidden;
            document.getElementById("manage_pages_item_list_core").innerHTML = managePagesListCore;

            buildPagesManagePanelSortable();

            setTimeout(function () {
                document.querySelector(".editor_panel_item[data-type='manage-pages']").classList.add("editor_panel_item_active");
                hideById("editor_panel_loader");
            }, 1000);

            buildManagePagesPanelLoaded = true;

            

        } else {
            document.querySelector(".editor_panel_item[data-type='manage-pages']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");
        }

    }

    var sortablePages1;
    var sortablePages2;
    var sortablePages3;
    var sortablePages4;

    function buildPagesManagePanelSortable() {

        checkEmptyPageSections();

        var pages1SortableContainer = document.querySelector("#manage_pages_item_list_main");
        var pages2SortableContainer = document.querySelector("#manage_pages_item_list_additional");
        var pages3SortableContainer = document.querySelector("#manage_pages_item_list_hidden");
        /*var pages4SortableContainer = document.querySelector("#manage_pages_item_list_core");*/

        sortablePages1 = new Sortable(pages1SortableContainer, {
            handle: ".manage_pages_item_list_item_move_icon",
            draggable: ".manage_pages_item_list_item:not(.manage_pages_item_list_item_unmoveable)",
            ghostClass: "manage_pages_list_item_ghost",
            animation: 150,
            group: {
                name: "moveablePages"
            },
            onSort: function (evt) {
                checkEmptyPageSections();
                document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");
            },
            onChoose: function (evt) {
                checkAvailableSections(evt.item);
            },
            onEnd: function (evt) {
                removeAvailableSections();
            }
        });

        sortablePages2 = new Sortable(pages2SortableContainer, {
            handle: ".manage_pages_item_list_item_move_icon",
            draggable: ".manage_pages_item_list_item:not(.manage_pages_item_list_item_unmoveable)",
            ghostClass: "manage_pages_list_item_ghost",
            animation: 150,
            group: {
                name: "moveablePages"
            },
            onSort: function (evt) {
                checkEmptyPageSections();
                document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");
            },
            onChoose: function (evt) {
                checkAvailableSections(evt.item);
            },
            onEnd: function (evt) {
                removeAvailableSections();
            }
        });

        sortablePages3 = new Sortable(pages3SortableContainer, {
            handle: ".manage_pages_item_list_item_move_icon",
            draggable: ".manage_pages_item_list_item:not(.manage_pages_item_list_item_unmoveable)",
            ghostClass: "manage_pages_list_item_ghost",
            animation: 150,
            group: {
                name: "moveablePages"
            },
            onSort: function (evt) {
                checkEmptyPageSections();
                document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");
            },
            onChoose: function (evt) {
                checkAvailableSections(evt.item);
            },
            onEnd: function (evt) {
                removeAvailableSections();
            }
        });

    }

    function checkEmptyPageSections() {

        $(".manage_pages_item_list").each(function () {

            if ($(this).find(".manage_pages_item_list_item").length == 0) {
                $(this).addClass("manage_pages_item_list_empty");
            } else {
                $(this).removeClass("manage_pages_item_list_empty");
            }

        });

    }

    function checkAvailableSections(el) {

        if ($(el).hasClass("page_move_block_additional")) {
            $("#manage_pages_item_list_additional").addClass("manage_pages_item_list_disabled");
            sortablePages2.option("disabled", true);
        }

        if ($(el).hasClass("page_move_block_hidden")) {
            $("#manage_pages_item_list_hidden").addClass("manage_pages_item_list_disabled");
            sortablePages3.option("disabled", true);
        }

        $("#manage_pages_item_list_core").addClass("manage_pages_item_list_disabled");

    }

    function removeAvailableSections() {

        sortablePages2.option("disabled", false);
        sortablePages3.option("disabled", false);

        $("#manage_pages_item_list_additional, #manage_pages_item_list_hidden, #manage_pages_item_list_core").removeClass("manage_pages_item_list_disabled");
    }

    // Select Page To Edit
    var currentlyEditingPageType;
    var currentlyEditingPageId;
    function openPageEdit(id, title, pagetype) {

        if (currentPageId != id && pagetype != 13) {
            loadEditorIframe(id, title);
        }

        currentlyEditingPageType = pagetype.toString();
        currentlyEditingPageId = id;
        thePageIsNew = false;
        openPanelToggle("edit-page");

    }

    function openBasketEdit(id, title, pagetype) {
        currentPageId = id;
        currentPageTitle = title;

        openPanelToggle("cart");
    }

    function openProductEdit(id, title, pagetype) {
        currentPageId = id;
        currentPageTitle = title;

        openPanelToggle("product-page");
    }

    // Save Manage Pages
    function saveManagePages() {

        var order = new Array();

        var mainNav = document.querySelectorAll("#manage_pages_item_list_main .manage_pages_item_list_item");
        var additionalNav = document.querySelectorAll("#manage_pages_item_list_additional .manage_pages_item_list_item");
        var hiddenNav = document.querySelectorAll("#manage_pages_item_list_hidden .manage_pages_item_list_item");

        for (var i = 0; i < mainNav.length; i++) {
            var pg = { id: mainNav[i].getAttribute("data-id"), navigation: true, hidden: false };

            result.pages.filter(function (obj) {
                if (obj.id == mainNav[i].getAttribute("data-id")) {
                    obj.navigation = true;
                    obj.hidden = false;
                }
            });

            order.push(pg);
        }

        for (var i = 0; i < additionalNav.length; i++) {
            var pg = { id: additionalNav[i].getAttribute("data-id"), navigation: false, hidden: false };

            result.pages.filter(function (obj) {
                if (obj.id == additionalNav[i].getAttribute("data-id")) {
                    obj.navigation = false;
                    obj.hidden = false;
                }
            });

            order.push(pg);
        }

        for (var i = 0; i < hiddenNav.length; i++) {
            var pg = { id: hiddenNav[i].getAttribute("data-id"), navigation: false, hidden: true };

            result.pages.filter(function (obj) {
                if (obj.id == hiddenNav[i].getAttribute("data-id")) {
                    obj.navigation = false;
                    obj.hidden = true;
                }
            });

            order.push(pg);
        }

        var data = {
            "storeId": storeId,
            "pages": order
        };

        console.log(data);

        data = JSON.stringify(data);

        axiosPost('/services/Pages.svc/UpdatePageSet', data).then(function (data) {
            console.log("success");

            editorSaved();

        }).catch(function () {

            console.log("ERROR:ManagePages:SavePages");
            typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
            errorOccurred("save", "manage-pages", "SavePages");

        }).then(function () {

        });


    }

</script>
                    

<style>
    #editor_pages_content_external, #editor_pages_content_instagram, #editor_pages_content_offers, #editor_pages_content_normal, #editor_pages_content_faqs{
        display: none;
    }

    #editor_pages_content_instagram .editor_panel_widget_options, #editor_pages_content_faqs{
        margin-top: 20px !important;
    }

    /* FAQs */

    #modal_faq_templates_container{
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
    }

    .modal_faq_templates_item{
        text-align: center;
        margin-bottom: 20px;
    }

    .modal_faq_templates_item_name{
        font-weight: bold;
    }

    .modal_faq_templates_item_image_container{
        max-width: 100%;
        width: 250px;
        border: 1px solid #ddd;
        margin: 10px auto 0 auto;
        background-color: #f5f5f7; 
    }

    .modal_faq_templates_item_image{
        width: 100%;
    }

    .modal_faq_templates_item_button{
        margin-top: 10px;
    }

    .modal_faq_templates_item_button_selected{
        pointer-events: none;
        cursor: text;
    }


    #editor_pages_content_faqs_settings_button{
        position: relative;
        top: -5px;
    }

    #editor_pages_content_faqs_settings_button i{
        top: 0 !important;
        transition: 0.25s;
    }

    #editor_pages_content_faqs_settings_button.editor_pages_content_faqs_settings_button_active i{
        transform: rotate(-180deg);
        top: -1px !important;
    }

    #faqs_settings_container{
        padding: 5px 10px 10px 10px;
        display: none;
    }

    #faqs_settings_container.faqs_settings_container_active{
        display: block;
    }

    #faq_settings_template_visual{
        max-width: 100%;
        width: 150px;
        height: 200px;
        border: 1px solid #ddd;
        margin: 10px auto 0 auto;
        background-color: #f5f5f7;
    }

    #faq_settings_template_visual img{
        width: 100%;
    }

    #faq_settings_template_container{
        text-align: center;
        margin-top: 10px;
    }


    #faqs_new_group .panel_white{
        padding: 20px 10px;
    }


    .faqs_section_group_qanda{
        padding: 10px;
        border: 1px solid #ddd;
        padding-left: 10px;
        background-color: #f5f5f7;
        border-left: 5px solid #20b7e6;
        margin-top: 20px;
        position: relative;
    }

    .faqs_section_group_delete{
        position: absolute;
        top: 15px;
        right: 10px;
        z-index: 2;
    }

    .faqs_section_qanda_delete{
        position: absolute;
        top: 5px;
        right: 10px;
        z-index: 2;
    }

    .faqs_group_delete, .faqs_qanda_delete{
        background-color: #ea1636;
        color: #FFF;
        height: 20px;
        line-height: 20px !important;
        width: 20px;
        text-align: center;
        border-radius: 4px;
        cursor: pointer;
    }

    .faqs_group_delete:hover, .faqs_qanda_delete:hover{
        background-color: #bb112b;
    }

    .faqs_section[data-delete="true"] .faqs_qanda_delete{
        pointer-events: none !important;
        background-color: #ddd !important;
    }

    .faqs_section_group_summary, .faqs_section_group_qanda_answer{
        border: 1px solid #cfd7d9;
        width: 100%;
        max-width: 100%;
        min-height: 100px;
        border-radius: 4px;
        border: 1px solid #ddd;
        padding: 10px 20px;
        -webkit-appearance: none;
        background-color: #FFF;
        outline: none;
    }

    .editor_pages_content_delete{
        display: none;
        position: relative;
    }

    .editor_pages_content_delete_menu{
        bottom: 30px;
        right: 0;
        background-color: #FFF;
        position: absolute;
        border-bottom: 5px solid #ea1636;
        box-shadow: 0 -5px 12px 2px #949494;
        border-radius: 4px;
        padding: 10px;
        transition: 0.25s;
        z-index: 30;
        opacity: 0;
        visibility: hidden;
    }

    .editor_pages_content_delete_menu::after{
        content: '';
        display: block;
        width: 0; 
        height: 0; 
        border-left: 10px solid transparent;
        border-right: 10px solid transparent;
        border-top: 10px solid #ea1636;
        bottom: -10px;
        position: absolute;
        left: 0;
        right: 0;
        margin: 0 auto;
    }

    .editor_pages_content_delete_menu.editor_pages_content_delete_menu_active{
        opacity: 1;
        visibility: visible;
        bottom: 60px;
    }


</style>

<div class="editor_panel_item" data-type="edit-page">

    <div class="input_container">
        <label for="editor_pages_name">Page Name</label>
        <input type="text" id="editor_pages_name" placeholder="Page Name..." maxlength="30" onchange="pageEditTyping();" onpaste="pageEditTyping();" onkeyup="pageEditTyping();" />
        <div id="alert_editor_page_name" class="alert">Page Name must be at least 1 character</div>
    </div>

    <!-- Normal Page text editor -->
    <div id="editor_pages_content_normal">
        <textarea id="editor_pages_content_textarea"></textarea>

         <!-- FAQs -->
        <div id="editor_pages_content_faqs">

            <div class="hide_overflow">
                <p><strong>Your FAQs</strong><a id="editor_pages_content_faqs_settings_button" class="editor_small_button right" onclick="openFaqSettings();">FAQ Settings<i class="fa fa-caret-down marginl5" aria-hidden="true"></i></a></p>
            </div>

            <div id="faqs_settings_container" class="panel_white">
                <div class="panel_section">
                    <h3>Group Title</h3>

                    <div class="margint20"><strong>Font Weight</strong></div>
                    <div class="input_container inline_checkboxes">
                        <div class="checkbox_container">
                            <input name="faq_settings_group_title_boldnormal" type="radio" id="faq_settings_group_title_bold" checked="checked" onchange="faqSettingsChanged();" />
                            <label for="faq_settings_group_title_bold"><span>Bold</span></label>
                        </div>
                        <div class="checkbox_container">
                            <input name="faq_settings_group_title_boldnormal" type="radio" id="faq_settings_group_title_normal" onchange="faqSettingsChanged();" />
                            <label for="faq_settings_group_title_normal"><span>Normal</span></label>
                        </div>
                    </div>

                    <div class="flex_2_container">

                        <div class="input_container flex_2_item">
                            <label>Font Size</label>
                            <select id="faq_settings_group_title_fontsize" onchange="faqSettingsChanged();">
                                <option value="12">12px</option>
                                <option value="14">14px</option>
                                <option value="16">16px</option>
                                <option value="18">18px</option>
                                <option value="20">20px</option>
                                <option value="22">22px</option>
                                <option value="24">24px</option>
                                <option value="26" selected>26px</option>
                                <option value="28">28px</option>
                                <option value="30">30px</option>
                            </select>
                        </div>

                        <div class="input_container flex_2_item">
                            <label for="faq_settings_group_title_color">Color</label>
                            <input id="faq_settings_group_title_color" type="text" value="#000000" />
                        </div>

                    </div>


                </div>
                <div class="panel_section">
                    <h3>Group Summary</h3>

                    <div class="flex_2_container margint20">
                        <div class="input_container flex_2_item">
                            <label>Font Size</label>
                            <select id="faq_settings_group_summary_fontsize" onchange="faqSettingsChanged();">
                                <option value="12">12px</option>
                                <option value="14">14px</option>
                                <option value="16" selected>16px</option>
                                <option value="18">18px</option>
                                <option value="20">20px</option>
                                <option value="22">22px</option>
                                <option value="24">24px</option>
                                <option value="26">26px</option>
                                <option value="28">28px</option>
                                <option value="30">30px</option>
                            </select>
                        </div>

                        <div class="input_container flex_2_item">
                            <label for="faq_settings_group_summary_color">Color</label>
                            <input id="faq_settings_group_summary_color" type="text" value="#000000" />
                        </div>

                    </div>

                </div>
                <div class="panel_section">
                    <h3>FAQ Questions</h3>

                    <div class="flex_2_container margint20">
                        <div class="input_container flex_2_item">
                            <label>Font Size</label>
                            <select id="faq_settings_group_questions_fontsize" onchange="faqSettingsChanged();">
                                <option value="12">12px</option>
                                <option value="14">14px</option>
                                <option value="16">16px</option>
                                <option value="18">18px</option>
                                <option value="20" selected>20px</option>
                                <option value="22">22px</option>
                                <option value="24">24px</option>
                                <option value="26">26px</option>
                                <option value="28">28px</option>
                                <option value="30">30px</option>
                            </select>
                        </div>

                        <div class="input_container flex_2_item">
                            <label for="faq_settings_group_questions_color">Color</label>
                            <input id="faq_settings_group_questions_color" type="text" value="#000000" />
                        </div>
                    </div>

                </div>
                <div class="panel_section">
                    <h3>FAQ Answers</h3>

                    <div class="flex_2_container margint20">
                        <div class="input_container flex_2_item">
                            <label>Font Size</label>
                            <select id="faq_settings_group_answers_fontsize" onchange="faqSettingsChanged();">
                                <option value="12">12px</option>
                                <option value="14">14px</option>
                                <option value="16" selected>16px</option>
                                <option value="18">18px</option>
                                <option value="20">20px</option>
                                <option value="22">22px</option>
                                <option value="24">24px</option>
                                <option value="26">26px</option>
                                <option value="28">28px</option>
                                <option value="30">30px</option>
                            </select>
                        </div>

                        <div class="input_container flex_2_item">
                            <label for="faq_settings_group_answers_color">Color</label>
                            <input id="faq_settings_group_answers_color" type="text" value="#000000" />
                        </div>
                    </div>

                </div>
                <div class="panel_section">
                    <h2>FAQ Template</h2>
                    <p>Change your template below.</p>
                    <div class="input_container">
                        <div id="faq_settings_template_visual"></div>
                        <div id="faq_settings_template_container"><strong>Template <span id="faq_settings_template"></span></strong><a id="faq_settings_template_button" class="marginl10 link_color_primary">Change</a></div>
                    </div>
                </div>
            </div>

            <div id="faqs_container">

                <div id="faqs_new_group"></div>

                <div class="align_center">
                    <div class="button button_primary" onclick="addFaqGroup(true);">Add Group</div>
                </div>

            </div>
        </div>


        <!-- SEO -->
        <div class="editor_pages_content_seo editor_panel_nice_info">
            <p>Edit your page SEO by clicking the button below:</p>
            <a class="editor_main_button" onclick="editPageSeo();">Edit SEO</a>
        </div>

        <!-- Delete Standard/ FAQ page -->
        <div class="editor_pages_content_delete editor_panel_nice_info" data-type="standard">
            <p class="editor_pages_content_delete_text" data-type="standard">Delete your page by clicking the button below:</p>
            <a class="editor_main_button editor_main_button_red editor_pages_content_delete_menu_button" data-type="standard" onclick="editorDeletePage('standard');">Delete Page</a>
            <div class="editor_pages_content_delete_menu" data-type="standard">
                <p>To delete this page, please type: <strong class="color_red">delete</strong> into the text box below, and then click <strong>Confirm Delete</strong>.</p>
                <div class="input_container">
                    <input type="text" class="editor_pages_content_delete_menu_input" data-type="standard" placeholder="Type 'delete' to delete the page" />
                    <div class="alert editor_pages_content_delete_menu_input_alert" data-type="standard">Incorrect value. Please enter the word 'delete'.</div>
                </div>
                <a class="editor_main_button editor_main_button_red editor_pages_content_delete_menu_confirm_delete" data-type="standard" onclick="editorConfirmDeletePage('standard');">Confirm Delete</a>
                <p><em>Please note, once deleted, the page cannot be recovered.</em></p>
            </div>
        </div>

    </div>

   

    <!-- External Page -->
    <div id="editor_pages_content_external">
        
        <div class="input_container">
            <label for="editor_pages_content_external_url">Link URL</label>
            <input type="text" id="editor_pages_content_external_url" maxlength="100" placeholder="e.g. https://www.youtube.com/channel/yourchannel" onchange="pageEditTyping();" onpaste="pageEditTyping();" onkeyup="pageEditTyping();" />
            <div id="alert_editor_pages_content_external_url" class="alert">URL's should always start with either https:// or http://</div>
        </div>

        <div class="input_container">
            <label for="editor_pages_content_external_target">Target Window</label>
            <select id="editor_pages_content_external_target" onchange="pageEditTyping();">
                <option value="_parent">Same Window</option>
                <option value="_blank">New Window</option>
            </select>
        </div>

        <!-- Delete Linkpage -->
        <div class="editor_pages_content_delete editor_panel_nice_info" data-type="link">
            <p class="editor_pages_content_delete_text" data-type="link">Delete your page by clicking the button below:</p>
            <a class="editor_main_button editor_main_button_red editor_pages_content_delete_menu_button" data-type="link" onclick="editorDeletePage('link');">Delete Page</a>
            <div class="editor_pages_content_delete_menu" data-type="link">
                <p>To delete this page, please type: <strong class="color_red">delete</strong> into the text box below, and then click <strong>Confirm Delete</strong>.</p>
                <div class="input_container">
                    <input type="text" class="editor_pages_content_delete_menu_input" data-type="link" placeholder="Type 'delete' to delete the page" />
                    <div class="alert editor_pages_content_delete_menu_input_alert" data-type="link">Incorrect value. Please enter the word 'delete'.</div>
                </div>
                <a class="editor_main_button editor_main_button_red editor_pages_content_delete_menu_confirm_delete" data-type="link" onclick="editorConfirmDeletePage('link');">Confirm Delete</a>
                <p><em>Please note, once deleted, the page cannot be recovered.</em></p>
            </div>
        </div>

    </div>

    <!-- Special Offers -->
    <div id="editor_pages_content_offers">
        <p><strong>Special Offer Products</strong></p>

        <div class="editor_product_loader" id="editor_product_loader-specialoffers">
            <div class="lds-roller"><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div></div>
            <div id="editor_product_loader_text">Loading Products...</div>
        </div>

        <div class="editor_product_list" id="special_offers_products_list"></div>

        <div class="pagination hide_overflow margint20" data-type="offer"></div>

        <!-- SEO -->
        <div class="editor_pages_content_seo editor_panel_nice_info">
            <p>Edit your page SEO by clicking the button below</p>
            <a class="editor_main_button" onclick="editPageSeo();">Edit SEO</a>
        </div>

        <!-- Delete -->
        <div class="editor_pages_content_delete editor_panel_nice_info editor_pages_content_delete_disabled" style="display: block;">
            <p class="editor_pages_content_delete_text" data-type="link">This page type cannot be deleted.</p>
            <a class="editor_main_button editor_main_button_disabled editor_pages_content_delete_menu_button">Delete Page</a>
        </div>

    </div>

    <!-- Instagram -->
    <div id="editor_pages_content_instagram">
        
        <div class="editor_panel_widget_options">
            <a href="/manage_pages_instagramv3.aspx" class="editor_panel_widget_options_item">
                <div id="instagram_connected_tab" class="editor_panel_widget_options_item_top_right" data-connected="false">Not Connected</div>
                <div class="editor_panel_widget_options_item_left">
                    <i class="fa fa-instagram" aria-hidden="true"></i>
                </div>
                <div class="editor_panel_widget_options_item_right">
                    <div class="editor_panel_widget_options_item_right_title">Instagram Gallery</div>
                    <div class="editor_panel_widget_options_item_right_info">To manage your Instagram Gallery and connection, click here.</div>
                </div>
            </a>
        </div>

    </div>

    <div class="editor_info_panel margint40" data-type="translations">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title"><i class="fa fa-language" aria-hidden="true"></i>Translations</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-up" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_details_tokens_list"></div>
        </div>
    </div>

</div>

<script>

    var buildPagesEditPanelLoaded = false;
    function buildPagesEditPanel() {

        if (buildPagesEditPanelLoaded == false) {

            var tinymceMenuBarItems = "file edit view insert format table";
            var tinymceToolbarsBool = false;
            if (typeof packageTypeId !== "undefined") {
                if (packageTypeId != 0) {
                    tinymceMenuBarItems = "file edit view insert format tools";
                }
            }
            if (tinymceToolbarsBool == false && !checkUrlIsDomain(storeUrl)) {
                tinymceMenuBarItems = "file edit view insert format tools";
            }

            var pageEditTinyMceHeight = 600;
            if (currentPageType != null && currentPageType == 17) {
                pageEditTinyMceHeight = 300;
            }

            if (addNewPageType != null && addNewPageType == 17) {
                pageEditTinyMceHeight = 300;
            }


            tinymce.init({
                selector: '#editor_pages_content_textarea',
                contextmenu: "",
                height: pageEditTinyMceHeight,
                plugins: ["advlist autolink lists link image charmap print preview anchor",
                    "searchreplace visualblocks code fullscreen",
                    "insertdatetime media table paste"
                ],
                fontsize_formats: "8px 10px 12px 14px 18px 24px 36px",
                toolbar1: "undo redo bold italic align bullist numlist link image media forecolor fontsizeselect",
                menubar: tinymceMenuBarItems,
                image_advtab: true,
                statusbar: false,
                encoding: "xml",
                force_br_newlines: false,
                force_p_newlines: false,
                forced_root_block: '',
                valid_children: "+body[style],+body[link]",
                verify_html: false,
                file_picker_callback: function (callback, value, meta) {

                    openImageGallery(1, 'editorTextareaPages');
                    $('.tox-dialog, .tox-silver-sink').hide();
                    document.getElementById("editor_overlay").classList.add("editor_overlay_active");

                    $(".uc_imageGallery_close_modal_button").click(function () {
                        if (imageGalleryType != undefined) {
                            if (imageGalleryType == "editorTextareaPages") {
                                $('.tox-dialog, .tox-silver-sink').show();
                                document.getElementById("editor_overlay").classList.remove("editor_overlay_active");
                            }
                        }
                    });
                },
                init_instance_callback: function (editor) {
                    buildPagesEditGetContent();
                },
                setup: function (ed) {
                    ed.on('change keydown paste input', function (e) {
                        pageEditTyping();
                    });
                }
            });

            buildPagesEditPanelLoaded = true;

        } else {
            buildPagesEditGetContent();
        }

    }

    var defaultPageContent;
    var defaultPageName;

    var firstTryPageEdit = false;
    var thePageIdToEdit;
    var thePageIsNew = false;
    var addNewPageType = 0;
    var thePageSeo = {
        "title": null,
        "keywords": null,
        "description": null,
        "url": null
    };

    function buildPagesEditGetContent() {

        document.querySelector(".editor_pages_content_delete[data-type='link']").style.display = "none";
        document.querySelector(".editor_pages_content_delete[data-type='standard']").style.display = "none";

        thePageIdToEdit = currentPageId; 

        if (currentlyEditingPageType == null || currentlyEditingPageType == "" || currentlyEditingPageType == undefined) {
            currentlyEditingPageType = currentPageType.toString();
        }

        if (currentlyEditingPageType == "13") {
            thePageIdToEdit = currentlyEditingPageId;
        }

        console.log("here");
        console.log("currentPageType: " + currentPageType);
        if (currentPageType == 6 && thePageIsNew == false) {
            openPanelToggle("edit-contact-page");
            return false;
        } else if (currentPageType == 3 && thePageIsNew == false) {
            openPanelToggle("edit-cart-page");
            return false;
        }

        if (thePageIsNew == true) {

            currentPageType = addNewPageType;

            if (addNewPageType == 13) {

                hideById("editor_pages_content_normal", "editor_pages_content_offers", "editor_pages_content_instagram", "editor_pages_content_faqs");
                showById("editor_pages_content_external");

                document.getElementById("editor_pages_name").value = "";
                document.getElementById("editor_pages_content_external_url").value = "";
                document.getElementById("editor_pages_content_external_target").value = "_parent";

                thePageIdToEdit = "";
                currentlyEditingPageType = 13;

            } else if (addNewPageType == 17) {

                tinymce.activeEditor.editorContainer.style.height = '300px';

                console.log("add new FAQ page");
                showById("editor_pages_content_normal", "editor_pages_content_faqs");
                hideById("editor_pages_content_external", "editor_pages_content_offers", "editor_pages_content_instagram");

                document.getElementById("editor_pages_name").value = "FAQs";
                tinymce.get("editor_pages_content_textarea").setContent("<p>This is your FAQ introduction. Edit it as much as you like :-)");

                document.getElementById("faqs_new_group").innerHTML = "";

                addFaqGroup(true, "FAQ Group Title", "FAQ Group Summary", 1);
                addFaqQuestion(0, "1. This is your FAQ Question?", "This is the answer to your FAQ Question");
                addFaqQuestion(0, "2. This is your second FAQ Question?", "This is the answer to your second FAQ Question");

                thePageIdToEdit = "";
                currentlyEditingPageType = 17;

                setupFaqSettings(null, newFaqTemplate)

                loadEditorIframe(thePageIdToEdit, "FAQs", true, 17, newFaqTemplate);

                if (storeId == "6301") {
                    showByClass("editor_pages_content_seo");
                    thePageSeo = {
                        "title": null,
                        "keywords": null,
                        "description": null,
                        "url": null
                    };
                }

            } else {

                showById("editor_pages_content_normal");
                hideById("editor_pages_content_external", "editor_pages_content_offers", "editor_pages_content_instagram", "editor_pages_content_faqs");

                tinymce.activeEditor.editorContainer.style.height = '600px';

                document.getElementById("editor_pages_name").value = "";
                tinymce.get("editor_pages_content_textarea").setContent("");

                thePageIdToEdit = "";
                currentlyEditingPageType = 11;

                if (storeId == "6301") {
                    showByClass("editor_pages_content_seo");
                    thePageSeo = {
                        "title": null,
                        "keywords": null,
                        "description": null,
                        "url": null
                    };
                }

            }

            document.querySelector(".editor_panel_item[data-type='edit-page']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

        } else {

            axiosGet("/services/Pages.svc/getSinglePageContent?storeId=" + storeId + "&pageid=" + thePageIdToEdit + "&pagetype=" + currentlyEditingPageType).then(function (data) {

                var pageInfo = data.d;
                if (pageInfo != null) {

                    pageInfo = JSON.parse(pageInfo);
                    console.log(pageInfo)

                    if (pageInfo.pageName != null) {
                        document.getElementById("editor_pages_name").value = pageInfo.pageName;
                        defaultPageName = pageInfo.pageName;
                    }
                    if (currentlyEditingPageType == "15" || currentPageType == 15) {
                        hideById("editor_pages_content_normal", "editor_pages_content_offers", "editor_pages_content_instagram", "editor_pages_content_external", "editor_pages_content_faqs");
                    } else if (currentlyEditingPageType == "13" || currentPageType == 13) {
                        hideById("editor_pages_content_normal", "editor_pages_content_offers", "editor_pages_content_instagram", "editor_pages_content_faqs");
                        showById("editor_pages_content_external");

                        document.getElementById("editor_pages_content_external_url").value = pageInfo.linkUrl;

                        if (pageInfo.linkTarget == "0") {
                            document.getElementById("editor_pages_content_external_target").value = "_parent";
                        } else if (pageInfo.linkTarget == "1") {
                            document.getElementById("editor_pages_content_external_target").value = "_blank";
                        } else if (pageInfo.linkTarget == "_self") {
                            document.getElementById("editor_pages_content_external_target").value = "_parent";
                        } else {
                            document.getElementById("editor_pages_content_external_target").value = pageInfo.linkTarget;
                        }

                        document.querySelector(".editor_pages_content_delete[data-type='link']").style.display = "block";
                        document.querySelector(".editor_pages_content_delete[data-type='link']").classList.remove("editor_pages_content_delete_disabled");
                        document.querySelector(".editor_pages_content_delete_menu[data-type='link']").classList.remove("editor_pages_content_delete_menu_active");
                        document.querySelector(".editor_pages_content_delete_menu_button[data-type='link']").classList.remove("editor_main_button_lgrey");

                    } else if (currentlyEditingPageType == "7" || currentPageType == 7) {
                        hideById("editor_pages_content_normal", "editor_pages_content_external", "editor_pages_content_instagram", "editor_pages_content_faqs");
                        showById("editor_pages_content_offers");
                        editorGetSpecialOfferProducts();

                        thePageSeo = pageInfo.seo;

                    } else if (currentlyEditingPageType == "14" || currentPageType == 14) {
                        showById("editor_pages_content_instagram");
                        hideById("editor_pages_content_external", "editor_pages_content_offers", "editor_pages_content_normal", "editor_pages_content_faqs");

                        document.getElementById("instagram_connected_tab").innerText = "Loading";
                        document.getElementById("instagram_connected_tab").setAttribute("data-connected", "loading");

                        axiosGet("/services/editor/editor.svc/checkInstagramConnected?storeId=" + storeId).then(function (data) {

                            var result = data.d;
                            console.log(result);
                            if (result == true) {
                                document.getElementById("instagram_connected_tab").innerText = "Connected";
                                document.getElementById("instagram_connected_tab").setAttribute("data-connected", "true");
                            } else {
                                document.getElementById("instagram_connected_tab").innerText = "Not Connected";
                                document.getElementById("instagram_connected_tab").setAttribute("data-connected", "false");
                            }

                        }).catch(function () {
                            document.getElementById("instagram_connected_tab").innerText = "Not Connected";
                            document.getElementById("instagram_connected_tab").setAttribute("data-connected", "false");
                        }).then(function () {

                        });

                    } else if (currentlyEditingPageType == "17" || currentPageType == 17) {
                        
                        showById("editor_pages_content_normal", "editor_pages_content_faqs");
                        hideById("editor_pages_content_external", "editor_pages_content_offers", "editor_pages_content_instagram");

                        var content = pageInfo.content;
                        defaultPageContent = content;
                        console.log(content);

                        tinymce.activeEditor.editorContainer.style.height = '300px';

                        if (content != null) {
                            tinymce.get("editor_pages_content_textarea").setContent(content);
                        }

                        document.getElementById("faqs_new_group").innerHTML = "";

                        if (pageInfo.faqSection != null) {

                            var FAQS = JSON.parse(pageInfo.faqSection);
                            console.log(FAQS)

                            var allFaqs = FAQS.faqs;

                            for (var i = 0; i < allFaqs.length; i++) {

                                var currentFaqs = allFaqs[i].faqs;

                                console.log(allFaqs[i].groupSummary);

                                addFaqGroup(true, allFaqs[i].title, allFaqs[i].groupSummary, currentFaqs.length);

                                for (var qa = 0; qa < currentFaqs.length; qa++) {

                                    addFaqQuestion(i, currentFaqs[qa].question, currentFaqs[qa].answer);
                                }

                            }

                            setupFaqSettings(FAQS.faqSettings, FAQS.faqSettings.tempalte);

                        }

                        
                        thePageSeo = pageInfo.seo;

                        document.querySelector(".editor_pages_content_delete[data-type='standard']").style.display = "block";
                        document.querySelector(".editor_pages_content_delete[data-type='standard']").classList.remove("editor_pages_content_delete_disabled");
                        document.querySelector(".editor_pages_content_delete_menu[data-type='standard']").classList.remove("editor_pages_content_delete_menu_active");
                        document.querySelector(".editor_pages_content_delete_menu_button[data-type='standard']").classList.remove("editor_main_button_lgrey");
                        document.querySelector(".editor_pages_content_delete_text[data-type='standard']").innerText = "Delete your page by clicking the button below:";

                    } else {
                        showById("editor_pages_content_normal");
                        hideById("editor_pages_content_external", "editor_pages_content_offers", "editor_pages_content_instagram", "editor_pages_content_faqs");

                        var content = pageInfo.content;
                        defaultPageContent = content;
                        console.log(content);

                        tinymce.activeEditor.editorContainer.style.height = '600px';

                        if (content != null) {
                            tinymce.get("editor_pages_content_textarea").setContent(content);
                        }
                        
                        
                        thePageSeo = pageInfo.seo;
                        
                        if (currentPageType == 11) {
                            document.querySelector(".editor_pages_content_delete[data-type='standard']").style.display = "block";
                            document.querySelector(".editor_pages_content_delete[data-type='standard']").classList.remove("editor_pages_content_delete_disabled");
                            document.querySelector(".editor_pages_content_delete_menu[data-type='standard']").classList.remove("editor_pages_content_delete_menu_active");
                            document.querySelector(".editor_pages_content_delete_menu_button[data-type='standard']").classList.remove("editor_main_button_lgrey");
                            document.querySelector(".editor_pages_content_delete_text[data-type='standard']").innerText = "Delete your page by clicking the button below:";
                        } else {
                            document.querySelector(".editor_pages_content_delete[data-type='standard']").style.display = "block";
                            document.querySelector(".editor_pages_content_delete[data-type='standard']").classList.add("editor_pages_content_delete_disabled");
                            document.querySelector(".editor_pages_content_delete_menu[data-type='standard']").classList.remove("editor_pages_content_delete_menu_active");
                            document.querySelector(".editor_pages_content_delete_text[data-type='standard']").innerText = "This page type cannot be deleted.";
                        }

                    }

                }

                document.querySelector(".editor_panel_item[data-type='edit-page']").classList.add("editor_panel_item_active");
                hideById("editor_panel_loader");


            }).catch(function (e) {

                console.log("ERROR:PagesEdit:getSinglePageContent");
                typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
                errorOccurred("load", "edit-page", "getSinglePageContent id: " + thePageIdToEdit);

            }).then(function () {

            });

        }
        
        
    }

    function addFaqGroup(isNew, title, summary, currentFaqsLength) {


        var theTitle = "";
        if (title != null) {
            theTitle = title;
        }


        var theSummary = "";
        if (summary != null) {
            theSummary = summary;
        }


        var which = document.querySelectorAll(".faqs_section").length;
        if (which != 0 && isNew == false) {
            which = which + 1;
        }

        var html = '<div class="faqs_section panel_white delete_type_panel" data-delete="false" data-id="' + which + '">';
        html += '<div class="faqs_section_group_delete"><i class="fa fa-times faqs_group_delete" aria-hidden="true" title="Delete" onclick="deleteFaqSection(\'faqs_section\', \'' + which + '\')"></i></div>';
        html += '<div class="faqs_section_group" data-id="' + which + '">';
        html += '<div class="input_container">';
        html += '<label>FAQ Group Title</label>';
        html += '<input type="text" placeholder="Orders, Returns, Policy, Shipping" class="faqs_section_group_title" value="' + theTitle + '" maxlength="100" />';
        html += '</div>';
        html += '<div class="input_container">';
        html += '<label>FAQ Group Summary</label>';
        html += '<div placeholder="Summary about the FAQs" class="faqs_section_group_summary" data-id="' + which + '" tabindex="1">' + theSummary + '</div>';
        html += '</div>';
        html += '<div class="faqs_section_group_qanda_container" data-id="' + which + '"></div>';
        html += '<div class="align_center margint10">';
        html += '<a class="button button_primary marginb0" onclick="addFaqQuestion(\'' + which + '\');">Add Question</a>';
        html += '</div>';
        html += '</div>';
        html += '</div>';

        var newHtml = document.createElement("div");
        newHtml.innerHTML = html;

        document.getElementById("faqs_new_group").appendChild(newHtml);

        new inline('.faqs_section_group_summary[data-id="' + which + '"]');

        document.querySelector('.faqs_section_group_summary[data-id="' + which + '"]').addEventListener("paste", function (event) {
            var paste = (event.clipboardData || window.clipboardData).getData('text');
            var selection = window.getSelection();
            if (!selection.rangeCount) return false;
            selection.deleteFromDocument();
            selection.getRangeAt(0).insertNode(document.createTextNode(paste));
            var p = event.target;

            setTimeout(function () { p.focus(); }, 0);
            if (p.hasChildNodes()) {
                var r = selection.getRangeAt(0);
                var e = p.childElementCount > 0 ? p.lastChild : p;
                r.setStart(e, 0);
                r.setEnd(e, 0);
                selection.removeAllRanges();
                selection.addRange(r);
            }

            event.preventDefault();
        });

        if (currentFaqsLength == 0 || isNew == false) {
            console.log("here")
            addFaqQuestion(which)
        }

        addEventListenersFaqs();

    }

    function addEventListenersFaqs() {

        $("#faqs_container input, #faqs_container textarea, .faqs_section_group_summary, .faqs_section_group_qanda").on('change keydown paste input', function (event) {

            if (event.keyCode != 8) {
                if ($(this).hasClass("faqs_section_group_summary") && $(this).text().length > 999) {
                    event.preventDefault();
                }
                if ($(this).find(".faqs_section_group_qanda_answer") && $(this).find(".faqs_section_group_qanda_answer").text().length > 999) {
                    event.preventDefault();
                }
            }

            pageEditTyping();

        });

    }

    function selectPageFaqTemplate(isNew, currentTemplate) {

        document.getElementById("editor_overlay").classList.add("editor_overlay_active");
        divFadeIn(".modal_faq_templates");

        var numberOfTemplates = 6;
        var allFaqVisualTemplates = '';


        for (var i = 1; i < (numberOfTemplates + 1); i++) {

            var button = '<a class="button button_white modal_faq_templates_item_button" data-id="' + i + '" onclick="selectFaqTemplate(' + i + ',' + isNew + ')">Select Template</a>';
            if (currentTemplate != null && currentTemplate == i) {
                button = '<a class="button button_primary modal_faq_templates_item_button modal_faq_templates_item_button_selected">Selected</a>';
            }

            var html = '<div class="modal_faq_templates_item">';
            html += '<div class="modal_faq_templates_item_name">Template ' + i + '</div>';
            html += '<div class="modal_faq_templates_item_image_container">';
            html += '<img src="/images/faqs/faq' + i + '_opt.png" class="modal_faq_templates_item_image" />';
            html += '</div>';
            html += button;
            html += '</div>';

            allFaqVisualTemplates += html;

        }

        document.getElementById("modal_faq_templates_container").innerHTML = allFaqVisualTemplates;

    }

    var newFaqTemplate = "1";
    function selectFaqTemplate(which, isNew) {
        console.log(which);
        console.log(isNew);

        newFaqTemplate = which;

        if (isNew == true) {
            thePageIsNew = true;
            addNewPageType = 17;

            document.querySelector(".modal_faq_templates_item_button[data-id='" + which + "']").innerHTML = '<i class="fa fa-spinner fa-spin"></i> Selecting';
            document.querySelector(".modal_faq_templates_item_button[data-id='" + which + "']").classList.add("button_disabled");

            openPanelToggle("edit-page");

            document.getElementById("editor_overlay").classList.add("editor_overlay_active");

        } else {

            setFaqTemplateVisual(which);

            var pageTitle = document.getElementById("editor_pages_name").value.trim();

            loadEditorIframe(thePageIdToEdit, pageTitle, true, 17, which);

            document.querySelector(".modal_faq_templates_item_button[data-id='" + which + "']").innerHTML = '<i class="fa fa-spinner fa-spin"></i> Selecting';
            document.querySelector(".modal_faq_templates_item_button[data-id='" + which + "']").classList.add("button_disabled");

        }

    }

    function faqFromEditorJs() {
        pageEditTyping();
        setTimeout(function () {
            hideByClass("modal_faq_templates");
            document.getElementById("editor_overlay").classList.remove("editor_overlay_active");
        }, 1000);
    }

    function setFaqTemplateVisual(which) {

        document.getElementById("faq_settings_template_button").setAttribute("onclick", "selectPageFaqTemplate(false, " + which + ");");

        document.getElementById("faq_settings_template").innerText = which;
        document.getElementById("faq_settings_template_visual").innerHTML = "<img src='../../images/faqs/faq" + which + "_opt.png' />"
    }

    function openFaqSettings() {
        document.getElementById("faqs_settings_container").classList.toggle("faqs_settings_container_active");
        document.getElementById("editor_pages_content_faqs_settings_button").classList.toggle("editor_pages_content_faqs_settings_button_active");
    }

    function setupFaqSettings(faqSettings, template) {

        if (faqSettings != null) {
            setFaqTemplateVisual(faqSettings.template);

            if (faqSettings.section_title_bold == false) {
                document.getElementById("faq_settings_group_title_normal").checked = true;
            }

            document.getElementById("faq_settings_group_title_fontsize").value = faqSettings.section_title_fontsize;
            document.getElementById("faq_settings_group_title_color").value = faqSettings.section_title_color;
            document.getElementById("faq_settings_group_summary_fontsize").value = faqSettings.section_summary_fontsize;
            document.getElementById("faq_settings_group_summary_color").value = faqSettings.section_summary_color;
            document.getElementById("faq_settings_group_questions_fontsize").value = faqSettings.section_question_fontsize;
            document.getElementById("faq_settings_group_questions_color").value = faqSettings.section_question_color;
            document.getElementById("faq_settings_group_answers_fontsize").value = faqSettings.section_answer_fontsize;
            document.getElementById("faq_settings_group_answers_color").value = faqSettings.section_answer_color;

        } else {
            setFaqTemplateVisual(template);
        }


        $("#faq_settings_group_title_color").spectrum({
            showInitial: true,
            showInput: true,
            change: function (color) {
                faqSettingsChanged();
            }
        });

        $("#faq_settings_group_summary_color").spectrum({
            showInitial: true,
            showInput: true,
            change: function (color) {
                faqSettingsChanged();
            }
        });

        $("#faq_settings_group_questions_color").spectrum({
            showInitial: true,
            showInput: true,
            change: function (color) {
                faqSettingsChanged();
            }
        });

        $("#faq_settings_group_answers_color").spectrum({
            showInitial: true,
            showInput: true,
            change: function (color) {
                faqSettingsChanged();
            }
        });


    }

    function faqSettingsChanged() {
        pageEditTyping();
    }

 
    function addFaqQuestion(which, question, answer) {

        var theQuestion = '';
        if (question != null) {
            theQuestion = question;
        }

        var theAnswer = '';
        if (answer != null) {
            theAnswer = answer;
        }

        var position = document.querySelectorAll(".faqs_section[data-id='" + which + "'] .faqs_section_group_qanda").length;

        var html = '<div class="faqs_section_group_qanda delete_type_panel" data-delete="false" data-id="' + which + '-' + position + '">';
        html += '<div class="faqs_section_qanda_delete"><i class="fa fa-times faqs_qanda_delete" aria-hidden="true" title="Delete" onclick="deleteFaqSection(\'faqs_section_group_qanda\', \'' + which + '-' + position + '\')"></i></div>';
        html += '<div class="input_container">';
        html += '<label>Question</label>';
        html += '<input type="text" placeholder="Orders, Returns, Policy, Shipping" class="faqs_section_group_qanda_question" value="' + theQuestion + '" maxlength="250" />';
        html += '</div>';
        html += '<div class="input_container">';
        html += '<label>Answer</label>';
        html += '<div placeholder="Summary about the FAQs" class="faqs_section_group_qanda_answer" data-id="' + which + '-' + position + '">' + theAnswer + '</div>';
        html += '</div>';
        html += '</div>';

        var newHtml = document.createElement("div");
        newHtml.innerHTML = html;

        document.querySelector(".faqs_section_group_qanda_container[data-id='" + which + "']").appendChild(newHtml);

        new inline('.faqs_section_group_qanda_answer[data-id="' + which + '-' + position + '"]');

        document.querySelector('.faqs_section_group_qanda_answer[data-id="' + which + '-' + position + '"]').addEventListener("paste", function (event) {
            var paste = (event.clipboardData || window.clipboardData).getData('text');
            var selection = window.getSelection();
            if (!selection.rangeCount) return false;
            selection.deleteFromDocument();
            selection.getRangeAt(0).insertNode(document.createTextNode(paste));
            var p = event.target;

            setTimeout(function () { p.focus(); }, 0);
            if (p.hasChildNodes()) {
                var r = selection.getRangeAt(0);
                var e = p.childElementCount > 0 ? p.lastChild : p;
                r.setStart(e, 0);
                r.setEnd(e, 0);
                selection.removeAllRanges();
                selection.addRange(r);
            }

            event.preventDefault();
        });

        addEventListenersFaqs();

    }


    function deleteFaqSection(className, id) {

        var deleteStatus = $("." + className + "[data-id='" + id + "']").attr("data-delete");

        if (className == "faqs_section") {
            var deleteIcon = "faqs_group_delete";
        } else {
            var deleteIcon = "faqs_qanda_delete";
        }


        if (deleteStatus == "false") {
            $("." + className + "[data-id='" + id + "']").attr("data-delete", "true");
            $("." + className + "[data-id='" + id + "'] ." + deleteIcon).removeClass("fa-times").addClass("fa-undo");
            $("." + className + "[data-id='" + id + "'] ." + deleteIcon).attr("title", "Undo Delete");


        } else {
            $("." + className + "[data-id='" + id + "']").attr("data-delete", "false");
            $("." + className + "[data-id='" + id + "'] ." + deleteIcon).addClass("fa-times").removeClass("fa-undo");
            $("." + className + "[data-id='" + id + "'] ." + deleteIcon).attr("title", "Delete");

        }

        pageEditTyping();

    }


    var startpgOffers = 0;
    var limitOffers = 10;
    var baseLimitOffers = 10;

    var paginationTotalItemsOffers;
    var paginationPageItemsOffers;
    var paginationPageStartOffers;
    var paginationShowAllOffers;

    function editorGetSpecialOfferProducts() {

        document.getElementById("special_offers_products_list").innerHTML = "";

        showById("editor_product_loader-specialoffers");

        var filtersOffers = '[{"field":"offer","comparison":"MORETHAN","type":"NUMBER","values":["0"]}]';
        filtersOffers = JSON.stringify(filtersOffers);

        var urlExtension = storeId + '&limit=' + limitOffers + '&start=' + startpgOffers + '&sort=createdon&ascending=false&filters=' + filtersOffers;

        axiosGet("/services/Products.svc/listProducts?storeId=" + urlExtension).then(function (data) {
            trace("GetProductsWithOffer:success");
            var offerProducts = data.d;
            console.log(offerProducts);

            if (offerProducts != null) {
                buildOfferProducts(offerProducts)
            } else {
                
            }

        }).catch(function (e) {
            
        }).then(function () {
            hideById("editor_product_loader-specialoffers");
        });

    }


    function buildOfferProducts(offerProducts) {

        if (offerProducts.found === 0) {

            var zeroSpecialOffersHtml = "<div class='editor_panel_nice_info margint0'>";
            zeroSpecialOffersHtml += "<p>You currently have zero products with a special offer discount.</p>";
            zeroSpecialOffersHtml += "<p>If you want a product to appear on this page, just edit that product and set a discount.</p>";
            zeroSpecialOffersHtml += "<a href='/manage_products_list' class='editor_main_button' onclick='externalLinkIconAnimation(this);'><i class='fa fa-external-link'></i>View All Products</a>";
            zeroSpecialOffersHtml += "</div>";

            document.getElementById("special_offers_products_list").innerHTML = zeroSpecialOffersHtml;

        } else {

            var products = offerProducts.products;

            var specialOffersHtml = '';

            for (var i = 0; i < products.length; i++) {

                var product = '<div class="editor_product_list_item">';
                        product += '<div class="editor_product_list_item_left">';
                            product += '<div class="editor_product_list_item_left_image_container">';
                                product += '<img src="' + cs_url(products[i].image) + '" onerror=\'this.src=\"/images/products/product-not-exist.jpg\";\' class="editor_product_list_item_left_image" />';
                            product += '</div>';
                        product += '</div>';
                        product += '<div class="editor_product_list_item_right">';
                            product += '<div class="editor_product_list_item_right_info">';
                                product += '<div class="editor_product_list_item_right_info_item"><strong>' + products[i].name + '</strong></div>';
                                product += '<div class="editor_product_list_item_right_info_item" data-currency="true">' + products[i].price + '</div>';
                                product += '<div class="editor_product_list_item_right_info_button_container"><a class="editor_small_button" onclick="buildProductPagePanelFromOther(\'' + products[i].id + '\')">Edit</a></div>';
                            product += '</div>';
                        product += '</div>';
                    product += '</div>';

                //product += '<td><img data-src="' + cs_url(products[i].image) + '" onerror=\'this.src=\"/images/products/product-not-exist.jpg\";\' class="lazyload" /></td>';

                specialOffersHtml += product;

            }
            console.log("here 3");
            document.getElementById("special_offers_products_list").innerHTML = specialOffersHtml;

            UpdateEditorPriceStrings("#special_offers_products_list .editor_product_list_item_right_info_item");

            paginationDataType = "offer";
            paginationTotalItemsOffers = offerProducts.found;
            paginationPageItemsOffers = baseLimitOffers;
            paginationPageStartOffers = startpgOffers / baseLimitOffers;
            paginationPageStartOffers = Math.ceil(paginationPageStartOffers);
            paginationShowAllOffers = true;

            $(".pagination_number_results, .pagination_text_results").remove();
            pagination(paginationTotalItemsOffers, paginationPageItemsOffers, paginationPageStartOffers, paginationShowAllOffers);

            //showById("special_offers_products_success");
        }

    }

    function rebuildPaginationoffer(paginationRebuildNumber) {
        startpgOffers = parseInt($(paginationRebuildNumber).attr("data-pagnum"));
        startpgOffers = startpgOffers * baseLimitOffers;
        limitOffers = startpgOffers + 10;
        editorGetSpecialOfferProducts();
    }

    function pageEditTyping() {

        hideById("alert_editor_page_name");

        var pageName = stripHTMLPost($('#editor_pages_name').val().trim());
        if (pageName.length < 1) {
            showById("alert_editor_page_name");
            document.getElementById("editor_panel_main_buttons").classList.remove("editor_panel_main_buttons_active");
        } else {
            
            if (currentlyEditingPageType != "13") {
                document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");
                pageEditPreviewDelay(function () {

                    previewPageEditFly();

                }, 1000);

            } else {

                document.getElementById("editor_panel_main_buttons").classList.remove("editor_panel_main_buttons_active");

                pageEditPreviewDelay(function () {
                    var linkUrl = document.getElementById("editor_pages_content_external_url").value.trim();
                    if (linkUrl.startsWith("http") === true) {
                        document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");
                        hideById("alert_editor_pages_content_external_url");
                    } else {
                        showById("alert_editor_pages_content_external_url");
                        
                    }
                }, 1000);
            }
        }

    }

    var pageEditPreviewDelay = (function () {
        var timer = 0;
        return function (callback, ms) {
            clearTimeout(timer);
            timer = setTimeout(callback, ms);
        };
    })();

    function previewPageEditFly() {

        var pageContent = tinymce.get("editor_pages_content_textarea").getContent();
        console.log(pageContent);
        var pageName = document.getElementById("editor_pages_name").value.trim();

        var faqs = '';
        var faqSettings = '';

        if (currentPageType == 17 || currentPageType == "17") {
            faqs = runSavePageLocalFaqs();
            faqSettings = runSavePageLocalFaqsSettings();
        }

        if (currentPageType == 17 || (pageName != null && pageName.length != 0 && thePageIsNew != true)) {

            var updateIframeData = {
                "action": "UPDATE_PAGE_CONTENT",
                "info": {
                    "content": pageContent,
                    "name": pageName,
                    "pageType": currentPageType,
                    "faqs": faqs,
                    "faqSettings": faqSettings
                }
            }

            updateIframeData = JSON.stringify(updateIframeData);

            window.frames[0].window.postMessage(updateIframeData, "*");

            showIframeLoader();

        }


    }

    function cancelPageEdit() {

        document.getElementById("editor_pages_name").value = defaultPageName;
        if (document.querySelector("#editor_pages_content_textarea") != null && defaultPageContent != null && defaultPageContent != undefined) { 
            tinymce.get("editor_pages_content_textarea").setContent(defaultPageContent);
        }

    }





    function runSavePageLocalFaqs() {

        console.log("run")

        var allFaqs = [];


        var sections = document.querySelectorAll(".faqs_section:not([data-delete='true'])");

        for (var i = 0; i < sections.length; i++) {

            var groupTitle = sections[i].querySelector(".faqs_section_group_title").value;
            var groupSummary = sections[i].querySelector(".faqs_section_group_summary").innerHTML;

            var qanda = sections[i].querySelectorAll(".faqs_section_group_qanda:not([data-delete='true'])");

            var allQandAs = [];

            for (var qa = 0; qa < qanda.length; qa++) {

                var question = qanda[qa].querySelector(".faqs_section_group_qanda_question").value;
                var answer = qanda[qa].querySelector(".faqs_section_group_qanda_answer").innerHTML;

                var faqGroupQandA = {
                    "question": question,
                    "answer": answer
                }

                allQandAs.push(faqGroupQandA);

            }

            var faqGroup = {
                "title": groupTitle,
                "groupSummary": groupSummary,
                "faqs": allQandAs
            }

            allFaqs.push(faqGroup);

        }
        console.log(allFaqs);
        return allFaqs;

    }

    function runSavePageLocalFaqsSettings() {

        var titleBold = true;
        if (document.getElementById("faq_settings_group_title_normal").checked == true) {
            titleBold = false;
        }

        var faqSettings = {
            "template": document.getElementById("faq_settings_template").innerText.trim(),

            "section_title_fontsize": document.getElementById("faq_settings_group_title_fontsize").value,
            "section_title_bold": titleBold,
            "section_title_color": document.getElementById("faq_settings_group_title_color").value,

            "section_summary_fontsize": document.getElementById("faq_settings_group_summary_fontsize").value,
            "section_summary_color": document.getElementById("faq_settings_group_summary_color").value,

            "section_question_fontsize": document.getElementById("faq_settings_group_questions_fontsize").value,
            "section_question_color": document.getElementById("faq_settings_group_questions_color").value,

            "section_answer_fontsize": document.getElementById("faq_settings_group_answers_fontsize").value,
            "section_answer_color": document.getElementById("faq_settings_group_answers_color").value,
        }

        return faqSettings;
    }




    function savePageEdit() {

        var pagename = document.getElementById("editor_pages_name").value.trim();

        var content = tinymce.get("editor_pages_content_textarea").getContent();
        console.log(content);

        var seoTitle = null;
        var seoKeywords = null;
        var seoDescription = null;
        var seoUrl = null;

        if (thePageSeo != null) {
            if (thePageSeo.title != null) {
                seoTitle = thePageSeo.title;
            }

            if (thePageSeo.keywords != null) {
                seoKeywords = thePageSeo.keywords.toString();
            }


            if (thePageSeo.description != null) {
                seoDescription = thePageSeo.description;
            }

            if (thePageSeo.url != null) {
                seoUrl = thePageSeo.url;
            }
        }

        

        var data = {
            'storeId': storeId,
            'pageid': thePageIdToEdit,
            'pagetype': currentlyEditingPageType,
            'pagename': pagename,
            'content': content,
            'thePageIsNew': thePageIsNew,
            'seo_url': seoUrl,
            'seo_title': seoTitle,
            'seo_keywords': seoKeywords,
            'seo_description': seoDescription
        };

        if (currentlyEditingPageType == "13") {
            data.linkUrl = document.getElementById("editor_pages_content_external_url").value.trim();
            data.linkTarget = document.getElementById("editor_pages_content_external_target").value.trim();
        }

        if (currentlyEditingPageType == "17") {
            data.faqs = runSavePageLocalFaqs();
            data.faqSettings = runSavePageLocalFaqsSettings();
        }

        console.log(data);

        data = JSON.stringify(data);

        axiosPost("/services/Pages.svc/saveSinglePageContent", data).then(function (data) {

            var pageResult = data.d;
            console.log(pageResult);

            if (pageResult != null) {

                pageResult = JSON.parse(pageResult);

                console.log(pageResult);

                if (pageResult.result == true) {

                    editorSaved();

                    if (thePageIsNew == true) {
                        var newPageObject = {
                            "hidden": false,
                            "id": pageResult.id,
                            "navigation": false,
                            "title": pagename,
                            "type": currentlyEditingPageType,
                            "seo": thePageSeo
                        }

                        result.pages.push(newPageObject);

                        buildEditorPagesList();

                        if (currentlyEditingPageType != 13) {
                            loadEditorIframe(pageResult.id, pagename);
                        }
                        activeTogglePanel = "edit-page";
                        thePageIdToEdit = pageResult.id;
                        thePageIsNew = false;
                    } else {

                        // Update Pages OBJ
                        result.pages.filter(function (obj) {
                            if (obj.id == pageResult.id) {
                                obj.title = pagename;
                                obj.seo = thePageSeo;
                            }
                        });

                        // Update Selected Page Text
                        document.getElementById("editor_header_pages_menu_selected_text").innerText = pagename;

                        // Update Page Dropdown text
                        document.querySelector(".editor_header_nav_item_dropdown_item[data-id='" + pageResult.id + "'] span").innerText = pagename;

                        if (currentPageType == 17 || currentPageType == "17") {
                            loadEditorIframe(pageResult.id, pagename);
                        }

                    }

                } else {

                }
            }

        }).catch(function (e) {


            if (thePageIsNew == true) {
                var pageIdReport = "new";
            } else {
                var pageIdReport = thePageIdToEdit;
            }

            console.log("ERROR:Slideshow:saveSinglePageContent");
            typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
            errorOccurred("save", "edit-page", "saveSinglePageContent id: " + pageIdReport);

        }).then(function () {

        });

    }


    function editorDeletePage(type) {

        document.querySelector(".editor_pages_content_delete_menu_input[data-type='" + type + "']").value = "";
        document.querySelector(".editor_pages_content_delete_menu_input_alert[data-type='" + type + "']").style.display = "none";
        document.querySelector(".editor_pages_content_delete_menu_input_alert[data-type='" + type + "']").innerText = "Incorrect value. Please enter the word 'delete'.";
        document.querySelector(".editor_pages_content_delete_menu_confirm_delete[data-type='" + type + "']").innerHTML = "Confirm Delete";
        document.querySelector(".editor_pages_content_delete_menu_confirm_delete[data-type='" + type + "']").classList.remove("editor_main_button_disabled");
        document.querySelector(".editor_pages_content_delete_menu[data-type='" + type + "']").classList.toggle("editor_pages_content_delete_menu_active");

        document.querySelector(".editor_pages_content_delete_menu_button[data-type='" + type + "']").classList.toggle("editor_main_button_lgrey");
    }

    function editorConfirmDeletePage(type) {

        document.querySelector(".editor_pages_content_delete_menu_input_alert[data-type='" + type + "']").style.display = "none";

        var value = document.querySelector(".editor_pages_content_delete_menu_input[data-type='" + type + "']").value.trim();

        value = value.toLowerCase();

        if (value != "delete") {
            document.querySelector(".editor_pages_content_delete_menu_input_alert[data-type='" + type + "']").style.display = "block";
        } else {
            document.querySelector(".editor_pages_content_delete_menu_confirm_delete[data-type='" + type + "']").innerHTML = "<i class='fa fa-spinner fa-spin'></i> Deleting Page";
            document.querySelector(".editor_pages_content_delete_menu_confirm_delete[data-type='" + type + "']").classList.add("editor_main_button_disabled");

            axiosGet('/services/Pages.svc/DeletePage?shopkeeper=' + storeId + '&session=editor&pageid=' + thePageIdToEdit).then(function () {

                result.pages = result.pages.filter(el => el.id !== thePageIdToEdit);
                buildManagePagesPanelLoaded = false;

                document.getElementById("editor_panel_main_buttons").classList.remove("editor_panel_main_buttons_active");
                openPanelToggle('manage-pages');

                result.pages.filter(function (obj) {
                    if (obj.type == 1) {
                        loadEditorIframe(obj.id, obj.title);
                        return false;
                    }
                });
                

                document.querySelector(".editor_pages_content_delete_menu_confirm_delete[data-type='" + type + "']").innerHTML = "<i class='fa fa-check color_green'></i> Page Deleted - Reloading";

            }).catch(function () {

                document.querySelector(".editor_pages_content_delete_menu_input_alert[data-type='" + type + "']").style.display = "block";
                document.querySelector(".editor_pages_content_delete_menu_input_alert[data-type='" + type + "']").innerText = "Oops! Something went wrong. Please try again.";
                document.querySelector(".editor_pages_content_delete_menu_confirm_delete[data-type='" + type + "']").innerHTML = "Try Again";
                document.querySelector(".editor_pages_content_delete_menu_confirm_delete[data-type='" + type + "']").classList.remove("editor_main_button_disabled");

            }).then(function () {

            });

        }



        



    }

</script>
                    

<style>

    #editor_contact_page_displays, #editor_contact_page_address{
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
    }

    .theme_editor_pages_contact_show_item, .editor_contact_page_address_input_container{
        min-width: 300px;
        max-width: 300px;
    }

    #editor_contact_page_address{
        margin-top: 30px;
        display: none;
    }

    #editor_contact_page_address.editor_contact_page_address_active{
        display: flex;
    }

    #editor_contact_page_address_usState_container, #editor_contact_page_address_caState_container, #editor_contact_page_address_region_container{
        display: none;
    }

    #editor_contact_page_address_visible{
        border: 1px solid #ddd;
        background-color: #f5f5f7;
        padding: 5px 10px;
        margin-top: 20px;
    }
</style>

<div class="editor_panel_item" data-type="edit-contact-page">
    
    <div class="input_container">
        <label for="editor_pages_name_contact">Page Name</label>
        <input type="text" id="editor_pages_name_contact" placeholder="Page Name..." onchange="contactDetailsChange();" onpaste="contactDetailsChange();" onkeyup="contactDetailsChange();">
        <div id="alert_editor_contact_page_name" class="alert">Page Name must be at least 1 character</div>
    </div>

    <div id="editor_contact_page_displays">
        <div class="theme_editor_pages_contact_show_item">
            <div><strong>Show Address</strong></div>
            <div class="inline_checkboxes hide_overflow">
                <div class="checkbox_container">
                    <input type="radio" id="theme_editor_pages_contact_show_address_1" name="theme_editor_pages_contact_show_address" checked onchange="contactDetailsChange();" />
                    <label for="theme_editor_pages_contact_show_address_1"><span>Yes</span></label>
                </div>
                <div class="checkbox_container">
                    <input type="radio" id="theme_editor_pages_contact_show_address_2" name="theme_editor_pages_contact_show_address" onchange="contactDetailsChange();" />
                    <label for="theme_editor_pages_contact_show_address_2"><span>No</span></label>
                </div>
            </div>
        </div>

        <div class="theme_editor_pages_contact_show_item margint20">
            <div><strong>Show Map</strong></div>
            <div class="inline_checkboxes hide_overflow">
                <div class="checkbox_container">
                    <input type="radio" id="theme_editor_pages_contact_show_map_1" name="theme_editor_pages_contact_show_map" checked onchange="contactDetailsChange();" />
                    <label for="theme_editor_pages_contact_show_map_1"><span>Yes</span></label>
                </div>
                <div class="checkbox_container">
                    <input type="radio" id="theme_editor_pages_contact_show_map_2" name="theme_editor_pages_contact_show_map" onchange="contactDetailsChange();" />
                    <label for="theme_editor_pages_contact_show_map_2"><span>No</span></label>
                </div>
            </div>
        </div>

        <div class="theme_editor_pages_contact_show_item margint20">
            <div><strong>Show Telephone</strong></div>
            <div class="inline_checkboxes hide_overflow">
                <div class="checkbox_container">
                    <input type="radio" id="theme_editor_pages_contact_show_telephone_1" name="theme_editor_pages_contact_show_telephone" checked onchange="contactDetailsChange();" />
                    <label for="theme_editor_pages_contact_show_telephone_1"><span>Yes</span></label>
                </div>
                <div class="checkbox_container">
                    <input type="radio" id="theme_editor_pages_contact_show_telephone_2" name="theme_editor_pages_contact_show_telephone" onchange="contactDetailsChange();" />
                    <label for="theme_editor_pages_contact_show_telephone_2"><span>No</span></label>
                </div>
            </div>
        </div>

        <div class="theme_editor_pages_contact_show_item margint20">
            <div><strong>Show Display Email</strong></div>
            <div class="inline_checkboxes hide_overflow">
                <div class="checkbox_container">
                    <input type="radio" id="theme_editor_pages_contact_show_displayemail_1" name="theme_editor_pages_contact_show_displayemail" checked onchange="contactDetailsChange();" />
                    <label for="theme_editor_pages_contact_show_displayemail_1"><span>Yes</span></label>
                </div>
                <div class="checkbox_container">
                    <input type="radio" id="theme_editor_pages_contact_show_displayemail_2" name="theme_editor_pages_contact_show_displayemail" onchange="contactDetailsChange();" />
                    <label for="theme_editor_pages_contact_show_displayemail_2"><span>No</span></label>
                </div>
            </div>
        </div>
    </div>

    <div id="editor_contact_page_address_visible">
        <div id="editor_contact_page_address_visible_data"></div>
        <div class="hide_overflow">
            <a class="button button_primary right" onclick="toggleContactAddressEdit();">Edit</a>
        </div>
    </div>

    <div id="editor_contact_page_address">

        <div class="input_container editor_contact_page_address_input_container">
            <label for="editor_contact_page_address_contactName">Contact Name</label>
            <input type="text" placeholder="Your Name" id="editor_contact_page_address_contactName" maxlength="50" onchange="contactDetailsChange();" onkeyup="contactDetailsChange();" onpaste="contactDetailsChange();" />
        </div>

        <div class="input_container editor_contact_page_address_input_container">
            <label for="editor_contact_page_address_address1">Address 1</label>
            <input type="text" placeholder="Address Line One" id="editor_contact_page_address_address1" maxlength="50" onchange="contactDetailsChange();" onkeyup="contactDetailsChange();" onpaste="contactDetailsChange();" />
        </div>

        <div class="input_container editor_contact_page_address_input_container">
            <label for="editor_contact_page_address_address2">Address 2</label>
            <input type="text" placeholder="Address Line Two" id="editor_contact_page_address_address2" maxlength="50" onchange="contactDetailsChange();" onkeyup="contactDetailsChange();" onpaste="contactDetailsChange();" />
        </div>

        <div class="input_container editor_contact_page_address_input_container">
            <label for="editor_contact_page_address_address3">Address 3</label>
            <input type="text" placeholder="Address Line Three" id="editor_contact_page_address_address3" maxlength="50" onchange="contactDetailsChange();" onkeyup="contactDetailsChange();" onpaste="contactDetailsChange();" />
        </div>

        <div class="input_container editor_contact_page_address_input_container">
            <label for="editor_contact_page_address_town">Town</label>
            <input type="text" placeholder="Town" id="editor_contact_page_address_town" maxlength="50" onchange="contactDetailsChange();" onkeyup="contactDetailsChange();" onpaste="contactDetailsChange();" />
        </div>

        <div class="input_container editor_contact_page_address_input_container">
            <label for="editor_contact_page_address_country">Country</label>
            <select id="editor_contact_page_address_country" onchange="contactCountryChange(); contactDetailsChange();">
                <option value="AF">Afghanistan</option>
		        <option value="AX">Aland Islands</option>
		        <option value="AL">Albania</option>
		        <option value="DZ">Algeria</option>
		        <option value="AS">American Samoa</option>
		        <option value="AD">Andorra</option>
		        <option value="AO">Angola</option>
		        <option value="AI">Anguilla</option>
		        <option value="AQ">Antarctica</option>
		        <option value="AG">Antigua and Barbuda</option>
		        <option value="AN">Antilles (Netherlands)</option>
		        <option value="AR">Argentina</option>
		        <option value="AM">Armenia</option>
		        <option value="AW">Aruba</option>
		        <option value="AU">Australia</option>
		        <option value="AT">Austria</option>
		        <option value="AZ">Azerbaijan</option>
		        <option value="BS">Bahamas</option>
		        <option value="BH">Bahrain</option>
		        <option value="BD">Bangladesh</option>
		        <option value="BB">Barbados</option>
		        <option value="BY">Belarus</option>
		        <option value="BE">Belgium</option>
		        <option value="BZ">Belize</option>
		        <option value="BJ">Benin</option>
		        <option value="BM">Bermuda</option>
		        <option value="BT">Bhutan</option>
		        <option value="BO">Bolivia</option>
		        <option value="BA">Bosnia and Herzegovina</option>
		        <option value="BW">Botswana</option>
		        <option value="BV">Bouvet Island</option>
		        <option value="BR">Brazil</option>
		        <option value="IO">British Indian Ocean Territory</option>
		        <option value="BN">Brunei Darussalam</option>
		        <option value="BG">Bulgaria</option>
		        <option value="BF">Burkina Faso</option>
		        <option value="BI">Burundi</option>
		        <option value="CA">Canada</option>
		        <option value="CV">Cape Verde</option>
		        <option value="KH">Cambodia</option>
		        <option value="CM">Cameroon</option>
		        <option value="KY">Cayman Islands</option>
		        <option value="CF">Central African Republic</option>
		        <option value="TD">Chad</option>
		        <option value="CL">Chile</option>
		        <option value="CN">China</option>
		        <option value="CX">Christmas Island</option>
		        <option value="CO">Colombia</option>
		        <option value="CD">Congo (Democratic Republic)</option>
		        <option value="CG">Congo</option>
		        <option value="KM">Comoros</option>
		        <option value="CK">Cook Islands</option>
		        <option value="CR">Costa Rica</option>
		        <option value="HR">Croatia (Hrvatska)</option>
		        <option value="CU">Cuba</option>
		        <option value="CY">Cyprus</option>
		        <option value="CZ">Czech Republic</option>
		        <option value="DK">Denmark</option>
		        <option value="DJ">Djibouti</option>
		        <option value="DM">Dominica</option>
		        <option value="DO">Dominican Republic</option>
		        <option value="TP">East Timor</option>
		        <option value="EC">Ecuador</option>
		        <option value="EG">Egypt</option>
		        <option value="SV">El Salvador</option>
		        <option value="ER">Eritrea</option>
		        <option value="EE">Estonia</option>
		        <option value="ET">Ethiopia</option>
		        <option value="FK">Falkland Islands</option>
		        <option value="FO">Faroe Islands</option>
		        <option value="FJ">Fiji</option>
		        <option value="FI">Finland</option>
		        <option value="FR">France</option>
		        <option value="GF">French Guiana</option>
		        <option value="TF">French Southern Territories</option>
		        <option value="GA">Gabon</option>
		        <option value="GM">Gambia</option>
		        <option value="GE">Georgia</option>
		        <option value="DE">Germany</option>
		        <option value="GH">Ghana</option>
		        <option value="GI">Gibraltar</option>
		        <option value="GD">Grenada</option>
		        <option value="GR">Greece</option>
		        <option value="GL">Greenland</option>
		        <option value="GP">Guadeloupe</option>
		        <option value="GT">Guatemala</option>
		        <option value="GN">Guinea</option>
		        <option value="GQ">Guinea (Equatorial)</option>
		        <option value="GU">Guam</option>
		        <option value="GW">Guinea-Bissau</option>
		        <option value="GY">Guyana</option>
		        <option value="HT">Haiti</option>
		        <option value="HN">Honduras</option>
		        <option value="HK">Hong Kong</option>
		        <option value="HU">Hungary</option>
		        <option value="IS">Iceland</option>
		        <option value="IN">India</option>
		        <option value="ID">Indonesia</option>
		        <option value="IQ">Iraq</option>
		        <option value="IR">Iran</option>
		        <option value="IE">Ireland</option>
		        <option value="IL">Israel</option>
		        <option value="IT">Italy</option>
		        <option value="CI">Ivory Coast</option>
		        <option value="JM">Jamaica</option>
		        <option value="JP">Japan</option>
		        <option value="JO">Jordan</option>
		        <option value="KZ">Kazakhstan</option>
                <option value="KV">Kosovo</option>
		        <option value="KE">Kenya</option>
		        <option value="KI">Kiribati</option>
		        <option value="KP">Korea (North)</option>
		        <option value="KR">Korea (South)</option>
		        <option value="KW">Kuwait</option>
		        <option value="KG">Kyrgyzstan</option>
		        <option value="LA">Laos</option>
		        <option value="LV">Latvia</option>
		        <option value="LB">Lebanon</option>
		        <option value="LS">Lesotho</option>
		        <option value="LR">Liberia</option>
		        <option value="LY">Libya</option>
		        <option value="LI">Liechtenstein</option>
		        <option value="LT">Lithuania</option>
		        <option value="LU">Luxembourg</option>
		        <option value="MO">Macao</option>
		        <option value="MK">Macedonia</option>
		        <option value="MG">Madagascar</option>
		        <option value="MW">Malawi</option>
		        <option value="MY">Malaysia</option>
		        <option value="MV">Maldives</option>
		        <option value="ML">Mali</option>
		        <option value="MT">Malta</option>
		        <option value="MQ">Martinique</option>
		        <option value="MH">Marshall Islands</option>
		        <option value="MR">Mauritania</option>
		        <option value="MU">Mauritius</option>
		        <option value="YT">Mayotte</option>
		        <option value="MX">Mexico</option>
		        <option value="MD">Moldova</option>
		        <option value="MC">Monaco</option>
		        <option value="MN">Mongolia</option>
		        <option value="ME">Montenegro</option>
		        <option value="MS">Montserrat</option>
		        <option value="MA">Morocco</option>
		        <option value="MZ">Mozambique</option>
		        <option value="MM">Myanmar</option>
		        <option value="NA">Namibia</option>
		        <option value="NR">Nauru</option>
		        <option value="NP">Nepal</option>
		        <option value="NL">Netherlands</option>
		        <option value="NC">New Caledonia</option>
		        <option value="NZ">New Zealand</option>
		        <option value="NI">Nicaragua</option>
		        <option value="NE">Niger</option>
		        <option value="NG">Nigeria</option>
		        <option value="NU">Niue</option>
		        <option value="NF">Norfolk Island</option>
		        <option value="NO">Norway</option>
		        <option value="OM">Oman</option>
		        <option value="PK">Pakistan</option>
		        <option value="PW">Palau</option>
		        <option value="PS">Palestinian Territory</option>
		        <option value="PA">Panama</option>
		        <option value="PG">Papua New Guinea</option>
		        <option value="PY">Paraguay</option>
		        <option value="PE">Peru</option>
		        <option value="PH">Philippines</option>
		        <option value="PN">Pitcairn</option>
		        <option value="PL">Poland</option>
		        <option value="PF">Polynesia (French)</option>
		        <option value="PT">Portugal</option>
		        <option value="PR">Puerto Rico</option>
		        <option value="QA">Qatar</option>
		        <option value="RE">Reunion</option>
		        <option value="RO">Romania</option>
		        <option value="RU">Russian Federation</option>
		        <option value="RW">Rwanda</option>
		        <option value="SH">Saint Helena</option>
		        <option value="PM">Saint Pierre and Miquelon</option>
		        <option value="SM">San Marino</option>
		        <option value="ST">Sao Tome and Principe</option>
		        <option value="SA">Saudi Arabia</option>
		        <option value="WS">Samoa</option>
		        <option value="SN">Senegal</option>
		        <option value="SC">Seychelles</option>
		        <option value="SG">Singapore</option>
		        <option value="SK">Slovak Republic</option>
		        <option value="SI">Slovenia</option>
		        <option value="SB">Solomon Islands</option>
		        <option value="SO">Somalia</option>
		        <option value="ZA">South Africa</option>
		        <option value="ES">Spain</option>
		        <option value="SD">Sudan</option>
		        <option value="SJ">Svalbard and Jan Mayen</option>
		        <option value="SE">Sweden</option>
		        <option value="RS">Serbia</option>
		        <option value="SL">Sierra Leone</option>
		        <option value="SR">Suriname</option>
		        <option value="SY">Syria</option>
		        <option value="SZ">Swaziland</option>
		        <option value="LC">Saint Lucia</option>
		        <option value="LK">Sri Lanka</option>
		        <option value="CH">Switzerland</option>
		        <option value="KN">Saint Kitts and Nevis</option>
		        <option value="TC">Turks and Caicos Islands</option>
		        <option value="TG">Togo</option>
		        <option value="TH">Thailand</option>
		        <option value="TJ">Tajikistan</option>
		        <option value="TK">Tokelau</option>
		        <option value="TL">Timor-Leste</option>
		        <option value="TM">Turkmenistan</option>
		        <option value="TN">Tunisia</option>
		        <option value="TO">Tonga</option>
		        <option value="TR">Turkey</option>
		        <option value="TT">Trinidad and Tobago</option>
		        <option value="TV">Tuvalu</option>
		        <option value="TW">Taiwan</option>
		        <option value="TZ">Tanzania</option>
		        <option value="UA">Ukraine</option>
		        <option value="UG">Uganda</option>
		        <option value="AE">United Arab Emirates</option>
		        <option selected="selected" value="GB">United Kingdom</option>
		        <option value="US">United States</option>
		        <option value="SU">USSR (former)</option>
		        <option value="UY">Uruguay</option>
		        <option value="UZ">Uzbekistan</option>
		        <option value="VE">Venezuela</option>
		        <option value="VG">Virgin Islands (British)</option>
		        <option value="VI">Virgin Islands (U.S.)</option>
		        <option value="VN">Viet Nam</option>
		        <option value="VU">Vanuatu</option>
		        <option value="WF">Wallis and Futuna</option>
		        <option value="EH">Western Sahara</option>
		        <option value="YE">Yemen</option>
		        <option value="ZM">Zambia</option>
		        <option value="ZR">Zaire</option>
		        <option value="ZW">Zimbabwe</option>
            </select>
        </div>

        <div class="input_container editor_contact_page_address_input_container" id="editor_contact_page_address_usState_container">
            <label for="editor_contact_page_address_usState">US State</label>
            <select id="editor_contact_page_address_usState">
				<option value="">Please Select</option>
                <option value="AL">Alabama</option> 
                <option value="AK">Alaska</option>
                <option value="AZ">Arizona</option> 
                <option value="AR">Arkansas</option>
                <option value="CA">California</option>
                <option value="CO">Colorado</option>
                <option value="CT">Connecticut</option>   
                <option value="DE">Delaware</option>
                <option value="DC">District of Columbia</option>  
                <option value="FL">Florida</option> 
                <option value="GA">Georgia</option> 
                <option value="HI">Hawaii</option>
                <option value="ID">Idaho</option> 
                <option value="IL">Illinois</option>
                <option value="IN">Indiana</option> 
                <option value="IA">Iowa</option>
                <option value="KS">Kansas</option>
                <option value="KY">Kentucky</option>
                <option value="LA">Louisiana</option> 
                <option value="ME">Maine</option> 
                <option value="MD">Maryland</option>
                <option value="MA">Massachusetts</option> 
                <option value="MI">Michigan</option>
                <option value="MN">Minnesota</option> 
                <option value="MS">Mississippi</option>   
                <option value="MO">Missouri</option>
                <option value="MT">Montana</option> 
                <option value="NE">Nebraska</option>
                <option value="NV">Nevada</option>
                <option value="NH">New Hampshire</option> 
                <option value="NJ">New Jersey</option>
                <option value="NM">New Mexico</option>
                <option value="NY">New York</option>
                <option value="NC">North Carolina</option>
                <option value="ND">North Dakota</option>  
                <option value="OH">Ohio</option>
                <option value="OK">Oklahoma</option>
                <option value="OR">Oregon</option>
                <option value="PA">Pennsylvania</option>  
                <option value="RI">Rhode Island</option>  
                <option value="">South Carolina</option>
                <option value="SC">South Dakota</option>  
                <option value="TN">Tennessee</option> 
                <option value="TX">Texas</option> 
                <option value="UT">Utah</option>
                <option value="VT">Vermont</option> 
                <option value="VA">Virginia</option>
                <option value="WA">Washington</option>
                <option value="WV">West Virginia</option> 
                <option value="WI">Wisconsin</option> 
                <option value="WY">Wyoming</option> 
                <option value="AA">AA Armed Forces Europe</option>
                <option value="AE">AE Armed Forces Europe</option>
                <option value="AP">AP Armed Forces Pacific</option>
            </select>
        </div>

        <div class="input_container editor_contact_page_address_input_container" id="editor_contact_page_address_caState_container">
            <label for="editor_contact_page_address_caState">CA State</label>
            <select id="editor_contact_page_address_caState">
				<option value="">Please Select</option>
                <option value="AB">Alberta</option>   
                <option value="BC">British Columbia</option>  
                <option value="MB">Manitoba</option>  
                <option value="NB">New Brunswick</option> 
                <option value="NL">New Foundland and Labrador</option>
                <option value="NT">Northwest Territories</option> 
                <option value="NS">Nova Scotia</option>   
                <option value="NU">Nunavut</option>   
                <option value="ON">Ontario</option>   
                <option value="PE">Prince Edward Island</option>  
                <option value="QC">Quebec</option>
                <option value="sk">SaskatchewaN</option>
                <option value="YT">Yukon Territory</option>
            </select>
        </div>

        <div class="input_container editor_contact_page_address_input_container" id="editor_contact_page_address_region_container">
            <label for="editor_contact_page_address_region">Region/ State/ County</label>
            <input type="text" placeholder="Region/ State/ County" id="editor_contact_page_address_region" maxlength="50" onchange="contactDetailsChange();" onkeyup="contactDetailsChange();" onpaste="contactDetailsChange();" />
        </div>

        <div class="input_container editor_contact_page_address_input_container">
            <label for="editor_contact_page_address_zipcode">Post/ Zip Code</label>
            <input type="text" placeholder="Post/ Zip Code" id="editor_contact_page_address_zipcode" maxlength="20" onchange="contactDetailsChange();" onkeyup="contactDetailsChange();" onpaste="contactDetailsChange();" />
        </div>

        <div class="input_container editor_contact_page_address_input_container">
            <label for="editor_contact_page_address_telephone">Telephone</label>
            <input type="text" placeholder="0123456789" id="editor_contact_page_address_telephone" maxlength="50" onchange="contactDetailsChange();" onkeyup="contactDetailsChange();" onpaste="contactDetailsChange();" />
        </div>

        <div class="input_container editor_contact_page_address_input_container">
            <label for="editor_contact_page_address_fax">Fax</label>
            <input type="text" placeholder="0123456789" id="editor_contact_page_address_fax" maxlength="50" onchange="contactDetailsChange();" onkeyup="contactDetailsChange();" onpaste="contactDetailsChange();" />
        </div>

        <div class="input_container editor_contact_page_address_input_container">
            <label for="editor_contact_page_address_email">Display Email</label>
            <input type="email" placeholder="email@example.com" id="editor_contact_page_address_email" maxlength="255" onchange="contactDetailsChange();" onkeyup="contactDetailsChange();" onpaste="contactDetailsChange();" />
            <div class="alert" id="alert_displayEmail">Email Address Not Valid</div>
        </div>

    </div>

    <!-- SEO -->
    <div class="editor_pages_content_seo editor_panel_nice_info">
        <p>Edit your page SEO by clicking the button below</p>
        <a class="editor_main_button" onclick="editPageSeo();">Edit SEO</a>
    </div>

    <!-- Delete -->
    <div class="editor_pages_content_delete editor_panel_nice_info editor_pages_content_delete_disabled" style="display: block;">
        <p class="editor_pages_content_delete_text" data-type="link">This page type cannot be deleted.</p>
        <a class="editor_main_button editor_main_button_disabled editor_pages_content_delete_menu_button">Delete Page</a>
    </div>

    <div class="editor_info_panel margint40" data-type="translations">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title"><i class="fa fa-language" aria-hidden="true"></i>Edit Labels</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-down" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_details_tokens_list"></div>
        </div>
    </div>

    

</div>

<script>

    var defaultContactPageName = "";

    var buildPagesEditContactPanelLoaded = false;
    function buildPagesEditContactPanel() {

        if (buildPagesEditContactPanelLoaded == false) {

            axiosGet("/services/Pages.svc/getSinglePageContent?storeId=" + storeId + "&pageid=" + currentPageId + "&pagetype=6").then(function (data) {

                var pageInfo = data.d;
                if (pageInfo != null) {

                    pageInfo = JSON.parse(pageInfo);
                    console.log(pageInfo)

                    document.getElementById("editor_pages_name_contact").value = pageInfo.pageName;

                    defaultContactPageName = pageInfo.pageName;

                    thePageSeo = pageInfo.seo


                }

                buildContactPagePreferences();

            }).catch(function () {

            }).then(function () {

            });

			

        } else {

            document.querySelector(".editor_panel_item[data-type='edit-contact-page']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

        }

    }


    function buildContactPagePreferences() {
        // Preferences
        if (store.contact.showAddress == true) {
            document.getElementById("theme_editor_pages_contact_show_address_1").checked = true;
        } else {
            document.getElementById("theme_editor_pages_contact_show_address_2").checked = true;
        }

        if (store.contact.showMap == true) {
            document.getElementById("theme_editor_pages_contact_show_map_1").checked = true;
        } else {
            document.getElementById("theme_editor_pages_contact_show_map_2").checked = true;
        }

        if (store.contact.showTelephone == true) {
            document.getElementById("theme_editor_pages_contact_show_telephone_1").checked = true;
        } else {
            document.getElementById("theme_editor_pages_contact_show_telephone_2").checked = true;
        }

        if (store.contact.showEmail == true) {
            document.getElementById("theme_editor_pages_contact_show_displayemail_1").checked = true;
        } else {
            document.getElementById("theme_editor_pages_contact_show_displayemail_2").checked = true;
        }

        // Address

        var visibleAddress = '';

        if (store.contact.name != null) {
            document.getElementById("editor_contact_page_address_contactName").value = store.contact.name;
            visibleAddress += '<p>' + store.contact.name + '</p>';
        }
        if (store.contact.address1 != null) {
            document.getElementById("editor_contact_page_address_address1").value = store.contact.address1;
            visibleAddress += '<p>' + store.contact.address1 + '</p>';
        }
        if (store.contact.address2 != null) {
            document.getElementById("editor_contact_page_address_address2").value = store.contact.address2;
            visibleAddress += '<p>' + store.contact.address2 + '</p>';
        }
        if (store.contact.address3 != null) {
            document.getElementById("editor_contact_page_address_address3").value = store.contact.address3;
            visibleAddress += '<p>' + store.contact.address3 + '</p>';
        }
        if (store.contact.town != null) {
            document.getElementById("editor_contact_page_address_town").value = store.contact.town;
            visibleAddress += '<p>' + store.contact.town + '</p>';
        }
        if (store.contact.country != null) { document.getElementById("editor_contact_page_address_country").value = store.contact.country; }

        if (store.contact.country == "US") {
            showById("editor_contact_page_address_usState_container");
            if (store.contact.state != null) {
                document.getElementById("editor_contact_page_address_usState").value = store.contact.state;
                visibleAddress += '<p>' + store.contact.state + '</p>';
            }
        } else if (store.contact.country == "CA") {
            showById("editor_contact_page_address_caState_container");
            if (store.contact.state != null) {
                document.getElementById("editor_contact_page_address_caState").value = store.contact.state;
                visibleAddress += '<p>' + store.contact.state + '</p>';
            }
        } else {
            showById("editor_contact_page_address_region_container");
            if (store.contact.state != null) {
                document.getElementById("editor_contact_page_address_region").value = store.contact.state;
                visibleAddress += '<p>' + store.contact.state + '</p>';
            }
        }

        if (store.contact.country != null) {
            visibleAddress += '<p>' + store.contact.country + '</p>';
        }

        if (store.contact.postcode != null) {
            document.getElementById("editor_contact_page_address_zipcode").value = store.contact.postcode;
            visibleAddress += '<p>' + store.contact.postcode + '</p>';
        }
        if (store.contact.telephone != null) {
            document.getElementById("editor_contact_page_address_telephone").value = store.contact.telephone;
            visibleAddress += '<p>' + store.contact.telephone + '</p>';
        }
        if (store.contact.fax != null) {
            document.getElementById("editor_contact_page_address_fax").value = store.contact.fax;
            visibleAddress += '<p>' + store.contact.fax + '</p>';
        }
        if (store.contact.displayEmail != null) {
            document.getElementById("editor_contact_page_address_email").value = store.contact.displayEmail;
            visibleAddress += '<p>' + store.contact.displayEmail + '</p>';
        }

        document.getElementById("editor_contact_page_address_visible_data").innerHTML = visibleAddress;


        document.querySelector(".editor_panel_item[data-type='edit-contact-page']").classList.add("editor_panel_item_active");
        hideById("editor_panel_loader");
    }

    function toggleContactAddressEdit() {
        document.getElementById("editor_contact_page_address").classList.toggle("editor_contact_page_address_active");
    }

	function contactCountryChange() {

        hideById("editor_contact_page_address_usState_container", "editor_contact_page_address_caState_container", "editor_contact_page_address_region_container");

		var country = document.getElementById("editor_contact_page_address_country").value;

        if (country == "US") {
            showById("editor_contact_page_address_usState_container");
        } else if (country == "CA") {
            showById("editor_contact_page_address_caState_container");
        } else {
            showById("editor_contact_page_address_region_container");
        }

    }

    function contactDetailsChange() {

        hideById("alert_editor_contact_page_name", "alert_displayEmail");

        var pageName = stripHTMLPost($('#editor_pages_name_contact').val().trim());
        var displayEmail = stripHTMLPost($('#editor_contact_page_address_email').val().trim());


        if (pageName.length < 1) {
            showById("alert_editor_contact_page_name");
            document.getElementById("editor_panel_main_buttons").classList.remove("editor_panel_main_buttons_active");
        } else {

            if (displayEmail.length > 0 && validateEmail(displayEmail) == false) {
                showById("alert_displayEmail");
                document.getElementById("editor_panel_main_buttons").classList.remove("editor_panel_main_buttons_active");
            } else {

                document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");

                pageContactEditPreviewDelay(function () {

                    previewPageContactEditFly();

                }, 1000);

            }
            

        }

    }

    var pageContactEditPreviewDelay = (function () {
        var timer = 0;
        return function (callback, ms) {
            clearTimeout(timer);
            timer = setTimeout(callback, ms);
        };
    })();

    function previewPageContactEditFly() {

        var pageName = document.getElementById("editor_pages_name_contact").value.trim();

        if (pageName != null && pageName.length != 0) {
            var updateIframeData = {
                "action": "UPDATE_PAGE_TITLE",
                "info": pageName
            }

            updateIframeData = JSON.stringify(updateIframeData);

            window.frames[0].window.postMessage(updateIframeData, "*");

            showIframeLoader();
        }

    }

    function cancelContactPageEdit() {

        document.getElementById("editor_pages_name_contact").value = defaultContactPageName;

        
    }


    function saveContactPage() {

        var mapyes = false;
        if ($('#theme_editor_pages_contact_show_map_1').prop('checked')) {
            var mapyes = true;
        }

        var showyes = false;
        if ($('#theme_editor_pages_contact_show_address_1').prop('checked')) {
            var showyes = true;
        }

        var showTele = $('#theme_editor_pages_contact_show_telephone_1').prop('checked');
        var showEmail = $('#theme_editor_pages_contact_show_displayemail_1').prop('checked');
        var displayEmail = stripHTMLPost($('#editor_contact_page_address_email').val());

        var saveContact = [];

        var theCountry = stripHTMLPost($('#editor_contact_page_address_country').val());
        var theState = stripHTMLPost($('#editor_contact_page_address_region').val().trim());

        if (theCountry == "US") {
            theState = stripHTMLPost($('#editor_contact_page_address_usState').val().trim());
        } else if (theCountry == "CA") {
            theState = stripHTMLPost($('#editor_contact_page_address_caState').val().trim());
        }

        saveContact.push({
            name: stripHTMLPost($('#editor_contact_page_address_contactName').val().trim()),
            address1: stripHTMLPost($('#editor_contact_page_address_address1').val().trim()),
            address2: stripHTMLPost($('#editor_contact_page_address_address2').val().trim()),
            address3: stripHTMLPost($('#editor_contact_page_address_address3').val().trim()),
            town: stripHTMLPost($('#editor_contact_page_address_town').val().trim()),
            state: theState,
            zip: stripHTMLPost($('#editor_contact_page_address_zipcode').val().trim()),
            telephone: stripHTMLPost($('#editor_contact_page_address_telephone').val().trim()),
            map: mapyes,
            show: showyes,
            country: stripHTMLPost($('#editor_contact_page_address_country').val()),
            fax: stripHTMLPost($('#editor_contact_page_address_fax').val().trim()),
            showTelephone: showTele,
            showEmail: showEmail,
            displayEmail: displayEmail
        });

        var pageName = document.getElementById("editor_pages_name_contact").value.trim();

        var seoTitle = null;
        var seoKeywords = null;
        var seoDescription = null;
        var seoUrl = null;

        if (thePageSeo != null) {
            if (thePageSeo.title != null) {
                seoTitle = thePageSeo.title;
            }

            if (thePageSeo.keywords != null) {
                seoKeywords = thePageSeo.keywords.toString();
            }

            if (thePageSeo.description != null) {
                seoDescription = thePageSeo.description;
            }

            if (thePageSeo.url != null) {
                seoUrl = thePageSeo.url;
            }
        }

        var data = JSON.stringify({
            "storeId": storeId,
            "info": saveContact,
            "pageName": pageName,
            "pageId": currentPageId,
            'seo_url': seoUrl,
            'seo_title': seoTitle,
            'seo_keywords': seoKeywords,
            'seo_description': seoDescription
        });

        console.log("WE are here saving")

        axiosPost('/services/editor/editor.svc/editorSaveContact', data).then(function () {

            editorSaved();

        }).catch(function () {

            console.log("ERROR:ContactPage:saveContact");
            typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
            errorOccurred("save", "edit-contact-page", "saveContact");

        }).then(function () {

        });

        

    }


</script>
                    

<style>

    #advancedCSS_upgrade_info_panel{
        display: none;
    }

    #csseditor_footer{
        height: 40px;
        display: flex;
        flex-wrap: nowrap;
        justify-content: flex-end;
        align-items: center;
        position: relative;
    }

    #csseditor_footer_button{
        height: 30px;
        display: flex;
        flex-wrap: nowrap;
        padding: 0 10px;
        border-radius: 4px;
        align-items: center;
        cursor: pointer;
        transition: 0.25s;
    }

    #csseditor_footer_button:hover, #csseditor_footer_button.csseditor_footer_button_active{
        background-color: #ddd;
    }

    #csseditor_footer_button span{
        margin-left: 5px;
        margin-right: 5px;
        font-weight: bold;
        text-transform: capitalize;
    }

    #csseditor_footer_menu{
        bottom: 30px;
        right: 0;
        background-color: #FFF;
        position: absolute;
        border-bottom: 5px solid #339eff;
        box-shadow: 0 -5px 12px 2px #949494;
        border-radius: 4px;
        padding: 10px;
        transition: 0.25s;
        z-index: 30;
        opacity: 0;
        visibility: hidden;
    }

    #csseditor_footer_menu::after{
        content: '';
        display: block;
        width: 0; 
        height: 0; 
        border-left: 10px solid transparent;
        border-right: 10px solid transparent;
        border-top: 10px solid #339eff;
        bottom: -10px;
        position: absolute;
        right: 30px;
    }

    #csseditor_footer_menu.csseditor_footer_menu_active{
        opacity: 1;
        visibility: visible;
        bottom: 50px;
    }

    .csseditor_footer_menu_item{
        line-height: 30px;
        cursor: pointer;
        border-left: 6px solid #ddd;
        transition: 0.25s;
        padding: 0 10px;
    }

    .csseditor_footer_menu_item:not(:last-child){
        margin-bottom: 10px;
    }

    .csseditor_footer_menu_item:hover{
        border-left-color: #339eff;
        background-color: #f5f5f7;
        font-weight: bold;
    }

    .csseditor_footer_menu_item.csseditor_footer_menu_item_active{
        border-left-color: #5DC548 !important;
        background-color: #f5f5f7;
        font-weight: bold;
    }

    #csseditor{
        width: 100%;
        height: 50%;
        min-height: 300px;
        border: 1px solid #ddd;
    }

</style>

<div class="editor_panel_item" data-type="custom-css">
    
    <div class="upgrade_info_panel marginb20" id="advancedCSS_upgrade_info_panel">
        <div class="upgrade_info_panel_header">
            <div class="upgrade_info_panel_header_icon"><i class="fa fa-exclamation-triangle" aria-hidden="true"></i></div>
            <div class="upgrade_info_panel_header_title">Upgrade Required</div>
        </div>
        <div class="upgrade_info_panel_info_container">
            <div class="upgrade_info_panel_info">You need to upgrade to a premium plan to add custom CSS.</div>
            <a href="/upgrade2.aspx" class="upgrade_info_panel_button">View Amazing Premium Plans</a>
        </div>
    </div>

    <div id="csseditor"></div>
    <div id="csseditor_footer">
        <div id="csseditor_footer_button" onclick="toggleCssEditorMenu();">Editor Theme:<span id="csseditor_header_menu_button_name">Tomorrow</span><i class="fa fa-caret-up" aria-hidden="true"></i></div>
        <div id="csseditor_footer_menu">
            <p>Change the CSS Editor theme by selecting a theme below</p>
            <div class="csseditor_footer_menu_item" data-theme="ambiance" onclick="changeCssEditorTheme('ambiance');">Ambiance</div>
            <div class="csseditor_footer_menu_item" data-theme="dawn" onclick="changeCssEditorTheme('dawn');">Dawn</div>
            <div class="csseditor_footer_menu_item" data-theme="chaos" onclick="changeCssEditorTheme('chaos');">Chaos</div>
            <div class="csseditor_footer_menu_item" data-theme="kuroir" onclick="changeCssEditorTheme('kuroir');">Kuroir</div>
            <div class="csseditor_footer_menu_item" data-theme="monokai" onclick="changeCssEditorTheme('monokai');">Monokai</div>
            <div class="csseditor_footer_menu_item csseditor_footer_menu_item_active" data-theme="tomorrow" onclick="changeCssEditorTheme('tomorrow');">Tomorrow</div>
            <div class="csseditor_footer_menu_item" data-theme="twilight" onclick="changeCssEditorTheme('twilight');">Twilight</div>
        </div>
    </div>

    <div class="editor_info_panel margint40" data-type="info">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title">Info</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-up" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_subtitle">What is CSS?</div>
            <p>Cascading Style Sheets (CSS) in short is a way to style elements on your store using code.</p>
            <p>For example, you might want to increase the height of the footer, or make an image round.</p>
        </div>
    </div>

    <div class="editor_info_panel margint20" data-type="help">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title">Help</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-up" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_subtitle">Styles Not Applying</div>
            <ul>
                <li>You might need to add an <strong>!important</strong> tag.</li>
                <li>You might need to define your class/ ID more specifically. E.g. <strong>#idName.className</strong></li>
            </ul>
            <div class="editor_info_panel_subtitle">I don't know what this section is</div>
            <p>This section is only recommended for users who have a <strong>strong</strong> knowledge of CSS code.</p>
            <p>If you don't know what this section is for, it's likely you'll never need to use it.</p>
        </div>
    </div>

</div>


<script>

    var buildCustomCssPanelLoaded = false;
    var cssEditor;
    function buildCustomCssPanel() {

        if (buildCustomCssPanelLoaded == false) {

            cssEditor = ace.edit("csseditor");
            if (Cookies.get("fws_editor_cssTheme_" + storeId) != null) {
                var cssEditorTheme = Cookies.get("fws_editor_cssTheme_" + storeId);
                cssEditor.setTheme("ace/theme/" + cssEditorTheme);

                document.querySelector(".csseditor_footer_menu_item_active").classList.remove("csseditor_footer_menu_item_active");
                document.querySelector(".csseditor_footer_menu_item[data-theme='" + cssEditorTheme + "']").classList.add("csseditor_footer_menu_item_active");

                document.getElementById("csseditor_header_menu_button_name").innerText = cssEditorTheme;

            } else {
                cssEditor.setTheme("ace/theme/tomorrow");
            }
            
            cssEditor.getSession().setMode("ace/mode/css");

            if (checkIfPremium() == false) {
                cssEditor.setReadOnly(true);
                showById("advancedCSS_upgrade_info_panel");
            }

            var cssPlaceholderMessage = '/*\n';
            cssPlaceholderMessage += 'Custom CSS\n\n'
            cssPlaceholderMessage += 'You can use this section to\noverride your webstores\ncascading style sheets (CSS).\n\n';
            cssPlaceholderMessage += 'Just enter your custom CSS code\nin this text editor.\n\n';
            cssPlaceholderMessage += 'This section is recommended for\nusers who have a strong knowledge\nof CSS.\n\n';
            cssPlaceholderMessage += 'Tips:\n\n';
            cssPlaceholderMessage += 'Use the !important tag when adding\nyour own styles to make sure\nthey are applied.\n\n';
            cssPlaceholderMessage += 'Delete this comment before adding\nyour own CSS.\n';
            cssPlaceholderMessage += '*/';

            axiosGet('./services/theme_editor/Css.svc/GetCss?shopkeeper=' + storeId).then(function (data) {
                trace('getAdvancedCSS')

                var cssVal = data.d || data;
                var css = cssVal.css;
                console.log(css);

                if (css == null || css == "") {
                    cssEditor.setValue(cssPlaceholderMessage, -1)
                } else {
                    cssEditor.setValue(css, -1)
                }

                cssEditor.session.on('change', function () {
                    cssTyping();
                });

                buildCustomCssPanelLoaded = true;

                document.querySelector(".editor_panel_item[data-type='custom-css']").classList.add("editor_panel_item_active");
                hideById("editor_panel_loader");

            }).catch(function (err) {

                console.log("ERROR:CustomCss:GetCss");
                typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
                errorOccurred("load", "custom-css", "GetCss");

            }).then(function () {
                
            });


        } else {
            document.querySelector(".editor_panel_item[data-type='custom-css']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");
        }

    }

    function cssTyping() {

        document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");

        cssPreviewDelay(function () {

            previewCssFly(cssEditor.getValue().trim());

        }, 1000);

    }

    var cssPreviewDelay = (function () {
        var timer = 0;
        return function (callback, ms) {
            clearTimeout(timer);
            timer = setTimeout(callback, ms);
        };
    })();

    function previewCssFly(css) {

        var cssContent = css;

        var updateIframeData = {
            "action": "UPDATE_CUSTOM_CSS",
            "info": cssContent
        }

        updateIframeData = JSON.stringify(updateIframeData);

        window.frames[0].window.postMessage(updateIframeData, "*");

        showIframeLoader();

    }

    function cancelCssFly() {

        var updateIframeData = {
            "action": "CANCEL_CUSTOM_CSS"
        }

        updateIframeData = JSON.stringify(updateIframeData);

        window.frames[0].window.postMessage(updateIframeData, "*");

        showIframeLoader();

    }

    function saveCustomCss() {

        var cssContent = cssEditor.getValue().trim();

        var cssResults = {
            'storeId': storeId,
            'cssText': cssContent
        }
        cssResults = JSON.stringify(cssResults);

        setTimeout(function () {
            axiosPost('./services/theme_editor/Css.svc/PostCss', cssResults).then(function (data) {
                trace('getAdvancedCSS', data)

                editorSaved();

                cssSaveActive = false;

            }).catch(function (err) {

                console.log("ERROR:CustomCss:PostCss");
                typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
                errorOccurred("save", "custom-css", "PostCss");

            }).then(function () {

            });
        }, 1500);

    }

    function toggleCssEditorMenu() {
        document.getElementById("csseditor_footer_button").classList.toggle("csseditor_footer_button_active");
        document.getElementById("csseditor_footer_menu").classList.toggle("csseditor_footer_menu_active");
    }

    function changeCssEditorTheme(cssTheme) {
        document.getElementById("csseditor_footer_button").classList.remove("csseditor_footer_button_active");
        document.getElementById("csseditor_footer_menu").classList.remove("csseditor_footer_menu_active");
        document.querySelector(".csseditor_footer_menu_item_active").classList.remove("csseditor_footer_menu_item_active");
        document.querySelector(".csseditor_footer_menu_item[data-theme='" + cssTheme + "']").classList.add("csseditor_footer_menu_item_active");

        document.getElementById("csseditor_header_menu_button_name").innerText = cssTheme;
        Cookies.set("fws_editor_cssTheme_" + storeId, cssTheme);

        cssEditor.setTheme("ace/theme/" + cssTheme);
    }

</script>
                    

<style>

    .editor_panel_item_image_graphics_container{
        text-align: center;
    }

    .editor_panel_item_image_graphics_container:not(:first-child){
        margin-top: 50px;
    }

    .editor_panel_item_image_graphics_inner{
        display: flex;
        flex-wrap: nowrap;
        justify-content: center;
        align-items: center;
    }

    .editor_panel_item_image_graphics_item{
        text-align: center;
        height: 130px;
        width: 130px;
        cursor: pointer;
    }

    .editor_panel_item_image_graphics_item.editor_panel_item_image_graphics_item_selected{
        outline: 2px solid rgba(51, 158, 255, 0.6);
    }

    .editor_panel_item_image_graphics_item:first-child{
        margin-right: 10px;
    }

    .editor_panel_item_image_graphics_item_image_container{
        position: relative;
    }

    .editor_panel_item_image_graphics_item img{
        width: 100%;
        border: 1px solid #ddd;
    }

    .editor_panel_item_image_graphics_item.editor_panel_item_image_graphics_item_selected img{
        border: 1px solid rgba(51, 158, 255, 0.6);
    }

    .editor_panel_item_image_graphics_item_text{
        line-height: 25px;
    }

    .editor_panel_item_image_graphics_item_text::before{
        content: '';
        display: inline-block;
        width: 15px;
        height: 15px;
        border: 1px solid #b9b9b9;
        border-radius: 2px;
        margin-right: 5px;
        position: relative;
        top: 3px;
    }

    .editor_panel_item_image_graphics_item.editor_panel_item_image_graphics_item_selected .editor_panel_item_image_graphics_item_text::before{
        border-color: rgba(51, 158, 255, 1);
        background-color: rgba(51, 158, 255, 0.3);
    }


    #editor_panel_item_image_graphics_free-shipping,
    #editor_panel_item_image_graphics_out-of-stock{
        background-color: #ea1636;
        color: #FFF;
        position: absolute;
        bottom: 4px;
        left: 1px; right: 1px;
        text-align: center;
        line-height: 20px;
        font-size: 0.7rem;
        text-transform: uppercase;
        letter-spacing: 1px;
    }

    #editor_panel_item_image_graphics_offer-percent{
        position: absolute;
        top: 5px;
        right: 5px;
        width: 40px;
        height: 40px;
        border-radius: 50%;
        background-color: #5DC548;
        box-shadow: 0 0 5px 0px #4e9e3e;
        color: #FFF;
        text-align: center;
        display: flex;
        justify-content: center;
        align-items: center;
        font-size: 0.7rem;
        text-transform: uppercase;
        letter-spacing: 1px;
    }

</style>

<div class="editor_panel_item" data-type="image-graphics">

    
    <div class="editor_panel_item_image_graphics_container">
        <p><strong>Special Offer Overlays</strong></p>
        <div class="editor_panel_item_image_graphics_inner">
            <div class="editor_panel_item_image_graphics_item" data-status="enabled" data-type="offer" onclick="toggleImageGraphic(this);">
                <div class="editor_panel_item_image_graphics_item_image_container">
                    <img src="/images/products/dummy-product1.png" />
                    <div id="editor_panel_item_image_graphics_offer-percent">15%<br />Off</div>
                </div>
                <div class="editor_panel_item_image_graphics_item_text">Enabled</div>
            </div>

            <div class="editor_panel_item_image_graphics_item" data-status="disabled" data-type="offer" onclick="toggleImageGraphic(this);">
                <div class="editor_panel_item_image_graphics_item_image_container">
                    <img src="/images/products/dummy-product2.png" />
                </div>
                <div class="editor_panel_item_image_graphics_item_text">Disabled</div>
            </div>
        </div>
    </div>

    <div class="editor_panel_item_image_graphics_container">
        <p><strong>Free Shipping Overlays</strong></p>
        <div class="editor_panel_item_image_graphics_inner">
            <div class="editor_panel_item_image_graphics_item" data-status="enabled" data-type="shipping" onclick="toggleImageGraphic(this);">
                <div class="editor_panel_item_image_graphics_item_image_container">
                    <img src="/images/products/dummy-product3.png" />
                    <div id="editor_panel_item_image_graphics_free-shipping">Free Shipping</div>
                </div>
                <div class="editor_panel_item_image_graphics_item_text">Enabled</div>
            </div>

            <div class="editor_panel_item_image_graphics_item" data-status="disabled" data-type="shipping" onclick="toggleImageGraphic(this);">
                <div class="editor_panel_item_image_graphics_item_image_container"> 
                    <img src="/images/products/dummy-product4.png" />
                </div>
                <div class="editor_panel_item_image_graphics_item_text">Disabled</div>
            </div>
        </div>
    </div>

    <div class="editor_panel_item_image_graphics_container">
        <p><strong>Sold Out Overlays</strong></p>
        <div class="editor_panel_item_image_graphics_inner">
            <div class="editor_panel_item_image_graphics_item" data-status="enabled" data-type="stock" onclick="toggleImageGraphic(this);">
                <div class="editor_panel_item_image_graphics_item_image_container">
                    <img src="/images/products/dummy-product5.png" />
                    <div id="editor_panel_item_image_graphics_out-of-stock">Sold Out</div>
                </div>
                <div class="editor_panel_item_image_graphics_item_text">Enabled</div>
            </div>

            <div class="editor_panel_item_image_graphics_item" data-status="disabled" data-type="stock" onclick="toggleImageGraphic(this);">
                <div class="editor_panel_item_image_graphics_item_image_container">
                    <img src="/images/products/dummy-product6.png" />
                </div>
                <div class="editor_panel_item_image_graphics_item_text">Disabled</div>
            </div>
        </div>
    </div>

    <div class="editor_panel_item_image_graphics_container">
        <p><strong>Image Padding Color</strong></p>
        <div id="image_graphics_padding_color_container">
            <input type="text" id="image_graphics_padding_color" />
        </div>
    </div>

    <div class="editor_info_panel margint40" data-type="info">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title">Info</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-up" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_subtitle">What are Image Graphics?</div>
            <p>Image Graphics are overlays added to your main product images when certain conditions are met.</p>
            
            <div class="editor_info_panel_subtitle">What are Special Offer Overlays?</div>
            <p>When enabled, and a discount has been set on the product, a small icon will be displayed in the corner of the of the product image.</p>

            <div class="editor_info_panel_subtitle">What are Free Shipping Overlays?</div>
            <p>When enabled, and a Fixed Shipping Cost of zero or Free Shipping has been set on the product, a small banner will display on the product image.</p>

            <div class="editor_info_panel_subtitle">What are Sold Out Overlays?</div>
            <p>If products are set to remain on display on the store and Stock Control is "0" for a product, a small banner will show on the product image.</p>

            <div class="editor_info_panel_subtitle">What is Image Padding Color?</div>
            <p>If an image is smaller than the required size on your store, we will automatically pad the image to the correct size using the color you've selected.</p>
        </div>
    </div>


</div>

<script>

    var buildImageGraphicsPanelLoaded = false;
    function buildImageGraphicsPanel() {

        if (buildImageGraphicsPanelLoaded == false) {

            if (store.settings.gfxOffers == true) {
                document.querySelector(".editor_panel_item_image_graphics_item[data-type='offer'][data-status='enabled']").classList.add("editor_panel_item_image_graphics_item_selected");
                document.querySelector(".editor_panel_item_image_graphics_item[data-type='offer'][data-status='disabled']").classList.remove("editor_panel_item_image_graphics_item_selected");
            } else {
                document.querySelector(".editor_panel_item_image_graphics_item[data-type='offer'][data-status='enabled']").classList.remove("editor_panel_item_image_graphics_item_selected");
                document.querySelector(".editor_panel_item_image_graphics_item[data-type='offer'][data-status='disabled']").classList.add("editor_panel_item_image_graphics_item_selected");
            }

            if (store.settings.gfxShipping == true) {
                document.querySelector(".editor_panel_item_image_graphics_item[data-type='shipping'][data-status='enabled']").classList.add("editor_panel_item_image_graphics_item_selected");
                document.querySelector(".editor_panel_item_image_graphics_item[data-type='shipping'][data-status='disabled']").classList.remove("editor_panel_item_image_graphics_item_selected");
            } else {
                document.querySelector(".editor_panel_item_image_graphics_item[data-type='shipping'][data-status='enabled']").classList.remove("editor_panel_item_image_graphics_item_selected");
                document.querySelector(".editor_panel_item_image_graphics_item[data-type='shipping'][data-status='disabled']").classList.add("editor_panel_item_image_graphics_item_selected");
            }

            if (store.settings.gfxStock == true) {
                document.querySelector(".editor_panel_item_image_graphics_item[data-type='stock'][data-status='enabled']").classList.add("editor_panel_item_image_graphics_item_selected");
                document.querySelector(".editor_panel_item_image_graphics_item[data-type='stock'][data-status='disabled']").classList.remove("editor_panel_item_image_graphics_item_selected");
            } else {
                document.querySelector(".editor_panel_item_image_graphics_item[data-type='stock'][data-status='enabled']").classList.remove("editor_panel_item_image_graphics_item_selected");
                document.querySelector(".editor_panel_item_image_graphics_item[data-type='stock'][data-status='disabled']").classList.add("editor_panel_item_image_graphics_item_selected");
            }

            if (store.imagepaddingcolour != null) { document.getElementById("image_graphics_padding_color").value = store.imagepaddingcolour; }

            $("#image_graphics_padding_color").spectrum({
                showInitial: true,
                showInput: true,
                show: function () {
                    $(".sp-button-container button").addClass("button_disabled");
                },
                move: function () {
                    $(".sp-button-container button").removeClass("button_disabled");
                },
                change: function () {
                    imageGraphicsChange();
                }
            });

            $(".sp-button-container button").addClass("button_disabled");

            buildImageGraphicsPanelLoaded = true;

            document.querySelector(".editor_panel_item[data-type='image-graphics']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

        } else {

            document.querySelector(".editor_panel_item[data-type='image-graphics']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

        }

    }

    function toggleImageGraphic(el) {

        var status = el.getAttribute("data-status");
        var type = el.getAttribute("data-type");

        if (document.querySelector(".editor_panel_item_image_graphics_item_selected[data-type='" + type + "']") != null) {
            document.querySelector(".editor_panel_item_image_graphics_item_selected[data-type='" + type + "']").classList.remove("editor_panel_item_image_graphics_item_selected");
        }
        document.querySelector(".editor_panel_item_image_graphics_item[data-status='" + status + "'][data-type='" + type + "']").classList.add("editor_panel_item_image_graphics_item_selected");

        imageGraphicsChange();
    }

    function imageGraphicsChange() {
        document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");
    }

    function saveImageGraphics() {

        var offer = 0;
        if (document.querySelector(".editor_panel_item_image_graphics_item_selected[data-type='offer'][data-status='enabled']") != null) {
            offer = 1;
        }

        var shipping = 0;
        if (document.querySelector(".editor_panel_item_image_graphics_item_selected[data-type='shipping'][data-status='enabled']") != null) {
            shipping = 1;
        }

        var stock = 0;
        if (document.querySelector(".editor_panel_item_image_graphics_item_selected[data-type='stock'][data-status='enabled']") != null) {
            stock = 1;
        }

        var color = document.getElementById('image_graphics_padding_color').value;
            color = color.replace(/#/gm, '');

        var imagePaddingColor = color;

        var settings = {
            "imageOfferOptions": offer,
            "imagePostageOptions": shipping,
            "stockSoldOut": stock,
            "imagePaddingColor": imagePaddingColor
        }

        console.log(settings);

        settings = JSON.stringify(settings);

        axiosGet('/services/settingsv2/settings_design.svc/saveImage?storeId=' + storeId + '&settings=' + settings).then(function (data) {
            trace("saveImage:success");

            editorSaved();

        }).catch(function (e) {

            console.log("ERROR:ImageGraphics:saveImage");
            typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
            errorOccurred("save", "image-graphics", "saveImage");

        }).then(function () {
            trace("saveImage:complete");

        });

    }

</script>
                    

<style>

    .editor_panel_item_age_verification_container{
        text-align: center;
    }

    .editor_panel_item_age_verification_inner{
        display: flex;
        flex-wrap: nowrap;
        justify-content: center;
        align-items: center;
    }

    .editor_panel_item_age_verification_item{
        text-align: center;
        height: 130px;
        width: 130px;
        cursor: pointer;
    }

    .editor_panel_item_age_verification_item.editor_panel_item_age_verification_item_selected{
        outline: 2px solid rgba(51, 158, 255, 0.6);
    }

    .editor_panel_item_age_verification_item:first-child{
        margin-right: 10px;
    }

    .editor_panel_item_age_verification_item_image_container{
        position: relative;
    }

    .editor_panel_item_age_verification_item img{
        width: 100%;
        border: 1px solid #ddd;
    }

    .editor_panel_item_age_verification_item.editor_panel_item_age_verification_item_selected img{
        border: 1px solid rgba(51, 158, 255, 0.6);
    }

    .editor_panel_item_age_verification_item_text{
        line-height: 25px;
    }

    .editor_panel_item_age_verification_item_text::before{
        content: '';
        display: inline-block;
        width: 15px;
        height: 15px;
        border: 1px solid #b9b9b9;
        border-radius: 2px;
        margin-right: 5px;
        position: relative;
        top: 3px;
    }

    .editor_panel_item_age_verification_item.editor_panel_item_age_verification_item_selected .editor_panel_item_age_verification_item_text::before{
        border-color: rgba(51, 158, 255, 1);
        background-color: rgba(51, 158, 255, 0.3);
    }

    #age_verification_container{
        display: none;
        margin-top: 50px;
    }

    #age_verification_container.age_verification_container_active{
        display: block;
    }

    #editor_panel_item_age_verification_age-verify{
        background-color: #ea1636;
        color: #FFF;
        position: absolute;
        top: 1px;
        left: 0px; right: 0px;
        margin: 0 auto;
        text-align: center;
        line-height: 20px;
        font-size: 0.7rem;
        text-transform: uppercase;
        letter-spacing: 1px;
        width: 70px;
    }

    #age_verification_cookie_container{
        display: none;
    }

</style>

<div class="editor_panel_item" data-type="age-verification">

    <div class="editor_panel_item_age_verification_container">
        <div class="editor_panel_item_age_verification_inner">
            <div class="editor_panel_item_age_verification_item" data-type="enabled" onclick="toggleAgeVerifyStatus(true);">
                <div class="editor_panel_item_age_verification_item_image_container">
                    <img src="/images/products/Store-Wireframe.png" />
                    <div id="editor_panel_item_age_verification_age-verify">Age Verify</div>
                </div>
                <div class="editor_panel_item_age_verification_item_text">Enabled</div>
            </div>

            <div class="editor_panel_item_age_verification_item" data-type="disabled" onclick="toggleAgeVerifyStatus(false);">
                <div class="editor_panel_item_age_verification_item_image_container">
                    <img src="/images/products/Store-Wireframe.png" />
                </div>
                <div class="editor_panel_item_age_verification_item_text">Disabled</div>
            </div>
        </div>
    </div>

    <div id="age_verification_container">

        <div class="input_container">
            <label>Title</label>
            <input type="text" placeholder="Age Verification Title" id="age_verify_value_title" onchange="ageVerificationChangeOngoing();" onkeyup="ageVerificationChangeOngoing();" />
        </div>

        <div class="input_container">
            <label>Message</label>
            <textarea id="age_verify_value_message" onchange="ageVerificationChangeOngoing();" onkeyup="ageVerificationChangeOngoing();"></textarea>
        </div>

        <div class="input_container">
            <label>Leave Button</label>
            <input type="text" placeholder="Leave" id="age_verify_value_leave" onchange="ageVerificationChangeOngoing();" onkeyup="ageVerificationChangeOngoing();" />
        </div>

        <div class="input_container">
            <label>Enter Button</label>
            <input type="text" placeholder="Enter" id="age_verify_value_enter" onchange="ageVerificationChangeOngoing();" onkeyup="ageVerificationChangeOngoing();" />
        </div>

        <div>
            <p><strong>Background Color</strong></p>
            <div id="age_verification_color_container">
                <input type="text" id="age_verification_color" />
            </div>
        </div>

        <div class="input_container">
            <p><strong>Background Opacity:</strong> <span id="range_slider_text_attribute_ageOpacity"></span>%</p>
            <div id="age_verification_opacity" class="slider-range-min"></div>
            <div class="slider_range_text marginb20">
                <div class="slider_range_text_left">0%</div>
                <div class="slider_range_text_right">100%</div>
            </div>
        </div>

        <p><strong>Display When</strong></p>
        <div class="checkbox_container">
            <input type="checkbox" id="age_verification_always_ask" name="age_verification_always_ask" onchange="ageVerificationChangeOngoing();">
            <label for="age_verification_always_ask"><span>Always display age verification each visit</span></label>
        </div>

        <div id="age_verification_cookie_container" class="input_container">
            <p><strong>Cookie Duration:</strong> <span id="range_slider_text_attribute_ageCookie"></span> day(s)</p>
            <div id="age_verification_cookie" class="slider-range-min"></div>
            <div class="slider_range_text marginb20">
                <div class="slider_range_text_left">1 day</div>
                <div class="slider_range_text_right">100 days</div>
            </div>
        </div>

    </div>

    <div class="editor_info_panel margint40" data-type="info">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title">Info</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-up" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_subtitle">What is Age Verification?</div>
            <p>Enabling this feature places a popup window on your store. Your customers can only proceed once they confirm your requirements.</p>
            <p>If your customer declines, they will be redirected to Google.</p>
        </div>
    </div>

    <div class="editor_info_panel margint20" data-type="help">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title">Help</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-up" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_subtitle">I can't see the pop up on my live store</div>
            <p>It's likely that you've already confirmed the pop up. Once confirmed the pop up will be hidden for you.</p>
            <p>View your store on a different computer/ device, or in an incognito window to see the popup again.</p>
        </div>
    </div>

</div>

<script>

    var buildAgeVerificationPanelLoaded = false;
    function buildAgeVerificationPanel() {

        if (buildAgeVerificationPanelLoaded == false) {

            if (store.ageVerify != null) {

                if (store.ageVerify.enabled == false) {
                    toggleAgeVerifyStatus(false);
                } else {
                    toggleAgeVerifyStatus(true);
                }

                if (store.ageVerify.title != null) { document.getElementById("age_verify_value_title").value = store.ageVerify.title; }
                if (store.ageVerify.message != null) { document.getElementById("age_verify_value_message").value = store.ageVerify.message; }
                if (store.ageVerify.leaveText != null) { document.getElementById("age_verify_value_leave").value = store.ageVerify.leaveText; }
                if (store.ageVerify.enterText != null) { document.getElementById("age_verify_value_enter").value = store.ageVerify.enterText; }
                if (store.ageVerify.overlayColour != null) { document.getElementById("age_verification_color").value = store.ageVerify.overlayColour; }

                if (store.ageVerify.cookieDays > -1) {

                    $("#age_verification_cookie").slider({
                        range: "min",
                        value: store.ageVerify.cookieDays,
                        min: 1,
                        max: 100,
                        step: 1,
                        slide: function (event, ui) {
                            document.getElementById('range_slider_text_attribute_ageCookie').innerText = ui.value;
                            ageVerificationChangeOngoing();
                        },
                        stop: function (event, ui) {

                        }
                    });

                    document.getElementById('range_slider_text_attribute_ageCookie').innerText = store.ageVerify.cookieDays;

                    showById("age_verification_cookie_container");

                } else {
                    document.getElementById("age_verification_always_ask").checked = true;
                    $("#age_verification_cookie").slider({
                        range: "min",
                        value: 1,
                        min: 1,
                        max: 100,
                        step: 1,
                        slide: function (event, ui) {
                            document.getElementById('range_slider_text_attribute_ageCookie').innerText = ui.value;
                            ageVerificationChangeOngoing();
                        },
                        stop: function (event, ui) {

                        }
                    });

                    document.getElementById('range_slider_text_attribute_ageCookie').innerText = 1;
                }
                

            } else {
                toggleAgeVerifyStatus(false);

                document.getElementById("age_verify_value_title").value = "Age Verification"; 
                document.getElementById("age_verify_value_message").value = "You must be 18 or over to access this store. If you are under 18 then you must leave."; 
                document.getElementById("age_verify_value_leave").value = "Leave"; 
                document.getElementById("age_verify_value_enter").value = "Enter"; 

                document.getElementById("age_verification_color").value = "#000000";

                $("#age_verification_cookie").slider({
                    range: "min",
                    value: 30,
                    min: 1,
                    max: 100,
                    step: 1,
                    slide: function (event, ui) {
                        document.getElementById('range_slider_text_attribute_ageCookie').innerText = ui.value;
                        ageVerificationChangeOngoing();
                    },
                    stop: function (event, ui) {

                    }
                });

                document.getElementById('range_slider_text_attribute_ageCookie').innerText = 30;

            }


            $("#age_verification_color").spectrum({
                showInitial: true,
                showInput: true,
                show: function () {
                    $(".sp-button-container button").addClass("button_disabled");
                },
                move: function () {
                    $(".sp-button-container button").removeClass("button_disabled");
                },
                change: function () {
                    ageVerificationChangeOngoing();
                }
            });

            $(".sp-button-container button").addClass("button_disabled");


            if (typeof store.ageVerify == "undefined" || store.ageVerify == null || store.ageVerify.overlayOpacity == null) {
                var overlayOpacity = 80;
            } else {
                var overlayOpacity = store.ageVerify.overlayOpacity;
            }

            $("#age_verification_opacity").slider({
                range: "min",
                value: overlayOpacity,
                min: 1,
                max: 100,
                step: 1,
                slide: function (event, ui) {
                    document.getElementById('range_slider_text_attribute_ageOpacity').innerText = ui.value;
                    ageVerificationChangeOngoing();
                },
                stop: function (event, ui) {

                }
            });

            document.getElementById('range_slider_text_attribute_ageOpacity').innerText = overlayOpacity;


            buildAgeVerificationPanelLoaded = true;
            document.querySelector(".editor_panel_item[data-type='age-verification']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

            ageVerificationChangeOngoing(true);
        } else {
            document.querySelector(".editor_panel_item[data-type='age-verification']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");
            ageVerificationChangeOngoing(true);
        }

    }

    function toggleAgeVerifyStatus(status) {

        if (status == false) {
            document.querySelector(".editor_panel_item_age_verification_item[data-type='enabled']").classList.remove("editor_panel_item_age_verification_item_selected");
            document.querySelector(".editor_panel_item_age_verification_item[data-type='disabled']").classList.add("editor_panel_item_age_verification_item_selected");
            hideById("age_verification_container");
        } else {
            document.querySelector(".editor_panel_item_age_verification_item[data-type='disabled']").classList.remove("editor_panel_item_age_verification_item_selected");
            document.querySelector(".editor_panel_item_age_verification_item[data-type='enabled']").classList.add("editor_panel_item_age_verification_item_selected");
            showById("age_verification_container");
        }
        if (buildAgeVerificationPanelLoaded == true) {
            ageVerificationChangeOngoing();
        }

    }

    function ageVerificationChangeOngoing(firstAgeVerificationLoad) {

        if (firstAgeVerificationLoad == null) {
            document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");
        }


        var alwaysDisplay = document.getElementById("age_verification_always_ask").checked;
        if (alwaysDisplay == true) {
            hideById("age_verification_cookie_container");
        } else {
            showById("age_verification_cookie_container");
        }


        ageVerificationPreviewDelay(function () {

            ageVerificationChange();

        }, 500);

    }

    var ageVerificationPreviewDelay = (function () {
        var timer = 0;
        return function (callback, ms) {
            clearTimeout(timer);
            timer = setTimeout(callback, ms);
        };
    })();


    function ageVerificationChange() {

        var whichSelected = document.querySelector(".editor_panel_item_age_verification_item_selected").getAttribute("data-type");

        var enabled = false;
        if (whichSelected == "enabled") {
            enabled = true;
        }

        
        var title = document.getElementById("age_verify_value_title").value.trim();
        var message = document.getElementById("age_verify_value_message").value.trim();
        var leaveText = document.getElementById("age_verify_value_leave").value.trim();
        var enterText = document.getElementById("age_verify_value_enter").value.trim();
        var color = document.getElementById("age_verification_color").value.trim();
        var opacity = document.getElementById("range_slider_text_attribute_ageOpacity").innerText.trim();

        var alwaysDisplay = document.getElementById("age_verification_always_ask").checked;
        if (alwaysDisplay == true) {
            var cookieDays = -1;
        } else {
            var cookieDays = document.getElementById("range_slider_text_attribute_ageCookie").innerText.trim();
        }

        if (!color.startsWith("#")) {
            color = "#" + color;
        }

        var updateIframeData = {
            "action": "UPDATE_AGE_VERIFICATION",
            "info": {
                "enabled": enabled,
                "title": title,
                "message": message,
                "leaveText": leaveText,
                "enterText": enterText,
                "color": color,
                "opacity": opacity,
                "cookieDays": cookieDays
            }
        }

        updateIframeData = JSON.stringify(updateIframeData);

        window.frames[0].window.postMessage(updateIframeData, "*");

        showIframeLoader();

    }

    function cancelAgeVerification() {
        var updateIframeData = {
            "action": "CANCEL_AGE_VERIFICATION"
        }

        updateIframeData = JSON.stringify(updateIframeData);

        setTimeout(function () {
            window.frames[0].window.postMessage(updateIframeData, "*");
            showIframeLoader();
        }, 1000);
    }

    function saveAgeVerification() {

        var ageTitle = stripHTMLPost(document.getElementById("age_verify_value_title").value.trim())
        ageTitle = ageTitle.replace(/\'/gm, "\\'");

        var ageContent = stripHTMLPost(document.getElementById("age_verify_value_message").value.trim())
        ageContent = ageContent.replace(/\'/gm, "\\'");

        var ageLeaveTxt = stripHTMLPost(document.getElementById("age_verify_value_leave").value.trim());
        ageLeaveTxt = ageLeaveTxt.replace(/\'/gm, "\\'");

        var ageEnterTxt = stripHTMLPost(document.getElementById("age_verify_value_enter").value.trim());
        ageEnterTxt = ageEnterTxt.replace(/\'/gm, "\\'");

        var whichSelected = document.querySelector(".editor_panel_item_age_verification_item_selected").getAttribute("data-type");

        var enabled = "0";
        if (whichSelected == "enabled") {
            enabled = "1";
        }

        var alwaysDisplay = document.getElementById("age_verification_always_ask").checked;
        if (alwaysDisplay == true) {
            var cookieDays = -1;
        } else {
            var cookieDays = stripQuotes(stripHTML(document.getElementById("range_slider_text_attribute_ageCookie").innerText.trim()));
            cookieDays = parseInt(cookieDays);
        }

        var ageSettings = {
            AgeRestriction: enabled,
            AgeTitle: ageTitle,
            AgeContent: ageContent,
            AgeLeaveTxt: ageLeaveTxt,
            AgeEnterTxt: ageEnterTxt,
            AgeBackDropColor: document.getElementById("age_verification_color").value.trim(),
            AgeOpacity: stripQuotes(stripHTML($('#range_slider_text_attribute_ageOpacity').text().trim())),
            AgeDays: cookieDays
        };

        console.log(ageSettings);

        var url = "/services/settingsv2/settings_store.svc/saveAgeSettings";
        var data = {
            "storeId": storeId,
            "settings": ageSettings
        }
        data = JSON.stringify(data);

        axiosPost(url, data).then(function (data) {

            editorSaved();

        }).catch(function (e) {

            console.log("ERROR:AgeVerification:saveAgeSettings");
            typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
            errorOccurred("save", "age-verification", "saveAgeSettings");

        }).then(function () {

        });

    }

</script>
                    

<style>
    #favicon_upgrade_info_panel{
        margin-bottom: 20px;
        display: none;
    }

    #editor_image_container-favicon{
        max-width: 100px;
        margin: 10px auto 0 auto;
    }

    #editor_image-favicon{
        width: 60px;
        height: 60px;
    }

    #favicon_add_new_button i{
        margin-right: 5px;
        position: relative;
        top: 1px;
        font-size: 1rem;
    }

</style>

<div class="editor_panel_item" data-type="favicon">
    
    <!--<div class="upgrade_info_panel" id="favicon_upgrade_info_panel">
        <div class="upgrade_info_panel_header">
            <div class="upgrade_info_panel_header_icon"><i class="fa fa-exclamation-triangle" aria-hidden="true"></i></div>
            <div class="upgrade_info_panel_header_title">Domain Name Required</div>
        </div>
        <div class="upgrade_info_panel_info_container">
            <div class="upgrade_info_panel_info">You need to connect a domain name in order to add your own favicon.</div>
            <a href="/marketing_domains.aspx" class="upgrade_info_panel_button">Connect a Domain Name</a>
        </div>
    </div>-->

    <div class="align_center">
        <div><strong>Your Favicon</strong></div>
        <div id="editor_image_container-favicon" class="editor_image_container">
            <div class="editor_image_container_bg_mode" data-type="favicon" onclick="editorImageChangeBgMode('favicon')"><i class="fa fa-moon-o" aria-hidden="true"></i></div>
            <div class="editor_image_inner_container">
                <div id="editor_image-favicon_container"></div>
                <div class="editor_image_add_button" onclick="addNewFaviconImage();">
                    <div class="editor_image_add_button_icon"><i class="fa fa-plus" aria-hidden="true"></i></div>
                    <span class="editor_image_add_button_text">Change</span>
                </div>
                <div class="editor_image_loading">
                    <div class="editor_image_loading_icon"><i class="fa fa-spinner fa-spin" aria-hidden="true"></i></div>
                    <span class="editor_image_loading_text">Loading</span>
                </div>
            </div>
        </div>
        <a id="favicon_add_new_button" class="editor_main_button" onclick="addNewFaviconImage();">Add New Favicon Image</a>
    </div>

    <div class="editor_info_panel margint40" data-type="info">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title">Info</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-up" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_subtitle">What is a Favicon?</div>
            <p>A Favicon is a small image that typically appears in the Address Bar or tab bar of your browser.</p>
            <p>Click the <strong>Add New Favicon Image</strong> button above to upload your own Favicon.</p>
        </div>
    </div>

    <div class="editor_info_panel margint20" data-type="help">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title">Help</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-up" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_subtitle">Supported File Formats</div>
            <ul>
                <li>.ico</li>
                <li>.png</li>
                <li>.jpg</li>
            </ul>
            <div class="editor_info_panel_subtitle">Best Results</div>
            <p>For the best results, upload a square image which is no larger than 256px in height and width.</p>
            <div class="editor_info_panel_subtitle">Benefits of Adding a Favicon</div>
            <ul>
                <li>Be more easily recognized.</li>
                <li>A great way to brand your site.</li>
                <li>Increase the prominence of your site in browser tabs and the bookmark menu.</li>
                <li>Differentiate your website from your competitors.</li>
            </ul>
        </div>
    </div>

</div>

<script>

    var buildFaviconPanelLoaded = false;
    function buildFaviconPanel() {

        if (buildFaviconPanelLoaded == false) {

            
            /*if (checkUrlIsDomain(storeUrl) == true) {
                document.getElementById("favicon_add_new_button").removeAttribute("onclick");
                document.getElementById("favicon_add_new_button").innerHTML = "<i class='fa fa-lock'></i>Add New Favicon image";
                document.getElementById("favicon_add_new_button").classList.add("editor_main_button_disabled");
                showById("favicon_upgrade_info_panel");
            }*/

            favicon = store.settings.faviconUrl;
            if (favicon == null) {
                document.getElementById("editor_image-favicon_container").innerHTML = '<img id="editor_image-favicon" class="editor_image" src="//static.fw1.biz/' + favicon + '" onerror="faviconImageBrokenPanelTwo();" />';
            } else {
                document.getElementById("editor_image-favicon_container").innerHTML = '<img id="editor_image-favicon" class="editor_image" src="//static.fw1.biz/' + favicon + '" onerror="faviconImageBrokenPanel(\'' + favicon + '\');" />';
            }

            if (Cookies.get("fws_editor_imageBG_favicon_" + storeId) != null) {
                var bg = Cookies.get("fws_editor_imageBG_favicon_" + storeId);
                if (bg == "dark") {
                    document.querySelector(".editor_image_container_bg_mode[data-type='favicon'] i").classList.remove("fa-moon-o");
                    document.querySelector(".editor_image_container_bg_mode[data-type='favicon'] i").classList.add("fa-sun-o");

                    document.querySelector("#editor_image_container-favicon .editor_image_inner_container").classList.add("editor_image_inner_container_dark");
                }
            }

            buildFaviconPanelLoaded = true;
            document.querySelector(".editor_panel_item[data-type='favicon']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");
        } else {
            document.querySelector(".editor_panel_item[data-type='favicon']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");
        }

    }

    // FIX BROKEN FAVICON 1
    function faviconImageBrokenPanel(url) {
        var newFaviconUrl = 'https://d11fdyfhxcs9cr.cloudfront.net/favicon/' + storeId + '/' + url;
        document.getElementById("editor_image-favicon").setAttribute("onerror", "faviconImageBrokenPanelTwo();");
        document.getElementById("editor_image-favicon").setAttribute("src", newFaviconUrl);
    }

    // FIX BROKEN FAVICON 2
    function faviconImageBrokenPanelTwo() {
        var newFaviconUrl = 'https://freewebstore.com/images/logo/favicon.png';
        document.getElementById("editor_image-favicon").removeAttribute("onerror");
        document.getElementById("editor_image-favicon").setAttribute("src", newFaviconUrl);
    }

    // Add New Image
    function addNewFaviconImage() {
        /*if (checkUrlIsDomain(storeUrl) == false) {*/
            document.getElementById("editor_overlay").classList.add("editor_overlay_active");
            openImageGallery(1, 'faviconAdd');
        /*}*/
    }

    // Visually Add New Image
    var newFaviconFileName;
    function runFaviconFinalAdd(imageUrl) {

        newFaviconFileName = imageUrl;

        document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");

        document.getElementById("editor_image_container-favicon").classList.add("editor_image_container_loading");
        document.getElementById("iframe_browser_header_url_favicon").innerHTML = '<i class="fa fa-circle-o-notch fa-spin color_primary"></i>';

        var url = 'https://s3-eu-west-1.amazonaws.com/prodimg.fw1.biz/' + storeId + '/' + imageUrl;

        setTimeout(function () {

            document.getElementById("editor_image-favicon_container").innerHTML = '<img id="editor_image-favicon" class="editor_image" src="' + url + '" onerror="faviconImageBrokenPanel(\'' + imageUrl + '\');" />';
            document.getElementById("iframe_browser_header_url_favicon").innerHTML = '<img id="iframe_browser_header_url_favicon_image" src="' + url + '" onerror="faviconImageBrokenIframe(\'' + imageUrl + '\');" />';
            document.getElementById("editor_image_container-favicon").classList.remove("editor_image_container_loading");

        }, 4000);

    }

    // Save Favicon
    function saveFavicon() {

        var url = "/services/design/Favicon.svc/UpdateFavicon";

        var data = JSON.stringify({ 'shopkeeper': storeId, 'fName': newFaviconFileName });

        axiosPost(url, data).then(function (res) {
            var result = res.d;
            if (result.success) {

                editorSaved();

            } else {

                console.log("ERROR:Favicon:UpdateFavicon");
                typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
                errorOccurred("save", "favicon", "UpdateFavicon");

            }
        }).catch(function () {

            console.log("ERROR:Favicon:UpdateFavicon");
            typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
            errorOccurred("save", "favicon", "UpdateFavicon");

        }).then(function () {

        });

    }

    // Cancel Favicon
    function cancelFavicon() {

        document.getElementById("editor_image-favicon_container").innerHTML = '<img id="editor_image-favicon" class="editor_image" src="' + favicon + '" onerror="faviconImageBrokenPanel(\'' + favicon + '\');" />';
        document.getElementById("iframe_browser_header_url_favicon").innerHTML = '<img id="iframe_browser_header_url_favicon_image" src="' + favicon + '" onerror="faviconImageBrokenIframe(\'' + favicon + '\');" />';

    }

</script>
                    

<style>


    #vacation_mode_resend_email_container{
        display: none;
        margin-bottom: 50px;
    }

    .editor_panel_item_vacation_mode_container{
        text-align: center;
    }

    .editor_panel_item_vacation_mode_inner{
        display: flex;
        flex-wrap: nowrap;
        justify-content: center;
        align-items: center;
    }

    .editor_panel_item_vacation_mode_item{
        text-align: center;
        height: 130px;
        width: 130px;
        cursor: pointer;
    }

    .editor_panel_item_vacation_mode_item.editor_panel_item_vacation_mode_item_selected{
        outline: 2px solid rgba(51, 158, 255, 0.6);
    }

    .editor_panel_item_vacation_mode_item:first-child{
        margin-right: 10px;
    }

    .editor_panel_item_vacation_mode_item_image_container{
        position: relative;
    }

    .editor_panel_item_vacation_mode_item img{
        width: 100%;
        border: 1px solid #ddd;
    }

    .editor_panel_item_vacation_mode_item.editor_panel_item_vacation_mode_item_selected img{
        border: 1px solid rgba(51, 158, 255, 0.6);
    }

    .editor_panel_item_vacation_mode_item_text{
        line-height: 25px;
    }

    .editor_panel_item_vacation_mode_item_text::before{
        content: '';
        display: inline-block;
        width: 15px;
        height: 15px;
        border: 1px solid #b9b9b9;
        border-radius: 2px;
        margin-right: 5px;
        position: relative;
        top: 3px;
    }

    .editor_panel_item_vacation_mode_item.editor_panel_item_vacation_mode_item_selected .editor_panel_item_vacation_mode_item_text::before{
        border-color: rgba(51, 158, 255, 1);
        background-color: rgba(51, 158, 255, 0.3);
    }

    #vacation_mode_container{
        display: none;
        margin-top: 50px;
    }

    #vacation_mode_container.vacation_mode_container_active{
        display: block;
    }

    #editor_panel_item_vacation_mode_vacation-mode{
        background-color: #ea1636;
        color: #FFF;
        position: absolute;
        top: 1px;
        left: 0px; right: 0px;
        margin: 0 auto;
        text-align: center;
        line-height: 20px;
        font-size: 0.7rem;
        text-transform: uppercase;
        letter-spacing: 1px;
        width: 70px;
    }
</style>

<div class="editor_panel_item" data-type="vacation-mode">
    
    <div id="vacation_mode_resend_email_container" class="bootstrap_warning">
        <p><strong>Verify your Email Address</strong></p>
        <p>You need to verify your email address before you can set your store status to <em>Active</em>/ disable vacation mode.</p>
        <a id="vacation_mode_resend_email_button" class="button button_dgrey" onclick="vacationModeResendVerificationEmail();">Resend Verification Email</a>
    </div>

    <div class="editor_panel_item_vacation_mode_container">
        <div class="editor_panel_item_vacation_mode_inner">
            <div class="editor_panel_item_vacation_mode_item" data-type="enabled" onclick="togglevacationModeStatus(true);">
                <div class="editor_panel_item_vacation_mode_item_image_container">
                    <img src="/images/products/Store-Wireframe.png" />
                    <div id="editor_panel_item_vacation_mode_vacation-mode">On Vacation</div>
                </div>
                <div class="editor_panel_item_vacation_mode_item_text">Unpublish</div>
            </div>

            <div class="editor_panel_item_vacation_mode_item" data-type="disabled" onclick="togglevacationModeStatus(false);">
                <div class="editor_panel_item_vacation_mode_item_image_container">
                    <img src="/images/products/Store-Wireframe.png" />
                </div>
                <div class="editor_panel_item_vacation_mode_item_text">Publish</div>
            </div>
        </div>
    </div>

    <div id="vacation_mode_container">

        <div class="input_container">
            <label>Vacation Message</label>
            <textarea id="vacation_mode_message" onchange="vacationModeChangeOngoing();" onkeyup="vacationModeChangeOngoing();"></textarea>
        </div>

    </div>

    <div class="editor_info_panel margint40" data-type="info">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title">Info</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-up" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_subtitle">What is Vacation Mode?</div>
            <p>Vacation Mode/ Store Status is a way to temporarily suspend your store, perhaps if you are going on vacation or just need to focus on something else for a while.</p>
            <p>With <em>On Vacation</em> selected, your customers will be greeted with a friendly message that blocks them from accessing your store.</p>
        </div>
    </div>

    <div class="editor_info_panel margint20" data-type="help">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title">Help</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-up" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_subtitle">Can customers purchase from my store whilst <em>On Vacation</em>?</div>
            <p>No, your customers cannot purchase anything from your store when Vacation Mode is enabled.</p>
            <div class="editor_info_panel_subtitle">Will it hurt SEO when enabled?</div>
            <p>SEO is not affected as the html source code is still reachable by search engine spiders and bots. We simply add an overlay to prevent shoppers from interacting with the store.</p>
        </div>
    </div>

</div>


<script>

    var buildVacationModePanelLoaded = false;
    function buildVacationModePanel() {

        if (buildVacationModePanelLoaded == false) {

            if (store.settings.holiday != null) {

                if (store.settings.holiday == false) {
                    togglevacationModeStatus(false);
                } else {
                    togglevacationModeStatus(true);
                }

                if (store.settings.holidayText != null) {
                    document.getElementById("vacation_mode_message").value = store.settings.holidayText.trim();
                }

            } else {
                togglevacationModeStatus(false);
            }

            if (store.status.status == 0) {
                togglevacationModeStatus(true);
                showById("vacation_mode_resend_email_container");
                document.querySelector(".editor_panel_item_vacation_mode_item[data-type='disabled']").removeAttribute("onclick");
                document.querySelector(".editor_panel_item_vacation_mode_item[data-type='enabled']").removeAttribute("onclick");
            }

            buildVacationModePanelLoaded = true;
            document.querySelector(".editor_panel_item[data-type='vacation-mode']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

            vacationModeChangeOngoing(true);
        } else {
            document.querySelector(".editor_panel_item[data-type='vacation-mode']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");
            vacationModeChangeOngoing(true);
        }

    }

    function togglevacationModeStatus(status) {

        if (status == false) {
            document.querySelector(".editor_panel_item_vacation_mode_item[data-type='enabled']").classList.remove("editor_panel_item_vacation_mode_item_selected");
            document.querySelector(".editor_panel_item_vacation_mode_item[data-type='disabled']").classList.add("editor_panel_item_vacation_mode_item_selected");
            hideById("vacation_mode_container");
        } else {
            document.querySelector(".editor_panel_item_vacation_mode_item[data-type='disabled']").classList.remove("editor_panel_item_vacation_mode_item_selected");
            document.querySelector(".editor_panel_item_vacation_mode_item[data-type='enabled']").classList.add("editor_panel_item_vacation_mode_item_selected");
            showById("vacation_mode_container");
        }
        if (buildVacationModePanelLoaded == true) {
            vacationModeChangeOngoing();
        }

    }

    function vacationModeChangeOngoing(firstVacationModeLoad) {

        if (firstVacationModeLoad == null) {
            document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");
        }

        cssPreviewDelay(function () {

            vacationModeChange();

        }, 500);

    }

    var vacationModePreviewDelay = (function () {
        var timer = 0;
        return function (callback, ms) {
            clearTimeout(timer);
            timer = setTimeout(callback, ms);
        };
    })();

    function vacationModeChange() {

        console.log("VACATION MODE CHANGE JUST RAN")

        var whichSelected = document.querySelector(".editor_panel_item_vacation_mode_item_selected").getAttribute("data-type");

        var enabled = false;
        if (whichSelected == "enabled") {
            enabled = true;
        }

        var message = document.getElementById("vacation_mode_message").value.trim();

        var updateIframeData = {
            "action": "UPDATE_VACATION_MODE",
            "info": {
                "enabled": enabled,
                "message": message,
            }
        }

        updateIframeData = JSON.stringify(updateIframeData);

        window.frames[0].window.postMessage(updateIframeData, "*");

        showIframeLoader();

    }


    function cancelVacationMode() {
        var updateIframeData = {
            "action": "CANCEL_VACATION_MODE"
        }

        updateIframeData = JSON.stringify(updateIframeData);

        setTimeout(function () {
            window.frames[0].window.postMessage(updateIframeData, "*");
            showIframeLoader();
        }, 1000);
    }

    function saveVacationMode() {

        var whichSelected = document.querySelector(".editor_panel_item_vacation_mode_item_selected").getAttribute("data-type");

        var enabled = "0";
        if (whichSelected == "enabled") {
            enabled = "1";
        }

        var message = stripHTMLPost(document.getElementById("vacation_mode_message").value.trim());

        var vacaSettings = {
            onVacation: enabled,
            vacationMsg: message
        };

        var url = "/services/settingsv2/settings_store.svc/saveVacaSettings";
        var data = {
            "storeId": storeId,
            "settings": vacaSettings
        }

        axiosPost(url, data).then(function (data) {

            if (enabled == "1") {
                store.settings.holiday = true;
                document.getElementById("iframe_browser_header_status_which").setAttribute("data-status", "inactive");
                document.getElementById("iframe_browser_header_status_which_text").innerText = "Inactive";
            } else {
                store.settings.holiday = false;
                document.getElementById("iframe_browser_header_status_which").setAttribute("data-status", "live");
                document.getElementById("iframe_browser_header_status_which_text").innerText = "Live";
            }

            editorSaved();

        }).catch(function (e) {

            console.log("ERROR:VacationMode:saveVacaSettings");
            typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
            errorOccurred("save", "vacation-mode", "saveVacaSettings");

        }).then(function () {

        });

    }


    function vacationModeResendVerificationEmail() {

        document.getElementById("vacation_mode_resend_email_button").innerHTML = "<i class='fa fa-spinner fa-spin'></i> Resending Email";
        document.getElementById("vacation_mode_resend_email_button").classList.add("button_disabled");

        axiosGet("/services/User.svc/ResendActivationEmail?storeId=" + storeId).then(function (data) {

            var result = data.d || data;
            console.log(result);

            if (result == true) {

                document.getElementById("vacation_mode_resend_email_button").innerHTML = "<i class='fa fa-check color_green'></i> Email Sent";
                document.getElementById("vacation_mode_resend_email_button").removeAttribute("onclick");

            } else {
                document.getElementById("vacation_mode_resend_email_button").innerHTML = "<i class='fa fa-exclamation-triangle'></i> Failed - Try Again";
                document.getElementById("vacation_mode_resend_email_button").classList.remove("button_disabled");
            }

        }).catch(function () {

            document.getElementById("vacation_mode_resend_email_button").innerHTML = "<i class='fa fa-exclamation-triangle'></i> Failed - Try Again";
            document.getElementById("vacation_mode_resend_email_button").classList.remove("button_disabled");


        }).then(function () {

        });

    }

</script>
                    

<style>

    .color_palette_container{
        position: relative;
        width: 100%;
        height: 60px;
        display: flex;
        flex-wrap: nowrap;
        align-items: center;
    }

    .color_palette_item{
        border-radius: 50%;
        box-shadow: 0 0 5px 0 rgba(0 0 0 / 0.2);
        transition: 0.4s;
        position: absolute;
        transform: translateY(5px);
    }

    .color_palette_container:hover .color_palette_item, .main_color_palette_selected .color_palette_item{
        animation: colorItemBounce 0.8s infinite alternate;
    }

    

    .color_pallete_button{
        position: absolute;
        right: 0;
        top: 50%;
        transform: translateY(-50%);
        border-radius: 4px;
        display: flex;
        justify-content: center;
        align-items: center;
        width: 60px;
        height: 30px;
        background-color: #fff;
        color: #339eff;
        border: 1px solid #339eff;
        padding: 0 10px;
        text-align: center;
        margin: 0 auto;
        cursor: pointer;
        text-transform: uppercase;
        transition: 0.4s;
        transform: translateY(-10px);
    }

    .color_pallete_button:hover{
        background-color: #339eff;
        color: #fff;
    }

    .color_pallete_button i{
        margin-left: 5px;
    }

    .color_pallete_button.color_pallete_button_selected{
        width: 80px;
        background-color: #339eff;
        color: #FFF;
        pointer-events: none;
        cursor: inherit;
    }

    .color_pallete_button.color_pallete_button_main_button_active{
        width: 80px;
        background-color: #339eff;
        color: #FFF;
    }

    .color_pallete_button_custom{
        border-radius: 4px;
        display: flex;
        justify-content: center;
        align-items: center;
        width: 70px;
        height: 25px;
        background-color: #fff;
        color: #339eff;
        border: 1px solid #339eff;
        padding: 0 10px;
        text-align: center;
        margin: 0 auto;
        cursor: pointer;
        text-transform: uppercase;
        transition: 0.4s;
        margin-top: 10px;
        font-size: 0.7rem;
    }

    .color_pallete_button_custom:hover{
        background-color: #339eff;
        color: #FFF;
    }

    .color_pallete_loading{
        text-transform: uppercase;
        color: #b5b5b5;
        display: flex;
        justify-content: center;
        align-items: center;
        width: 60px;
        height: 30px;
        position: absolute;
        right: 0;
        top: 50%;
        transform: translateY(-50%);
    }

    .color_palette_container_loading .color_palette_item{
        background-color: #ddd;
        animation: colorItemBounce 0.8s infinite alternate;
        transform: translateY(5px);
    }

    .color_palette_container .color_palette_item:nth-child(1){ animation-delay: 0.5s; }
    .color_palette_container .color_palette_item:nth-child(2){ animation-delay: 0.6s; }
    .color_palette_container .color_palette_item:nth-child(3){ animation-delay: 0.7s; }
    .color_palette_container .color_palette_item:nth-child(4){ animation-delay: 0.8s; }
    .color_palette_container .color_palette_item:nth-child(5){ animation-delay: 0.9s; }
    .color_palette_container .color_palette_item:nth-child(6){ animation-delay: 1.0s; }
    .color_palette_container .color_palette_item:nth-child(7){ animation-delay: 1.1s; }
    .color_palette_container .color_palette_item:nth-child(8){ animation-delay: 1.2s; }
    .color_palette_container .color_palette_item:nth-child(9){ animation-delay: 1.3s; }
    .color_palette_container .color_palette_item:nth-child(10){ animation-delay: 1.4s; }
    .color_palette_container .color_palette_item:nth-child(11){ animation-delay: 1.5s; }
    .color_palette_container .color_palette_item:nth-child(12){ animation-delay: 1.6s; }
    .color_palette_container .color_palette_item:nth-child(13){ animation-delay: 1.7s; }
    .color_palette_container .color_palette_item:nth-child(14){ animation-delay: 1.8s; }
    .color_palette_container .color_palette_item:nth-child(15){ animation-delay: 1.9s; }

    @keyframes colorItemBounce { 
        0% { transform: translateY(5px); } 
        100% { transform: translateY(-5px); } 
    }

    #available_color_palettes_container{
        margin-top: 50px;
    }

    #available_color_palettes_container .color_palette_container{
        margin-top: 20px;
    }

    #available_color_palettes_container .color_palette_container:first-child{
        margin-top: 10px;
    }


    /* Edit Colors */

    #main_color_palette_editing{
        display: none;
    }

    #main_color_palette_editing.main_color_palette_editing_active{
        display: block;
    }

    .main_color_palette_editing_item{
        display: flex;
        flex-wrap: nowrap;
        /*justify-content: space-between;*/
        align-items: center;
        height: 60px;
        margin-top: 20px;
    }

    .main_color_palette_editing_item:not(:first-child){
        padding-top: 20px;
        margin-top: 20px;
    }


    .main_color_palette_editing_item_section{
        height: 50px;
        transition: 0.4s;
    }

    .main_color_palette_editing_item_section:not(:first-child){
        border-left: 1px dashed #ddd;
    }

    .main_color_palette_editing_item_section:first-child{
        padding-right: 10px;
    }

    .main_color_palette_editing_item_section:last-child{
        padding-left: 10px;
    }

    .main_color_palette_editing_item_section_label{
        font-weight: bold;
        margin-bottom: 5px;
    }

    .main_color_palette_editing_item_section_color_group{
        display: flex;
        flex-wrap: nowrap;
        justify-content: center;
        align-items: center;
    }

    .main_color_palette_editing_item_section_color{
        width: 30px;
        height: 30px;
        border-radius: 50%;
        /*box-shadow: 0 0 5px 0 rgba(0 0 0 / 0.2);*/
        transition: 0.4s;
        cursor: pointer;
        border: 1px solid #ddd;
    }

    .main_color_palette_editing_item_section_color_primary{
        width: 50px;
        border-radius: 4px;
    }

    .main_color_palette_editing_item_section_color_group .main_color_palette_editing_item_section_color{
        margin: 0 2px;
    }

</style>

<div class="editor_panel_item" data-type="colors">
    
    <div><strong>Your Colors</strong></div>
    <div class="color_palette_container" id="main_color_palette"></div>

    <div id="main_color_palette_editing"></div>

    <div id="available_color_palettes_container">
        <div><strong>Popular Color Palettes</strong></div>
        <div id="available_color_palettes"></div>
    </div>

    <div class="editor_info_panel margint40" data-type="info">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title">Info</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-up" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_subtitle">What are Colors?</div>
            <p>This section allows you to change the colors used on your store.</p>
        </div>
    </div>

    <div class="editor_info_panel margint20" data-type="help">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title">Help</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-up" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_subtitle">How do I Reset my Colors</div>
            <p>Simply select the first color palette available to reset your colors back to the default.</p>
            <div class="editor_info_panel_subtitle">I can't see some Text</div>
            <p>It's likely you've set 2 colors which are the same or very similar. E.g. White background color with white text.</p>
            <p>Click the <em>Edit</em> button and change a few colors until your text appears</p>
            <div class="editor_info_panel_subtitle">Submit my color palette</div>
            <p>If you have made a nice color palette, get in touch with our support team and we might add it as an available color palette for all our stores to use.</p>
        </div>
    </div>

</div>

<script>


    var colorPaletteLength = 0;
    var baseColorPallete;

    var buildColorsPanelLoaded = false;
    function buildColorsPanel() {

        if (buildColorsPanelLoaded == false) {

            document.getElementById("available_color_palettes").innerHTML = "";
            baseColorPallete = new Array();

            for (var i = 0; i < cssBaseAttributes.colors.length; i++) {
                baseColorPallete.push(cssBaseAttributes.colors[i]);
            }
            console.log("base color palette")
            console.log(baseColorPallete);

            colorPaletteLength = baseColorPallete.length;

            buildColorPalette(baseColorPallete, "primary");
            buildColorPalette("", "loading");

            buildColorsPanelLoaded = true;

            document.querySelector(".editor_panel_item[data-type='colors']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

            runColorsAnimation();

            getAdditionalColorPalettes();


        } else {
            document.querySelector(".editor_panel_item[data-type='colors']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");
        }

    }


    function getAdditionalColorPalettes() {


        baseCssFile = currentTheme.baseCssFile;

        var themeColorPalettes = currentTheme.colorPalettes;

        console.log(themeColorPalettes);

        document.getElementById("available_color_palettes").innerHTML = "";

        if (themeColorPalettes != null) {
            for (var i = 0; i < themeColorPalettes.length; i++) {
                buildColorPalette(themeColorPalettes[i], "available", i);
            }
        } else {
            document.getElementById("available_color_palettes").innerHTML = "<p>No popular color palettes available for your theme.</p>";
        }
        
            /*allThemes.availableDesigns.filter(function (obj) {

                if (obj.id == allThemes.currentTheme.id) {

                    console.log(obj)

                    baseCssFile = allThemes.currentTheme.baseCssFile;

                    var themeColorPalettes = obj.colorPalettes;
                    console.log(themeColorPalettes);

                    document.getElementById("available_color_palettes").innerHTML = "";

                    if (themeColorPalettes != null) {
                        for (var i = 0; i < themeColorPalettes.length; i++) {
                            buildColorPalette(themeColorPalettes[i], "available", i);
                        }
                    } else {
                        document.getElementById("available_color_palettes").innerHTML = "<p>No pre-made color palettes available for your theme.</p>";
                    }

                }

            });*/

            runColorsAnimation();

        

    }


    function buildColorPalette(colorInfo, type, id) {

        var itemWidth = 310 / colorPaletteLength;
        var itemHeight = 310 / colorPaletteLength;

        if (itemWidth > 62) { itemWidth = 62; }
        if (itemHeight > 62) { itemHeight = 62; }

        var colorItems = '';
        
        for (var i = 0; i < colorPaletteLength; i++) {

            var left = '';
            if (i != 0) {
                left = (itemWidth/5) * i;
            }

            if (type == "primary") {
                var hex = "#" + colorInfo[i].translation;
            } else if (type == "loading") {
                var hex = "#fff";
            } else if (type == "available") {
                var hex = colorInfo[i];
            }

            var item = '<div class="color_palette_item" data-name="' + baseColorPallete[i].token + '" data-hex="' + hex + '" data-left="' + left + '" style="background-color: ' + hex + '; left: 0%; width: ' + itemWidth + 'px; height: ' + itemHeight +'px;"></div>';
            colorItems += item;
        }
  

        if (type == "primary") {

            var colorButton = '<div id="color_pallete_button_main" class="color_pallete_button" onclick="editBaseColorPalette();">Edit<i class="fa fa-caret-down"></i></div>';
            colorItems += colorButton
            document.getElementById("main_color_palette").innerHTML = colorItems;

        } else if (type == "loading") {

            var colorButton = '<div class="color_pallete_loading">Loading</div>';
            colorItems += colorButton
            colorItems = '<div class="color_palette_container color_palette_container_loading">' + colorItems + '</div>';
            document.getElementById("available_color_palettes").innerHTML += colorItems;

        } else if (type == "available") {

            var colorButton = '<div class="color_pallete_button" data-id="' + id + '" onclick="selectColorPalette(' + id + ');">Select</div>';
            colorItems += colorButton
            colorItems = '<div class="color_palette_container" data-id="' + id + '">' + colorItems + '</div>';
            document.getElementById("available_color_palettes").innerHTML += colorItems;

        }


    }

    function runColorsAnimation() {

        setTimeout(function () {
            var colorItems = document.querySelectorAll(".color_palette_container .color_palette_item");

            for (var i = 0; i < colorItems.length; i++) {

                var left = colorItems[i].getAttribute("data-left");
                colorItems[i].style.left = "" + left + "%";

            }
        }, 300);

    }

    function editBaseColorPalette() {

        if (document.getElementById("main_color_palette_editing").classList.contains("main_color_palette_editing_active")) {

            document.getElementById("main_color_palette_editing").classList.remove("main_color_palette_editing_active");
            document.getElementById("color_pallete_button_main").classList.remove("color_pallete_button_main_button_active");
            document.getElementById("color_pallete_button_main").innerHTML = "Edit<i class='fa fa-caret-down'></i>";

        } else {

            document.getElementById("main_color_palette_editing").classList.add("main_color_palette_editing_active");
            document.getElementById("color_pallete_button_main").classList.add("color_pallete_button_main_button_active");
            document.getElementById("color_pallete_button_main").innerHTML = "Editing<i class='fa fa-caret-up'></i>";

            var colorItems = document.querySelectorAll("#main_color_palette .color_palette_item");
            console.log(colorItems);

            var colorItemsHtml = '';
            for (var i = 0; i < colorItems.length; i++) {

                var name = colorItems[i].getAttribute("data-name");
                var color = colorItems[i].getAttribute("data-hex");

                var shade1 = pSBC(0.3, color);
                var shade2 = pSBC(0.2, color);
                var shade3 = pSBC(0.1, color);
                var shade4 = pSBC(-0.1, color);
                var shade5 = pSBC(-0.2, color);
                var shade6 = pSBC(-0.3, color);

                var item = '<div class="main_color_palette_editing_item" data-name="' + name + '">';
                        item += '<div class="main_color_palette_editing_item_section">';
                            item += '<div class="main_color_palette_editing_item_section_label">Current</div>';
                                item += '<input type="text" class="main_color_palette_editing_item_section_color_primary" data-name="' + name + '" value="' + color + '" onchange="primaryColorChange(\'' + name + '\')" />';
                        item += '</div>';
                        item += '<div class="main_color_palette_editing_item_section">';
                            item += '<div class="main_color_palette_editing_item_section_label">Similar Shades</div>';
                            item += '<div class="main_color_palette_editing_item_section_color_group" data-name="' + name + '">';
                                item += '<div class="main_color_palette_editing_item_section_color" data-name="' + name + '" data-color="shade1" data-hex="' + shade1 + '" style="background-color: ' + shade1 + ';" onclick="selectShade(\'' + name + '\', \'shade1\');"></div>';
                                item += '<div class="main_color_palette_editing_item_section_color" data-name="' + name + '" data-color="shade2" data-hex="' + shade2 + '" style="background-color: ' + shade2 + ';" onclick="selectShade(\'' + name + '\', \'shade2\');"></div>';
                                item += '<div class="main_color_palette_editing_item_section_color" data-name="' + name + '" data-color="shade3" data-hex="' + shade3 + '" style="background-color: ' + shade3 + ';" onclick="selectShade(\'' + name + '\', \'shade3\');"></div>';
                                item += '<div class="main_color_palette_editing_item_section_color" data-name="' + name + '" data-color="shade4" data-hex="' + shade4 + '" style="background-color: ' + shade4 + ';" onclick="selectShade(\'' + name + '\', \'shade4\');"></div>';
                                item += '<div class="main_color_palette_editing_item_section_color" data-name="' + name + '" data-color="shade5" data-hex="' + shade5 + '" style="background-color: ' + shade5 + ';" onclick="selectShade(\'' + name + '\', \'shade5\');"></div>';
                                item += '<div class="main_color_palette_editing_item_section_color" data-name="' + name + '" data-color="shade6" data-hex="' + shade6 + '" style="background-color: ' + shade6 + ';" onclick="selectShade(\'' + name + '\', \'shade6\');"></div>';
                            item += '</div>';
                        item += '</div>';
                        /*item += '<div class="main_color_palette_editing_item_section">';
                            item += '<div class="main_color_palette_editing_item_section_label">Custom</div>';
                            item += '<div class="color_pallete_button_custom">Custom</div>';
                        item += '</div>';*/
                    item += '</div>';

                colorItemsHtml += item;
            }

            document.getElementById("main_color_palette_editing").innerHTML = colorItemsHtml;

            $(".main_color_palette_editing_item_section_color_primary").spectrum({
                showInitial: true,
                showInput: true,
                show: function () {
                    $(".sp-button-container button").addClass("button_disabled");
                },
                move: function () {
                    $(".sp-button-container button").removeClass("button_disabled");
                }
            });

            $(".sp-button-container button").addClass("button_disabled");

        }
    }

    const pSBC = (p, c0, c1, l) => {
        let r, g, b, P, f, t, h, i = parseInt, m = Math.round, a = typeof (c1) == "string";
        if (typeof (p) != "number" || p < -1 || p > 1 || typeof (c0) != "string" || (c0[0] != 'r' && c0[0] != '#') || (c1 && !a)) return null;
        if (!this.pSBCr) this.pSBCr = (d) => {
            let n = d.length, x = {};
            if (n > 9) {
                [r, g, b, a] = d = d.split(","), n = d.length;
                if (n < 3 || n > 4) return null;
                x.r = i(r[3] == "a" ? r.slice(5) : r.slice(4)), x.g = i(g), x.b = i(b), x.a = a ? parseFloat(a) : -1
            } else {
                if (n == 8 || n == 6 || n < 4) return null;
                if (n < 6) d = "#" + d[1] + d[1] + d[2] + d[2] + d[3] + d[3] + (n > 4 ? d[4] + d[4] : "");
                d = i(d.slice(1), 16);
                if (n == 9 || n == 5) x.r = d >> 24 & 255, x.g = d >> 16 & 255, x.b = d >> 8 & 255, x.a = m((d & 255) / 0.255) / 1000;
                else x.r = d >> 16, x.g = d >> 8 & 255, x.b = d & 255, x.a = -1
            } return x
        };
        h = c0.length > 9, h = a ? c1.length > 9 ? true : c1 == "c" ? !h : false : h, f = this.pSBCr(c0), P = p < 0, t = c1 && c1 != "c" ? this.pSBCr(c1) : P ? { r: 0, g: 0, b: 0, a: -1 } : { r: 255, g: 255, b: 255, a: -1 }, p = P ? p * -1 : p, P = 1 - p;
        if (!f || !t) return null;
        if (l) r = m(P * f.r + p * t.r), g = m(P * f.g + p * t.g), b = m(P * f.b + p * t.b);
        else r = m((P * f.r ** 2 + p * t.r ** 2) ** 0.5), g = m((P * f.g ** 2 + p * t.g ** 2) ** 0.5), b = m((P * f.b ** 2 + p * t.b ** 2) ** 0.5);
        a = f.a, t = t.a, f = a >= 0 || t >= 0, a = f ? a < 0 ? t : t < 0 ? a : a * P + t * p : 0;
        if (h) return "rgb" + (f ? "a(" : "(") + r + "," + g + "," + b + (f ? "," + m(a * 1000) / 1000 : "") + ")";
        else return "#" + (4294967296 + r * 16777216 + g * 65536 + b * 256 + (f ? m(a * 255) : 0)).toString(16).slice(1, f ? undefined : -2)
    }

    function primaryColorChange(name) {

        var color = document.querySelector(".main_color_palette_editing_item_section_color_primary[data-name='" + name + "']").value;
        console.log(color);

        updateShadesAndMain(name, color);

    }

    function selectShade(name, shadeName) {

        var shade = document.querySelector(".main_color_palette_editing_item_section_color[data-name='" + name + "'][data-color='" + shadeName + "']").getAttribute("data-hex");
        updateShadesAndMain(name, shade);
        
    }

    function updateShadesAndMain(name, shade) {

        document.querySelector("#main_color_palette .color_palette_item[data-name='" + name + "']").style.backgroundColor = shade;
        document.querySelector("#main_color_palette .color_palette_item[data-name='" + name + "']").setAttribute("data-hex", shade);

        /*document.querySelector(".main_color_palette_editing_item_section_color_primary[data-name='" + name + "']").style.backgroundColor = shade;*/

        $(".main_color_palette_editing_item_section_color_primary[data-name='" + name + "']").spectrum({
            color: shade,
            showInitial: true,
            showInput: true,
            show: function () {
                $(".sp-button-container button").addClass("button_disabled");
            },
            move: function () {
                $(".sp-button-container button").removeClass("button_disabled");
            }
        });

        $(".sp-button-container button").addClass("button_disabled");

        cssBaseAttributes.colors.filter(function (obj) {

            if (obj.token == name) {
                color = shade.replace("#", "");
                obj.translation = color;
            }

        });

        var shade1 = pSBC(0.3, shade);
        var shade2 = pSBC(0.2, shade);
        var shade3 = pSBC(0.1, shade);
        var shade4 = pSBC(-0.1, shade);
        var shade5 = pSBC(-0.2, shade);
        var shade6 = pSBC(-0.3, shade);

        document.querySelector(".main_color_palette_editing_item_section_color[data-name='" + name + "'][data-color='shade1']").style.backgroundColor = shade1;
        document.querySelector(".main_color_palette_editing_item_section_color[data-name='" + name + "'][data-color='shade1']").setAttribute("data-hex", shade1);

        document.querySelector(".main_color_palette_editing_item_section_color[data-name='" + name + "'][data-color='shade2']").style.backgroundColor = shade2;
        document.querySelector(".main_color_palette_editing_item_section_color[data-name='" + name + "'][data-color='shade2']").setAttribute("data-hex", shade2);

        document.querySelector(".main_color_palette_editing_item_section_color[data-name='" + name + "'][data-color='shade3']").style.backgroundColor = shade3;
        document.querySelector(".main_color_palette_editing_item_section_color[data-name='" + name + "'][data-color='shade3']").setAttribute("data-hex", shade3);

        document.querySelector(".main_color_palette_editing_item_section_color[data-name='" + name + "'][data-color='shade4']").style.backgroundColor = shade4;
        document.querySelector(".main_color_palette_editing_item_section_color[data-name='" + name + "'][data-color='shade4']").setAttribute("data-hex", shade4);

        document.querySelector(".main_color_palette_editing_item_section_color[data-name='" + name + "'][data-color='shade5']").style.backgroundColor = shade5;
        document.querySelector(".main_color_palette_editing_item_section_color[data-name='" + name + "'][data-color='shade5']").setAttribute("data-hex", shade5);

        document.querySelector(".main_color_palette_editing_item_section_color[data-name='" + name + "'][data-color='shade6']").style.backgroundColor = shade6;
        document.querySelector(".main_color_palette_editing_item_section_color[data-name='" + name + "'][data-color='shade6']").setAttribute("data-hex", shade6);

        runBaseCssFileChange();

        document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");

    }

    function selectColorPalette(id) {

        document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");

        if (document.querySelector(".color_pallete_button_selected") != null) {
            document.querySelector(".color_pallete_button_selected").innerText = "Select";
            document.querySelector(".color_pallete_button_selected").classList.remove("color_pallete_button_selected");
        }

        document.querySelector(".color_pallete_button[data-id='" + id + "']").innerText = "Selected";
        document.querySelector(".color_pallete_button[data-id='" + id + "']").classList.add("color_pallete_button_selected");

        setTimeout(function () {
            document.querySelector(".color_pallete_button[data-id='" + id + "']").innerText = "Select";
            document.querySelector(".color_pallete_button[data-id='" + id + "']").classList.remove("color_pallete_button_selected");
        }, 1000);

        var colorItems = document.querySelectorAll(".color_palette_container[data-id='" + id + "'] .color_palette_item");
        
        for (var i = 0; i < colorItems.length; i++) {

            var name = colorItems[i].getAttribute("data-name");
            var color = colorItems[i].getAttribute("data-hex");

            document.querySelector("#main_color_palette .color_palette_item[data-name='" + name + "']").style.backgroundColor = color;
            document.querySelector("#main_color_palette .color_palette_item[data-name='" + name + "']").setAttribute("data-hex", color);

            cssBaseAttributes.colors.filter(function (obj) {

                if (obj.token == name) {
                    color = color.replace("#", "");
                    obj.translation = color;
                }

            });

        }

        if (document.getElementById("main_color_palette_editing").classList.contains("main_color_palette_editing_active")) {
            editBaseColorPalette();
        }

        runBaseCssFileChange();
    

    }


    function cancelColors() {

        var storeCloneColors = jQuery.extend(true, {}, store);
        cssBaseAttributes.colors = storeCloneColors.design.colours;
        document.getElementById("main_color_palette_editing").classList.remove("main_color_palette_editing_active");

    }


    function saveColors() {

        var colorItems = document.querySelectorAll("#main_color_palette .color_palette_item");
        console.log(colorItems);

        var palette = new Array();
        for (var i = 0; i < colorItems.length; i++) {

            var name = colorItems[i].getAttribute("data-name");
            var color = colorItems[i].getAttribute("data-hex");

            var paletteItem = {
                "name": name,
                "hex": color,
                "desc": ""
            };

            palette.push(paletteItem);

        }

        console.log(palette);

        var data = {
            "storeId": storeId,
            "palette": palette
        };

        console.log(data);

        data = JSON.stringify(data);

        axiosPost('./services/theme_editor/Colours.svc/PostThemeColoursAll', data).then(function () {

            editorSaved();
           
            var newSavedColors = new Array();
            store.design.colours = new Array();

            for (var i = 0; i < palette.length; i++) {

                newSavedColors.push({ "token": palette[i].name, "translation": palette[i].hex.replace("#", "") });
            }

            store.design.colours = newSavedColors;

        }).catch(function () {

            console.log("ERROR:Colors:PostThemeColoursAll");
            typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
            errorOccurred("save", "colors", "PostThemeColoursAll");

        }).then(function () {
            
        });

    }

</script>
                    

<style>
    #editor_image-background{
        max-width: 100%;
        max-height: 100px;
        min-height: 50px;
    }
</style>

<div class="editor_panel_item" data-type="background">
    
    <div class="align_center">
        <div><strong>Your Background</strong></div>
        <div id="editor_image_container-background" class="editor_image_container">
            <div class="editor_image_container_bg_mode" data-type="background" onclick="editorImageChangeBgMode('background')"><i class="fa fa-moon-o" aria-hidden="true"></i></div>
            <div class="editor_image_inner_container">
                <div id="editor_image-background_container"></div>
                <div class="editor_image_add_button" onclick="addNewBackgroundImage();">
                    <div class="editor_image_add_button_icon"><i class="fa fa-plus" aria-hidden="true"></i></div>
                    <span class="editor_image_add_button_text">Add</span>
                </div>
                <div class="editor_image_loading">
                    <div class="editor_image_loading_icon"><i class="fa fa-spinner fa-spin" aria-hidden="true"></i></div>
                    <span class="editor_image_loading_text">Loading</span>
                </div>
            </div>
        </div>
        <a id="background_add_new_button" class="editor_main_button" onclick="addNewBackgroundImage();">Add New Background Image</a>
    </div>

    <div id="editor_background_preferences" class="margint30">

        <div class="inline_checkboxes hide_overflow marginb20">
            <div class="checkbox_container">
                <input type="radio" id="editor_background_preferences_enabled" name="editor_background_preferences_enabled-disabled" onchange="backgroundChangeOngoing();" />
                <label for="editor_background_preferences_enabled"><span>Enabled</span></label>
            </div>
            <div class="checkbox_container">
                <input type="radio" id="editor_background_preferences_disabled" name="editor_background_preferences_enabled-disabled" checked onchange="backgroundChangeOngoing();" />
                <label for="editor_background_preferences_disabled"><span>Disabled</span></label>
            </div>
        </div>
        

        <div class="input_container">
            <label for="editor_background_preferences_repeat">Repeat</label>
            <select id="editor_background_preferences_repeat" onchange="backgroundChangeOngoing();">
                <option value="no-repeat" selected="">None</option>
                <option value="repeat">Horizontally and Vertically</option>
                <option value="repeat-x">Horizontally</option>
                <option value="repeat-y">Vertically</option>
            </select>
        </div>

        <div class="input_container">
            <label for="editor_background_preferences_position">Position</label>
            <select id="editor_background_preferences_position" onchange="backgroundChangeOngoing();">
                <option value="left top" selected="">Top-Left</option>
                <option value="left center">Left</option>
                <option value="left bottom">Bottom Left</option>
                <option value="right top">Top Right</option>
                <option value="right center">Right</option>
                <option value="right bottom">Bottom Right</option>
                <option value="center top">Top Center</option>
                <option value="center center">Center</option>
                <option value="center bottom">Bottom Center</option>
            </select>
        </div>

        <div class="input_container">
            <label for="editor_background_preferences_attachment">Attachment</label>
            <select id="editor_background_preferences_attachment" onchange="backgroundChangeOngoing();">
                <option value="scroll" selected="">Scroll</option>
                <option value="fixed">Fixed</option>
            </select>
        </div>

        <div class="input_container">
            <label for="editor_background_preferences_size">Size</label>
            <select id="editor_background_preferences_size" onchange="backgroundChangeOngoing();">
                <option value="auto" selected="">Auto</option>
                <option value="contain">Contain</option>
                <option value="cover">Cover</option>
            </select>
        </div>

        <div>
            <p><strong>Color</strong></p>
            <div id="editor_background_preferences_color_container">
                <input type="text" id="editor_background_preferences_color" />
            </div>
        </div>

    </div>

    <div class="editor_info_panel margint40" data-type="info">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title">Info</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-up" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_subtitle">What is a Background?</div>
            <p>This section allows you to add a background image to your store.</p>
            <p>The image will display on every page of your store.</p>
            <p>Use the settings on this page to change the size, position, and more.</p>
        </div>
    </div>

    <div class="editor_info_panel margint20" data-type="help">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title">Help</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-up" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_subtitle">Cannot See Background Image</div>
            <ul>
                <li>Make sure that you've checked the <em>ENABLE</em> checkbox.</li>
                <li>You might need to change the settings (position, size, repeat, attachment) in order for you to see your background image.</li>
            </ul>
            <div class="editor_info_panel_subtitle">Cannot See Background Color</div>
            <p>It is likely that your background image is covering the whole background area.</p>
            <p>You will only see the color selected if your background image does not cover the whole background area.</p>
        </div>
    </div>

</div>

<script>

    var buildBackgroundPanelLoaded = false;
    function buildBackgroundPanel() {

        if (buildBackgroundPanelLoaded == false) {


            if (store.design.background != null && store.design.background.imageURL != null) {

                var imageDataStore = store.design.background.imageURL.replace("//d13z1xw8270sfc.cloudfront.net/origin/"+storeId+"/", "")

                document.getElementById("editor_image-background_container").innerHTML = "<img id='editor_image-background' class='editor_image' src='" + store.design.background.imageURL + "' data-src='" + imageDataStore + "' />"
                document.querySelector("#editor_image_container-background .editor_image_add_button_text").innerText = "Change";
                document.getElementById("background_add_new_button").innerText = "Change Background Image";
            } else {
                document.getElementById("editor_image_container-background").classList.add("editor_image_container_no_image");
                document.querySelector("#editor_image_container-background .editor_image_add_button_text").innerText = "Add";
                document.getElementById("background_add_new_button").innerText = "Add New Background Image";
            }

            if (store.design.background != null && store.design.background.enabled) {
                document.getElementById("editor_background_preferences_enabled").checked = true;
            } else {
                document.getElementById("editor_background_preferences_disabled").checked = true;
            }

            if (store.design.background != null) {

                if (store.design.background.attachment == null) { store.design.background.attachment = "scroll"; }
                if (store.design.background.color == null) { store.design.background.color = "#000000"; }
                if (store.design.background.imageURL == null) { store.design.background.imageURL = ""; }
                if (store.design.background.position == null) { store.design.background.position = "left top"; }
                if (store.design.background.repeat == null) { store.design.background.repeat = "no-repeat"; }
                if (store.design.background.size == null) { store.design.background.size = "auto"; }

                document.getElementById("editor_background_preferences_repeat").value = store.design.background.repeat;
                document.getElementById("editor_background_preferences_position").value = store.design.background.position;
                document.getElementById("editor_background_preferences_attachment").value = store.design.background.attachment;
                document.getElementById("editor_background_preferences_size").value = store.design.background.size;
                document.getElementById("editor_background_preferences_color").value = store.design.background.color;
            } else {
                document.getElementById("editor_background_preferences_repeat").value = "no-repeat";
                document.getElementById("editor_background_preferences_position").value = "left top";
                document.getElementById("editor_background_preferences_attachment").value = "scroll";
                document.getElementById("editor_background_preferences_size").value = "auto";
                document.getElementById("editor_background_preferences_color").value = "#000000";
            }

            $("#editor_background_preferences_color").spectrum({
                showInitial: true,
                showInput: true,
                show: function () {
                    $(".sp-button-container button").addClass("button_disabled");
                },
                move: function () {
                    $(".sp-button-container button").removeClass("button_disabled");
                },
                change: function () {
                    backgroundChangeOngoing();
                }
            });

            $(".sp-button-container button").addClass("button_disabled");

            if (Cookies.get("fws_editor_imageBG_background_" + storeId) != null) {
                var bg = Cookies.get("fws_editor_imageBG_background_" + storeId);
                if (bg == "dark") {
                    document.querySelector(".editor_image_container_bg_mode[data-type='background'] i").classList.remove("fa-moon-o");
                    document.querySelector(".editor_image_container_bg_mode[data-type='background'] i").classList.add("fa-sun-o");

                    document.querySelector("#editor_image_container-background .editor_image_inner_container").classList.add("editor_image_inner_container_dark");
                }
            }

            document.querySelector(".editor_panel_item[data-type='background']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");
            buildBackgroundPanelLoaded = true;

        } else {

            document.querySelector(".editor_panel_item[data-type='background']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

        }

    }

    // Add New Background Image
    function addNewBackgroundImage() {
        document.getElementById("editor_overlay").classList.toggle("editor_overlay_active");
        openImageGallery(1, 'backgroundAdd');
    }

    // Visually Add New Image
    function runBackgroundFinalAdd(imageUrl) {

        newFaviconFileName = imageUrl;

        document.getElementById("editor_image_container-background").classList.add("editor_image_container_loading");

        var url = 'https://s3-eu-west-1.amazonaws.com/prodimg.fw1.biz/' + storeId + '/' + imageUrl;

        setTimeout(function () {

            document.getElementById("editor_image-background_container").innerHTML = '<img id="editor_image-background" class="editor_image" src="' + url + '" data-src="' + imageUrl + '" />';
            document.getElementById("editor_image_container-background").classList.remove("editor_image_container_loading");
            document.getElementById("editor_image_container-background").classList.remove("editor_image_container_no_image");
            document.querySelector("#editor_image_container-background .editor_image_add_button_text").innerText = "Change";
            document.getElementById("background_add_new_button").innerText = "Change Background Image";
            backgroundChangeOngoing();

        }, 4000);

    }


    // Background Change
    function backgroundChangeOngoing() {

        document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");

        var enabled = document.getElementById("editor_background_preferences_enabled").checked;
        var imageUrl = "";
        if (document.getElementById("editor_image-background") != null) {
            imageUrl = document.getElementById("editor_image-background").getAttribute("src");
        }
        var repeat = document.getElementById("editor_background_preferences_repeat").value;
        var position = document.getElementById("editor_background_preferences_position").value;
        var attachment = document.getElementById("editor_background_preferences_attachment").value;
        var size = document.getElementById("editor_background_preferences_size").value;
        var color = document.getElementById("editor_background_preferences_color").value;

        color = color.replace("#", "");

        cssBaseAttributes.background.attachment = attachment;
        cssBaseAttributes.background.color = "#" + color;
        cssBaseAttributes.background.enabled = enabled;
        cssBaseAttributes.background.imageURL = imageUrl;
        cssBaseAttributes.background.position = position;
        cssBaseAttributes.background.repeat = repeat;
        cssBaseAttributes.background.size = size;

        runBaseCssFileChange();

    }

    function cancelBackground() {

        var storeCloneBackground = jQuery.extend(true, {}, store);
        cssBaseAttributes.background = storeCloneBackground.design.background;
        document.getElementById("main_color_palette_editing").classList.remove("main_color_palette_editing_active");

    }

    function saveBackground() {

        var backgroundSettings = [];

        var enabled = getId('editor_background_preferences_enabled').checked;

        var newBgImage = "";
        if (document.getElementById("editor_image-background") != null) {
            newBgImage = document.getElementById("editor_image-background").getAttribute("data-src");
        } else {
            enabled = false;
        }

        backgroundSettings.push({
            image: newBgImage,
            repeat: getId('editor_background_preferences_repeat').value.trim(),
            position: getId('editor_background_preferences_position').value.trim(),
            attachment: getId('editor_background_preferences_attachment').value.trim(),
            size: getId('editor_background_preferences_size').value.trim(),
            color: getId('editor_background_preferences_color').value.replace("#", "").trim(),
            enabled: enabled
        });

        backgroundSettings = JSON.stringify(backgroundSettings);

        axiosGet('/services/theme_editor/bg.svc/saveBackgroundEditor?storeId=' + storeId + "&bginfo=" + backgroundSettings).then(function (data) {

            editorSaved();

            // Update the existing "store.design.background"
            var newBgImageForObject = "";
            if (document.getElementById("editor_image-background") != null) {
                newBgImageForObject = document.getElementById("editor_image-background").getAttribute("src");
            }

            store.design.background.attachment = getId('editor_background_preferences_attachment').value.trim();
            store.design.background.color = getId('editor_background_preferences_color').value.replace("#", "").trim();
            store.design.background.enabled = enabled;
            store.design.background.imageURL = newBgImageForObject;
            store.design.background.position = getId('editor_background_preferences_position').value.trim();
            store.design.background.repeat = getId('editor_background_preferences_repeat').value.trim();
            store.design.background.size = getId('editor_background_preferences_size').value.trim();


        }).catch(function () {

            console.log("ERROR:Background:saveBackgroundEditor");
            typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
            errorOccurred("save", "background", "saveBackgroundEditor");

        }).then(function () {

        });

    }

</script>
                    

<style>
    #editor_image-logo{
        max-width: 100%;
        max-height: 100px;
    }

    #logo_generator_inner{
        display: none;
    }

    .logo_generator_canvas_container{
        text-align: center;
        margin-bottom: 10px;
        margin-top: 10px;
    }

    #logo_generator_canvas_container_finished{
        display: none;
    }

    #logo_generator_example{
        border: 1px dashed #ddd;
        max-width: 100%;
        position: relative;
        overflow: hidden;
        display: flex;
        align-items: center;
        justify-content: center;
        margin: 0 auto;
    }

    #logo_generator_example_inner{
        position: relative;
    }

    #logo_generator_example_title{
        color: #3bf10d;
        font-weight: bold;
        font-size: 20px;
        word-break: break-word;
    }

    #logo_generator_example_tag{
        color: #212121;
        word-break: break-word;
        font-size: 14px;
        font-weight: bold;
    }

    #logo_generator_finished{
        border: 1px dashed #ddd;
        display: inline-block;
    
    }

    #logo_generator_finished canvas{
        display: block;
    }

    .logo_generator_color .sp-replacer{
        background-color: #FFF;
        width: 40px;
        height: 40px;
        display: inline-block;
        border: 1px solid rgba(0,0,0,0.1);
        cursor: pointer;
        border-radius: 6px;
        margin-top: 19px;
    }

    .logo_generator_color .sp-preview, .logo_generator_color .sp-preview-inner {
        width: 48px;
        height: 48px;
        top: -5px;
        left: -5px;
    }

</style>

<div class="editor_panel_item" data-type="logo">

    <div class="align_center">
        <div><strong>Your Logo</strong></div>
        <div id="editor_image_container-logo" class="editor_image_container">
            <div class="editor_image_container_bg_mode" data-type="logo" onclick="editorImageChangeBgMode('logo')"><i class="fa fa-moon-o" aria-hidden="true"></i></div>
            <div class="editor_image_inner_container">
                <div id="editor_image-logo_container"></div>
                <div class="editor_image_add_button" onclick="addNewLogoImage();">
                    <div class="editor_image_add_button_icon"><i class="fa fa-plus" aria-hidden="true"></i></div>
                    <span class="editor_image_add_button_text">Add</span>
                </div>
                <div class="editor_image_loading">
                    <div class="editor_image_loading_icon"><i class="fa fa-spinner fa-spin" aria-hidden="true"></i></div>
                    <span class="editor_image_loading_text">Loading</span>
                </div>
            </div>
        </div>
        <a id="logo_add_new_button" class="editor_main_button" onclick="addNewLogoImage();">Add New Logo</a>
        <a onclick="openLogoGeneratorModal();" class="editor_main_link margint10">Logo Generator</a>
    </div>

    <div class="inline_checkboxes hide_overflow margint30">
        <div class="checkbox_container">
            <input type="radio" id="editor_logo_preferences_enabled" name="editor_logo_preferences_enabled-disabled" onchange="updateIframeLogo();" />
            <label for="editor_logo_preferences_enabled"><span>Enabled</span></label>
        </div>
        <div class="checkbox_container">
            <input type="radio" id="editor_logo_preferences_disabled" name="editor_logo_preferences_enabled-disabled" checked onchange="updateIframeLogo();" />
            <label for="editor_logo_preferences_disabled"><span>Disabled</span></label>
        </div>
    </div>

    <div class="editor_info_panel margint40" data-type="info">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title">Info</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-down" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_subtitle">What is a logo?</div>
            <p>A logo is an image that usually appears in the header of your store. It's used to identify your store/ branding.</p>
        </div>
    </div>

    <div class="editor_info_panel margint20" data-type="help">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title">Help</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-down" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div id="editor_info_panel_logo_help">
                <div class="editor_info_panel_subtitle">What size logo should i use?</div>
                <p>The recommended width and height for your logo are:</p>
                <ul>
                    <li>Width: <span id="editor_logo_help_width"></span>px</li>
                    <li>Height: <span id="editor_logo_help_height"></span>px</li>
                </ul>
            </div>
            <div class="editor_info_panel_subtitle">I don't have a logo!</div>
            <p>If you do not have a logo to use, we'd recommend using our logo generator to create one.</p>
            <p>Simply click the <em>Logo Generator</em> link above.</p>
        </div>
    </div>

</div>


<script>

    var buildLogoPanelLoaded = false;
    function buildLogoPanel() {

        if (buildLogoPanelLoaded == false) {

            if (store.design.logo.enabled != null) {

                if (store.design.logo.enabled == true) {
                    document.getElementById("editor_logo_preferences_enabled").checked = true;
                } else {
                    document.getElementById("editor_logo_preferences_enabled").checked = false;
                }

            } else {
                document.getElementById("editor_logo_preferences_enabled").checked = false;
            }

            if (store.design.logo.imageURL != null) {

                document.getElementById("editor_image-logo_container").innerHTML = "<img id='editor_image-logo' class='editor_image' src='" + store.design.logo.imageURL + "' />"
                document.querySelector("#editor_image_container-logo .editor_image_add_button_text").innerText = "Change";
                document.getElementById("logo_add_new_button").innerText = "Change Logo";

            } else {

                document.getElementById("editor_image_container-logo").classList.add("editor_image_container_no_image");
                document.querySelector("#editor_image_container-logo .editor_image_add_button_text").innerText = "Add";
                document.getElementById("logo_add_new_button").innerText = "Add New Logo";

            }

            if (storeDesign.logoWidth != null && storeDesign.logoHeight != null) {
                document.getElementById("editor_logo_help_width").innerText = storeDesign.logoWidth;
                document.getElementById("editor_logo_help_height").innerText = storeDesign.logoHeight;
            } else {
                document.getElementById("editor_info_panel_logo_help").style.display = "none";
            }

            if (Cookies.get("fws_editor_imageBG_logo_" + storeId) != null) {
                var bg = Cookies.get("fws_editor_imageBG_logo_" + storeId);
                if (bg == "dark") {
                    document.querySelector(".editor_image_container_bg_mode[data-type='logo'] i").classList.remove("fa-moon-o");
                    document.querySelector(".editor_image_container_bg_mode[data-type='logo'] i").classList.add("fa-sun-o");

                    document.querySelector("#editor_image_container-logo .editor_image_inner_container").classList.add("editor_image_inner_container_dark");
                }
            }


            buildLogoPanelLoaded = true;
            document.querySelector(".editor_panel_item[data-type='logo']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");
        } else {
            document.querySelector(".editor_panel_item[data-type='logo']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");
        }

    }

    function buildNewLogoImage(imageUrl) {

        document.getElementById("editor_image_container-logo").classList.add("editor_image_container_loading");

        setTimeout(function () {

            document.getElementById("editor_image-logo_container").innerHTML = '<img id="editor_image-logo" class="editor_image" src="' + imageUrl + '"/>';
            document.getElementById("editor_image_container-logo").classList.remove("editor_image_container_loading");
            document.getElementById("editor_image_container-logo").classList.remove("editor_image_container_no_image");
            document.querySelector("#editor_image_container-logo .editor_image_add_button_text").innerText = "Change";
            document.getElementById("logo_add_new_button").innerText = "Change Logo";
            updateIframeLogo();

        }, 4000);

    }

    function addNewLogoImage() {

        document.getElementById("editor_overlay").classList.add("editor_overlay_active");

        $("#recommended_logo_dimensions").remove();

        if (storeDesign.logoWidth != null && storeDesign.logoHeight != null) {

            var logoImageGalleryRecommend = '<div id="recommended_logo_dimensions">';
            logoImageGalleryRecommend += '<p>Based on your current theme the recommended dimensions for your logo are:</p>';
            logoImageGalleryRecommend += '<ul>';
            logoImageGalleryRecommend += '<li>Width: ' + storeDesign.logoWidth + 'px</li>';
            logoImageGalleryRecommend += '<li>Height: ' + storeDesign.logoHeight + 'px</li>';
            logoImageGalleryRecommend += '</ul>';

            $(logoImageGalleryRecommend).insertBefore("#image_gallery_container");
        }

        openImageGallery(1, 'logoAdd');

    }

    function openLogoGeneratorModal() {

        // Default inputs
        var gLogoTitle = store.design.logo.logoTitle;
        var gLogoTagLine = store.design.logo.logoTagline;

        if (gLogoTitle == "logo" && store.name != null) {
            gLogoTitle = store.name;
        }

        if (gLogoTagLine == "Change this in the Theme Editor" || gLogoTagLine == "Change this in Design - Theme Editor") {
            gLogoTagLine = "Your Tagline Here";
        }

        document.getElementById("logo_generator_title").value = gLogoTitle;
        document.getElementById("logo_generator_tag").value = gLogoTagLine;

        var font = store.design.logo.font;
        if (font == null) {
            if (storeDesign.font != null) {
                font = storeDesign.font;
            }
        }
        font = font.replace(/\//g, "");
        console.log(font)
        var fontSelect = document.getElementById("logo_generator_font").innerHTML.indexOf('value="' + font + '"') > -1;
        if (fontSelect == true) {
            document.getElementById("logo_generator_font").value = font;
        }

        var titleColor = store.design.logo.titleColour;
        var tagColor = store.design.logo.tagColour;

        if (titleColor != null) {
            if (!titleColor.startsWith("#")) {
                titleColor = "#" + titleColor;
            }
        } else {
            console.log("titititit is null")
            titleColor = "#3bf10d0";
        }

        if (tagColor != null) {
            if (!tagColor.startsWith("#")) {
                tagColor = "#" + tagColor;
            }
        } else {
            tagColor = "#212121";
        }

        document.querySelector(".logo_generator_title_color").value = titleColor;
        document.querySelector(".logo_generator_tag_color").value = tagColor;

        $("#logo_generator_button_save").addClass("button_disabled").text("Save");
        generateChangeLogo();

        $(".busy_wait_theme_logo_generator").show();
        $("#logo_generator_inner").hide();
        document.getElementById("editor_overlay").classList.add("editor_overlay_active");
        divFadeIn(".modal_logo_generator");

        $(".logo_generator_title_color").spectrum({
            showInitial: true,
            showInput: true,
            change: function (color) {
                console.log(color.toHexString());
                $(".logo_generator_title_color").attr("value", color.toHexString());
                logoGeneratorChange();
            }
        });

        $(".logo_generator_tag_color").spectrum({
            showInitial: true,
            showInput: true,
            change: function (color) {
                $(".logo_generator_tag_color").attr("value", color.toHexString());
                logoGeneratorChange();
            }
        });

        $("#logo_generator_example").css({ "width": storeDesign.logoWidth, "height": storeDesign.logoHeight });

        logoGeneratorChange();

        $(".busy_wait_theme_logo_generator").hide();
        $("#logo_generator_inner").show();
    }

    function logoGeneratorChange() {

        console.log("generator change")

        var logoTitleLength = $("#logo_generator_title").val().trim().length;
        var logoTagLength = $("#logo_generator_tag").val().trim().length;

        if (logoTitleLength > 0 || logoTagLength > 0) {
            $("#logo_generator_generate_button").removeClass("button_disabled");
        } else {
            $("#logo_generator_generate_button").addClass("button_disabled");
        }

        var logoTitle = $("#logo_generator_title").val().trim();
        var logoTag = $("#logo_generator_tag").val().trim();
        var logoFont = $("#logo_generator_font").val();
        var logoTitleSize = $("#logo_generator_title_size").val();
        var logoTagSize = $("#logo_generator_tag_size").val();
        var logoTitleColor = $(".logo_generator_title_color").val();
        var logoTagColor = $(".logo_generator_tag_color").val();

        if (logoTitleSize > 30 || logoTitleSize < 10) {
            logoTitleSize = 20;
            $("#logo_generator_title_size").val("20");
        }

        if (logoTagSize > 30 || logoTagSize < 10) {
            logoTagSize = 11;
            $("#logo_generator_tag_size").val("11");
        }

        logoTitleSize = logoTitleSize + "px";
        logoTagSize = logoTagSize + "px";

        console.log(logoTitleSize);

        $("#logo_generator_example_title").text(logoTitle).css({ "font-family": logoFont, "font-size": logoTitleSize, "color": logoTitleColor });
        $("#logo_generator_example_tag").text(logoTag).css({ "font-family": logoFont, "font-size": logoTagSize, "color": logoTagColor });
    }

    function generateNewLogo() {

        $("#logo_generator_finished").html("");

        $(".busy_wait_theme_logo_generating").show();
        $("#logo_generator_canvas_container_finished, #logo_generator_inner_container").hide();

        $("#logo_generator_generate_button").addClass("button_disabled");

        $("#logo_generator_example").css("border", "none");

        var logo2Generate = document.getElementById("logo_generator_example");

        html2canvas(logo2Generate, { backgroundColor: null }).then(function (canvas) {

            $("#logo_generator_finished").append(canvas);
            $(".busy_wait_theme_logo_generating, #logo_generator_canvas_container_preview").hide();
            $("#logo_generator_canvas_container_finished").show();
            $("#logo_generator_canvas_container_finished canvas").attr("id", "generatedLogoCanvas");
            $("#logo_generator_example").css("border", "1px dashed #ddd");
            $("#logo_generator_button_save").removeClass("button_disabled");

            $("#logo_generator_generate_button").removeClass("button_disabled").text("Make Changes").attr("onclick", "generateChangeLogo()");

        });

    }

    function generateChangeLogo() {
        $("#logo_generator_canvas_container_finished").hide();
        $("#logo_generator_inner_container, #logo_generator_canvas_container_preview").show();
        $("#logo_generator_generate_button").text("Generate").attr("onclick", "generateNewLogo()");
    }

    function saveGeneratedLogo() {

        /*  Save to Object */

        var tagColour = document.querySelector(".logo_generator_tag_color").value.trim();
        tagColour = tagColour.replace("#", "");

        var titleColour = document.querySelector(".logo_generator_title_color").value.trim();
        titleColour = titleColour.replace("#", "");

        var logoTitle = parseTextAndStripPost(document.getElementById("logo_generator_title").value.trim());

        var logoTagline = parseTextAndStripPost(document.getElementById("logo_generator_tag").value.trim());

        var font = parseTextAndStripPost(document.getElementById("logo_generator_font").value.trim());

        var enabled = false;
        if (document.getElementById("editor_logo_preferences_enabled").checked) {
            enabled = true;
        }

        var data = {
            "storeId": storeId,
            "tagColour": tagColour,
            "titleColour": titleColour,
            "logoTitle": logoTitle,
            "logoTagline": logoTagline,
            "font": font,
            "enabled": enabled
        }

        console.log(data);

        data = JSON.stringify(data);

        axiosPost('/services/editor/editor.svc/editorSaveLogoGenerator', data).then(function (data) {

            var result = data.d;
            console.log(result);

            store.design.logo.logoTitle = logoTitle;
            store.design.logo.logoTagline = logoTagline;
            store.design.logo.tagColour = tagColour;
            store.design.logo.titleColour = titleColour;
            store.design.logo.font = font;

        }).catch(function() {

        }).then(function () {

        });

        /* End Save to Object */

        $("#logo_generator_button_save").addClass("button_disabled").text("Saving...");

        var canvas = document.getElementById('generatedLogoCanvas');
        var dataURL = canvas.toDataURL();
        console.log(dataURL);

        function dataURItoBlob(dataURI) {
            'use strict'
            var byteString,
                mimestring

            if (dataURI.split(',')[0].indexOf('base64') !== -1) {
                byteString = atob(dataURI.split(',')[1])
            } else {
                byteString = decodeURI(dataURI.split(',')[1])
            }

            mimestring = dataURI.split(',')[0].split(':')[1].split(';')[0]

            var content = new Array();
            for (var i = 0; i < byteString.length; i++) {
                content[i] = byteString.charCodeAt(i)
            }

            return new Blob([new Uint8Array(content)], { type: mimestring });
        }

        var blob = dataURItoBlob(dataURL);
        console.log(blob);
        var time = new Date().getTime();
        //var file = new File([blob], "my-logo-" + time + ".png", { type: "image/png" });

        if (/Edge/.test(navigator.userAgent) || /Trident/.test(navigator.userAgent)) {
            var file = new Blob([blob], { type: 'image/png' });
            file.name = "my-logo-" + time + ".png";
        } else {
            var file = new File([blob], "my-logo-" + time + ".png", { type: "image/png" });
        }

        console.log(file);

        file.uploadURL = "./services/image/service.svc/uploadImage";
        uploadingFileName = file.name;
        file.parsedname = file.name;

        uploadingFileName = cleanProdImageName(uploadingFileName);
        checkImageExists(uploadingFileName, function (output) {
            uploadingFileName = cleanProdImageName(output);
            var xhr = new XMLHttpRequest();
            var _send = xhr.send;

            xhr.open("POST", file.uploadURL, true);
            xhr.setRequestHeader("storeId", storeId);
            xhr.setRequestHeader("fileName", uploadingFileName);
            _send.call(xhr, file);
            var newURL = 'https://d13z1xw8270sfc.cloudfront.net/origin/' + storeId + '/' + uploadingFileName;

            if (document.querySelector(".editor_is_active_modal") == null) {
                document.getElementById("editor_overlay").classList.remove("editor_overlay_active");
            }
            hideByClass("modal_logo_generator");

            buildNewLogoImage(newURL);
        });
    }

    function runLogoDokaEditor(imageUrl) {

        var url = 'https://s3-eu-west-1.amazonaws.com/prodimg.fw1.biz/' + storeId + '/' + imageUrl;

        var logoWidth = storeDesign.logoWidth;
        var logoHeight = storeDesign.logoHeight;

        pintura.setPlugins(pintura.plugin_crop, pintura.plugin_resize);

        dokaEditor = pintura.openEditor({
            imageReader: pintura.createDefaultImageReader(),
            imageWriter: pintura.createDefaultImageWriter(),
            locale: {
                ...pintura.locale_en_gb,
                ...pintura.plugin_crop_locale_en_gb,
                ...pintura.plugin_resize_locale_en_gb
            },
            src: url,
            cropEnableInfoIndicator: true,
            cropEnableImageSelection: false,
            cropEnableZoom: false,
            imageCropMaxSize: [
                logoWidth,
                logoHeight
            ],
            resizeMaxSize: {
                width: logoWidth,
                height: logoHeight
            }
        });

        dokaEditor.on("load", function (e) {

            if ((e.size.width == logoWidth) && (e.size.height == logoHeight)) {
                var newURL = 'https://d13z1xw8270sfc.cloudfront.net/origin/' + storeId + '/' + imageUrl;
                console.log(newURL)
                if (imageGalleryType == "logoAdd") {

                    buildNewLogoImage(newURL);

                    dokaEditor.destroy();

                }
            } else {

                console.log(e);
                setTimeout(() => {
                    dokaEditor.imageCrop = {
                        x: parseInt((e.size.width - logoWidth) / 2),
                        y: parseInt((e.size.height - logoHeight) / 2),
                        width: logoWidth,
                        height: logoHeight
                    };
                    dokaEditor.imageCropMaxSize = [logoWidth, logoHeight];

                }, 1500);

            }
        });

        dokaEditor.on("process", function (event) {
            console.log(event);
            console.log(event.dest instanceof Blob);

            var imageName = event.dest.name;
            console.log("1: " + imageName);

            var noMime = /(.*)\.[^.]+$/.exec(imageName);
            console.log("2: " + noMime);
            var filename = noMime[1] + "_" + new Date().getTime().toString() + "." + imageName.split('.').pop();
            console.log("3: " + filename);

            event.dest.uploadURL = "./services/image/service.svc/uploadImage";
            uploadingFileName = event.dest.name;

            uploadingFileName = cleanProdImageName(uploadingFileName);
            checkImageExists(uploadingFileName, function (output) {
                uploadingFileName = cleanProdImageName(output);
                var xhr = new XMLHttpRequest();
                var _send = xhr.send;

                xhr.open("POST", event.dest.uploadURL, true);
                xhr.setRequestHeader("storeId", storeId);
                xhr.setRequestHeader("fileName", uploadingFileName);
                _send.call(xhr, event.dest);
                var newURL = 'https://d13z1xw8270sfc.cloudfront.net/origin/' + storeId + '/' + uploadingFileName;
                if (imageGalleryType == "logoAdd") {
                    buildNewLogoImage(newURL);
                }
            });            
        });

        dokaEditor.on("close", function () { });
    }

    function updateIframeLogo() {

        document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");

        var enabled = false;
        if (document.getElementById("editor_logo_preferences_enabled").checked == true) {
            enabled = true;
        }

        var imageUrl = "";
        if (document.getElementById("editor_image-logo") != null) {
            imageUrl = document.getElementById("editor_image-logo").getAttribute("src");
        }

        var updateIframeData = {
            "action": "UPDATE_LOGO",
            "info": {
                "enabled": enabled,
                "imageUrl": imageUrl
            }
        }

        updateIframeData = JSON.stringify(updateIframeData);

        window.frames[0].window.postMessage(updateIframeData, "*");

        showIframeLoader();

    }

    function cancelLogo() {

        var updateIframeData = {
            "action": "UPDATE_LOGO",
            "info": {
                "enabled": true,
                "imageUrl": store.design.logo.imageURL
            }
        }

        updateIframeData = JSON.stringify(updateIframeData);

        window.frames[0].window.postMessage(updateIframeData, "*");

        showIframeLoader();

        if (store.design.logo.enabled == false) {
            updateEditorPlaceholders("logo");
        }

    }


    function saveLogo() {


        var enabled = false;
        if (document.getElementById("editor_logo_preferences_enabled").checked == true) {
            enabled = true;
        }

        var imageUrl = "";
        if (document.getElementById("editor_image-logo") != null) {
            imageUrl = document.getElementById("editor_image-logo").getAttribute("src");
        }

        axiosGet('./services/theme_editor/Logo.svc/saveLogoEditor?storeId=' + storeId + '&enabled=' + enabled + '&url=' + imageUrl).then(function () {

            editorSaved();

        }).catch(function () {

            console.log("ERROR:Logo:saveLogoEditor");
            typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
            errorOccurred("save", "logo", "saveLogoEditor");

        }).then(function () {

        });

    }

</script>
                    

<style>

    #slideshow_images_container{
        display: flex;
        flex-wrap: wrap;
        justify-content: space-around;
    }

    .slideshow_image_item{
        border-radius: 10px;
        border: 2px dashed #ddd;
        background-color: #FFF;
        width: 100%;
        max-width: 293px;
    }

    .slideshow_image_item_inner{
        height: 95px;
        width: 100%;
        padding: 5px;
        position: relative;
    }

    .slideshow_image_item{
        margin-bottom: 10px;
    }

    .slideshow_image_item_loading{
        position: absolute;
        top: 50%;
        transform: translateY(-50%);
        left: 0; right: 0;
        text-align: center;
        opacity: 0;
        visibility: hidden; 
        transition: 0.4s; 
        font-size: 1rem;
        transition: 0.4s;
        color: #339eff;
        text-transform: uppercase;
    }

    .slideshow_image_item[data-loading="true"] .slideshow_image_item_loading{ 
        opacity: 1; 
        visibility: visible; 
    }

    .slideshow_image_item_loaded{
        transition: 0.4s;
    }

    .slideshow_image_item[data-loading="true"] .slideshow_image_item_loaded{ 
        opacity: 0; 
        visibility: hidden;  
    }

    .slideshow_image_item_image{
        width: 100%;
        height: 85px;
        display: block;
        background-size: cover;
        background-position: center;
        border-radius: 6px;
        cursor: grab;
    }

    .slideshow_image_item_actions{
        display: flex;
        flex-wrap: nowrap;
        justify-content: space-between;
        align-items: center;
        height: 30px;
        background: rgba(51, 158, 255, 0.6);
        position: absolute;
        bottom: 5px;
        left: 5px;
        right: 5px;
        border-bottom-right-radius: 6px;
        border-bottom-left-radius: 6px;
        opacity: 0;
        visibility: hidden;
        transition: 0.25s
    }

    .slideshow_image_item:not(.slideshow_image_item_image_ghost):hover .slideshow_image_item_actions{
        opacity: 1;
        visibility: visible;
    }

    .slideshow_image_item_actions_left, .slideshow_image_item_actions_right{
        display: flex;
        flex-wrap: nowrap;

    }

    .slideshow_image_item_actions_button{
        color: #FFF;
        width: 30px;
        height: 30px;
        display: flex;
        align-items: center;
        justify-content: center;
        text-align: center;
        transition: 0.4s;
        cursor: pointer;
        position: relative;
    }

    .slideshow_image_item_actions_button:hover{
        background: rgba(51, 158, 255, 1);
    }

    .slideshow_image_item_actions_left .slideshow_image_item_actions_button:first-child{
        border-bottom-left-radius: 6px;
    }

    .slideshow_image_item_actions_right .slideshow_image_item_actions_button:last-child{
        border-bottom-right-radius: 6px;
    }

    .slideshow_image_item_actions_button_edit_alt{
        border-right: 1px solid rgb(255 255 255 / 0.3);
    }

    .slideshow_image_item_actions_button_help{
        position: absolute;
        top: 30px;
        background: rgba(51, 158, 255, 1);
        display: inline-block;
        padding: 5px;
        line-height: 20px;
        font-size: 0.7rem;
        color: #FFF;
        border-radius: 6px;
        opacity: 0; 
        visibility: hidden;
        transition: 0.25s;
        z-index: 10;
        min-width: 100px;
        pointer-events: none;
    }

    .slideshow_image_item_actions_button_help::after{
        content: '';
        position: absolute;
        top: -10px;
        width: 0; 
        height: 0; 
        border-left: 10px solid transparent;
        border-right: 10px solid transparent;
        border-bottom: 10px solid rgba(51, 158, 255, 1);
        z-index: 10;
    }

    .slideshow_image_item_actions_left .slideshow_image_item_actions_button_help{ left: 0; }
    .slideshow_image_item_actions_left .slideshow_image_item_actions_button_help::after{ left: 5px; }
    .slideshow_image_item_actions_right .slideshow_image_item_actions_button_help{ right: 0; }
    .slideshow_image_item_actions_right .slideshow_image_item_actions_button_help::after{ right: 5px; }

    .slideshow_image_item_actions_button:hover .slideshow_image_item_actions_button_help{
        top: 40px;
        opacity: 1;
        visibility: visible;
    }


    .slideshow_image_item:first-child .slideshow_image_item_actions_button_move_up{ display: none; }
    .slideshow_image_item:last-child .slideshow_image_item_actions_button_move_down{ display: none; }


    .slideshow_image_item_inputs{
        padding: 0 10px;
    }

    .slideshow_image_item_inputs_container{
        display: none;
    }

    .slideshow_image_item_inputs_container.slideshow_image_item_inputs_container_visible{
        display: block;
    }

    /* Slideshow Settings */

    #slideshow_settings{
        margin-top: 20px;
        padding-top: 20px;
        border-top: 1px dashed #ddd;
    }

    .slideshow_settings_panel_checkbox_container {
        position: relative;
        margin-top: 20px;
    }

</style>

<div class="editor_panel_item" data-type="slideshow">
    
    <div id="slideshow_images_container"></div>

    <div class="align_center">
        <a id="slideshow_add_new_button" class="editor_main_button" onclick="addNewSlideshowImage();">Add New Slideshow Image</a>
    </div>

    <div id="slideshow_settings">

        <div class="inline_checkboxes hide_overflow marginb20">
            <div class="checkbox_container">
                <input type="radio" id="editor_slideshow_enabled" name="editor_slideshow_enabled-disabled" checked onchange="slideshowUpdateSettings();">
                <label for="editor_slideshow_enabled"><span>Enabled</span></label>
            </div>
            <div class="checkbox_container">
                <input type="radio" id="editor_slideshow_disabled" name="editor_slideshow_enabled-disabled" onchange="slideshowUpdateSettings();">
                <label for="editor_slideshow_disabled"><span>Disabled</span></label>
            </div>
        </div>

        <div class="input_container">
            <label for="slideshow_transition">Transition Effect</label>
            <select id="slideshow_transition" onchange="slideshowUpdateSettings();">
                <option value="1">Slide</option>
                <option value="8">Fade</option>
            </select>
        </div>

        <div class="input_container">
            <label for="slideshow_speed">Transition Speed</label>
            <select id="slideshow_speed" onchange="slideshowUpdateSettings();">
                <option value="0">Off</option>
                <option value="1800">Very Slow</option>
                <option value="1200">Slow</option>
                <option value="800">Fast</option>
                <option value="300">Very Fast</option>
            </select>
        </div>

        <div class="input_container">
            <label for="slideshow_pause">Pause Time</label>
            <select id="slideshow_pause" onchange="slideshowUpdateSettings();">
                <option value="3000">Very Short</option>
                <option value="5000">Short</option>
                <option value="7000">Long</option>
                <option value="10000">Very Long</option>
            </select>
        </div>

        <div class="input_container">
            <label for="slideshow_starting_slide">Starting Slide</label>
            <select id="slideshow_starting_slide" onchange="slideshowUpdateSettings();"></select>
        </div>

        <div class="slideshow_settings_panel_checkbox_container">
            <div class="checkbox_container ">
                <input type="checkbox" id="slideshow_nav1" name="slideshow_nav1" onclick="slideshowUpdateSettings();">
                <label for="slideshow_nav1"><span>Prev &amp; Next Navigation</span></label>
            </div>
        </div>

        <div class="slideshow_settings_panel_checkbox_container">
            <div class="checkbox_container">
                <input type="checkbox" id="slideshow_nav2" name="slideshow_nav2" onclick="slideshowUpdateSettings();">
                <label for="slideshow_nav2"><span>Number Navigation</span></label>
            </div>
        </div>

        <div class="slideshow_settings_panel_checkbox_container">
            <div class="checkbox_container">
                <input type="checkbox" id="slideshow_pauseOnHover" name="slideshow_pauseOnHover" onclick="slideshowUpdateSettings();">
                <label for="slideshow_pauseOnHover"><span>Pause On Hover</span></label>
            </div>
        </div>

        <div class="slideshow_settings_panel_checkbox_container">
            <div class="checkbox_container">
                <input type="checkbox" id="slideshow_randomStart" name="slideshow_randomStart" onclick="slideshowUpdateSettings();">
                <label for="slideshow_randomStart"><span>Start on Random Slide</span></label>
            </div>
        </div>

    </div>

    <div class="editor_info_panel margint40" data-type="translations">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title"><i class="fa fa-language" aria-hidden="true"></i>Translations</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-up" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_details_tokens_list"></div>
        </div>
    </div>

    <div id="editor_info_panel_slideshow_help" class="editor_info_panel margint20" data-type="help">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title">Help</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-down" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div>
                <div class="editor_info_panel_subtitle">What size slideshow should i use?</div>
                <p>The recommended width and height for your slideshow images are:</p>
                <ul>
                    <li>Width: <span id="editor_slideshow_help_width"></span>px</li>
                    <li>Height: <span id="editor_slideshow_help_height"></span>px</li>
                </ul>
            </div>
        </div>
    </div>

</div>


<script>

    var buildSlideshowPanelLoaded = false;
    var slideshowItems;
    var originalSlideshowItems;
    function buildSlideshowPanel() {

        if (buildSlideshowPanelLoaded === false) {

            document.getElementById("slideshow_images_container").innerHTML = "";

            axiosGet('services/design/Slideshow.svc/GetDetails?storeId=' + storeId).then(function (data) {

                slideshowItems = data.d || data;
                originalSlideshowItems = JSON.parse(JSON.stringify(slideshowItems));

                getSlideshowDetails(slideshowItems);

                if (storeDesign.slideshowWidth != null && storeDesign.slideshowHeight != null) {
                    document.getElementById("editor_slideshow_help_width").innerText = storeDesign.slideshowWidth;
                    document.getElementById("editor_slideshow_help_height").innerText = storeDesign.slideshowHeight;
                } else {
                    document.getElementById("editor_info_panel_slideshow_help").style.display = "none";
                }

            }).catch(function (e) {
                console.log("ERROR:Slideshow:GetDetails");
                typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
                errorOccurred("load", "slideshow", "GetDetails");

            }).then(function () {

            });
            

            
        } else {
            document.querySelector(".editor_panel_item[data-type='slideshow']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");
        }

    }

    var slideshowDetails;
    var originalSlideshowDetails;
    function getSlideshowDetails(slideshowItems) {

        axiosGet('services/design/Slideshow.svc/SliderDetails?storeId=' + storeId).then(function (data) {

            slideshowDetails = data.d || data;
            originalSlideshowDetails = jQuery.extend(true, {}, slideshowDetails);

            console.log(slideshowDetails);

            buildSlideshowDetails(slideshowItems);

            buildSlideshowPanelLoaded = true;
            document.querySelector(".editor_panel_item[data-type='slideshow']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

        }).catch(function (e) {
            console.log("ERROR:Slideshow:SliderDetails");
            typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
            errorOccurred("load", "slideshow", "SliderDetails");
        }).then(function () {
           
        });
    
    }

    function buildSlideshowDetails(slideshowItems){

        document.getElementById("slideshow_transition").value = slideshowDetails.effect.toString();
        document.getElementById("slideshow_speed").value = slideshowDetails.animSpeed;
        document.getElementById("slideshow_pause").value = slideshowDetails.pauseTime;

        if (slideshowDetails.visible == 1) {
            document.getElementById("editor_slideshow_enabled").checked = true;
        } else {
            document.getElementById("editor_slideshow_disabled").checked = true;
        }

        if (slideshowDetails.nav1 === true) {
            $("#slideshow_nav1").prop("checked", true);
        } else {
            $("#slideshow_nav1").prop("checked", false);
        }

        if (slideshowDetails.nav2 === true) {
            $("#slideshow_nav2").prop("checked", true);
        } else {
            $("#slideshow_nav2").prop("checked", true);
        }

        if (slideshowDetails.pauseOnHover === true) {
            $("#slideshow_pauseOnHover").prop("checked", true);
        } else {
            $("#slideshow_pauseOnHover").prop("checked", false);
        }

        if (slideshowDetails.randomStart === true) {
            $("#slideshow_randomStart").prop("checked", true);
        } else {
            $("#slideshow_randomStart").prop("checked", false);
        }

        buildSlideshowImages(slideshowItems);
        
    }

    function buildSlideshowImages(slideshowItems) {

        console.log(slideshowItems);

        var slideshowImagesHtml = '';

        for (var i = 0; i < slideshowItems.length; i++) {

            var loading = false;

            var imageUrl = slideshowItems[i].url + "?v=" + new Date().getTime().toString();

            var backgroundImage = 'background-image: url(\'' + imageUrl + '\')';
            if (slideshowItems[i].loading != null && slideshowItems[i].loading == true) {
                loading = true;
                backgroundImage = '';
            }

            var caption = "";
            if (slideshowItems[i].text != null) {
                caption = stripHTMLPost(slideshowItems[i].text);
            }

            var link = "";
            if (slideshowItems[i].link != null) {
                link = stripHTMLPost(slideshowItems[i].link);
            }

            var alt = "";
            if (slideshowItems[i].alt != null) {
                alt = stripHTMLPost(slideshowItems[i].alt);
            }

            var item = '<div class="slideshow_image_item" data-id="' + slideshowItems[i].id + '" data-loading="' + loading + '">';
                    item += '<div class="slideshow_image_item_inner">';
                        item += '<div class="slideshow_image_item_loading"><i class="fa fa-spinner fa-spin"></i> Loading</div>';
                        item += '<div class="slideshow_image_item_loaded">';
                            item += '<div class="slideshow_image_item_image" style="' + backgroundImage + '"></div>';
                            item += '<div class="slideshow_image_item_actions">';
                                item += '<div class="slideshow_image_item_actions_left">';
                                    item += '<a class="slideshow_image_item_actions_button slideshow_image_item_actions_button_replace_image" onclick="replaceExistingSlideshowImage(\'' + slideshowItems[i].id + '\');"><i class="fa fa-refresh" aria-hidden="true"></i><span class="slideshow_image_item_actions_button_help">Replace Image</span></a>';
                                    item += '<a class="slideshow_image_item_actions_button slideshow_image_item_actions_button_edit_caption" onclick="slideshowToggleCaption(\'' + slideshowItems[i].id + '\');"><i class="fa fa-pencil" aria-hidden="true"></i><span class="slideshow_image_item_actions_button_help">Edit Caption</span></a>';
                                    item += '<a class="slideshow_image_item_actions_button slideshow_image_item_actions_button_edit_link" onclick="slideshowToggleLink(\'' + slideshowItems[i].id + '\');"><i class="fa fa-link" aria-hidden="true"></i><span class="slideshow_image_item_actions_button_help">Edit Link</span></a>';
                                    item += '<a class="slideshow_image_item_actions_button slideshow_image_item_actions_button_edit_alt" onclick="slideshowToggleAlt(\'' + slideshowItems[i].id + '\');"><i class="fa fa-font" aria-hidden="true"></i><span class="slideshow_image_item_actions_button_help">Edit Alt Tag</span></a>';
                                    item += '<a class="slideshow_image_item_actions_button slideshow_image_item_actions_button_move_up" onclick="slideshowMoveUp(\'' + slideshowItems[i].id +'\');"><i class="fa fa-chevron-up" aria-hidden="true"></i><span class="slideshow_image_item_actions_button_help">Move Up</span></a>';
                                    item += '<a class="slideshow_image_item_actions_button slideshow_image_item_actions_button_move_down" onclick="slideshowMoveDown(\'' + slideshowItems[i].id +'\');"><i class="fa fa-chevron-down" aria-hidden="true"></i><span class="slideshow_image_item_actions_button_help">Move Down</span></a>';
                                item += '</div>';
                                item += '<div class="slideshow_image_item_actions_right">';
                                    item += '<a class="slideshow_image_item_actions_button"><i class="fa fa-trash" aria-hidden="true" onclick="slideshowDelete(\'' + slideshowItems[i].id +'\');"></i><span class="slideshow_image_item_actions_button_help">Delete Image</span></a>';
                                item += '</div>';
                            item += '</div>';
                        item += '</div>';
                    item += '</div>';
                    item += '<div class="slideshow_image_item_inputs">';
                        item += '<div class="input_container slideshow_image_item_inputs_container slideshow_image_item_inputs_container_caption">';
                            item += '<div class="slideshow_image_item_inputs_item slideshow_image_item_input_caption">';
                                item += '<label>Caption</label>';
                                item += '<input type="text" placeholder="Caption" class="slideshow_input_caption" value="' + caption + '" onchange="slideshowEditCaption(\'' + slideshowItems[i].id + '\')" onkeyup="slideshowEditCaption(\'' + slideshowItems[i].id +'\')" onpaste="slideshowEditCaption(\'' + slideshowItems[i].id +'\');"/>';
                            item += '</div>';
                        item += '</div>';
                        item += '<div class="slideshow_image_item_inputs_item slideshow_image_item_inputs_item_link">';
                            item += '<div class="input_container slideshow_image_item_inputs_container slideshow_image_item_inputs_container_link">';
                                item += '<label>Link</label>';
                                item += '<input type="text" placeholder="Link" class="slideshow_input_link" value="' + link + '" onchange="slideshowEditLink(\'' + slideshowItems[i].id + '\')" onkeyup="slideshowEditLink(\'' + slideshowItems[i].id + '\')" onpaste="slideshowEditLink(\'' + slideshowItems[i].id +'\');" />';
                            item += '</div>';
                        item += '</div>';
                        item += '<div class="slideshow_image_item_inputs_item slideshow_image_item_inputs_item_alt">';
                            item += '<div class="input_container slideshow_image_item_inputs_container slideshow_image_item_inputs_container_alt">';
                                item += '<label>Alt Tag</label>';
                                item += '<input type="text" placeholder="Alt Tag" class="slideshow_input_alt" value="' + alt + '" onchange="slideshowEditAlt(\'' + slideshowItems[i].id + '\')" onkeyup="slideshowEditAlt(\'' + slideshowItems[i].id + '\')" onpaste="slideshowEditAlt(\'' + slideshowItems[i].id + '\');" />';
                            item += '</div>';
                        item += '</div>';
                    item += '</div>';
                item += '</div>';

            slideshowImagesHtml += item;

            if (slideshowItems[i].loading != null && slideshowItems[i].loading === true) {
                postLoadSlideshowImage(slideshowItems[i].id, imageUrl);
            }
        }

        document.getElementById("slideshow_images_container").innerHTML += slideshowImagesHtml;

        slideshowSequence();
        buildSlideshowSortable();
    }


    // POST LAZY LOAD
    function postLoadSlideshowImage(id, url) {
        setTimeout(function () {
            document.querySelector(".slideshow_image_item[data-id='" + id + "'] .slideshow_image_item_image").style.backgroundImage = "url('" + url + "')";
            document.querySelector(".slideshow_image_item[data-id='" + id + "']").setAttribute("data-loading", "false");
        }, 4000);
    }

    // SEQUENCE
    var firstLoadStartingSlide = true;
    function slideshowSequence() {

        var slideItems = document.querySelectorAll(".slideshow_image_item");

        for (var i = 0; i < slideItems.length; i++) {
            slideItems[i].setAttribute("data-sequence", i);
        }

        if (firstLoadStartingSlide === false) {
            var existingValue = document.getElementById("slideshow_starting_slide").value;
        } else {
            firstLoadStartingSlide = false;
            var existingValue = slideshowDetails.startSlide;
        }

        if (slideItems.length === 0) {
            document.getElementById("slideshow_starting_slide").setAttribute("disabled", "true");
        } else {
            document.getElementById("slideshow_starting_slide").removeAttribute("disabled");
            document.getElementById("slideshow_starting_slide").innerHTML = "";
            var allOptions = '';
            for (var i = 0; i < slideItems.length; i++) {

                var selected = '';
                if (i === parseInt(existingValue)) {
                    selected = "selected";
                }

                var option = '<option value="' + i + '" ' + selected + '>' + (i + 1) + '</option>';
                allOptions += option;

                var slideId = slideItems[i].getAttribute("data-id");

                slideshowItems.filter(function (obj) {
                    if (obj.id == slideId) {
                        obj.sequence = (i + 1);
                    }
                });

            }
            document.getElementById("slideshow_starting_slide").innerHTML = allOptions;
        }

        

    }

    // MOVE UP
    function slideshowMoveUp(id){
        
        var currentSequence = document.querySelector(".slideshow_image_item[data-id='" + id + "']").getAttribute("data-sequence");
        console.log(currentSequence);

        var newSequence = parseInt(currentSequence) - 1;

        var currentItem = document.querySelector(".slideshow_image_item[data-id='" + id + "']");
        var otherItem = document.querySelector(".slideshow_image_item[data-sequence='" + newSequence + "']");

        $(currentItem).insertBefore(otherItem);

        slideshowSequence();
        updateIframeSlideshow();
    }

    // MOVE DOWN
    function slideshowMoveDown(id) {

        var currentSequence = document.querySelector(".slideshow_image_item[data-id='" + id + "']").getAttribute("data-sequence");
        console.log(currentSequence);

        var newSequence = parseInt(currentSequence) + 1;

        var currentItem = document.querySelector(".slideshow_image_item[data-id='" + id + "']");
        var otherItem = document.querySelector(".slideshow_image_item[data-sequence='" + newSequence + "']");

        $(currentItem).insertAfter(otherItem);

        slideshowSequence();
        updateIframeSlideshow();
    }

    // DELETE
    function slideshowDelete(id) {
        document.querySelector(".slideshow_image_item[data-id='" + id + "']").remove();

        slideshowItems.filter(function (obj) {
            if (obj.id == id) {
                obj.status = "delete";
            }
        });

        slideshowSequence();
        updateIframeSlideshow();
    }

    // Toggle Caption
    function slideshowToggleCaption(id) {

        if (document.querySelector(".slideshow_image_item[data-id='" + id + "'] .slideshow_image_item_inputs_container_caption.slideshow_image_item_inputs_container_visible") != null) {
            document.querySelector(".slideshow_image_item[data-id='" + id + "'] .slideshow_image_item_inputs_container_caption").classList.remove("slideshow_image_item_inputs_container_visible");
        } else {

            if (document.querySelector(".slideshow_image_item_inputs_container_visible") != null) {
                document.querySelector(".slideshow_image_item_inputs_container_visible").classList.remove("slideshow_image_item_inputs_container_visible");
            }

            document.querySelector(".slideshow_image_item[data-id='" + id + "'] .slideshow_image_item_inputs_container_caption").classList.add("slideshow_image_item_inputs_container_visible");
            document.querySelector(".slideshow_image_item[data-id='" + id + "'] .slideshow_image_item_inputs_container_caption input").focus();
        }
    }

    // Edit Caption
    function slideshowEditCaption(id) {

        var caption = document.querySelector(".slideshow_image_item[data-id='" + id + "'] .slideshow_input_caption").value.trim();

        caption = stripHTMLPost(caption);

        slideshowItems.filter(function (obj) {
            if (obj.id == id) {
                obj.text = caption;
            }
        });

        updateIframeSlideshow();
    }

    // Toggle Link
    function slideshowToggleLink(id) {

        if (document.querySelector(".slideshow_image_item[data-id='" + id + "'] .slideshow_image_item_inputs_container_link.slideshow_image_item_inputs_container_visible") != null) {
            document.querySelector(".slideshow_image_item[data-id='" + id + "'] .slideshow_image_item_inputs_container_link").classList.remove("slideshow_image_item_inputs_container_visible");
        } else {

            if (document.querySelector(".slideshow_image_item_inputs_container_visible") != null) {
                document.querySelector(".slideshow_image_item_inputs_container_visible").classList.remove("slideshow_image_item_inputs_container_visible");
            }

            document.querySelector(".slideshow_image_item[data-id='" + id + "'] .slideshow_image_item_inputs_container_link").classList.add("slideshow_image_item_inputs_container_visible");
            document.querySelector(".slideshow_image_item[data-id='" + id + "'] .slideshow_image_item_inputs_container_link input").focus();
        }
    }

    // Edit Link
    function slideshowEditLink(id) {

        var link = document.querySelector(".slideshow_image_item[data-id='" + id + "'] .slideshow_input_link").value.trim();

        link = stripHTMLPost(link);

        slideshowItems.filter(function (obj) {
            if (obj.id == id) {
                obj.link = link;
            }
        });

        updateIframeSlideshow();

    }


    // Toggle Alt Tag
    function slideshowToggleAlt(id) {

        if (document.querySelector(".slideshow_image_item[data-id='" + id + "'] .slideshow_image_item_inputs_container_alt.slideshow_image_item_inputs_container_visible") != null) {
            document.querySelector(".slideshow_image_item[data-id='" + id + "'] .slideshow_image_item_inputs_container_alt").classList.remove("slideshow_image_item_inputs_container_visible");
        } else {

            if (document.querySelector(".slideshow_image_item_inputs_container_visible") != null) {
                document.querySelector(".slideshow_image_item_inputs_container_visible").classList.remove("slideshow_image_item_inputs_container_visible");
            }

            document.querySelector(".slideshow_image_item[data-id='" + id + "'] .slideshow_image_item_inputs_container_alt").classList.add("slideshow_image_item_inputs_container_visible");
            document.querySelector(".slideshow_image_item[data-id='" + id + "'] .slideshow_image_item_inputs_container_alt input").focus();
        }
    }

    // Edit Alt
    function slideshowEditAlt(id) {

        var alt = document.querySelector(".slideshow_image_item[data-id='" + id + "'] .slideshow_input_alt").value.trim();

        alt = stripHTMLPost(alt);

        slideshowItems.filter(function (obj) {
            if (obj.id == id) {
                obj.alt = alt;
            }
        });

        updateIframeSlideshow();

    }


    // Update Settings
    function slideshowUpdateSettings() {

        var visible = document.getElementById("editor_slideshow_enabled").checked;
        if (visible === false) {
            slideshowDetails.visible = 0;
        } else {
            slideshowDetails.visible = 1;
        }

        var effect = document.getElementById("slideshow_transition").value;
        slideshowDetails.effect = parseInt(effect);

        var animSpeed = document.getElementById("slideshow_speed").value;
        slideshowDetails.animSpeed = parseInt(animSpeed);

        var pauseTime = document.getElementById("slideshow_pause").value;
        slideshowDetails.pauseTime = parseInt(pauseTime);

        var startSlide = document.getElementById("slideshow_starting_slide").value;
        slideshowDetails.startSlide = parseInt(startSlide);

        var nav1 = false;
        if (document.getElementById("slideshow_nav1").checked) {
            nav1 = true;
        }
        slideshowDetails.nav1 = nav1;

        var nav2 = false;
        if (document.getElementById("slideshow_nav2").checked) {
            nav2 = false;
        }
        slideshowDetails.nav2 = nav2;

        var pauseOnHover = false;
        if (document.getElementById("slideshow_pauseOnHover").checked) {
            pauseOnHover = true;
        }
        slideshowDetails.pauseOnHover = pauseOnHover;

        var randomStart = false;
        if (document.getElementById("slideshow_randomStart").checked) {
            randomStart = true;
        }
        slideshowDetails.randomStart = randomStart;

        updateIframeSlideshow();

    }

    // Slideshow Sortable
    function buildSlideshowSortable() {

        console.log("Build Slideshow Sortable")

        var slideshowImagesSortableContainer = document.querySelector("#slideshow_images_container");

        var sortableSlideshowImages = new Sortable(slideshowImagesSortableContainer, {
            handle: ".slideshow_image_item_image",
            draggable: ".slideshow_image_item",
            ghostClass: "slideshow_image_item_image_ghost",
            animation: 150,
            onEnd: function (evt) {
                slideshowSequence();
                updateIframeSlideshow();
            }
        });

    }

    // Add New Image
    function addNewSlideshowImage() {
        document.getElementById("editor_overlay").classList.add("editor_overlay_active");

        $("#recommended_logo_dimensions").remove();

        if (storeDesign.slideshowWidth != null && storeDesign.slideshowHeight != null) {

            var logoImageGalleryRecommend = '<div id="recommended_logo_dimensions">';
            logoImageGalleryRecommend += '<p>Based on your current theme the recommended dimensions for your slideshow is:</p>';
            logoImageGalleryRecommend += '<ul>';
            logoImageGalleryRecommend += '<li>Width: ' + storeDesign.slideshowWidth + 'px</li>';
            logoImageGalleryRecommend += '<li>Height: ' + storeDesign.slideshowHeight + 'px</li>';
            logoImageGalleryRecommend += '</ul>';

            $(logoImageGalleryRecommend).insertBefore("#image_gallery_container");
        }

        openImageGallery(1, 'slideshowAdd');
    }

    // Replace Existing Image
    var slideshowImageToReplaceId = "";
    function replaceExistingSlideshowImage(id) {
        slideshowImageToReplaceId = id;
        document.getElementById("editor_overlay").classList.add("editor_overlay_active");

        $("#recommended_logo_dimensions").remove();

        if (storeDesign.slideshowWidth != null && storeDesign.slideshowHeight != null) {

            var logoImageGalleryRecommend = '<div id="recommended_logo_dimensions">';
            logoImageGalleryRecommend += '<p>Based on your current theme the recommended dimensions for your slideshow are:</p>';
            logoImageGalleryRecommend += '<ul>';
            logoImageGalleryRecommend += '<li>Width: ' + storeDesign.slideshowWidth + 'px</li>';
            logoImageGalleryRecommend += '<li>Height: ' + storeDesign.slideshowHeight + 'px</li>';
            logoImageGalleryRecommend += '</ul>';

            $(logoImageGalleryRecommend).insertBefore("#image_gallery_container");
        }

        openImageGallery(1, 'slideshowReplace');
    }

    var dokaEditor = undefined;
    function runSlideshowDokaEditor(imageUrl, imageGalleryType) {

        var url = 'https://s3-eu-west-1.amazonaws.com/prodimg.fw1.biz/' + storeId + '/' + imageUrl;

        var slideshowWidth = Number(storeDesign.slideshowWidth);
        var slideshowHeight = Number(storeDesign.slideshowHeight);
        
        pintura.setPlugins(pintura.plugin_crop);

        dokaEditor = pintura.openEditor({
            imageReader: pintura.createDefaultImageReader(),
            imageWriter: pintura.createDefaultImageWriter(),
            locale: {
                ...pintura.locale_en_gb,
                ...pintura.plugin_crop_locale_en_gb
            },
            src: url,
            cropEnableInfoIndicator: true,
            cropEnableImageSelection: false,
            cropEnableZoom: false,
            imageCropMaxSize: [
                slideshowWidth,
                slideshowHeight
            ],
            resizeMaxSize: {
                width: slideshowWidth,
                height: slideshowHeight
            },
            enableButtonRevert: false
        });

        dokaEditor.on("load", function (e) {
            if ((e.size.width == slideshowWidth) && (e.size.height == slideshowHeight)) {
                var newURL = 'https://d13z1xw8270sfc.cloudfront.net/origin/' + storeId + '/' + imageUrl;
                console.log(newURL)

                if (imageGalleryType == "slideshowAdd") {

                    var sequence = document.querySelectorAll(".slideshow_image_item").length;
                    sequence = sequence + 1;

                    var data = {
                        "id": guid(),
                        "link": null,
                        "sequence": sequence,
                        "status": "new",
                        "text": null,
                        "url": newURL,
                        "loading": true
                    };

                    var slideImage = new Array();
                    slideImage.push(data);
                    slideshowItems.push(data);

                    buildSlideshowImages(slideImage);

                } else {

                    slideshowItems.filter(function (obj) {

                        if (obj.id == slideshowImageToReplaceId) {
                            obj.url = newURL;
                            obj.status = "new";
                            obj.loading = true;
                        }

                    });
                    document.getElementById("slideshow_images_container").innerHTML = "";
                    buildSlideshowImages(slideshowItems);

                }

                dokaEditor.destroy();
                updateIframeSlideshow();

                
            } else {

                setTimeout(() => {
                    dokaEditor.imageCrop = {
                        x: parseInt((e.size.width - slideshowWidth) / 2),
                        y: parseInt((e.size.height - slideshowHeight) / 2),
                        width: slideshowWidth,
                        height: slideshowHeight
                    };
                    dokaEditor.imageCropMaxSize = [slideshowWidth, slideshowHeight];
                }, 1500);

            }
        });

        dokaEditor.on("process", function (event) {
            console.log(event);
            console.log(event.dest instanceof Blob);

            var imageName = event.dest.name;
            console.log("1: " + imageName);

            var noMime = /(.*)\.[^.]+$/.exec(imageName);
            console.log("2: " + noMime);
            var filename = noMime[1] + "_" + new Date().getTime().toString() + "." + imageName.split('.').pop();
            console.log("3: " + filename);
            event.dest.uploadURL = "./services/image/service.svc/uploadImage";
            uploadingFileName = event.dest.name;

            uploadingFileName = cleanProdImageName(uploadingFileName);
            checkImageExists(uploadingFileName, function (output) {
                uploadingFileName = cleanProdImageName(output);
                var xhr = new XMLHttpRequest();
                var _send = xhr.send;

                xhr.open("POST", event.dest.uploadURL, true);
                xhr.setRequestHeader("storeId", storeId);
                xhr.setRequestHeader("fileName", uploadingFileName);
                _send.call(xhr, event.dest);
                var newURL = 'https://d13z1xw8270sfc.cloudfront.net/origin/' + storeId + '/' + uploadingFileName;

                if (imageGalleryType == "slideshowAdd") {

                    var sequence = document.querySelectorAll(".slideshow_image_item").length;
                    sequence = sequence + 1;

                    var data = {
                        "id": guid(),
                        "link": null,
                        "sequence": sequence,
                        "status": "new",
                        "text": null,
                        "url": newURL,
                        "loading": true
                    };

                    var slideImage = new Array();
                    slideImage.push(data);
                    slideshowItems.push(data);

                    buildSlideshowImages(slideImage);

                } else {

                    slideshowItems.filter(function (obj) {

                        if (obj.id == slideshowImageToReplaceId) {
                            obj.url = newURL;
                            obj.status = "new";
                            obj.loading = true;
                        }

                    });
                    document.getElementById("slideshow_images_container").innerHTML = "";
                    buildSlideshowImages(slideshowItems);
                }
                updateIframeSlideshow();
            });
        });
    }


    // Update Iframe
    function updateIframeSlideshow() {

        document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");

        

        slideshowPreviewDelay(function () {

            previewUpdateIframeSlideshow();
            
        }, 4000);

    }

    var slideshowPreviewDelay = (function () {
        var timer = 0;
        return function (callback, ms) {
            clearTimeout(timer);
            timer = setTimeout(callback, ms);
        };
    })();

    function previewUpdateIframeSlideshow() {

        var allSlides = '';

        var slideshowItemsSequenced = slideshowItems.sort(function (a, b) {
            if (a.sequence < b.sequence) return -1;
            if (a.sequence > b.sequence) return 1;
            return 0;
        });

        console.log("slideshowItemsSequenced");
        console.log(slideshowItemsSequenced);
        
        for (var i = 0; i < slideshowItemsSequenced.length; i++) {

            if (slideshowItemsSequenced[i].status != "delete") {

                var previewImage = slideshowItemsSequenced[i].url + "?v=" + new Date().getTime().toString();
                var caption = stripHTMLPost(slideshowItemsSequenced[i].text);
                var captionHtml = "";
                if (caption.length > 0) {
                    captionHtml = '<p class="flex-caption">' + caption + '</p>';
                }

                var alt = stripHTMLPost(slideshowItemsSequenced[i].alt);
                var altHtml = "";
                if (alt != null && alt.length > 0) {
                    altHtml = "alt='" + alt + "'";
                }

                if (slideshowItemsSequenced[i].link != null && slideshowItemsSequenced[i].link.length > 0) {
                    var slideItem = '<li><a href="' + slideshowItemsSequenced[i].link + '" target="_blank" rel="noreferer"><img src="' + previewImage + '" ' + altHtml + ' />' + captionHtml + '</a></li>';
                } else {
                    var slideItem = '<li><img src="' + previewImage + '" ' + altHtml + ' />' + captionHtml + '</li>';
                }

                allSlides += slideItem;
            }

        }

        console.log(allSlides);

        var slideHtml = '<div class="slider-wrapper theme-default">';
        slideHtml += '<div id="slider" class="flexslider">';
        slideHtml += '<ul class="slides">';
        slideHtml += allSlides;
        slideHtml += '</ul>';
        slideHtml += '</div>';
        slideHtml += '</div>';

        if (slideshowDetails.effect === 1) {
            var previewEffect = 'slide';
        } else {
            var previewEffect = 'fade';
        }

        var updateIframeData = {
            "action": "UPDATE_SLIDESHOW",
            "info": {
                "enabled": slideshowDetails.visible,
                "cssLink": "https://d3l66gvjdr7rqw.cloudfront.net/javascripts/flexslider/flexslider_v13.css",
                "scriptLink": "https://d3l66gvjdr7rqw.cloudfront.net/javascripts/flexslider/jquery.flexslider-min_v1.js",
                "html": slideHtml,
                "controls": {
                    "useCSS": true,
                    "touch": true,
                    "animation": previewEffect,
                    "animationSpeed": slideshowDetails.animSpeed,
                    "slideshowSpeed": slideshowDetails.pauseTime,
                    "startAt": slideshowDetails.startSlide,
                    "directionNav": slideshowDetails.nav1,
                    "prevText": 'Prev',
                    "nextText": 'Next',
                    "controlNav": slideshowDetails.nav2,
                    "pauseOnHover": slideshowDetails.pauseOnHover,
                    "randomize": slideshowDetails.randomStart
                }
            }
        }

        updateIframeData = JSON.stringify(updateIframeData);

        window.frames[0].window.postMessage(updateIframeData, "*");

        showIframeLoader();
    }


    // Cancel
    function cancelSlideshow() {

        slideshowItems = originalSlideshowItems;
        slideshowDetails = originalSlideshowDetails;

        previewUpdateIframeSlideshow();
    }

    // Save
    function saveSlideshow() {

        var slideshowData = {
            'storeId': storeId,
            'list': slideshowItems,
            'item': slideshowDetails
        }
        slideshowData = JSON.stringify(slideshowData);

        axiosPost('./services/design/Slideshow.svc/updateSlideshow', slideshowData).then(function (data) {
            trace('saveSlideshow', data)

            editorSaved();

        }).catch(function (e) {

            console.log("ERROR:Slideshow:updateSlideshow");
            typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
            errorOccurred("save", "slideshow", "updateSlideshow");

        }).then(function () {

        });


    }

</script>
                    

<div class="editor_panel_item" data-type="featured-products">

    <div class="input_container">
        <label for="design_settings_featured_num">Number of Featured Products</label>
        <input type="number" value="12" placeholder="12" min="0" max="50" id="design_settings_featured_num" onchange="changeFeaturedDefaultNumber();" onkeyup="changeFeaturedDefaultNumber();" />
        <div class="alert" id="design_settings_featured_num_50plus" style="color: #FFB432;"><i class="fa fa-exclamation-triangle" aria-hidden="true"></i> Limited to 50 products per page so that page speed is not impacted</div>
    </div>

    <div class="margint20">
        <p><strong>Arrange Featured Products by:</strong></p>
        <div class="checkbox_container">
            <input type="radio" id="design_settings_featured_display_0" name="design_settings_featured_display" data-val="0" checked="checked" onchange="editorFeaturedChange();">
            <label for="design_settings_featured_display_0"><span>As set in the Browsing Options panel via <a href="/manage_products_categories.aspx" class="link_color_primary">categories</a></span></label>
        </div>
        <div class="checkbox_container margint30">
            <input type="radio" id="design_settings_featured_display_1" name="design_settings_featured_display" data-val="1" onchange="editorFeaturedChange();">
            <label for="design_settings_featured_display_1"><span>Random Order</span></label>
        </div>
    </div>

    <div class="editor_info_panel margint40" data-type="translations">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title"><i class="fa fa-language" aria-hidden="true"></i>Edit Labels</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-down" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_details_tokens_list"></div>
        </div>
    </div>

</div>

<script>

    var buildFeaturedProductsPanelLoaded = false;
    function buildFeaturedProductsPanel() {

        if (buildFeaturedProductsPanelLoaded == false) {

            document.getElementById("design_settings_featured_num").value = store.settings.featureCount;
            if (store.settings.featuredRandom == true) {
                document.getElementById("design_settings_featured_display_1").checked = true;
            }

            document.querySelector(".editor_panel_item[data-type='featured-products']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

        } else {

            document.querySelector(".editor_panel_item[data-type='featured-products']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

        }

    }

    function changeFeaturedDefaultNumber() {

        hideById("design_settings_featured_num_50plus");

        var featuredNumber = getId("design_settings_featured_num").value;
        if (featuredNumber < 0) {
            getId("design_settings_featured_num").value = "0";
        }
        if (featuredNumber == "") {
            getId("design_settings_featured_num").value = "";
        }
        if (featuredNumber > 50) {
            getId("design_settings_featured_num").value = "50";
            showById("design_settings_featured_num_50plus");
        }

        editorFeaturedChange();

    }

    function editorFeaturedChange(){

        document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");

    }

    function saveFeaturedProducts() {

        var featuredPerPage = getId('design_settings_featured_num').value;
        if (featuredPerPage == undefined || featuredPerPage.length == "" || featuredPerPage < 0) {
            featuredPerPage = 0;
        }

        var featuredDisplaySort = document.querySelector('input[name="design_settings_featured_display"]:checked').getAttribute("data-val");
        if (featuredDisplaySort == undefined || featuredDisplaySort.length == 0) {
            featuredDisplaySort = "0";
        }

        var featuredSettings = {
            featured: featuredPerPage,
            featuredDisplay: featuredDisplaySort
        };

        console.log(featuredSettings);

        featuredSettings = JSON.stringify(featuredSettings);

        axiosGet('/services/settingsv2/settings_design.svc/saveFeatured?storeId=' + storeId + '&settings=' + featuredSettings).then(function (data) {
            console.log("saveFeatured:success");

            editorSaved();

        }).catch(function (e) {
            
            console.log("ERROR:FeaturedProducts:saveFeatured");
            typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
            errorOccurred("save", "featured-products", "saveFeatured");

        }).then(function () {
            

        });

    }


</script>
                    
<style>

    #editor_panel:not(.editor_is_active_modal) .social_media_icons_container .input_container_50{
        width: 100% !important;
        margin-left: 0% !important;
    }

</style>

<div class="editor_panel_item" data-type="social-media-icons">

    

<link rel="stylesheet" type="text/css" href="/css/marketing/sm.css?v=6e5ad00299630f979abce0d5086dc0c3" />

<div class="social_media_icons_input">
    <div class="busy_wait busy_wait_static busy_wait_socialmediaicons">
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
            <span>Loading Social Icons</span>
        </div>
    </div>
    <div class="social_media_icons_not_enabled_container">
        <div class="hide_overflow">
            <h2>Your Design is not supported.</h2>
            <p>Simply visit the Design > Switch Design section of your StyleZ 360 Control Panel to change to a Design that supports Social Icons.</p>
        </div>
    </div>
    <div class="social_media_icons_container">
        <div class="hide_overflow">
            <div class="input_container input_container_50">
                <label for="socialmediaicons_twitter">Twitter URL</label>
                <input type="text" maxlength="255" id="socialmediaicons_twitter" placeholder="https://twitter.com/freewebstore" data-type="TWITTER" />
                <a target="_blank" id="socialmediaicons_twitter_link"><i class="fa fa-twitter-square socialmediaicons_icon socialmediaicons_disabled" aria-hidden="true"></i></a>
                <i class="fa fa-times social_icon_alert" aria-hidden="true"></i>
            </div>
            <div class="input_container input_container_50">
                <label for="socialmediaicons_facebook">Facebook URL</label>
                <input type="text" maxlength="255" id="socialmediaicons_facebook" placeholder="https://www.facebook.com/freewebstoreofficial" data-type="FACEBOOK" />
                <a target="_blank" id="socialmediaicons_facebook_link"><i class="fa fa-facebook-square socialmediaicons_icon socialmediaicons_disabled" aria-hidden="true"></i></a>
                <i class="fa fa-times social_icon_alert" aria-hidden="true"></i>
            </div>
        </div>
        <div class="hide_overflow">
            <div class="input_container input_container_50">
                <label for="socialmediaicons_instagram">Instagram URL</label>
                <input type="text" maxlength="255" id="socialmediaicons_instagram" placeholder="https://www.instagram.com/freewebstore" data-type="INSTAGRAM" />
                <a target="_blank" id="socialmediaicons_instagram_link"><i class="fa fa-instagram socialmediaicons_icon socialmediaicons_disabled" aria-hidden="true"></i></a>
                <i class="fa fa-times social_icon_alert" aria-hidden="true"></i>
            </div>
            <div class="input_container input_container_50">
                <label for="socialmediaicons_pinterest">Pinterest URL</label>
                <input type="text" maxlength="255" id="socialmediaicons_pinterest" placeholder="https://www.pinterest.co.uk/freewebstore" data-type="PINTEREST" />
                <a target="_blank" id="socialmediaicons_pinterest_link"><i class="fa fa-pinterest-square socialmediaicons_icon socialmediaicons_disabled" aria-hidden="true"></i></a>
                <i class="fa fa-times social_icon_alert" aria-hidden="true"></i>
            </div>
        </div>
        <div class="hide_overflow">
            <div class="input_container input_container_50">
                <label for="socialmediaicons_blogger">Blogger URL</label>
                <input type="text" maxlength="255" id="socialmediaicons_blogger" placeholder="http://blog.freewebstore.com" data-type="BLOGGER" />
                <a target="_blank" id="socialmediaicons_blogger_link"><i class="fa fa-rss-square socialmediaicons_icon socialmediaicons_disabled" aria-hidden="true"></i></a>
                <i class="fa fa-times social_icon_alert" aria-hidden="true"></i>
            </div>
            <div class="input_container input_container_50">
                <label for="socialmediaicons_youtube">YouTube URL</label>
                <input type="text" maxlength="255" id="socialmediaicons_youtube" placeholder="https://www.youtube.com/user/freewebstore" data-type="YOUTUBE" />
                <a target="_blank" id="socialmediaicons_youtube_link"><i class="fa fa-youtube-square socialmediaicons_icon socialmediaicons_disabled" aria-hidden="true"></i></a>
                <i class="fa fa-times social_icon_alert" aria-hidden="true"></i>
            </div>
        </div>
        <div class="hide_overflow">
            <div class="input_container input_container_50">
                <label for="socialmediaicons_wordpress">Wordpress URL</label>
                <input type="text" maxlength="255" id="socialmediaicons_wordpress" placeholder="https://blog.freewebstore.com" data-type="WORDPRESS" />
                <a target="_blank" id="socialmediaicons_wordpress_link"><i class="fa fa-wordpress socialmediaicons_icon socialmediaicons_disabled" aria-hidden="true"></i></a>
                <i class="fa fa-times social_icon_alert" aria-hidden="true"></i>
            </div>
            <div class="input_container input_container_50">
                <label for="socialmediaicons_skype">Skype Username</label>
                <input type="text" maxlength="255" id="socialmediaicons_skype" placeholder="skype:freewebstore?call" data-type="SKYPE" />
                <a target="_blank" id="socialmediaicons_skype_link"><i class="fa fa-skype socialmediaicons_icon socialmediaicons_disabled" aria-hidden="true"></i></a>
                <i class="fa fa-times social_icon_alert" aria-hidden="true"></i>
            </div>
        </div>
        <div class="hide_overflow">
            <div class="input_container input_container_50">
                <label for="socialmediaicons_linkedin">Linkedin Public URL</label>
                <input type="text" maxlength="255" id="socialmediaicons_linkedin" placeholder="https://www.linkedin.com/company/freewebstore" data-type="LINKEDIN" />
                <a target="_blank" id="socialmediaicons_linkedin_link"><i class="fa fa-linkedin-square socialmediaicons_icon socialmediaicons_disabled" aria-hidden="true"></i></a>
                <i class="fa fa-times social_icon_alert" aria-hidden="true"></i>
            </div>
            <div class="input_container input_container_50">
                <label for="socialmediaicons_tumblr">Tumblr URL</label>
                <input type="text" maxlength="255" id="socialmediaicons_tumblr" placeholder="https://freewebstore.tumblr.com/" data-type="TUMBLR" />
                <a target="_blank" id="socialmediaicons_tumblr_link"><i class="fa fa-tumblr-square socialmediaicons_icon socialmediaicons_disabled" aria-hidden="true"></i></a>
                <i class="fa fa-times social_icon_alert" aria-hidden="true"></i>
            </div>
        </div>
        <div class="hide_overflow">
            <div class="input_container input_container_50">
                <label for="socialmediaicons_vimeo">Vimeo URL</label>
                <input type="text" maxlength="255" id="socialmediaicons_vimeo" placeholder="https://vimeo.com/freewebstore" data-type="VIMEO" />
                <a target="_blank" id="socialmediaicons_vimeo_link"><i class="fa fa-vimeo-square socialmediaicons_icon socialmediaicons_disabled" aria-hidden="true"></i></a>
                <i class="fa fa-times social_icon_alert" aria-hidden="true"></i>
            </div>
            <div class="input_container input_container_50">
                <label for="socialmediaicons_email">Email Address</label>
                <input type="text" maxlength="255" id="socialmediaicons_email" placeholder="info@freewebstore.com" data-type="EMAIL" />
                <a target="_blank" id="socialmediaicons_email_link"><i class="fa fa-envelope socialmediaicons_icon socialmediaicons_disabled" aria-hidden="true"></i></a>
                <i class="fa fa-times social_icon_alert" aria-hidden="true"></i>
            </div>
        </div>
    </div>
</div>

<script src="/javascript/marketing/smicons.js?v=e00d8568f45b0a03b14a43ea53013c44"></script>

    <div class="editor_info_panel margint40" data-type="translations">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title"><i class="fa fa-language" aria-hidden="true"></i>Translations</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-up" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_details_tokens_list"></div>
        </div>
    </div>

</div>

<script>

    var buildSocialMediaIconsPanelLoaded = false;
    function buildSocialMediaIconsPanel() {

        if (buildSocialMediaIconsPanelLoaded == false) {

            loadSocialMediaIcons();

            document.querySelector(".editor_panel_item[data-type='social-media-icons']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

            buildSocialMediaIconsPanelLoaded = true;

        } else {

            document.querySelector(".editor_panel_item[data-type='social-media-icons']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

        }

    }

    function editorSocialMediaIconsChanged() {

        document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");

    }


    function cancelSocialMediaIcons() {
        $('.social_media_icons_input input').removeAttr("style");
        $(".social_icon_alert_show").removeClass("social_icon_alert_show");
    }


    function saveSocialMediaIcons() {

        var inputs = $('.social_media_icons_input input');

        // creates objects $ returns with valid or not object
        createArrayOfIconObjs(inputs, function (err, result) {

            // post to db
            console.log(inputs);

            console.log('result: ', result);
            console.log('errors: ', err);

            var data = {
                "storeId": storeId,
                "data": result
            }

            console.log(data);

            data = JSON.stringify(data);

            axiosPost("/services/Store.svc/saveAjaxSocialIcons", data).then(function () {

                editorSaved();

            }).catch(function (e) {

                console.log("ERROR:SocialMediaIcons:saveAjaxSocialIcons");
                typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
                errorOccurred("save", "social-media-icons", "saveAjaxSocialIcons");

            }).then(function () {
                
            });
        });

    }

</script>
                    

<style>
    #newsletter_upgrade_info_panel{
        display: none;
    }
</style>

<div class="editor_panel_item" data-type="newsletter">

    <div class="upgrade_info_panel marginb20" id="newsletter_upgrade_info_panel">
        <div class="upgrade_info_panel_header">
            <div class="upgrade_info_panel_header_icon"><i class="fa fa-exclamation-triangle" aria-hidden="true"></i></div>
            <div class="upgrade_info_panel_header_title">Upgrade Required</div>
        </div>
        <div class="upgrade_info_panel_info_container">
            <div class="upgrade_info_panel_info">You need to upgrade to a premium plan to enable the Newsletter feature.</div>
            <a href="/upgrade2.aspx" class="upgrade_info_panel_button">View Amazing Premium Plans</a>
        </div>
    </div>

    <div class="checkbox_container">
        <input type="radio" id="newsletter_status_published" checked="checked" name="newsletter_status" onchange="changeNewsletter();" />
        <label for="newsletter_status_published"><span>Enabled</span></label>
    </div>
    <div class="checkbox_container">
        <input type="radio" id="newsletter_status_notpublished" name="newsletter_status" onchange="changeNewsletter();" />
        <label for="newsletter_status_notpublished"><span>Disabled</span></label>
    </div>

    <div class="input_container margint20">
        <label for="newsletter_options">Newsletter Display</label>
        <select id="newsletter_options" onchange="changeNewsletter();">
            <option value="0">Email Address Only</option>
            <option value="1">Name and Email Address</option>
        </select>
    </div>

    <a href="/marketing_newsletter" class="editor_main_button"><i class="fa fa-external-link" aria-hidden="true"></i>Manage Subscribers</a>

    <div class="editor_info_panel margint40" data-type="translations">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title"><i class="fa fa-language" aria-hidden="true"></i>Edit Labels</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-down" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_details_tokens_list"></div>
        </div>
    </div>

    <div class="editor_info_panel margint20" data-type="info">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title">Info</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-up" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <p>Adding a newsletter feature to your page is a great way to build up your customer base. By enabling a newsletter sign up form in your store you can start collecting names and email addresses of people who are interested in receiving your newsletter.</p>
            <p>When a customer enters their details using the sign-up form on your store, they will be added to your <a href="/marketing_newsletter" class="link_color_primary">newsletter list</a>. You can export this list to a .CSV file ready for adding into your own email marketing campaigns.</p>
        </div>
    </div>

</div>


<script>

    var buildNewsletterPanelLoaded = false;
    function buildNewsletterPanel() {

        if (buildNewsletterPanelLoaded == false) {

            /*if (checkIfPremiumOrVersion() == false) {
                showById("newsletter_upgrade_info_panel");
                document.getElementById("newsletter_status_published").setAttribute("disabled", true);
                document.getElementById("newsletter_status_notpublished").setAttribute("disabled", true);
                document.getElementById("newsletter_options").setAttribute("disabled", true);
            }*/

            if (store.settings.showNewsletter == true) {
                document.getElementById("newsletter_status_published").checked = true;
            } else {
                document.getElementById("newsletter_status_notpublished").checked = true;
            }

            if (store.settings.showNewsletterName == true) {
                document.getElementById("newsletter_options").value = 1;
            } else {
                document.getElementById("newsletter_options").value = 0;
            }

            document.querySelector(".editor_panel_item[data-type='newsletter']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

            buildNewsletterPanelLoaded = true;

        } else {

            document.querySelector(".editor_panel_item[data-type='newsletter']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

        }

    }

    function changeNewsletter() {
        document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");
    }

    function saveNewsletter() {

        var saveNewsletter = new Array();

        var enabled = $("#newsletter_status_published").prop('checked');

        var typeStatus = $("#newsletter_options").val();
        if (typeStatus == 0) {
            var type = false;
        } else {
            var type = true;
        }
        saveNewsletter.push({
            "enabled": enabled,
            "type": type
        });

        saveNewsletter = JSON.stringify(saveNewsletter);

        setTimeout(function () {
            axiosGet("/services/Newsletter.svc/updatedStatus?storeId=" + storeId + "&subs=" + saveNewsletter).then(function (data) {

                editorSaved();

            }).catch(function (err) {

                console.log("ERROR:Newsletter:updatedStatus");
                typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
                errorOccurred("save", "newsletter", "updatedStatus");

            }).then(function () {

            });
        }, 1500);

    }

</script>
                    

<div class="editor_panel_item" data-type="social-share-icons">

    <div class="hide_overflow marginb20">
        <div class="checkbox_container">
            <input type="radio" id="social_status_enabled" checked="checked" name="social_status" onchange="shareThisIconsChanged();" />
            <label for="social_status_enabled"><span>Enabled</span></label>
        </div>
        <div class="checkbox_container">
            <input type="radio" id="social_status_disabled" name="social_status" onchange="shareThisIconsChanged();" />
            <label for="social_status_disabled"><span>Disabled</span></label>
        </div>
    </div>

    <div class="editor_info_panel margint40" data-type="translations">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title"><i class="fa fa-language" aria-hidden="true"></i>Edit Labels</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-down" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_details_tokens_list"></div>
        </div>
    </div>

    <div class="editor_info_panel margint20" data-type="info">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title">Info</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-up" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <p>Share Icons allow your customers to share the product on their social media pages.</p>
            <p>Allowing your shoppers to promote your store for you is a no brainer but you can use this section to enable and disable as you see fit.</p>
        </div>
    </div>

</div>


<script>

    var buildSocialShareIconsPanelLoaded = false;
    function buildSocialShareIconsPanel() {

        if (buildSocialShareIconsPanelLoaded == false) {

            if (store.settings.shareIcons == true) {
                document.getElementById("social_status_enabled").checked = true;
            } else {
                document.getElementById("social_status_disabled").checked = true;
            }

            document.querySelector(".editor_panel_item[data-type='social-share-icons']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

            buildSocialShareIconsPanelLoaded = true;

        } else {

            document.querySelector(".editor_panel_item[data-type='social-share-icons']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

        }

    }

    function shareThisIconsChanged() {

        document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");

    }

    function saveShareThisIcons() {

        var status = false;
        if (document.getElementById("social_status_enabled").checked) {
            status = true;
        }

        var data = JSON.stringify({ 'storeId': storeId, 'enabled': status })

        axiosPost('/services/Store.svc/saveSocialMediaShareStatus', data).then(function (data) {

            editorSaved();

        }).catch(function (err) {

           

        }).then(function () {
           
        });

    }

</script>
                    

<style>
    #editor_image-header{
        max-width: 100%;
        max-height: 100px;
    }
</style>

<div class="editor_panel_item" data-type="header">

    <div class="align_center">
        <div><strong>Your Header</strong></div>
        <div id="editor_image_container-header" class="editor_image_container">
            <div class="editor_image_container_bg_mode" data-type="header" onclick="editorImageChangeBgMode('header')"><i class="fa fa-moon-o" aria-hidden="true"></i></div>
            <div class="editor_image_inner_container">
                <div id="editor_image-header_container"></div>
                <div class="editor_image_add_button" onclick="addNewHeaderImage();">
                    <div class="editor_image_add_button_icon"><i class="fa fa-plus" aria-hidden="true"></i></div>
                    <span class="editor_image_add_button_text">Add</span>
                </div>
                <div class="editor_image_loading">
                    <div class="editor_image_loading_icon"><i class="fa fa-spinner fa-spin" aria-hidden="true"></i></div>
                    <span class="editor_image_loading_text">Loading</span>
                </div>
            </div>
        </div>
        <a id="header_add_new_button" class="editor_main_button" onclick="addNewHeaderImage();">Add New Header Image</a>
    </div>

    <div class="inline_checkboxes hide_overflow margint30">
        <div class="checkbox_container">
            <input type="radio" id="editor_header_preferences_enabled" name="editor_header_preferences_enabled-disabled" onchange="updateIframeHeader();" />
            <label for="editor_header_preferences_enabled"><span>Enabled</span></label>
        </div>
        <div class="checkbox_container">
            <input type="radio" id="editor_header_preferences_disabled" name="editor_header_preferences_enabled-disabled" checked onchange="updateIframeHeader();" />
            <label for="editor_header_preferences_disabled"><span>Disabled</span></label>
        </div>
    </div>

</div>


<script>

    var buildHeaderPanelLoaded = false;
    function buildHeaderPanel() {

        if (buildHeaderPanelLoaded == false) {

            if (store.design.header != null && store.design.header.enabled != null) {

                if (store.design.header.enabled == true) {
                    document.getElementById("editor_header_preferences_enabled").checked = true;
                } else {
                    document.getElementById("editor_header_preferences_enabled").checked = false;
                }

            } else {
                document.getElementById("editor_header_preferences_enabled").checked = false;
            }

            if (store.design.header != null && store.design.header.headerURL != null) {

                document.getElementById("editor_image-header_container").innerHTML = "<img id='editor_image-header' class='editor_image' src='" + store.design.header.headerURL + "' />"
                document.querySelector("#editor_image_container-header .editor_image_add_button_text").innerText = "Change";
                document.getElementById("header_add_new_button").innerText = "Change Header Image";

            } else {

                document.getElementById("editor_image_container-header").classList.add("editor_image_container_no_image");
                document.querySelector("#editor_image_container-header .editor_image_add_button_text").innerText = "Add";
                document.getElementById("header_add_new_button").innerText = "Add New Header Image";

            }

            if (Cookies.get("fws_editor_imageBG_header_" + storeId) != null) {
                var bg = Cookies.get("fws_editor_imageBG_header_" + storeId);
                if (bg == "dark") {
                    document.querySelector(".editor_image_container_bg_mode[data-type='header'] i").classList.remove("fa-moon-o");
                    document.querySelector(".editor_image_container_bg_mode[data-type='header'] i").classList.add("fa-sun-o");

                    document.querySelector("#editor_image_container-header .editor_image_inner_container").classList.add("editor_image_inner_container_dark");
                }
            }

            document.querySelector(".editor_panel_item[data-type='header']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

            buildHeaderPanelLoaded = true;

        }

    }


    function addNewHeaderImage() {

        document.getElementById("editor_overlay").classList.add("editor_overlay_active");

        $("#recommended_logo_dimensions").remove();

        if (storeDesign.headerWidth != null && storeDesign.headerHeight != null) {

            var logoImageGalleryRecommend = '<div id="recommended_logo_dimensions">';
            logoImageGalleryRecommend += '<p>Based on your current theme the recommended dimensions for your header are:</p>';
            logoImageGalleryRecommend += '<ul>';
            logoImageGalleryRecommend += '<li>Width: ' + storeDesign.headerWidth + 'px</li>';
            logoImageGalleryRecommend += '<li>Height: ' + storeDesign.headerHeight + 'px</li>';
            logoImageGalleryRecommend += '</ul>';

            $(logoImageGalleryRecommend).insertBefore("#image_gallery_container");
        }

        openImageGallery(1, 'headerAdd');

    }

    function runHeaderDokaEditor(imageUrl) {

        var url = 'https://s3-eu-west-1.amazonaws.com/prodimg.fw1.biz/' + storeId + '/' + imageUrl;

        var headerWidth = storeDesign.headerWidth;
        var headerHeight = storeDesign.headerHeight;

        pintura.setPlugins(pintura.plugin_crop);

        dokaEditor = pintura.openEditor({
            imageReader: pintura.createDefaultImageReader(),
            imageWriter: pintura.createDefaultImageWriter(),
            locale: {
                ...pintura.locale_en_gb,
                ...pintura.plugin_crop_locale_en_gb
            },
            src: url,
            cropEnableInfoIndicator: true,
            cropEnableImageSelection: false,
            cropEnableZoom: false,
            imageCropMinSize: {
                width: headerWidth,
                height: headerHeight
            },
            imageCropMaxSize: [
                headerWidth,
                headerHeight
            ],
            resizeMaxSize: {
                width: headerWidth,
                height: headerHeight
            }
        });

        dokaEditor.on("load", function (e) {
            console.log(e);
            setTimeout(() => {
                dokaEditor.imageCrop = {
                    x: parseInt((e.size.width - headerWidth) / 2),
                    y: parseInt((e.size.height - headerHeight) / 2),
                    width: headerWidth,
                    height: headerHeight
                };
                dokaEditor.imageCropMinSize = {
                    width: headerWidth,
                    height: headerHeight
                };
                dokaEditor.imageCropMaxSize = [headerWidth, headerHeight];
            }, 1500);
        });

        dokaEditor.on("process", function (event) {
            console.log(event);
            console.log(event.dest instanceof Blob);

            var imageName = event.dest.name;
            console.log("1: " + imageName);

            var noMime = /(.*)\.[^.]+$/.exec(imageName);
            console.log("2: " + noMime);
            var filename = noMime[1] + "_" + new Date().getTime().toString() + "." + imageName.split('.').pop();
            console.log("3: " + filename);

            event.dest.uploadURL = "./services/image/service.svc/uploadImage";
            uploadingFileName = event.dest.name;

            uploadingFileName = cleanProdImageName(uploadingFileName);
            checkImageExists(uploadingFileName, function (output) {
                uploadingFileName = cleanProdImageName(output);
                var xhr = new XMLHttpRequest();
                var _send = xhr.send;

                xhr.open("POST", event.dest.uploadURL, true);
                xhr.setRequestHeader("storeId", storeId);
                xhr.setRequestHeader("fileName", uploadingFileName);
                _send.call(xhr, event.dest);
                var newURL = 'https://d13z1xw8270sfc.cloudfront.net/origin/' + storeId + '/' + uploadingFileName;
                if (imageGalleryType == "headerAdd") {
                    buildNewHeaderImage(newURL);
                }
            });           
        });

    }

    function buildNewHeaderImage(imageUrl) {
        console.log(imageUrl);
        document.getElementById("editor_image_container-header").classList.add("editor_image_container_loading");

        setTimeout(function () {

            document.getElementById("editor_image-header_container").innerHTML = '<img id="editor_image-header" class="editor_image" src="' + imageUrl + '"/>';
            document.getElementById("editor_image_container-header").classList.remove("editor_image_container_loading");
            document.getElementById("editor_image_container-header").classList.remove("editor_image_container_no_image");
            document.querySelector("#editor_image_container-header .editor_image_add_button_text").innerText = "Change";
            document.getElementById("header_add_new_button").innerText = "Change Header Image";
            updateIframeHeader();

        }, 4000);

    }

    function updateIframeHeader() {

        document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");

        var enabled = false;
        if (document.getElementById("editor_header_preferences_enabled").checked == true) {
            enabled = true;
        }

        var imageUrl = "";
        if (document.getElementById("editor_image-header") != null) {
            imageUrl = document.getElementById("editor_image-header").getAttribute("src");
        }

        var updateIframeData = {
            "action": "UPDATE_HEADER",
            "info": {
                "enabled": enabled,
                "imageUrl": imageUrl
            }
        }

        updateIframeData = JSON.stringify(updateIframeData);

        window.frames[0].window.postMessage(updateIframeData, "*");

        showIframeLoader();

    }

    function cancelHeader() {

        var updateIframeData = {
            "action": "UPDATE_HEADER",
            "info": {
                "enabled": store.design.header.enabled,
                "imageUrl": store.design.header.headerURL
            }
        }

        updateIframeData = JSON.stringify(updateIframeData);

        window.frames[0].window.postMessage(updateIframeData, "*");

        showIframeLoader();

    }

    function saveHeader() {

        var enabled = false;
        if (document.getElementById("editor_header_preferences_enabled").checked == true) {
            enabled = true;
        }

        var imageUrl = "";
        if (document.getElementById("editor_image-header") != null) {
            imageUrl = document.getElementById("editor_image-header").getAttribute("src");
        }


        axiosGet('./services/theme_editor/Headers.svc/saveHeaderEditor?storeId=' + storeId + '&enabled=' + enabled + '&url=' + imageUrl).then(function () {

            editorSaved();

        }).catch(function () {

            console.log("ERROR:Header:saveHeaderEditor");
            typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
            errorOccurred("save", "header", "saveHeaderEditor");

        }).then(function () {

        });

    }

</script>
                    

<style>

    .editor_new_sections_container:not(:first-child){
        margin-top: 30px;
    }

    .editor_new_sections_title{
        font-weight: bold;
    }

    .editor_new_sections_list{
        border-left: 5px solid #ddd;
        margin-top: 10px;
        position: relative;
    }

    .editor_new_sections_list_item{
        display: flex;
        flex-wrap: nowrap;
        justify-content: space-between;
        height: 35px;
        align-items: center;
        padding-right: 10px;
        padding-left: 10px;
        transition: 0.4s;
        cursor: pointer;
    }

    .editor_new_sections_list_item:hover{
        background: rgba(51, 158, 255, 0.3);
    }

    .editor_new_sections_list_item i{
        color: #5DC548;
        display: none;
    }

    .editor_new_sections_list_item.editor_new_sections_list_item_added i{
        display: block;
    }

</style>

<div class="editor_panel_item" data-type="add-new-section">

    <div class="editor_new_sections_container" data-type="available-current">
        <div class="editor_new_sections_title">Sections on Current Page</div>
        <div class="editor_new_sections_list" data-type="available-current"></div>
    </div>

    <div class="editor_new_sections_container" data-type="available-all">
        <div class="editor_new_sections_title">Global Sections</div>
        <div class="editor_new_sections_list" data-type="available-all"></div>
    </div>

</div>

<script>

    function buildAddNewSectionPanel() {

        document.querySelector(".editor_new_sections_list[data-type='available-all']").innerHTML = "";
        document.querySelector(".editor_new_sections_list[data-type='available-current']").innerHTML = "";

        buildAvailableCurrentSections();
        buildAvailableAllSections();

        document.querySelector(".editor_panel_item[data-type='add-new-section']").classList.add("editor_panel_item_active");
        hideById("editor_panel_loader");

    }

    function buildAvailableAllSections() {

        // Notification Bar
        if (store.notifyBar != null) {
            addSectionToList("available-all", "Notification Bar", "notification-bar", notificationBarEnabled === true && typeof store.notifyBar.message !== "undefined" && store.notifyBar.message !== null && store.notifyBar.message.length > 0);
        } else {
            addSectionToList("available-all", "Notification Bar", "notification-bar", false);
        }
        
        // Logo
        if (storeDesign.isLogo == true) {
            if (store.design.logo.enabled == true) {
                addSectionToList("available-all", "Logo", "logo", true);
            } else {
                addSectionToList("available-all", "Logo", "logo", false);
            }
        }
        
        // Customer Accounts
        if (checkIfPremiumOrVersion() == false) {
            addSectionToList("available-all", "Customer Accounts", "customer-accounts", false);
        } else {
            if (store.settings.accounts != null && store.settings.accounts == true) {
                addSectionToList("available-all", "Customer Accounts", "customer-accounts", true);
            } else {
                addSectionToList("available-all", "Customer Accounts", "customer-accounts", false);
            }
        }

        // Currency
        if (store.settings.hideCurrency == null || store.settings.hideCurrency == false) {
            addSectionToList("available-all", "Currency", "currency", true);
        } else {
            addSectionToList("available-all", "Currency", "currency", false);
        }

        // Search
        if (store.settings.hideSearch == null || store.settings.hideSearch == false) {
            addSectionToList("available-all", "Search", "search", true);
        } else {
            addSectionToList("available-all", "Search", "search", false);
        }

        // Featured Products
        if (store.settings.featureCount > 0) {
            addSectionToList("available-all", "Featured Products", "featured-products", true);
        } else {
            addSectionToList("available-all", "Featured Products", "featured-products", false);
        }

        // New Products
        if (storeDesign.newProductsCount != null) {
            if (store.settings.newProductsCount != null) {
                if (store.settings.newProductsCount > 0) {
                    addSectionToList("available-all", "New Products", "new-products", true);
                } else {
                    addSectionToList("available-all", "New Products", "new-products", false);
                }
            } else {
                addSectionToList("available-all", "New Products", "new-products", true);
            }
        }

        // Popular Products
        if (storeDesign.popularProductsCount != null) {
            if (store.settings.popularCount != null) {
                if (store.settings.popularCount > 0) {
                    addSectionToList("available-all", "Popular Products", "popular-products", true);
                } else {
                    addSectionToList("available-all", "Popular Products", "popular-products", false);
                }
            } else {
                addSectionToList("available-all", "Popular Products", "popular-products", true);
            }
        }

        // Recently Viewed Products
        if (storeDesign.recentProductsCount != null) {
            if (store.settings.recentCount != null) {
                if (store.settings.recentCount > 0) {
                    addSectionToList("available-all", "Recent Viewed Products", "recently-viewed-products", true);
                } else {
                    addSectionToList("available-all", "Recently Viewed Products", "recently-viewed-products", false);
                }
            } else {
                addSectionToList("available-all", "Recent Viewed Products", "recently-viewed-products", true);
            }
        }

        // Random Special Offer Products
        if (storeDesign.specialOfferProductsCount != null) {
            if (store.settings.randomOffersCount != null) {
                if (store.settings.randomOffersCount > 0) {
                    addSectionToList("available-all", "Special Offer Products", "special-offer-products", true);
                } else {
                    addSectionToList("available-all", "Special Offer Products", "special-offer-products", false);
                }
            } else {
                addSectionToList("available-all", "Special Offer Products", "special-offer-products", true);
            }
        }

        // Newsletter
        if (checkIfPremiumOrVersion() == false) {
            addSectionToList("available-all", "Newsletter", "newsletter", false);
        } else {
            if (store.settings.showNewsletter == true) {
                addSectionToList("available-all", "Newsletter", "newsletter", true);
            } else {
                addSectionToList("available-all", "Newsletter", "newsletter", false);
            }
        }

        // Social Media Icons
        axiosGet("/services/Store.svc/getSocialMediaIcons?storeId=" + storeId).then(function (data) {

            var icons = data;
            console.log(icons);
            if (icons != null && icons != "null") {
                icons = JSON.parse(icons);
                var iconsEnabled = false;
                for (var i = 0; i < icons.length; i++) {
                    if (icons[i].enabled == true && icons[i].type != 3) {
                        iconsEnabled = true;
                    }
                }

                if (iconsEnabled == true) {
                    addSectionToList("available-all", "Social Media Icons", "social-media-icons", true);
                } else {
                    addSectionToList("available-all", "Social Media Icons", "social-media-icons", false);
                }
            } else {
                addSectionToList("available-all", "Social Media Icons", "social-media-icons", false);
            }

        }).catch(function () {

        }).then(function () {

        });

        // Banners

        axiosGet('./services/editor/editor.svc/checkAnyBannerHasContent?shopkeeper=' + storeId).then(function (data) {

            var result = data.d;
            if (result == true) {
                addSectionToList("available-all", "Banners", "banners", true);
            } else {
                addSectionToList("available-all", "Banners", "banners", false);
            }
            
        }).catch(function () {
            addSectionToList("available-all", "Banners", "banners", false);
        }).then(function () {

        });


        // Language and Translations
        if (store.languages != null && store.languages.length > 1 && checkIfProRidge()) {
            addSectionToList("available-all", "Language and Translations", "language-and-translations", true);
        } else {
            addSectionToList("available-all", "Language and Translations", "language-and-translations", false);
        }

        // Community Banner
        if (checkIfPremium()) {
            addSectionToList("available-all", "Ad Removal", "ad-removal", true);
        } else {
            addSectionToList("available-all", "Ad Removal", "ad-removal", false);
        }

    }


    
    function buildAvailableCurrentSections() {

        // Page Content
        if (currentPageType == 1 || currentPageType == 2 || currentPageType == 4 || currentPageType == 5 || currentPageType == 7 || currentPageType == 9 || currentPageType == 10 || currentPageType == 11) {
            addSectionToList("available-current", "Page Content", "edit-page", true);
        }

        // Slideshow
        if (currentPageType == 1) {
            if (storeDesign.isNivoSlider == true) {
                axiosGet('services/design/Slideshow.svc/SliderDetails?storeId=' + storeId).then(function (data) {
                    var slideshow = data.d || data;

                    if (slideshow.visible == 0) {
                        addSectionToList("available-current", "Slideshow", "slideshow", false);
                    } else {
                        addSectionToList("available-current", "Slideshow", "slideshow", true);
                    }

                }).catch(function () {

                }).then(function () {

                });
            }
        }

        // Header
        if (currentPageType == 1 && store.design.template != "storebuilder/309223/Organic" && store.design.template != "storebuilder/309223/organic") {
            if (storeDesign.isHeader != false) {
                if (store.design.header != null && store.design.header.enabled == true) {
                    addSectionToList("available-current", "Header Image", "header", true);
                } else {
                    addSectionToList("available-current", "Header Image", "header", false);
                }
            }
        }

        if ((currentPageType == 2 || currentPageType == 7 || currentPageType == 11 || currentPageType == 14 || currentPageType == 15) && (store.design.template == "storebuilder/309223/Organic" || store.design.template == "storebuilder/309223/organic")) {
            if (storeDesign.isHeader != false) {
                if (store.design.header != null && store.design.header.enabled == true) {
                    addSectionToList("available-current", "Header Image", "header", true);
                } else {
                    addSectionToList("available-current", "Header Image", "header", false);
                }
            }
        }


        // Contact Page
        if (currentPageType == 6) {

            if (store.contact.showMap == true) {
                addSectionToList("available-current", "Google Map", "edit-contact-page", true);
            } else {
                addSectionToList("available-current", "Google Map", "edit-contact-page", false);
            }

            if (store.contact.showAddress == true) {
                addSectionToList("available-current", "Contact Address", "edit-contact-page", true);
            } else {
                addSectionToList("available-current", "Contact Address", "edit-contact-page", false);
            }

        }


        // Instagram
        if (currentPageType == 14) {

            axiosGet("/services/editor/editor.svc/checkInstagramConnected?storeId=" + storeId).then(function (data) {

                var result = data.d;
                console.log(result);
                if (result == true) {
                    addSectionToList("available-current", "Instagram Gallery", "edit-page", true);
                } else {
                    addSectionToList("available-current", "Instagram Gallery", "edit-page", false);
                }

            }).catch(function () {
                addSectionToList("available-current", "Instagram Gallery", "edit-page", false);
            }).then(function () {

            });
 
        }

        // Featured Blogs
        if (currentPageType == 1) {

            if (store.settings.blog == true) {
                if (storeDesign.featuredBlogCount != null) {
                    axiosGet('/app/storeblog/services/blog.svc/GetBlogList?storeId=' + storeId).then(function (data) {
                        var blogList = data.d || data;
                        console.log(blogList);

                        blogs = blogList.items;

                        if (blogs.length == 0) {
                            addSectionToList("available-current", "Featured Blogs", "featured-blogs", false);
                        } else {

                            blogs.filter(function (obj) {
                                if (obj.published == true) {
                                    blogsFeaturedFound = true;
                                    return true;
                                }
                            });

                            if (blogsFeaturedFound == true) {
                                addSectionToList("available-current", "Featured Blogs", "featured-blogs", true);
                            } else {
                                addSectionToList("available-current", "Featured Blogs", "featured-blogs", false);
                            }

                            

                        }

                    }).catch(function (e) {
                        addSectionToList("available-current", "Featured Blogs", "featured-blogs", false);
                    }).then(function () {

                    });
                }
            }
            
        }

        // Product Page
        if (currentPageType == 12) {

            if (store.settings.shareIcons == true) {
                addSectionToList("available-current", "Social Share Icons", "social-share-icons", true);
            } else {
                addSectionToList("available-current", "Social Share Icons", "social-share-icons", false);
            }

            if (store.settings.shareIcons == true) {
                addSectionToList("available-current", "Product Reviews", "product-reviews", true);
            } else {
                addSectionToList("available-current", "Product Reviews", "product-reviews", false);
            }

            if (checkIfPremiumOrVersion() == true) {
                addSectionToList("available-current", "Related Products", "related-products", true);
            } else {
                addSectionToList("available-current", "Related Products", "related-products", false);
            }

        }


    }









    function addSectionToList(which, name, onclick, enabled) {

        var enabledClass = '';
        if (enabled == true) {
            enabledClass = 'editor_new_sections_list_item_added';
        }

        if (onclick == "language-and-translations") {
            var item = '<div class="editor_new_sections_list_item ' + enabledClass + '" onclick="openLanguageModal();"><span>' + name + '</span><i class="fa fa-check"></i></div>';
        } else {
            var item = '<div class="editor_new_sections_list_item ' + enabledClass + '" onclick="openPanelToggle(\'' + onclick + '\');"><span>' + name + '</span><i class="fa fa-check"></i></div>';
        }

        

        if (which == "available-all") {
            document.querySelector(".editor_new_sections_list[data-type='available-all']").innerHTML += item;
        } else {
            document.querySelector(".editor_new_sections_list[data-type='available-current']").innerHTML += item;
        }

    }

</script>
                    

<div class="editor_panel_item" data-type="banners">
    
    <div class="editor_panel_widget_options" id="editor_panel_widget_options_banners-overview"></div>

    <div class="editor_info_panel margint40" data-type="info">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title">Info</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-down" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_subtitle">What are Banners?</div>
            <p>Banners are pre-defined areas on your store/ theme where you can add content such as, text, videos, images, code, and more.</p>
        </div>
    </div>

    <div class="editor_info_panel margint20" data-type="help">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title">Help</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-down" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_subtitle">How many banner areas are available?</div>
            <p>All themes have a <em>Footer</em> banner area available which will appear on all pages.</p>
            <p>Some themes will also have <em>Left</em> and <em>Right</em> banner areas available (not always visible on every page).</p>
        </div>
    </div>

</div>

<script>

    var bannersSectionsToAdd = [
        {
            "name": "Left Banner",
            "icon": "fa-align-left",
            "desc": "Add content to the left banner region.",
            "banner": "left",
        },
        {
            "name": "Right Banner",
            "icon": "fa-align-right",
            "desc": "Add content to the right banner region.",
            "banner": "right",
        },
        {
            "name": "Footer Banner",
            "icon": "fa-align-center",
            "desc": "Add content to the footer banner region. This banner region will appear on all pages.",
            "banner": "footer",
        }
    ]

    var buildBannersPanelLoaded = false;
    function buildBannersPanel() {

        if (buildBannersPanelLoaded == false) {


            var bannerTypesHtml = '';

            var bannersAvailableToAdd = new Array();

            if (storeDesign.layout == 0) {
                bannersAvailableToAdd.push("left", "right", "footer");
            } else if (storeDesign.layout == 1) {
                bannersAvailableToAdd.push("left", "footer");
            } else if (storeDesign.layout == 2) {
                bannersAvailableToAdd.push("right", "footer");
            } else if (storeDesign.layout == 3) {
                activeBannerToEdit = "footer";
                openPanelToggle("edit-banner");
                return false;
            }

            for (var i = 0; i < bannersAvailableToAdd.length; i++) {

                bannersSectionsToAdd.filter(function (obj) {
                    if (obj.banner == bannersAvailableToAdd[i]) {

                        var item = '<div class="editor_panel_widget_options_item" onclick="openBannerRegionEdit(\'' + obj.banner + '\')">';
                        item += '<div class="editor_panel_widget_options_item_left">';
                        item += '<i class="fa ' + obj.icon + '" aria-hidden="true"></i>';
                        item += '</div>';
                        item += '<div class="editor_panel_widget_options_item_right">';
                        item += '<div class="editor_panel_widget_options_item_right_title">' + obj.name + '</div>';
                        item += '<div class="editor_panel_widget_options_item_right_info">' + obj.desc + '</div>';
                        item += '</div>';
                        item += '</div>';

                        bannerTypesHtml += item;

                    }
                });

            }

            document.getElementById("editor_panel_widget_options_banners-overview").innerHTML = bannerTypesHtml;

            setTimeout(function () {
                document.querySelector(".editor_panel_item[data-type='banners']").classList.add("editor_panel_item_active");
                hideById("editor_panel_loader");
            }, 1000);

            buildBannersPanelLoaded = true;
        } else {

            document.querySelector(".editor_panel_item[data-type='banners']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

        }

    }

    function openBannerRegionEdit(region) {
        activeBannerToEdit = region;
        openPanelToggle("edit-banner");
    }

</script>
                    

<div class="editor_panel_item" data-type="edit-banner">
    
    <textarea id="editor_banner_region_textarea"></textarea>

</div>

<script>

    var activeBannerToEdit = "";

    var buildEditBannerPanelLoaded = false;
    function buildEditBannerPanel() {

        if (buildEditBannerPanelLoaded == false) {

            var tinymceMenuBarItems = "file edit view insert format table";
            var tinymceToolbarsBool = false;
            if (typeof packageTypeId !== "undefined") {
                if (packageTypeId != 0) {
                    tinymceMenuBarItems = "file edit view insert format tools";
                }
            }
            if (tinymceToolbarsBool == false && !checkUrlIsDomain(storeUrl)) {
                tinymceMenuBarItems = "file edit view insert format tools";
            }

            if (tinymce.get("editor_banner_region_textarea") != null) {
                buildBannerEditGetContent();
            } else {

                tinymce.init({
                    selector: '#editor_banner_region_textarea',
                    contextmenu: "",
                    height: 600,
                    plugins: ["advlist autolink lists link image charmap print preview anchor",
                        "searchreplace visualblocks code fullscreen",
                        "insertdatetime media table paste"
                    ],
                    fontsize_formats: "8px 10px 12px 14px 18px 24px 36px",
                    toolbar1: "undo redo bold italic align bullist numlist link image media forecolor fontsizeselect",
                    menubar: tinymceMenuBarItems,
                    image_advtab: true,
                    statusbar: false,
                    encoding: "xml",
                    force_br_newlines: false,
                    force_p_newlines: false,
                    forced_root_block: '',
                    valid_children: "+body[style],+body[link]",
                    verify_html: false,
                    file_picker_callback: function (callback, value, meta) {

                        openImageGallery(1, 'editorTextareaBanner');
                        $('.tox-dialog, .tox-silver-sink').hide();
                        document.getElementById("editor_overlay").classList.add("editor_overlay_active");

                        $(".uc_imageGallery_close_modal_button").click(function () {
                            if (imageGalleryType != undefined) {
                                if (imageGalleryType == "editorTextareaBanner") {
                                    $('.tox-dialog, .tox-silver-sink').show();
                                    document.getElementById("editor_overlay").classList.remove("editor_overlay_active");
                                }
                            }
                        });


                    },
                    init_instance_callback: function (editor) {
                        buildBannerEditGetContent();
                    },
                    setup: function (ed) {
                        ed.on('change keydown paste input', function (e) {
                            bannerEditTyping();
                        });
                    }
                });
            }
            
            buildEditBannerPanelLoaded = true;
        } else {
            buildBannerEditGetContent();
            document.querySelector(".editor_panel_item[data-type='edit-banner']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

        }

    }

    var defaultBannerContent;

    function buildBannerEditGetContent() {


        axiosGet('./services/theme_editor/Banners.svc/GetBannerContent?region=' + activeBannerToEdit + '&shopkeeper=' + storeId).then(function (data) {

            var content = data.d;
            defaultBannerContent = content.data;
            console.log(content);

            if (content != null) {
                tinymce.get("editor_banner_region_textarea").setContent(content.data);
            }

            document.querySelector(".editor_panel_item[data-type='edit-banner']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

        }).catch(function () {

            tinymce.get("editor_banner_region_textarea").destroy();

            console.log("ERROR:BannerEdit:GetBannerContent");
            typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
            errorOccurred("load", "edit-banner", "GetBannerContent");

        }).then(function () {

        });

    }

    var cancellingBannerEditInProgress = false;

    function bannerEditTyping() {

        document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");

        bannerEditPreviewDelay(function () {
            if (cancellingBannerEditInProgress == false) {
                previewBannerEditFly();
            }
        }, 1000);

    }

    var bannerEditPreviewDelay = (function () {
        var timer = 0;
        return function (callback, ms) {
            clearTimeout(timer);
            timer = setTimeout(callback, ms);
        };
    })();

    function previewBannerEditFly() {

        var bannerContent = tinymce.get("editor_banner_region_textarea").getContent();
        console.log(bannerContent);

        var updateIframeData = {
            "action": "UPDATE_BANNER_REGION",
            "info": {
                "content": bannerContent,
                "region": activeBannerToEdit
            }
        }

        updateIframeData = JSON.stringify(updateIframeData);

        window.frames[0].window.postMessage(updateIframeData, "*");

        showIframeLoader();


    }

    function cancelBannerEdit() {

        cancellingBannerEditInProgress = true;
        setTimeout(function () {
            cancellingBannerEditInProgress = false;
        }, 3000);

        var updateIframeData = {
            "action": "UPDATE_BANNER_REGION",
            "info": {
                "content": defaultBannerContent,
                "region": activeBannerToEdit
            }
        }

        tinymce.get("editor_banner_region_textarea").setContent(defaultBannerContent);

        updateIframeData = JSON.stringify(updateIframeData);

        window.frames[0].window.postMessage(updateIframeData, "*");

        showIframeLoader();

        if (defaultBannerContent.length == 0) {
            updateEditorPlaceholders(activeTogglePanel, activeBannerToEdit);
        }

    }

    var saveBannerEditFirst = true;
    function saveBannerEdit() {

        var val = tinymce.get("editor_banner_region_textarea").getContent();
        val = val.replaceAll(' type="mce-no/type"', "");

        var data = JSON.stringify({ 'shopkeeper': storeId, 'html': val, region: activeBannerToEdit })

        axiosPost('./services/theme_editor/Banners.svc/PostBanners', data).then(function (data) {

            defaultBannerContent = tinymce.get("editor_banner_region_textarea").getContent();

            editorSaved();

        }).catch(function () {

            console.log("ERROR:BannerEdit:PostBanners");
            typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
            errorOccurred("save", "edit-banner", "PostBanners");

        }).then(function () {

        });

    }

</script>
                    

<style>

    #additional_languages_icon_premium{
        display: none;
    }

    .manage_language_item_container:not(:first-child){
        margin-top: 30px;
    }

    .manage_language_item_title{
        font-weight: bold;
    }

    .manage_language_item_list{
        border-left: 5px solid #ddd;
        margin-top: 10px;
        position: relative;
    }

    .manage_language_item_list_item{
        display: flex;
        flex-wrap: nowrap;
        justify-content: space-between;
        height: 30px;
        align-items: center;
    }

    .manage_language_list_item_ghost{
        background: rgba(51, 158, 255, 0.3);
        font-weight: bold;   
    }

    .manage_language_item_list_item_left, manage_language_item_list_item_right{
        display: flex;
        flex-wrap: nowrap;
        height: 30px;
        align-items: center;
    }

    .manage_language_item_list_item_name{
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
    }

    .manage_language_item_list_item[data-delete="true"] .manage_language_item_list_item_name{
        color: #ea1636;
        text-decoration: line-through;
    }

    .manage_language_item_list_item[data-delete="true"] .manage_language_item_list_item_name img{
        filter: grayscale(1);
    }

    .manage_language_list_item_ghost .manage_language_item_list_item_move_icon i{
        color: #212121 !important;
    }

    .manage_language_item_list_item_move_icon, .manage_language_item_list_item_edit_icon, .manage_language_item_list_item_edit_icon_delete{
        width: 30px;
        height: 30px;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .manage_language_item_list_item .manage_language_item_list_item_move_icon{
        cursor: grab;
    }

    .manage_language_item_list_item_edit_icon:hover, .manage_language_item_list_item_edit_icon_delete:hover{
        cursor: pointer;
    }

    .manage_language_item_list_item_move_icon i, .manage_language_item_list_item_edit_icon i, .manage_language_item_list_item_edit_icon_delete i{
        position: relative;
        top: 1px;
        color: #ddd;
        transition: 0.25s;
    }

    .manage_language_item_list_item:hover .manage_language_item_list_item_move_icon i,
    .manage_language_item_list_item:hover .manage_language_item_list_item_edit_icon i{
        color: #339eff;
    }

    .manage_language_item_list_item:hover .manage_language_item_list_item_edit_icon_delete i{
        color: #ea1636;
    }

    .manage_language_item_list_item_name img{
        width: 18px;
        border: 1px solid #ddd;
        margin-right: 5px;
        position: relative;
        top: 2px;
    }

    .manage_language_item_list_empty{
        height: 30px;
        border-left: none;
    }

    #manage_language_item_list_default .manage_language_item_list_item_edit_icon_delete{
        display: none;
    }

    .manage_language_item_list_empty::before{
        content: 'Zero Additional Languages';
        position: absolute;
        z-index: 4;
        height: 30px;
        padding: 5px 0;
        left: 0px;
        right: 0px;
        text-align: center;
        border: 2px dashed #ddd;
        color: #b9b8b8;
        white-space: pre;
    }


    #add_new_language_modal{
        position: absolute;
        background-color: #fff;
        border-top: 5px solid #339eff;
        box-shadow: 0 5px 12px 2px #949494;
        border-radius: 4px;
        padding: 10px;
        top: 20px;
        opacity: 0;
        visibility: hidden;
        transition: 0.25s;
        z-index: 4;
    }

    #add_new_language_modal.add_new_language_modal_active{
        opacity: 1;
        visibility: visible;
        top: 50px;
    }

    #add_new_language_modal::before{
        content: '';
        display: block;
        width: 0; 
        height: 0; 
        border-left: 10px solid transparent;
        border-right: 10px solid transparent;
        border-bottom: 10px solid #339eff;
        top: -10px;
        position: absolute;
        left: 0;
        right: 0;
        margin: 0 auto;
    }

    #add_new_language_modal_inner{
        overflow-y: auto;
        max-height: 250px;
    }

    .add_new_language_modal_item{
        display: flex;
        flex-wrap: nowrap;
        justify-content: space-between;
        align-items: center;
        height: 30px;
        border-left: 6px solid #ddd;
        width: 100%;
        margin-bottom: 10px;
        padding: 0 10px;
        transition: 0.25s;
        cursor: pointer;
    }

    .add_new_language_modal_item_left{
        display: flex;
        flex-wrap: nowrap;
        align-items: center;
        height: 30px;
        
    }

    .add_new_language_modal_item_left_image{
        height: 20px;
        margin-right: 5px;
    }

    .add_new_language_modal_item_left_custom{
        height: 20px;
        width: 30px;
        margin-right: 5px;
        background-color: #339eff;
        color: #fff;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .add_new_language_modal_item_right_add{
        width: 30px;
        text-align: center;
        color: #ddd;
        transition: 0.25s;
    }

    .add_new_language_modal_item:hover{
        border-left-color: #339eff;
        background-color: #f5f5f7;
        font-weight: bold;
    }

    .add_new_language_modal_item:hover .add_new_language_modal_item_right_add{
        color: #339eff;
    }

</style>

<div class="editor_panel_item" data-type="language-and-translations">
    

    <div class="manage_language_item_container">
        <div class="manage_language_item_title">Default Language</div>
        <div id="manage_language_item_list_default" class="manage_language_item_list"></div>
    </div>

    <div class="manage_language_item_container">
        <div class="manage_language_item_title">Additional Languages<a id="additional_languages_icon_premium" class="question_mark_tool_tip question_mark_tool_tip_gold marginl5 has_tool_tip"><i class="fa fa-lock"></i><span class="question_mark_tool_tip_span question_mark_tool_tip_span_middle">For additional languages to appear on your live store, you need to upgrade to the Pro Plan. You can still change the default language by dragging the additional language into the default language section.</span></a></div>
        <div id="manage_language_item_list_additional" class="manage_language_item_list"></div>
    </div>

    <div class="align_center margint30 relative">
        <a id="languagePacks_add_new_button" class="editor_main_button" onclick="addNewLanguageModal();">Add New Language</a>
        <div id="add_new_language_modal">
            <p>Select a new language pack to add to your store.</p>
            <div id="add_new_language_modal_inner">
                <div class="add_new_language_modal_item" onclick="addNewLanguage('custom')";>
                    <div class="add_new_language_modal_item_left">
                        <div class="add_new_language_modal_item_left_custom"><i class="fa fa-globe" aria-hidden="true"></i></div>
                        <span class="add_new_language_modal_item_left_name">Custom</span>
                    </div>
                    <div class="add_new_language_modal_item_right">
                        <div class="add_new_language_modal_item_right_add"><i class="fa fa-plus" aria-hidden="true"></i></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="editor_info_panel margint40" data-type="info">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title">Info</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-down" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_subtitle">What are Language &amp; Translations?</div>
            <p>This section allows you to change your stores language. You can also add additional languages for customers to select.</p>
            <p>You can also edit individual translations for each language.</p>
        </div>
    </div>

    <div class="editor_info_panel margint20" data-type="help">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title">Help</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-up" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_subtitle">My language isn't available in the list?</div>
            <p>Don't worry, simply edit an existing language to your own by clicking the <i class="fa fa-pencil"></i> icon next to the language.</p>
            <div class="editor_info_panel_subtitle">Add a brand new language?</div>
            <p>Have you translated your store into a language we do not currently offer? Help your fellow store owners by also making it available to them.</p>
            <p>Simply contact <a href="/support_new_ticket.aspx" class="link_color_primary">support</a> to submit your language!</p>
        </div>
    </div>

</div>

<script>

    var buildLanguageAndTranslationsPanelLoaded = false;
    var languagePacks;
    function buildLanguageAndTranslationsPanel() {

        if (buildLanguageAndTranslationsPanelLoaded == false) {

            if (checkIfProRidge() == false) {
                showByIdInline("additional_languages_icon_premium");
            }

            axiosGet("/services/design/LanguagePacks.svc/GetLanguagePacks?shopkeeper=" + storeId).then(function (data) {

                languagePacks = data.d || data;
                console.log(languagePacks);

                buildUserLanguagePacks();

                document.querySelector(".editor_panel_item[data-type='language-and-translations']").classList.add("editor_panel_item_active");
                hideById("editor_panel_loader");

                buildLanguageAndTranslationsPanelLoaded = true;

            }).catch(function (e) {

                console.log("ERROR:LanguageAndTranslations:getDefaultLanguage");
                typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
                errorOccurred("load", "language-and-translations", "getDefaultLanguage");

            }).then(function () {

                

            });

        } else {

            document.querySelector(".editor_panel_item[data-type='language-and-translations']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

        }

    }

    function buildUserLanguagePacks() {

        document.getElementById("manage_language_item_list_default").innerHTML = ""; 
        document.getElementById("manage_language_item_list_additional").innerHTML = "";

        var userLanguagePacks = languagePacks.userLanguagePacks.packs;

        for (var i = 0; i < userLanguagePacks.length; i++) {

            var item = '<div class="manage_language_item_list_item" data-id="' + userLanguagePacks[i].id + '" data-delete="false">';
                    item += '<div class="manage_language_item_list_item_left">';
                        item += '<div class="manage_language_item_list_item_move_icon"><i class="fa fa-arrows"></i></div>';
                        item += '<div class="manage_language_item_list_item_name"><img src="' + userLanguagePacks[i].url + '" />' + userLanguagePacks[i].description + '</div>';
                    item += '</div>';
                    item += '<div class="manage_language_item_list_item_left">';
                        item += '<div class="manage_language_item_list_item_edit_icon" onclick="editLanguagePack(\'' + userLanguagePacks[i].id + '\');"><i class="fa fa-pencil"></i></div>';
                        item += '<div class="manage_language_item_list_item_edit_icon_delete" onclick="deleteLanguagePack(\'' + userLanguagePacks[i].id + '\');"><i class="fa fa-trash"></i></div>';
                    item += '</div>';
                item += '</div>';

            if (userLanguagePacks[i].defaultLanguage == true) {
                document.getElementById("manage_language_item_list_default").innerHTML += item;
            } else {
                document.getElementById("manage_language_item_list_additional").innerHTML += item;
            }

        }

        if (userLanguagePacks.length == 1) {
            document.getElementById("manage_language_item_list_additional").classList.add("manage_language_item_list_empty");
        } else {
            document.getElementById("manage_language_item_list_additional").classList.remove("manage_language_item_list_empty");
        }

        buildLanguagePacksSortable();

    }

    function deleteLanguagePack(packId) {
        
        var status = document.querySelector(".manage_language_item_list_item[data-id='" + packId + "']").getAttribute("data-delete");

        if (status == "false") {
            document.querySelector(".manage_language_item_list_item[data-id='" + packId + "']").setAttribute("data-delete", "true");
            document.querySelector(".manage_language_item_list_item[data-id='" + packId + "'] .manage_language_item_list_item_edit_icon_delete i").classList.remove("fa-trash");
            document.querySelector(".manage_language_item_list_item[data-id='" + packId + "'] .manage_language_item_list_item_edit_icon_delete i").classList.add("fa-undo");
        } else {
            document.querySelector(".manage_language_item_list_item[data-id='" + packId + "']").setAttribute("data-delete", "false");
            document.querySelector(".manage_language_item_list_item[data-id='" + packId + "'] .manage_language_item_list_item_edit_icon_delete i").classList.add("fa-trash");
            document.querySelector(".manage_language_item_list_item[data-id='" + packId + "'] .manage_language_item_list_item_edit_icon_delete i").classList.remove("fa-undo");
        }

        document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");

    }

    var sortableLanguagePacks1;
    var sortableLanguagePacks2;
    function buildLanguagePacksSortable() {

        var languagePacks1SortableContainer = document.querySelector("#manage_language_item_list_default");
        var languagePacks2SortableContainer = document.querySelector("#manage_language_item_list_additional");

        sortableLanguagePacks1 = new Sortable(languagePacks1SortableContainer, {
            handle: ".manage_language_item_list_item_move_icon",
            draggable: ".manage_language_item_list_item",
            ghostClass: "manage_language_list_item_ghost",
            animation: 150,
            group: {
                name: "moveableLanguagePacks"
            },
            onSort: function (evt) {
                document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");
            },
            onChoose: function (evt) {
                
            },
            onEnd: function (evt) {
                checkDefaultLanguageSingle();   
            }
        });

        sortableLanguagePacks2 = new Sortable(languagePacks2SortableContainer, {
            handle: ".manage_language_item_list_item_move_icon",
            draggable: ".manage_language_item_list_item",
            ghostClass: "manage_language_list_item_ghost",
            animation: 150,
            group: {
                name: "moveableLanguagePacks"
            },
            onSort: function (evt) {
                document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");
            },
            onChoose: function (evt) {

            },
            onEnd: function (evt) {
                checkDefaultLanguageSingle();
            }
        });

    }

    function checkDefaultLanguageSingle() {

        var defaultLanguageLength = document.querySelectorAll("#manage_language_item_list_default .manage_language_item_list_item").length;
        console.log(defaultLanguageLength);

        if (defaultLanguageLength == 0) {
            $("#manage_language_item_list_additional .manage_language_item_list_item:first-child").appendTo("#manage_language_item_list_default");
        } else if (defaultLanguageLength > 1) {
            $("#manage_language_item_list_default .manage_language_item_list_item:last-child").prependTo("#manage_language_item_list_additional");
        }

        document.querySelector("#manage_language_item_list_default .manage_language_item_list_item").setAttribute("data-delete", "false");
        document.querySelector("#manage_language_item_list_default .manage_language_item_list_item .manage_language_item_list_item_edit_icon_delete i").classList.add("fa-trash");
        document.querySelector("#manage_language_item_list_default .manage_language_item_list_item .manage_language_item_list_item_edit_icon_delete i").classList.remove("fa-undo");

    }

    function saveLanguagePacks() {

        var packid = document.querySelector("#manage_language_item_list_default .manage_language_item_list_item").getAttribute("data-id");


        var languagePack = {
            "storeId": storeId,
            "packid": packid
        }

        console.log(languagePack);

        var data = JSON.stringify(languagePack);

        axiosPost('/services/design/LanguagePacks.svc/editorSaveDefaultLanguagePack', data).then(function (data) {

            var packsToDelete = document.querySelectorAll(".manage_language_item_list_item[data-delete='true']");
            if (packsToDelete == null || packsToDelete.length == 0) {
                editorSaved();
            } else {
                deleteLanguagePacks();
            }
                

        }).catch(function (e) {

            console.log("ERROR:LanguageAndTranslations:editorSaveDefaultLanguagePack");
            typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
            errorOccurred("save", "language-and-translations", "editorSaveDefaultLanguagePack");

        }).then(function () {

        });


    }

    function deleteLanguagePacks() {

        var packsToDelete = document.querySelectorAll(".manage_language_item_list_item[data-delete='true']");

        var packs = new Array();
        for (var i = 0; i < packsToDelete.length; i++) {
            var id = packsToDelete[i].getAttribute("data-id");
            packs.push({ "id": id })
        }

        console.log("We should be deleting some packs:");
        console.log(packs)

        var data = {
            "storeId": storeId,
            "packs": packs
        }

        console.log(data);

        data = JSON.stringify(data);

        axiosPost('/services/editor/editor.svc/editorDeleteLanguagePacks', data).then(function (data) {

            editorSaved();

            for (var i = 0; i < packsToDelete.length; i++) {
                var id = packsToDelete[i].getAttribute("data-id");
                document.querySelector(".manage_language_item_list_item[data-id='" + id + "']").remove();
            }

            if (document.querySelector("#manage_language_item_list_additional .manage_language_item_list_item") == null) {
                document.getElementById("manage_language_item_list_additional").classList.add("manage_language_item_list_empty");
            } else {
                document.getElementById("manage_language_item_list_additional").classList.remove("manage_language_item_list_empty");
            }

        }).catch(function (e) {

            console.log("ERROR:LanguageAndTranslations:editorDeleteLanguagePacks");
            typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
            errorOccurred("save", "language-and-translations", "editorDeleteLanguagePacks");

        }).then(function () {

        });

    }

    var addNewLanguageModalLoaded = false;
    function addNewLanguageModal() {

        if (addNewLanguageModalLoaded == false) {

            var communityLanguagePacks = languagePacks.communityLanguagePacks.packs;

            var communityLanguageHtml = '';
            for (var i = 0; i < communityLanguagePacks.length; i++) {

                var communityLanguageHtmlItem = '<div class="add_new_language_modal_item" onclick="addNewLanguage(' + communityLanguagePacks[i].id + ');">';
                        communityLanguageHtmlItem += '<div class="add_new_language_modal_item_left">';
                            communityLanguageHtmlItem += '<img class="add_new_language_modal_item_left_image" src="' + communityLanguagePacks[i].url + '" />';
                            communityLanguageHtmlItem += '<span class="add_new_language_modal_item_left_name">' + communityLanguagePacks[i].country + '</span>';
                        communityLanguageHtmlItem += '</div>';
                        communityLanguageHtmlItem += '<div class="add_new_language_modal_item_right">';
                            communityLanguageHtmlItem += '<div class="add_new_language_modal_item_right_add"><i class="fa fa-plus"></i></div>';
                        communityLanguageHtmlItem += '</div>';
                    communityLanguageHtmlItem += '</div>';

                communityLanguageHtml += communityLanguageHtmlItem;

            }

            document.getElementById("add_new_language_modal_inner").innerHTML += communityLanguageHtml;

        }

        document.getElementById("add_new_language_modal").classList.toggle("add_new_language_modal_active");

    }

    var addNewLanguagePackSelectedId = -1; 
    function addNewLanguage(id) {

        addNewLanguagePackSelectedId = id;
        languagePackToEdit = "";
        document.getElementById("add_new_language_modal").classList.remove("add_new_language_modal_active");
        openPanelToggle("manage-language");

    }


    var languagePackToEdit = "";
    function editLanguagePack(id) {

        languagePackToEdit = id;
        
        openPanelToggle("manage-language");

    }

</script>
                    

<style>

    #editor_image_container-language{
        max-width: 100px;
        margin: 10px auto 0 auto;
    }

    #editor_image-language{
        width: 60px;
        height: 40px;
    }

    #language_flag_modal{
        position: absolute;
        background-color: #fff;
        border-top: 5px solid #339eff;
        box-shadow: 0 5px 12px 2px #949494;
        border-radius: 4px;
        padding: 10px;
        top: 20px;
        opacity: 0;
        visibility: hidden;
        transition: 0.25s;
        z-index: 4;
    }

    #language_flag_modal.language_flag_modal_active{
        opacity: 1;
        visibility: visible;
        top: 50px;
    }

    #language_flag_modal::before{
        content: '';
        display: block;
        width: 0; 
        height: 0; 
        border-left: 10px solid transparent;
        border-right: 10px solid transparent;
        border-bottom: 10px solid #339eff;
        top: -10px;
        position: absolute;
        left: 0;
        right: 0;
        margin: 0 auto;
    }

    #language_flag_modal_inner{
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
        overflow-y: auto;
        max-height: 250px;
    }

    .language_flag_modal_item{
        width: 30%;
        text-align: center;
        margin-bottom: 10px;
        cursor: pointer;
    }

    .language_flag_modal_item_image{
        width: 100%;
        max-width: 60px;
        padding: 5px;
        border-radius: 4px;
        background-color: #f5f5f7;
        border: 1px solid #ddd;
        transition: 0.25s;
    }

    .language_flag_modal_item:hover .language_flag_modal_item_image{
        border: 1px solid #339eff;
    }

    #tokens_outer_container{
        margin-top: 30px;
        padding-top: 20px;
        border-top: 1px dashed #ddd;
    }

    #tokens_container{
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
        margin-top: 20px;
    }

    .translation_identifier{
        display: flex;
        width: 30px;
        height: 30px;
        justify-content: center;
        align-items: center;
        background-color: #339eff;
        color: #fff;
        border-radius: 6px;
        font-weight: bold;
        margin-bottom: 5px;
    }

    .translation_input_container {
        margin-bottom: 20px;
        border: 1px solid #ddd;
        padding-left: 20px;
        background-color: #F5F5F7;
        padding: 10px 10px 0 10px;
        border-left: 3px solid #339eff;
        min-width: 300px;
        max-width: 300px;
    }

    #no_search_translations{
        display: none;
    }

</style>

<div class="editor_panel_item" data-type="manage-language">
    
    <div class="align_center">
        <div><strong>Language Flag</strong></div>
        <div id="editor_image_container-language" class="editor_image_container">
            <div class="editor_image_inner_container">
                <div id="editor_image-language_container"></div>
                <div class="editor_image_add_button" onclick="changeLanguageImage();">
                    <div class="editor_image_add_button_icon"><i class="fa fa-plus" aria-hidden="true"></i></div>
                    <span class="editor_image_add_button_text">Change</span>
                </div>
                <div class="editor_image_loading">
                    <div class="editor_image_loading_icon"><i class="fa fa-spinner fa-spin" aria-hidden="true"></i></div>
                    <span class="editor_image_loading_text">Loading</span>
                </div>
            </div>
        </div>
        <div class="relative">
            <a id="language_change_button" class="editor_main_button" onclick="changeLanguageImage();">Change Language Image</a>
            <div id="language_flag_modal">
                <p>Select the flag you wish to use for your language.</p>
                <div id="language_flag_modal_inner"></div>
                <p>If the flag you are looking for isn't here <a class="link_color_primary" href="/support_new_ticket.aspx">contact our support team</a> and we will happily add it for you.</p>
            </div>
        </div>
    </div>

    <div class="input_container margint20">
        <label for="manage_language_name">Language Name</label>
        <input type="text" id="manage_language_name" maxlength="30" placeholder="Language Name" onchange="manageLanguageNameChange();" onkeypress="manageLanguageNameChange();" onpaste="manageLanguageNameChange();" />
    </div>

    <div id="tokens_outer_container">
        <div class="align_center"><strong>Translations</strong></div>
        <div id="tokens_search_input_container" class="input_container margint30">
            <div class="input_container_password">
                <input id="tokens_search_input" type="text" placeholder="Search Translations..." onchange="manageLanguageSearch();" onkeyup="manageLanguageSearch();" onpaste="manageLanguageSearch();" />
                <div class="input_container_password_reveal"><i id="tokens_search_icon" class="fa fa-search" aria-hidden="true"></i></div>
            </div>
        </div>
        <div id="tokens_container"></div>
        <div id="no_search_translations"><strong>Your search did not match any of the current translation tokens.</strong></div>

    </div>
    

</div>


<script>

    var buildManageLanguagePanelLoaded = false;
    var languagePack;
    var listOfAllTokens;

    function buildManageLanguagePanel() {
        if (buildManageLanguagePanelLoaded == false) {

            axiosGet("/services/editor/editor.svc/getListOfAllTokens?storeId=" + storeId).then(function (data) {

                listOfAllTokens = data.d || data;
                console.log(listOfAllTokens);

                buildLanguageTokenList();

                

            }).catch(function (e) {

                console.log("ERROR:ManageLanguage:getListOfAllTokens");
                typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
                errorOccurred("load", "manage-language", "getListOfAllTokens");

            }).then(function () {

            });

        } else {

            buildLanguageTokenList();

        }

    }



    function buildLanguageTokenList() {

        var allTokenHtml = '';
        var currentTokenIdentifier = '';

        for (var i = 0; i < listOfAllTokens.length; i++) {

            var tokenIdentifier = '';

            var firstCharacter = listOfAllTokens[i].token.charAt(0).toUpperCase();

            if (firstCharacter.match(/^[A-Z]*$/)) {

                if (firstCharacter != currentTokenIdentifier) {
                    currentTokenIdentifier = firstCharacter;
                    tokenIdentifier = '<div class="translation_identifier">' + firstCharacter + '</div>';
                }

            } else {

                if (currentTokenIdentifier == "") {
                    currentTokenIdentifier = firstCharacter;
                    tokenIdentifier = '<div class="translation_identifier">#</div>';
                }

            }

            var tokenItem = tokenIdentifier;
                tokenItem += '<div class="translation_input_container">'
                    tokenItem += '<div class="input_container">';
                        tokenItem += '<label>' + listOfAllTokens[i].token + '</label>';
                        tokenItem += '<input type="text" class="translation_input" maxlength="250" data-id="' + listOfAllTokens[i].token + '" placeholder="' + listOfAllTokens[i].token + '" onchange="manageLanguageTokenChange(this);" onkeypress="manageLanguageTokenChange(this);" onpaste="manageLanguageTokenChange(this);" />';            
                    tokenItem += '</div>';
                tokenItem += '</div>';

            allTokenHtml += tokenItem;
        }

        document.getElementById("tokens_container").innerHTML = allTokenHtml;


        if (languagePackToEdit != "") {

            axiosGet("/services/design/LanguagePacks.svc/editorGetSingleLanguagePack?storeId=" + storeId + "&packid=" + languagePackToEdit).then(function (data) {

                languagePack = data.d || data;

                languagePack = JSON.parse(languagePack);
                console.log(languagePack);

                appendLanguageTranslations(languagePack);

            }).catch(function (e) {

                console.log("ERROR:ManageLanguage:editorGetSingleLanguagePack");
                typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
                errorOccurred("load", "manage-language", "editorGetSingleLanguagePack");

            }).then(function () {

                

            });

        } else {

            if (addNewLanguagePackSelectedId != "custom") {

                languagePacks.communityLanguagePacks.packs.filter(function (obj) {

                    if (obj.id == addNewLanguagePackSelectedId) {

                        languagePack = {
                            "name": obj.country,
                            "flag": obj.acronym,
                            "tokens": obj.tokens
                        }

                        appendLanguageTranslations(languagePack);
                        document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");
                    }

                });
            } else {
                console.log("Adding Custom Language Pack");

                languagePack = {
                    "name": "Custom",
                    "flag": "usd"
                }
                appendLanguageTranslations(languagePack);
                document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");
               
            }

            

        }

    }

    function appendLanguageTranslations(languagePack) {

        document.getElementById("manage_language_name").value = languagePack.name;
        document.getElementById("editor_image-language_container").innerHTML = '<img id="editor_image-language" class="editor_image" src="//d11fdyfhxcs9cr.cloudfront.net/design_media/flags/large/' + languagePack.flag + '.png" />';

        if (languagePack.tokens != null) {
            var translations = languagePack.tokens;

            for (var i = 0; i < translations.length; i++) {

                var theToken = translations[i].token;
                theToken = theToken.replace(/\'/g, "\\'");

                if (document.querySelector(".translation_input[data-id='" + theToken + "']") != null) {
                    document.querySelector(".translation_input[data-id='" + theToken + "']").value = translations[i].translation;
                }

            }
        }

        document.querySelector(".editor_panel_item[data-type='manage-language']").classList.add("editor_panel_item_active");
        hideById("editor_panel_loader");
    }

    // Open Language Flags Modal
    var languageFlagImagesLoaded = false;
    function changeLanguageImage() {

        var flagArray = ["usd", "gbr", "aus", "can", "esp", "deu", "fra", "prt", "swe", "dnk", "fin", "nor", "grc", "rus", "svn", "isr", "ind",
            "irl", "bel", "nld", "tur", "jpn", "kor", "chn", "che", "bra", "abw", "ago", "aia", "ala", "alb", "and", "are", "arg",
            "arm", "asm", "ata", "atf", "atg", "aut", "aze", "bdi", "ben", "bfa", "bgd", "bgr", "bhr", "bhs", "bih", "blr", "blz",
            "bmu", "bol", "brb", "brn", "btn", "bvt", "bwa", "caf", "chl", "civ", "cmr", "cod", "cog", "cok", "col", "com", "cpv",
            "cri", "cub", "cuw", "cxr", "cym", "cyp", "cze", "dji", "dma", "dom", "dza", "ecu", "egy", "eri", "esh", "est", "eth",
            "fji", "flk", "fro", "fsm", "gab", "geo", "ggy", "gha", "gib", "gin", "glg", "gmb", "gnb", "gnq", "grd", "grl", "gtm", "gum",
            "guy", "hkg", "hnd", "hun", "hrv", "hti", "idn", "imn", "iot", "irn", "irq", "isl", "ita", "jam", "jey", "jor", "kaz",
            "ken", "kgz", "khm", "kir", "kna", "kwt", "lao", "lbn", "lbr", "lby", "lca", "lie", "lka", "lso", "ltu", "lux", "lva",
            "mac", "mar", "mco", "mda", "mdg", "mdv", "mex", "mhl", "mkd", "mli", "mlt", "mmr", "mne", "mng", "mnp", "moz", "mrt",
            "msr", "mus", "mwi", "mys", "nam", "ner", "nfk", "nga", "nic", "niu", "npl", "nru", "nzl", "omn", "pak", "pan", "pcn", "per",
            "phl", "plw", "png", "pol", "pri", "prk", "pry", "pse", "pyf", "qat", "rou", "rwa", "sau", "sdn", "sen", "sgp", "shn",
            "sjm", "slb", "sle", "slv", "smr", "som", "srb", "stp", "sur", "svk", "swz", "sxm", "syc", "syr", "tca", "tcd", "tgo",
            "tha", "tjk", "tkl", "tkm", "tls", "ton", "tto", "tun", "tuv", "twn", "tza", "uga", "ukr", "ury", "uzb", "vat", "vct",
            "ven", "vgb", "vir", "vnm", "vut", "wsm", "yem", "zaf", "zmb", "zwe"];

        if (languageFlagImagesLoaded == false) {

            flagArray.sort();
            var flagHtml = "";

            flagArray.forEach(function (fa) {
                var flagHtmlItem = '<div class="language_flag_modal_item" onclick="changeLanguageFlag(\'' + fa + '\')">';
                        flagHtmlItem += '<img src="//d11fdyfhxcs9cr.cloudfront.net/design_media/flags/large/' + fa + '.png" class="language_flag_modal_item_image" />';
                    flagHtmlItem += '</div>';

                flagHtml += flagHtmlItem;
            });
            document.getElementById('language_flag_modal_inner').innerHTML += flagHtml;

            languageFlagImagesLoaded = true;
        }

        document.getElementById("language_flag_modal").classList.toggle("language_flag_modal_active");

    }

    function changeLanguageFlag(code) {

        code = code.toUpperCase();

        document.getElementById("editor_image-language_container").innerHTML = '<img id="editor_image-language" class="editor_image" src="//d11fdyfhxcs9cr.cloudfront.net/design_media/flags/large/' + code + '.png" />';

        languagePack.flag = code;

        document.getElementById("language_flag_modal").classList.remove("language_flag_modal_active");

        document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");
    }

    // Change Language Pack Name
    function manageLanguageNameChange() {

        var name = document.getElementById("manage_language_name").value.trim();
        name = parseTextAndStripPost(name);

        languagePack.name = name;

        document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");

    }


    // Change a translation
    function manageLanguageTokenChange(el) {

        el.setAttribute("data-changed", "true");

        document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");

    }


    // Search Translations 
    function manageLanguageSearch() {

        document.getElementById("tokens_search_icon").classList.add("fa-spinner", "fa-spin");
        document.getElementById("tokens_search_icon").classList.remove("fa-search");

        languageSearchPreviewDelay(function () {

            var languageSearch = document.getElementById("tokens_search_input").value.trim();
            if (languageSearch.length > 0) {
                languageSearchFly();
            } else {
                document.getElementById("tokens_search_icon").classList.remove("fa-spinner", "fa-spin");
                document.getElementById("tokens_search_icon").classList.add("fa-search");
                $(".translation_input_container, .translation_identifier").show();
            }

        }, 500);

    }

    var languageSearchPreviewDelay = (function () {
        var timer = 0;
        return function (callback, ms) {
            clearTimeout(timer);
            timer = setTimeout(callback, ms);
        };
    })();

    function languageSearchFly() {

        var languageSearch = document.getElementById("tokens_search_input").value.trim();
        languageSearch = languageSearch.toLowerCase();

        $(".translation_input_container, .translation_identifier").hide();

        var languageFound = 0;

        var languageInput = document.querySelectorAll(".translation_input");
        for (var i = 0; i < languageInput.length; i++) {

            var languageId = languageInput[i].getAttribute("data-id");
            languageId = languageId.toLowerCase();
            var languageValue = languageInput[i].value;
            languageValue = languageValue.toLowerCase();

            if (languageId.match(languageSearch) || languageValue.match(languageSearch)) {
                $(languageInput[i]).parent().parent().show();
                languageFound++;
            }

        }


        if (languageFound == 0) {
            showById("no_search_translations");
        } else {
            hideById("no_search_translations");
        }

        setTimeout(function () {
            document.getElementById("tokens_search_icon").classList.remove("fa-spinner", "fa-spin");
            document.getElementById("tokens_search_icon").classList.add("fa-search");
        }, 500);

    }

    function saveManageLanguage() {

        var editedTokens = new Array();

        var editedLanguageTokenInput = document.querySelectorAll(".translation_input[data-changed='true']");
        if (editedLanguageTokenInput != null && editedLanguageTokenInput.length > 0) {
            for (var i = 0; i < editedLanguageTokenInput.length; i++) {

                var token = editedLanguageTokenInput[i].getAttribute("data-id");
                var translation = editedLanguageTokenInput[i].value.trim();

                var newTranslationObj = {
                    "token": token,
                    "translation": translation
                }

                editedTokens.push(newTranslationObj);

            }
        }

        var languagePackData = {
            "storeId": storeId,
            "flag": languagePack.flag,
            "name": languagePack.name,
            "translations": editedTokens
        }

        if (languagePackToEdit != "") {

            console.log("SAVE EXISTING LANGUAGE");

            languagePackData["isDefault"] = languagePack.isDefault;
            languagePackData["packid"] = languagePackToEdit;

            console.log(languagePackData);

            languagePackData = JSON.stringify(languagePackData);

            axiosPost('/services/editor/editor.svc/editorSaveLanguagePack', languagePackData).then(function (data) {

                var languagePackSaveResult = data || data.d;
                console.log(languagePackSaveResult);

                editorSaved();

            }).catch(function () {

                console.log("ERROR:ManageLanguage:editorSaveLanguagePack");
                typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
                errorOccurred("save", "manage-language", "editorSaveLanguagePack");

            }).then(function () {

            });

        } else {

            console.log("SAVE NEW LANGUAGE");

            if (addNewLanguagePackSelectedId != "custom") {
                languagePackData["duplicatepackid"] = addNewLanguagePackSelectedId.toString();
            }
            console.log(languagePackData);

            languagePackData = JSON.stringify(languagePackData);

            axiosPost('/services/editor/editor.svc/editorSaveNewLanguagePack', languagePackData).then(function (data) {

                var languagePackSaveResult = data || data.d;
                console.log(languagePackSaveResult);

                editorSaved();

            }).catch(function () {

                console.log("ERROR:ManageLanguage:editorSaveNewLanguagePack");
                typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
                errorOccurred("save", "manage-language", "editorSaveNewLanguagePack");

            }).then(function () {

            });

        }

    }


</script>
                    

<style>
    #ad_removal_active, #ad_removal_notactive{
        display: none;
    }


    .ad_removal_list_item{
        display: flex;
        flex-wrap: nowrap;
    }

    .ad_removal_list_item:not(:first-child){
        margin-top: 10px;
    }

    .ad_removal_list_item_icon{
        min-width: 30px;
        height: 30px;
        text-align: center;
        line-height: 30px;
        background-color: #5DC548;
        color: #FFF;
        font-size: 1rem;
        border-radius: 4px;
        margin-right: 5px;
    }

    .ad_removal_list_item_text{
        font-weight: bold;
        line-height: 30px;
        font-size: 0.9rem;
    }

</style>

<div class="editor_panel_item" data-type="ad-removal">

    <div id="ad_removal_active" class="editor_panel_nice_info margint0">
        <p>The Freewebstore Community Banner has been removed from your store because you have an active plan.</p>

        <p>Your shoppers will no longer be able to see the Freewebstore Community Banner on your store.</p>
        <a href="/upgrade2.aspx" class="editor_main_button">View Your Plan</a>
    </div>

    <div id="ad_removal_notactive" class="editor_panel_nice_info margint0">
        <p>You need to upgrade to one of our plans for the Freewebstore Community Banner to be removed from your store.</p>
        <p>Upgrade today and get access to a variety of features, boosts and more such as:</p>

        <div id="ad_removal_list">
            
            <div class="ad_removal_list_item">
                <div class="ad_removal_list_item_icon"><i class="fa fa-check"></i></div>
                <span class="ad_removal_list_item_text">Free Domain Name</span>
            </div>

            <div class="ad_removal_list_item">
                <div class="ad_removal_list_item_icon"><i class="fa fa-check"></i></div>
                <span class="ad_removal_list_item_text">Ad Removal</span>
            </div>

            <div class="ad_removal_list_item">
                <div class="ad_removal_list_item_icon"><i class="fa fa-check"></i></div>
                <span class="ad_removal_list_item_text">Customer Accounts</span>
            </div>

            <div class="ad_removal_list_item">
                <div class="ad_removal_list_item_icon"><i class="fa fa-check"></i></div>
                <span class="ad_removal_list_item_text">Business Insights and Statistics</span>
            </div>

            <div class="ad_removal_list_item">
                <div class="ad_removal_list_item_icon"><i class="fa fa-check"></i></div>
                <span class="ad_removal_list_item_text">Increased Usage</span>
            </div>

            <div class="ad_removal_list_item">
                <div class="ad_removal_list_item_icon"><i class="fa fa-check"></i></div>
                <span class="ad_removal_list_item_text">Additional Product Features</span>
            </div>

            <div class="ad_removal_list_item">
                <div class="ad_removal_list_item_icon"><i class="fa fa-check"></i></div>
                <span class="ad_removal_list_item_text">Lots More...</span>
            </div>

        </div>

        <a href="/upgrade2.aspx" class="editor_main_button">View Plans &amp; Features</a>
    </div>

    

</div>

<script>

    var buildAdRemovalPanelLoaded = false;
    function buildAdRemovalPanel() {

        if (buildAdRemovalPanelLoaded == false) {

            if (checkIfPremium() == true) {
                showById("ad_removal_active");
            } else {
                showById("ad_removal_notactive");
            }

            buildAdRemovalPanelLoaded = true;
            document.querySelector(".editor_panel_item[data-type='ad-removal']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

        } else {
            document.querySelector(".editor_panel_item[data-type='ad-removal']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");
        }

    }

</script>
                    

<div class="editor_panel_item" data-type="store-name">
    
    <div class="input_container">
        <label for="editor_store_name">Store Name</label>
        <input type="text" id="editor_store_name" placeholder="Store Name..." maxlength="100" onchange="storeNameChangeOngoing();" onkeyup="storeNameChangeOngoing();"  />
        <div id="alert_editor_store_name" class="alert">Store Name must be at least 1 character</div>
    </div>

    <div class="editor_info_panel margint40" data-type="translations">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title"><i class="fa fa-language" aria-hidden="true"></i>Translations</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-up" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_details_tokens_list"></div>
        </div>
    </div>

    <div class="editor_info_panel margint20" data-type="info">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title">Info</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-down" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <p>Edit your store name using the text box above. Store names are used throughout your store and within some control panel elements, such as your invoices.</p>
        </div>
    </div>

</div>

<script>

    var buildStoreNamePanelLoaded = false;
    function buildStoreNamePanel() {

        if (buildStoreNamePanelLoaded == false) {

            if (store.name != null) {
                document.getElementById("editor_store_name").value = store.name;
            }

            document.querySelector(".editor_panel_item[data-type='store-name']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");
        } else {
            document.querySelector(".editor_panel_item[data-type='store-name']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");
        }

    }

    function storeNameChangeOngoing() {

        hideById("alert_editor_store_name");

        var storeName = stripHTMLPost($('#editor_store_name').val().trim());
        if (storeName.length < 1) {
            showById("alert_editor_store_name");
            document.getElementById("editor_panel_main_buttons").classList.remove("editor_panel_main_buttons_active");
        } else {

            document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");

            storeNamePreviewDelay(function () {

                storeNameChange();

            }, 500);

        }

    }

    var storeNamePreviewDelay = (function () {
        var timer = 0;
        return function (callback, ms) {
            clearTimeout(timer);
            timer = setTimeout(callback, ms);
        };
    })();

    function storeNameChange() {

        var storeName = stripHTMLPost($('#editor_store_name').val().trim());

        var updateIframeData = {
            "action": "UPDATE_STORE_NAME",
            "info": storeName
        }

        updateIframeData = JSON.stringify(updateIframeData);

        window.frames[0].window.postMessage(updateIframeData, "*");

        showIframeLoader();

    }


    function cancelStoreName() {
        var updateIframeData = {
            "action": "CANCEL_STORE_NAME",
            "info": store.name
        }

        updateIframeData = JSON.stringify(updateIframeData);

        setTimeout(function () {
            window.frames[0].window.postMessage(updateIframeData, "*");
            showIframeLoader();
        }, 1000);
    }

    function saveStoreName() {

        var nameSettings = {
            name: stripHTMLPost($('#editor_store_name').val().trim())
        };
        var arr = JSON.stringify({
            storeId: storeId,
            settings: nameSettings
        });

        axiosPost('/services/settingsv2/settings_store.svc/saveName', arr).then(function(data){

            store.name = stripHTMLPost($('#editor_store_name').val().trim());
            editorSaved();

        }).catch (function() {

            console.log("ERROR:StoreName:saveName");
            typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
            errorOccurred("save", "store-name", "saveName");

        }).then(function () {

        });

    }

</script>
                    

<style>

    #customerAccounts_upgrade_info_panel{
        display: none;
    }

    #editor_customer_accounts_additional_settings_container.editor_customer_accounts_additional_settings_container_disabled{
        border: 2px dashed #ddd;
        padding: 0 10px 10px 10px;
        border-radius: 8px;
        margin-top: 20px;
        position: relative;
    }

    .editor_customer_accounts_additional_settings_container_disabled #editor_guest_checkout_container{
        margin-top: 0 !important;
    }

    .editor_customer_accounts_additional_settings_container_disabled::after{
        content: '';
        display: block;
        position: absolute;
        z-index: 2;
        background-color: rgba(255 255 255 / 0.2);
        top: 0; right: 0; bottom: 0; left: 0;
        transition: 0.4s;
        border-radius: 8px;
    }

    #editor_customer_accounts_additional_settings_info{
        position: absolute;
        z-index: 3;
        top: 50%;
        transform: translateY(-50%);
        left: 0; right: 0;
        width: 250px;
        margin: 0 auto;
        font-weight: bold;
        color: rgba(51, 158, 255, 0.9);
        transition: 0.4s;
        text-align: center;
        font-size: 1rem;
        opacity: 0; 
        visibility: hidden;
    }

    .editor_customer_accounts_additional_settings_container_disabled:hover::after{
        background-color: rgba(255 255 255 / 1);
    }

    .editor_customer_accounts_additional_settings_container_disabled:hover #editor_customer_accounts_additional_settings_info{
        opacity: 1;
        visibility: visible;
    }

</style>


<div class="editor_panel_item" data-type="customer-accounts">
    
    <!--<div class="upgrade_info_panel marginb20" id="customerAccounts_upgrade_info_panel">
        <div class="upgrade_info_panel_header">
            <div class="upgrade_info_panel_header_icon"><i class="fa fa-exclamation-triangle" aria-hidden="true"></i></div>
            <div class="upgrade_info_panel_header_title">Upgrade Required</div>
        </div>
        <div class="upgrade_info_panel_info_container">
            <div class="upgrade_info_panel_info">You need to upgrade to a premium plan to enable Customer Accounts and Wishlists.</div>
            <a href="/upgrade2.aspx" class="upgrade_info_panel_button">View Amazing Premium Plans</a>
        </div>
    </div>-->

    <div id="editor_customer_accounts_container">
        <p><strong>Customer Accounts</strong></p>
        <div class="checkbox_container">
            <input type="radio" id="editor_customer_accounts_enabled" name="editor_customer_accounts_enabled-disabled" onclick="customerAccountChange();">
            <label for="editor_customer_accounts_enabled"><span>Enable Customer Accounts</span></label>
        </div>

        <div class="checkbox_container">
            <input type="radio" id="editor_customer_accounts_disabled" name="editor_customer_accounts_enabled-disabled" onclick="customerAccountChange();">
            <label for="editor_customer_accounts_disabled"><span>Disable Customer Accounts</span></label>
        </div>
    </div>

    <div id="editor_customer_accounts_additional_settings_container">
        <div id="editor_customer_accounts_additional_settings_info">Enable Customer Accounts to edit these settings</div>
        <div id="editor_guest_checkout_container" class="margint20">
            <p><strong>Guest Checkout</strong></p>
            <div class="checkbox_container">
                <input type="radio" id="editor_guest_checkout_enabled" name="editor_guest_checkout_enabled-disabled" onclick="customerAccountChange();">
                <label for="editor_guest_checkout_enabled"><span>Allow Checkout as Guest</span></label>
            </div>

            <div class="checkbox_container">
                <input type="radio" id="editor_guest_checkout_disabled" name="editor_guest_checkout_enabled-disabled" onclick="customerAccountChange();">
                <label for="editor_guest_checkout_disabled"><span>Mandatory Customer Accounts</span></label>
            </div>

        </div>

        <div id="editor_wishlist_container" class="margint20">
            <p><strong>Customer Wishlists</strong></p>
            <div class="checkbox_container">
                <input type="radio" id="editor_customer_wishlists_enabled" name="editor_customer_wishlists_enabled-disabled" onclick="customerAccountChange();">
                <label for="editor_customer_wishlists_enabled"><span>Enable Customer Wishlists</span></label>
            </div>

            <div class="checkbox_container">
                <input type="radio" id="editor_customer_wishlists_disabled" name="editor_customer_wishlists_enabled-disabled" onclick="customerAccountChange();">
                <label for="editor_customer_wishlists_disabled"><span>Disable Customer Wishlists</span></label>
            </div>

        </div>
    </div>

    <div class="editor_info_panel margint40" data-type="translations">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title"><i class="fa fa-language" aria-hidden="true"></i>Edit Labels</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-down" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_details_tokens_list"></div>
        </div>
    </div>

    <div class="editor_info_panel margint20" data-type="info">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title">Info</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-down" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_subtitle">What are Customer Accounts?</div>
            <p>Customer Accounts allow your shoppers to log into their own accounts on your store.</p>
            <p>This allows them to view all their past orders, abandoned carts, and more.</p>
        </div>
    </div>

</div>

<script>

    var buildCustomerAccountsPanelLoaded = false;
    function buildCustomerAccountsPanel() {

        if (buildCustomerAccountsPanelLoaded == false) {

            /*if (checkIfPremiumOrVersion() == false) {

                showById("customerAccounts_upgrade_info_panel");

                document.getElementById("editor_customer_accounts_enabled").setAttribute("disabled", true);
                document.getElementById("editor_customer_accounts_disabled").setAttribute("disabled", true);
                document.getElementById("editor_guest_checkout_enabled").setAttribute("disabled", true);
                document.getElementById("editor_guest_checkout_disabled").setAttribute("disabled", true);
                document.getElementById("editor_customer_wishlists_enabled").setAttribute("disabled", true);
                document.getElementById("editor_customer_wishlists_disabled").setAttribute("disabled", true);

            } else {*/

                // Customer Accounts
                if (store.settings.accounts != null) {
                    if (store.settings.accounts == true) {
                        document.getElementById("editor_customer_accounts_enabled").checked = true;
                        document.getElementById("editor_customer_accounts_disabled").checked = false;
                    } else {
                        document.getElementById("editor_customer_accounts_enabled").checked = false;
                        document.getElementById("editor_customer_accounts_disabled").checked = true;
                        document.getElementById("editor_customer_accounts_additional_settings_container").classList.add("editor_customer_accounts_additional_settings_container_disabled");
                    }
                } else {
                    document.getElementById("editor_customer_accounts_enabled").checked = false;
                    document.getElementById("editor_customer_accounts_disabled").checked = true;
                    document.getElementById("editor_customer_accounts_additional_settings_container").classList.add("editor_customer_accounts_additional_settings_container_disabled");
                }

                // Guest Checkout
                if (store.settings.checkoutGuest != null) {
                    if (store.settings.checkoutGuest == true) {
                        document.getElementById("editor_guest_checkout_enabled").checked = true;
                        document.getElementById("editor_guest_checkout_disabled").checked = false;
                    } else {
                        document.getElementById("editor_guest_checkout_enabled").checked = false;
                        document.getElementById("editor_guest_checkout_disabled").checked = true;
                    }
                } else {
                    document.getElementById("editor_guest_checkout_enabled").checked = true;
                    document.getElementById("editor_guest_checkout_disabled").checked = false;
                }

                // Customer Wishlists
                if (store.settings.wishlist != null) {
                    if (store.settings.wishlist == true) {
                        document.getElementById("editor_customer_wishlists_enabled").checked = true;
                        document.getElementById("editor_customer_wishlists_disabled").checked = false;
                    } else {
                        document.getElementById("editor_customer_wishlists_enabled").checked = false;
                        document.getElementById("editor_customer_wishlists_disabled").checked = true;
                    }
                } else {
                    document.getElementById("editor_customer_wishlists_enabled").checked = false;
                    document.getElementById("editor_customer_wishlists_disabled").checked = true;
                }

            /*}*/

            document.querySelector(".editor_panel_item[data-type='customer-accounts']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");
        } else {
            document.querySelector(".editor_panel_item[data-type='customer-accounts']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");
        }
    }



    function customerAccountChange() {

        if (document.getElementById("editor_customer_accounts_enabled").checked == true) {
            document.getElementById("editor_customer_accounts_additional_settings_container").classList.remove("editor_customer_accounts_additional_settings_container_disabled");
        } else{
            document.getElementById("editor_customer_accounts_additional_settings_container").classList.add("editor_customer_accounts_additional_settings_container_disabled");
        }

        document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");

    }

    function saveCustomerAccounts() {

        var customerAccounts = document.getElementById("editor_customer_accounts_enabled").checked;

        var guestCheckout = true;
        if (customerAccounts == true) {
            guestCheckout = document.getElementById("editor_guest_checkout_enabled").checked;
        }

        var wishlists = false;
        if (customerAccounts == true) {
            wishlists = document.getElementById("editor_customer_wishlists_enabled").checked;
        }

        var customerSettings = {
            EnableCustomerAccs: customerAccounts,
            allowGuests: guestCheckout,
            wishlist: wishlists
        };

        console.log(customerSettings);

        customerSettings = JSON.stringify(customerSettings);

        axiosGet('/services/settingsv2/settings_basket.svc/saveCustomers?storeId=' + storeId + '&settings=' + customerSettings).then(function (data) {

            var result = data.d;

            store.settings.accounts = customerAccounts;
            

            editorSaved();

        }).catch(function () {

            console.log("ERROR:CustomerAccounts:saveCustomers");
            typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
            errorOccurred("save", "customer-accounts", "saveCustomers");

        }).then(function () {

        });

    }


</script>
                    

<div class="editor_panel_item" data-type="new-products">

    <div class="input_container">
        <label for="editor_products_count_newProducts">Maximum Number of New Products</label>
        <input type="number" value="12" placeholder="12" min="0" max="50" id="editor_products_count_newProducts" onchange="changeProductsCountNew();" onkeyup="changeProductsCountNew();" />
        <div class="alert" id="alert_editor_products_count_newProducts" style="color: #FFB432;"><i class="fa fa-exclamation-triangle" aria-hidden="true"></i> Limited to 50 products per page so that page speed is not impacted</div>
    </div>

    <!-- New Products -->
    <div id="editor_new_products_list_container">
        <p><strong>New Products</strong></p>

        <div class="editor_product_loader" id="editor_product_loader-new">
            <div class="lds-roller"><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div></div>
            <div id="editor_product_loader_text">Loading Products...</div>
        </div>

        <div class="editor_product_list" id="new_products_list"></div>

        <div class="pagination hide_overflow margint20" data-type="new"></div>
    </div>

    <div class="editor_info_panel margint40" data-type="translations">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title"><i class="fa fa-language" aria-hidden="true"></i>Edit Labels</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-down" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_details_tokens_list"></div>
        </div>
    </div>

    <div class="editor_info_panel margint20" data-type="info">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title">Info</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-up" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_subtitle">What are New Products?</div>
            <p>New products are any product you've added to your store in the last 30 days.</p>
        </div>
    </div>

    <div class="editor_info_panel margint20" data-type="help">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title">Help</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-up" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_subtitle">Products Not Appearing</div>
            <p>Products will only appear in the <em>New Products</em> section if:</p>
            <ul>
                <li>They were added in the last 30 days</li>
                <li>They are set to visible</li>
                <li>They have a positive stock amount (if stock settings set to remove product if out of stock)</li>
            </ul>
            <div class="editor_info_panel_subtitle">Can I remove this section</div>
            <p>Sure, just set the <em>Maximum Number of New Products</em> to zero.</p>
        </div>
    </div>

</div>


<script>

    var buildNewProductsPanelLoaded = false;
    function buildNewProductsPanel() {

        if (buildNewProductsPanelLoaded == false) {

            var newProductsShowMax = 0;

            if (storeDesign.newProductsCount != null) {
                /*document.getElementById("editor_products_count_newProducts").setAttribute("max", storeDesign.newProductsCount);
                document.getElementById("alert_editor_products_count_newProducts_text").innerText = storeDesign.newProductsCount;*/
                newProductsShowMax = storeDesign.newProductsCount;
            }

            if (store.settings.newProductsCount != null) {
                document.getElementById("editor_products_count_newProducts").value = store.settings.newProductsCount;
                newProductsShowMax = store.settings.newProductsCount;
            } else {
                if (storeDesign.newProductsCount != null) {
                    document.getElementById("editor_products_count_newProducts").value = storeDesign.newProductsCount;
                }
            }

            editorGetNewProducts(newProductsShowMax);

            document.querySelector(".editor_panel_item[data-type='new-products']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

        } else {

            document.querySelector(".editor_panel_item[data-type='new-products']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

        }

    }


    function changeProductsCountNew() {

        hideById("alert_editor_products_count_newProducts");

        var productNewCount = getId("editor_products_count_newProducts").value;
        if (productNewCount < 0) {
            getId("editor_products_count_newProducts").value = "0";
        }
        if (productNewCount == "") {
            getId("editor_products_count_newProducts").value = "";
        }
        if (productNewCount > 50) {
            getId("editor_products_count_newProducts").value = 50;
            showById("alert_editor_products_count_newProducts");
        }

        editorNewProductsChange();

    }

    function editorNewProductsChange() {

        document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");

    }


    var startpgNew = 0;
    var limitNew = 10;
    var baseLimitNew = 10;

    var paginationTotalItemsNew;
    var paginationPageItemsNew;
    var paginationPageStartNew;
    var paginationShowAllNew;

    function editorGetNewProducts(newProductsShowMax) {

        document.getElementById("new_products_list").innerHTML = "";

        showById("editor_product_loader-new");

        axiosGet('/services/editor/editor.svc/editorGetNewProducts?storeId=' + storeId + '&showMax=' + newProductsShowMax).then(function (data) {
            trace("editorGetNewProducts:success");
            var newProducts = data.d;
            console.log(newProducts);

            if (newProducts != null) {
                buildNewProducts(newProducts)
            } else {

            }

        }).catch(function (e) {

        }).then(function () {
            hideById("editor_product_loader-new");
        });

    }


    function buildNewProducts(newProducts) {

        if (newProducts.found === 0 || newProducts.count === 0 || newProducts.products.length === 0) {

            document.getElementById("new_products_list").innerHTML = "<div class='editor_panel_nice_info margint0'><p>You currently have zero products that are new.</p><p>Only products that are less than 30 days old will appear here.</p></div>"

        } else {

            var products = newProducts.products;

            var newProductHtml = '';

            for (var i = 0; i < products.length; i++) {

                var product = '<div class="editor_product_list_item">';
                        product += '<div class="editor_product_list_item_left">';
                            product += '<div class="editor_product_list_item_left_image_container">';
                                product += '<img src="' + cs_url(products[i].image) + '" onerror=\'this.src=\"/images/products/product-not-exist.jpg\";\' class="editor_product_list_item_left_image" />';
                            product += '</div>';
                        product += '</div>';
                        product += '<div class="editor_product_list_item_right">';
                            product += '<div class="editor_product_list_item_right_info">';
                                product += '<div class="editor_product_list_item_right_info_item"><strong>' + products[i].name + '</strong></div>';
                                product += '<div class="editor_product_list_item_right_info_item" data-currency="true">' + products[i].price + '</div>';
                product += '<div class="editor_product_list_item_right_info_button_container"><a class="editor_small_button" onclick="buildProductPagePanelFromOther(\'' + products[i].id + '\')">Edit</a></div>';
                            product += '</div>';
                        product += '</div>';
                    product += '</div>';

                newProductHtml += product;

            }

            document.getElementById("new_products_list").innerHTML = newProductHtml;

            UpdateEditorPriceStrings("#new_products_list .editor_product_list_item_right_info_item");

            paginationDataType = "newproduct";
            paginationTotalItemsNew = newProducts.found;
            paginationPageItemsNew = baseLimitNew;
            paginationPageStartNew = startpgNew / baseLimitNew;
            paginationPageStartNew = Math.ceil(paginationPageStartNew);
            paginationShowAllNew = true;

            $(".pagination_number_results, .pagination_text_results").remove();
            pagination(paginationTotalItemsNew, paginationPageItemsNew, paginationPageStartNew, paginationShowAllNew);


        }

    }

    function rebuildPaginationnewproduct(paginationRebuildNumber) {
        startpgNew = parseInt($(paginationRebuildNumber).attr("data-pagnum"));
        startpgNew = startpgNew * baseLimitNew;
        limitNew = startpgNew + 10;
        buildNewProducts();
    }



    function saveNewProducts() {

        var newProductsCount = document.getElementById("editor_products_count_newProducts").value;

        if (newProductsCount < 0) {
            newProductsCount = 0;
        }
        if (newProductsCount == "") {
            newProductsCount = 0;
        }
        if (newProductsCount > 50) {
            newProductsCount = 50;
        }

        var data = JSON.stringify({
            "storeId": storeId,
            "newProductsCount": newProductsCount,
        });

        
        axiosPost('/services/editor/editor.svc/editorSaveNewProductCount', data).then(function () {

            editorSaved();

            store.settings.newProductsCount = newProductsCount;
            editorGetNewProducts(newProductsCount);

        }).catch(function () {

            console.log("ERROR:NewProducts:editorSaveNewProductCount");
            typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
            errorOccurred("save", "new-products", "editorSaveNewProductCount");

        }).then(function () {

        });


    }


</script>
                    


<div class="editor_panel_item" data-type="popular-products">

    <div class="input_container">
        <label for="editor_products_count_popularProducts">Maximum Number of Popular Products</label>
        <input type="number" value="12" placeholder="12" min="0" max="50" id="editor_products_count_popularProducts" onchange="changeProductsCountPopular();" onkeyup="changeProductsCountPopular();" />
        <div class="alert" id="alert_editor_products_count_popularProducts" style="color: #FFB432;"><i class="fa fa-exclamation-triangle" aria-hidden="true"></i> Limited to 50 products per page so that page speed is not impacted</div>
    </div>

    <!-- New Products -->
    <div id="editor_popular_products_list_container">
        <p><strong>Popular Products</strong></p>

        <div class="editor_product_loader" id="editor_product_loader-popular">
            <div class="lds-roller"><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div></div>
            <div id="editor_product_loader_text">Loading Products...</div>
        </div>

        <div class="editor_product_list" id="popular_products_list"></div>

        <div class="pagination hide_overflow margint20" data-type="popular"></div>
    </div>

    <div class="editor_info_panel margint40" data-type="translations">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title"><i class="fa fa-language" aria-hidden="true"></i>Edit Labels</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-down" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_details_tokens_list"></div>
        </div>
    </div>

    <div class="editor_info_panel margint20" data-type="info">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title">Info</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-up" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_subtitle">What are Popular Products?</div>
            <p>Popular Products are the products that have had the most views on your store.</p>
        </div>
    </div>

    <div class="editor_info_panel margint20" data-type="help">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title">Help</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-up" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_subtitle">Products Not Appearing</div>
            <p>Products will only appear in the <em>Popular Products</em> section if:</p>
            <ul>
                <li>They are set to visible</li>
                <li>They have a positive stock amount (if stock settings set to remove product if out of stock)</li>
            </ul>
            <div class="editor_info_panel_subtitle">Can I remove this section</div>
            <p>Sure, just set the <em>Maximum Number of Popular Products</em> to zero.</p>
        </div>
    </div>

</div>


<script>

    var buildPopularProductsPanelLoaded = false;
    function buildPopularProductsPanel() {

        if (buildPopularProductsPanelLoaded == false) {

            var popularProductsShowMax = 0;

            if (storeDesign.popularProductsCount != null) {
                /*document.getElementById("editor_products_count_popularProducts").setAttribute("max", storeDesign.popularProductsCount);
                document.getElementById("alert_editor_products_count_popularProducts_text").innerText = storeDesign.popularProductsCount;*/
                popularProductsShowMax = storeDesign.popularProductsCount;
            }

            if (store.settings.popularCount != null) {
                document.getElementById("editor_products_count_popularProducts").value = store.settings.popularCount;
                popularProductsShowMax = store.settings.popularCount;
            } else {
                if (storeDesign.popularProductsCount != null) {
                    document.getElementById("editor_products_count_popularProducts").value = storeDesign.popularProductsCount;
                    popularProductsShowMax = storeDesign.popularProductsCount;
                }
            }

            editorGetPopularProducts(popularProductsShowMax);

            document.querySelector(".editor_panel_item[data-type='popular-products']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

        } else {

            document.querySelector(".editor_panel_item[data-type='popular-products']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

        }

    }

    function editorGetPopularProducts(popularProductsShowMax) {

        document.getElementById("popular_products_list").innerHTML = "";

        showById("editor_product_loader-popular");

        axiosGet('/services/editor/editor.svc/editorGetPopularProducts?storeId=' + storeId).then(function (data) {
            trace("editorGetPopularProducts:success");
            var popularProducts = data.d;

            if (popularProducts != null) {
                popularProducts = JSON.parse(popularProducts);
                console.log(popularProducts);
                buildPopularProducts(popularProducts, popularProductsShowMax)
            } else {

            }

        }).catch(function (e) {

        }).then(function () {
            hideById("editor_product_loader-popular");
        });

    }
   
    function buildPopularProducts(popularProducts, popularProductsShowMax) {

        if (popularProducts.found === 0 || popularProducts.count === 0 || popularProducts.products.length === 0) {

            document.getElementById("popular_products_list").innerHTML = "<div class='editor_panel_nice_info margint0'><p>You currently have zero products that are popular.</p><p>Once a product has views, this section will automatically populate with products.</p></div>";

        } else {


            var products = popularProducts.products;

            var popularProductHtml = '';

            var buildPopularProductCount = 0;

            for (var i = 0; i < products.length; i++) {

                buildPopularProductCount++;

                var product = '<div class="editor_product_list_item">';
                product += '<div class="editor_product_list_item_left">';
                product += '<div class="editor_product_list_item_left_image_container">';
                product += '<img src="' + cs_url(products[i].image) + '" onerror=\'this.src=\"/images/products/product-not-exist.jpg\";\' class="editor_product_list_item_left_image" />';
                product += '</div>';
                product += '</div>';
                product += '<div class="editor_product_list_item_right">';
                product += '<div class="editor_product_list_item_right_info">';
                product += '<div class="editor_product_list_item_right_info_item"><strong>' + products[i].name + '</strong></div>';
                product += '<div class="editor_product_list_item_right_info_item" data-currency="true">' + products[i].price + '</div>';
                product += '<div class="editor_product_list_item_right_info_button_container"><a class="editor_small_button" onclick="buildProductPagePanelFromOther(\'' + products[i].id + '\')">Edit</a></div>';
                product += '</div>';
                product += '</div>';
                product += '</div>';

                popularProductHtml += product;

                if (buildPopularProductCount >= popularProductsShowMax) {
                    break;
                }

            }

            document.getElementById("popular_products_list").innerHTML = popularProductHtml;

            UpdateEditorPriceStrings("#popular_products_list .editor_product_list_item_right_info_item");

        }

    }


    function changeProductsCountPopular() {

        hideById("alert_editor_products_count_popularProducts");

        var productPopularCount = getId("editor_products_count_popularProducts").value;
        if (productPopularCount < 0) {
            getId("editor_products_count_popularProducts").value = "0";
        }
        if (productPopularCount == "") {
            getId("editor_products_count_popularProducts").value = "";
        }
        if (productPopularCount > 50) {
            getId("editor_products_count_popularProducts").value = 50;
            showById("alert_editor_products_count_popularProducts");
        }

        editorPopularProductsChange();

    }

    function editorPopularProductsChange() {

        document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");

    }


    function savePopularProducts() {

        var popularProductsCount = document.getElementById("editor_products_count_popularProducts").value;

        if (popularProductsCount < 0) {
            popularProductsCount = 0;
        }
        if (popularProductsCount == "") {
            popularProductsCount = 0;
        }
        if (popularProductsCount > 50) {
            popularProductsCount = 50;
        }

        var data = JSON.stringify({
            "storeId": storeId,
            "popularProductsCount": popularProductsCount,
        });


        axiosPost('/services/editor/editor.svc/editorSavePopularProductCount', data).then(function () {

            editorSaved();
            store.settings.popularCount = popularProductsCount;
            editorGetPopularProducts(popularProductsCount);

        }).catch(function () {

            console.log("ERROR:PopularProducts:editorSavePopularProductCount");
            typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
            errorOccurred("save", "popular-products", "editorSavePopularProductCount");

        }).then(function () {

        });


    }



</script>
                    

<div class="editor_panel_item" data-type="recently-viewed-products">

    <div class="input_container">
        <label for="editor_products_count_recentlyViewedProducts">Maximum Number of Recently Viewed Products</label>
        <input type="number" value="12" placeholder="12" min="0" max="50" id="editor_products_count_recentlyViewedProducts" onchange="changeProductsCountRecentlyViewed();" onkeyup="changeProductsCountRecentlyViewed();" />
        <div class="alert" id="alert_editor_products_count_recentlyViewedProducts" style="color: #FFB432;"><i class="fa fa-exclamation-triangle" aria-hidden="true"></i> Limited to 50 products per page so that page speed is not impacted</div>
    </div>

    <div class="editor_info_panel margint40" data-type="translations">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title"><i class="fa fa-language" aria-hidden="true"></i>Edit Labels</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-down" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_details_tokens_list"></div>
        </div>
    </div>

</div>

<script>

    var buildRecentlyViewedProductsPanelLoaded = false;
    function buildRecentlyViewedProductsPanel() {

        if (buildRecentlyViewedProductsPanelLoaded == false) {

            var recentlyViewedProductsShowMax = 0;

            if (storeDesign.recentProductsCount != null) {
                /*document.getElementById("editor_products_count_recentlyViewedProducts").setAttribute("max", storeDesign.recentProductsCount);
                document.getElementById("alert_editor_products_count_recentlyViewedProducts_text").innerText = storeDesign.recentProductsCount;*/
                recentlyViewedProductsShowMax = storeDesign.recentProductsCount;
            }

            if (store.settings.recentCount != null) {
                document.getElementById("editor_products_count_recentlyViewedProducts").value = store.settings.recentCount;
                recentlyViewedProductsShowMax = store.settings.recentCount;
            } else {
                if (storeDesign.recentProductsCount != null) {
                    document.getElementById("editor_products_count_recentlyViewedProducts").value = storeDesign.recentProductsCount;
                }
            }

            document.querySelector(".editor_panel_item[data-type='recently-viewed-products']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

        } else {

            document.querySelector(".editor_panel_item[data-type='recently-viewed-products']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

        }

    }

    function changeProductsCountRecentlyViewed() {
        hideById("alert_editor_products_count_recentlyViewedProducts");

        var productRecentlyViewedCount = getId("editor_products_count_recentlyViewedProducts").value;
        if (productRecentlyViewedCount < 0) {
            getId("editor_products_count_recentlyViewedProducts").value = "0";
        }
        if (productRecentlyViewedCount == "") {
            getId("editor_products_count_recentlyViewedProducts").value = "";
        }
        if (productRecentlyViewedCount > 50) {
            getId("editor_products_count_recentlyViewedProducts").value = 50;
            showById("alert_editor_products_count_recentlyViewedProducts");
        }

        editorRecentlyViewedProductsChange();

    }

    function editorRecentlyViewedProductsChange() {

        document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");

    }

    function saveRecentlyViewedProducts() {

        var recentlyViewedProductsCount = document.getElementById("editor_products_count_recentlyViewedProducts").value;

        var data = JSON.stringify({
            "storeId": storeId,
            "recentlyViewedProductsCount": recentlyViewedProductsCount,
        });


        axiosPost('/services/editor/editor.svc/editorSaveRecentlyViewedProductCount', data).then(function () {

            editorSaved();

            store.settings.recentCount = recentlyViewedProductsCount;

        }).catch(function () {

            console.log("ERROR:RecentlyViewedProducts:editorSaveRecentlyViewedProductCount");
            typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
            errorOccurred("save", "recently-viewed-products", "editorSaveRecentlyViewedProductCount");

        }).then(function () {

        });

    }

</script>
                    

<div class="editor_panel_item" data-type="special-offer-products">

    <div class="input_container">
        <label for="editor_products_count_specialOfferProducts">Maximum Number of Special Offer Products</label>
        <input type="number" value="12" placeholder="12" min="0" max="50" id="editor_products_count_specialOfferProducts" onchange="changeProductsCountSpecialOffer();" onkeyup="changeProductsCountSpecialOffer();" />
        <div class="alert" id="alert_editor_products_count_specialOfferProducts" style="color: #FFB432;"><i class="fa fa-exclamation-triangle" aria-hidden="true"></i> Limited to 50 products per page so that page speed is not impacted</div>
    </div>

    <div class="editor_info_panel margint40" data-type="translations">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title"><i class="fa fa-language" aria-hidden="true"></i>Edit Labels</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-down" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_details_tokens_list"></div>
        </div>
    </div>

</div>

<script>

    var buildSpecialOfferProductsPanelLoaded = false;
    function buildSpecialOfferProductsPanel() {

        if (buildSpecialOfferProductsPanelLoaded == false) {

            var specialOfferProductsShowMax = 0;

            if (storeDesign.specialOfferProductsCount != null) {
                specialOfferProductsShowMax = storeDesign.specialOfferProductsCount;
            }

            if (store.settings.randomOffersCount != null) {
                document.getElementById("editor_products_count_specialOfferProducts").value = store.settings.randomOffersCount;
                specialOfferProductsShowMax = store.settings.randomOffersCount;
            } else {
                if (storeDesign.specialOfferProductsCount != null) {
                    document.getElementById("editor_products_count_specialOfferProducts").value = storeDesign.specialOfferProductsCount;
                    specialOfferProductsShowMax = storeDesign.specialOfferProductsCount;
                }
            }

            //editorGetPopularProducts(popularProductsShowMax);

            document.querySelector(".editor_panel_item[data-type='special-offer-products']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

        } else {

            document.querySelector(".editor_panel_item[data-type='special-offer-products']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

        }

    }

    function changeProductsCountSpecialOffer() {

        hideById("alert_editor_products_count_specialOfferProducts");

        var productSpecialOfferCount = getId("editor_products_count_specialOfferProducts").value;
        if (productSpecialOfferCount < 0) {
            getId("editor_products_count_specialOfferProducts").value = "0";
        }
        if (productSpecialOfferCount == "") {
            getId("editor_products_count_specialOfferProducts").value = "";
        }
        if (productSpecialOfferCount > 50) {
            getId("editor_products_count_specialOfferProducts").value = 50;
            showById("alert_editor_products_count_specialOfferProducts");
        }

        editorSpecialOfferProductsChange();

    }

    function editorSpecialOfferProductsChange() {

        document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");

    }


    function saveSpecialOfferProducts() {

        var specialOfferProductsCount = document.getElementById("editor_products_count_specialOfferProducts").value;

        if (specialOfferProductsCount < 0) {
            specialOfferProductsCount = 0;
        }
        if (specialOfferProductsCount == "") {
            specialOfferProductsCount = 0;
        }
        if (specialOfferProductsCount > 50) {
            specialOfferProductsCount = 50;
        }

        var data = JSON.stringify({
            "storeId": storeId,
            "specialOfferProductsCount": specialOfferProductsCount,
        });


        axiosPost('/services/editor/editor.svc/editorSaveSpecialOfferProductCount', data).then(function () {

            editorSaved();
            store.settings.randomOffersCount = specialOfferProductsCount;
            

        }).catch(function () {

            console.log("ERROR:SpecialOfferProducts:editorSaveSpecialOfferProductCount");
            typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
            errorOccurred("save", "special-offer-products", "editorSaveSpecialOfferProductCount");

        }).then(function () {

        });


    }

</script>
                    

<style>
    #editor_featured_blogs_zero{
        display: none;
        text-align: center;
    }

    #editor_featured_blogs_zero_published, #editor_featured_blogs_zero_none{
        display: none;
    }

    .editor_panel_widget_options_item.editor_panel_widget_options_item_featured_blog{
        display: block;
        cursor: default;
    }

    .editor_panel_widget_options_item_featured_blog .editor_panel_widget_options_item_left{
        height: 100px;
        margin-right: 0;
        margin-bottom: 10px;
        background-size: cover;
        background-position: center;
        object-fit: cover;
    }

    .editor_panel_widget_options_item_featured_blog .editor_panel_widget_options_item_right{
        width: 100%;
    }

    .editor_panel_widget_options_item_featured_blog .editor_panel_widget_options_item_right_button{
        margin-top: 5px;
        display: flex;
        width: 100%;
        justify-content: flex-end;
    }

</style>

<div class="editor_panel_item" data-type="featured-blogs">
    
    <div id="editor_featured_blogs_zero">
        <p id="editor_featured_blogs_zero_published">You currently have zero blogs that are published.</p>
        <p id="editor_featured_blogs_zero_none">You currently have zero blogs.</p>
        <a class="editor_main_button" href="/app/storeblog/index.aspx"><i class="fa fa-external-link" aria-hidden="true"></i>Add a Blog</a>
    </div>

    <div class="editor_panel_widget_options" id="editor_panel_widget_options_featured-blogs"></div>
    

    <div class="editor_info_panel margint40" data-type="translations">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title"><i class="fa fa-language" aria-hidden="true"></i>Edit Labels</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-down" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_details_tokens_list"></div>
        </div>
    </div>

</div>

<script>

    var buildFeaturedBlogsPanelLoaded = false;
    function buildFeaturedBlogsPanel() {

        if (buildFeaturedBlogsPanelLoaded == false) {



            axiosGet('/app/storeblog/services/blog.svc/GetBlogList?storeId=' + storeId).then(function (data) {
                var blogList = data.d || data;
                console.log(blogList);

                blogs = blogList.items;

                if (blogs.length == 0) {
                    showById("editor_featured_blogs_zero");
                    showById("editor_featured_blogs_zero_none");
                } else {
                    buildBlogList(blogs);
                }

            }).catch(function (e) {

                console.log("ERROR:GetBlogList:GetBlogList");
                typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
                errorOccurred("load", "featured-blogs", "GetBlogList");

            }).then(function () {
                document.querySelector(".editor_panel_item[data-type='featured-blogs']").classList.add("editor_panel_item_active");
                hideById("editor_panel_loader");
            });



        } else {

            document.querySelector(".editor_panel_item[data-type='featured-blogs']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

        }

    }

    function buildBlogList(blogs) {

        var featuredBlogsHtml = '';

        blogs = blogs.sort(function (a, b) {
            if (a.created > b.created) return -1;
            if (a.created < b.created) return 1;
            return 0;
        });

        var addedFeaturedBlog = 0;

        for (var i = 0; i < blogs.length; i++) {

            if (addedFeaturedBlog < storeDesign.featuredBlogCount) {

                if (blogs[i].published == true) {

                    addedFeaturedBlog ++;

                    var link = 'href="/app/storeblog/editv2?bid=' + blogs[i].articleID + '"'; 

                    var imageUrl = blogs[i].imageURL;
                    var imgUrl = '';
                    if (imageUrl.length > 0) {
                        imgUrl = '//d13z1xw8270sfc.cloudfront.net/origin/' + storeId + '/' + blogs[i].imageURL + '';
                    } else {
                        imgUrl = '/images/products/product-not-exist.jpg';
                    }

                    var item = '<div class="editor_panel_widget_options_item editor_panel_widget_options_item_featured_blog">';
                            item += '<div class="editor_panel_widget_options_item_left" style="background-image: url(\'' + imgUrl + '\')"></div>';
                            item += '<div class="editor_panel_widget_options_item_right">';
                                item += '<div class="editor_panel_widget_options_item_right_title">' + blogs[i].title + '</div>';
                                item += '<div class="editor_panel_widget_options_item_right_info">' + blogs[i]._abstract + '</div>';
                                item += '<div class="editor_panel_widget_options_item_right_button">';
                                    item += '<a ' + link + ' class="editor_small_button"><i class="fa fa-external-link" aria-hidden="true"></i>Edit</a>';
                                item += '</div>';
                            item += '</div>';
                        item += '</div>';

                    featuredBlogsHtml += item;

                }
            }
        }
        
        if (featuredBlogsHtml.length == 0) {
            showById("editor_featured_blogs_zero");
            showById("editor_featured_blogs_zero_published");
        } else {
            document.getElementById("editor_panel_widget_options_featured-blogs").innerHTML = featuredBlogsHtml;
            document.getElementById("editor_panel_widget_options_featured-blogs").innerHTML += '<a class="editor_main_button" href="/app/storeblog/index.aspx"><i class="fa fa-external-link" aria-hidden="true"></i>View All Blog</a>';
        }
        

    }

</script>
                    

<div class="editor_panel_item" data-type="currency">
    
    <div id="editor_currency_converter_container">
        <p><strong>Currency Converter</strong></p>
        <div class="checkbox_container">
            <input type="radio" id="editor_currency_enabled" name="editor_currency_enabled-disabled" onclick="currencyChange();">
            <label for="editor_currency_enabled"><span>Enable Currency Converter</span></label>
        </div>

        <div class="checkbox_container">
            <input type="radio" id="editor_currency_disabled" name="editor_currency_enabled-disabled" onclick="currencyChange();">
            <label for="editor_currency_disabled"><span>Disable Currency Converter</span></label>
        </div>
    </div>

    <div class="editor_info_panel margint40" data-type="translations">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title"><i class="fa fa-language" aria-hidden="true"></i>Edit Labels</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-down" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_details_tokens_list"></div>
        </div>
    </div>

    <div class="editor_info_panel margint20" data-type="info">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title">Info</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-up" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <p>The Currency feature allows your customers to view your store in their prefered currency.</p>
            <p>We use realtime currency exchange rates to show the closest possible match.</p>
            <p>Customers will still pay in your chosen account currency.</p>
        </div>
    </div>

    <div class="editor_info_panel margint20" data-type="help">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title">Help</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-down" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_subtitle">Can I only display certain currencies?</div>
            <p>Currently, it's not possible to set which currencies you want to display.</p>
            <p>All currencies will be available if this feature is enabled.</p>
            <div class="editor_info_panel_subtitle">How do I change my store currency?</div>
            <p>You can change your store/ account currency via the <a href="/settings.aspx" class="link_color_primary">Settings</a> section of your control panel.</p>
        </div>
    </div>

</div>

<script>

    var buildCurrencyPanelLoaded = false;
    function buildCurrencyPanel() {

        if (buildCurrencyPanelLoaded == false) {

            if (store.settings.hideCurrency == null || store.settings.hideCurrency == false) {
                document.getElementById("editor_currency_enabled").checked = true;
            } else {
                document.getElementById("editor_currency_disabled").checked = true;
            }

            buildCurrencyPanelLoaded = true;
            document.querySelector(".editor_panel_item[data-type='currency']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

        } else {
            document.querySelector(".editor_panel_item[data-type='currency']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");
        }

    }


    function currencyChange() {

        document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");

        var visible = document.getElementById("editor_currency_enabled").checked;

        var updateIframeData = {
            "action": "UPDATE_CURRENCY",
            "info": visible
        }

        updateIframeData = JSON.stringify(updateIframeData);

        window.frames[0].window.postMessage(updateIframeData, "*");

        showIframeLoader();

    }

    function cancelCurrency() {

        var visible = false;

        var currencyObj = store.settings.hideCurrency;
        if (currencyObj == null || currencyObj == false) {
            visible = true;
        }

        var updateIframeData = {
            "action": "UPDATE_CURRENCY",
            "info": visible
        }

        updateIframeData = JSON.stringify(updateIframeData);

        window.frames[0].window.postMessage(updateIframeData, "*");

        showIframeLoader();

    }

    function saveCurrency() {

        var currency = document.getElementById("editor_currency_enabled").checked;

        if (currency == true) {
            currency = false;
        } else {
            currency = true;
        }

        var data = {
            "storeId": storeId,
            "currency": currency
        }

        data = JSON.stringify(data);

        axiosPost("/services/editor/editor.svc/editorSaveCurrency", data).then(function (data) {

            var result = data.d;
            console.log(result);

            if (result == false) {
                console.log("ERROR:Currency:editorSaveCurrency");
                typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
                errorOccurred("save", "currency", "editorSaveCurrency");
            } else {
                editorSaved();
                store.settings.hideCurrency = currency;
            }


        }).catch(function () {

            console.log("ERROR:Currency:editorSaveCurrency");
            typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
            errorOccurred("save", "currency", "editorSaveCurrency");

        }).then(function () {

        });

    }

</script>
                    


<div class="editor_panel_item" data-type="search">
    
    <div id="editor_searchbar_container">
        <p><strong>Search Bar</strong></p>
        <div class="checkbox_container">
            <input type="radio" id="editor_searchbar_enabled" name="editor_searchbar_enabled-disabled" onclick="searchbarChange();">
            <label for="editor_searchbar_enabled"><span>Enable Search Bar</span></label>
        </div>

        <div class="checkbox_container">
            <input type="radio" id="editor_searchbar_disabled" name="editor_searchbar_enabled-disabled" onclick="searchbarChange();">
            <label for="editor_searchbar_disabled"><span>Disable Search Bar</span></label>
        </div>
    </div>

    <div class="editor_info_panel margint40" data-type="translations">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title"><i class="fa fa-language" aria-hidden="true"></i>Edit Labels</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-down" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_details_tokens_list"></div>
        </div>
    </div>

    <div class="editor_info_panel margint20" data-type="info">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title">Info</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-up" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <p>The Search Bar allows your customers to search for products on your store.</p>
            <p>When a customer enters a word or phrase into the search bar, we'll automatically try to match that to products based on:</p>
            <ul>
                <li>Product Name</li>
                <li>Product Description</li>
                <li>Product Search Tags</li>
            </ul>
        </div>
    </div>

</div>

<script>

    var buildSearchPanelLoaded = false;
    function buildSearchPanel() {

        if (buildSearchPanelLoaded == false) {

            if (store.settings.hideSearch == null || store.settings.hideSearch == false) {
                document.getElementById("editor_searchbar_enabled").checked = true;
            } else {
                document.getElementById("editor_searchbar_disabled").checked = true;
            }

            buildSearchPanelLoaded = true;
            document.querySelector(".editor_panel_item[data-type='search']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

        } else {
            document.querySelector(".editor_panel_item[data-type='search']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");
        }

    }

    function searchbarChange() {

        document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");

        var visible = document.getElementById("editor_searchbar_enabled").checked;

        var updateIframeData = {
            "action": "UPDATE_SEARCH",
            "info": visible
        }

        updateIframeData = JSON.stringify(updateIframeData);

        window.frames[0].window.postMessage(updateIframeData, "*");

        showIframeLoader();

    }

    function cancelSearch() {

        var visible = false;

        var searchObj = store.settings.hideSearch;
        if (searchObj == null || searchObj == false) {
            visible = true;
        }

        var updateIframeData = {
            "action": "UPDATE_SEARCH",
            "info": visible
        }

        updateIframeData = JSON.stringify(updateIframeData);

        window.frames[0].window.postMessage(updateIframeData, "*");

        showIframeLoader();

    }


    function saveSearch() {

        var search = document.getElementById("editor_searchbar_enabled").checked;
        console.log(search);
        if (search == true) {
            search = false;
        } else {
            search = true;
        }
        console.log(search)

        var data = {
            "storeId": storeId,
            "search": search
        }

        data = JSON.stringify(data);

        axiosPost("/services/editor/editor.svc/editorSaveSearch", data).then(function (data) {

            var result = data.d;
            console.log(result);

            if (result == false) {
                console.log("ERROR:Search:editorSaveSearch");
                typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
                errorOccurred("save", "search", "editorSaveSearch");
            } else {
                editorSaved();
                store.settings.hideSearch = search;
            }


        }).catch(function () {

            console.log("ERROR:Search:editorSaveSearch");
            typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
            errorOccurred("save", "search", "editorSaveSearch");

        }).then(function () {

        });

    }

</script>
                    


<div class="editor_panel_item" data-type="copyright">
    
    <p>You can only edit your Store Name part of the Copyright section.</p>
    <p>To manage and edit your store name, click the button below:</p>
    <a class="editor_main_button" onclick="openPanelToggle('store-name');">Manage Store Name</a>

    <div class="editor_info_panel margint40" data-type="translations">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title"><i class="fa fa-language" aria-hidden="true"></i>Edit Labels</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-down" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_details_tokens_list"></div>
        </div>
    </div>

</div>

<script>

    var buildCopyrightPanelLoaded = false;
    function buildCopyrightPanel() {

        if (buildCopyrightPanelLoaded == false) {

            buildCopyrightPanelLoaded = true;
            document.querySelector(".editor_panel_item[data-type='copyright']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

        } else {
            document.querySelector(".editor_panel_item[data-type='copyright']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");
        }

    }

</script>
                    

<style>
    #editor_category_container, #editor_category_tree, #editor_category_add_container{
        display: none;
    }

    #manage_categories_add_button{
        display: inline-flex;
        width: auto;
    }

    .manage_categories_add_label_highlight{
        color: #339EFF;
    }


    #editor_category_tree{
        position: relative;
    }

    #editor_category_tree::after{
        content: '';
        position: absolute;
        border-left: 1px dotted #339EFF;
        width: 1px;
        height: calc(100% - 34px);
        top: 25px;
        left: 4px;
    }

    #editor_category_tree_inner{
        padding-left: 20px;
    }

    .editor_category_item_group{
        width: 100%;
        position: relative;
    }

    .editor_category_item, #editor_category_tree_title{
        line-height: 25px;
        display: flex;
        flex-wrap: wrap;
        line-height: 25px;
        position: relative;
        width: calc(100% - 20px);
        min-width: 150px;
        word-break: break-word;
    }

    .editor_category_item::after{
        content: '';
        position: absolute;
        border-top: 1px dotted #339EFF;
        width: 15px;
        height: 1px;
        left: -15px;
        top: 12px;
    }

    .editor_category_item .editor_category_item{
        margin-left: 25px;
    }

    .editor_category_item .editor_category_item::before{
        content: '';
        position: absolute;
        border-left: 1px dotted #339EFF;
        height: 23px;
        width: 1px;
        left: -15px;
        top: -13px;
    }

    #editor_category_tree_title{
        font-weight: bold;
        padding: 0 5px;
        position: relative;
        left: -5px;
        border: 1px solid transparent;
        cursor: pointer;
        width: auto;
        display: inline-flex;
        z-index: 2;
    }

    .editor_category_item_name{
        font-weight: bold;
        cursor: move;
        padding: 0 5px;
        background-color: #FFF;
        border: 1px solid transparent;
        position: relative;
        z-index: 2;
    }

    .editor_category_item_name:hover{
        border-color: #ddd;
        background-color: #F5F5F7;
    }

    .editor_category_item[data-hidden="true"] .editor_category_item_name{
        font-weight: normal;
        font-style: italic;
        background-color: #f5f5f7;
        border-color: #f5f5f7;
    }

    .editor_category_item .editor_category_item_name.editor_category_item_selected{
        background-color: rgb(206 232 255);
        border-color: #339EFF;
    }

    #editor_category_tree_title.editor_category_item_selected{
        background-color: rgb(206 232 255);
        border-color: #339EFF;
    }

    .editor_category_item_name_wrapper{
        display: flex;
        flex-wrap: nowrap;
    }

    .editor_category_item_button{
        position: relative;
        top: 0px;
        color: #ddd;
        transition: 0.25s;
        margin-left: 5px;
        cursor: pointer;
        opacity: 0;
        visibility: hidden;
    }

    .editor_category_item_name_wrapper:hover .editor_category_item_button{
        opacity: 1;
        visibility: visible;
    }

    .editor_category_item_name_wrapper .editor_category_item_button:hover{
        color: #339eff;
    }

</style>

<div class="editor_panel_item" data-type="categories">

    <div id="editor_category_container">

        <div class="editor_product_loader" id="editor_product_loader-categories">
            <div class="lds-roller"><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div></div>
            <div id="editor_product_loader_text">Loading Categories...</div>
        </div>

        <div id="editor_category_add_container" class="editor_panel_nice_info paddingt10 margint0">

            <div class="input_container input_container_button">
                <label id="manage_categories_add_label" for="manage_categories_add">Add a new top level category</label>
                <input type="text" id="manage_categories_add" maxlength="60" placeholder="Add a Category">
                <a id="manage_categories_add_button" class="editor_main_button" onclick="addNewCategory();">Add</a>
                <div id="alert_add_new_category_name_exists" class="alert">A category with this name already exists</div>
                <div id="alert_add_new_category_name_empty" class="alert">Please enter a category</div>
            </div>

        </div>

        <div id="editor_category_tree" class="margint20">
            <div id="editor_category_tree_title" class="editor_category_item_selected" onclick="selectRootCategory();">Categories</div>
            <div id="editor_category_tree_inner"></div>
        </div>

    </div>

    <div class="editor_panel_nice_info margint40">
        <p>To manage and edit your categories in more detail, click the button below:</p>
        <a href="/manage_products_categories" class="editor_main_button" onclick="externalLinkIconAnimation(this);"><i class="fa fa-external-link" aria-hidden="true"></i>Manage Categories</a>
    </div>

    <div class="editor_info_panel margint40" data-type="translations">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title"><i class="fa fa-language" aria-hidden="true"></i>Edit Labels</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-down" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_details_tokens_list"></div>
        </div>
    </div>

    <div class="editor_info_panel margint20" data-type="info">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title">Info</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-up" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <p>This section allows you to add new categories and re-order them.</p>
            <p>Click and drag a category to move it.</p>
            <p>To edit a category, including adding a description, image, SEO and more, go to the Manage > Products > <a href="/manage_products_categories" class="link_color_primary">Categories</a> section.</p>
        </div>
    </div>

</div>

<script>

    var buildCategoriesPanelLoaded = false;
    function buildCategoriesPanel() {

        if (buildCategoriesPanelLoaded == false) {

            buildCategoriesPanelLoaded = true;
            document.querySelector(".editor_panel_item[data-type='categories']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

            getEditorCategories();

        } else {
            document.querySelector(".editor_panel_item[data-type='categories']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");
        }

    }

    var allCategories = [];
    var parentCategories = [];

    function getEditorCategories() {

        showById("editor_category_container");
        showById("editor_product_loader-categories");

        axiosGet("/services/Categories.svc/ListCategories?storeId=" + storeId).then(function (data) {

            var categories = data.d;
            allCategories = categories.categories;
            console.log(allCategories);

            allCategories.sort(function (a, b) {
                return a.sequence - b.sequence;
            });

            parentCategories = allCategories.filter(el => el.parent == "0");

            buildCategoryTree();

            showById("editor_category_tree");
            showById("editor_category_add_container");

        }).catch(function () {

            console.log("ERROR:Categories:GetCategories");
            typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
            errorOccurred("load", "categories", "GetCategories");

        }).then(function () {
            hideById("editor_product_loader-categories");
        });

    }

    function buildCategoryTree() {

        var categoryHtml = '';

        for (var i = 0; i < parentCategories.length; i++) {


            var subs = getCategorySubs(parentCategories[i].categoryid);

            var editCategoriesButton = "";
            if (storeId == 544973) {
                editCategoriesButton = '<div class="editor_category_item_button" onclick="editCategory(\'' + parentCategories[i].categoryid + '\');"><i class="fa fa-pencil" aria-hidden="true"></i></div>';
            }

            var item = '<div class="editor_category_item_group">';
                    item += '<div class="editor_category_item" title="' + parentCategories[i].name + '" data-hidden="' + parentCategories[i].hidden + '" data-id="' + parentCategories[i].categoryid + '" data-parent="0" data-name="' + parentCategories[i].name + '" data-sequence="' + parentCategories[i].sequence + '">';
                        item += '<div class="editor_category_item_name_wrapper">';
                            item += '<div class="editor_category_item_name" onclick="selectCategory(\'' + parentCategories[i].categoryid + '\');">' + parentCategories[i].name + '</div>';
                            item += editCategoriesButton;
                        item += '</div>';
                            item += subs;
                        item += '<div class="editor_category_item_group"></div>';
                    item += '</div>';
                item += '</div>';

            categoryHtml += item;
        }

        document.getElementById("editor_category_tree_inner").innerHTML = categoryHtml;


        makeCategoriesSortable();
    }

    function getCategorySubs(catId) {

        var subCategories = allCategories.filter(el => el.parent == catId);

        if (subCategories.length > 0) {

            var subcategoryHtml = '';

            for (var i = 0; i < subCategories.length; i++) {

                var subs = getCategorySubs(subCategories[i].categoryid);

                var name = subCategories[i].name;

                var editCategoriesButton = "";
                if (storeId == 544973) {
                    editCategoriesButton = '<div class="editor_category_item_button" onclick="editCategory(\'' + subCategories[i].categoryid + '\');"><i class="fa fa-pencil" aria-hidden="true"></i></div>';
                }

                var item = '<div class="editor_category_item_group">';
                        item += '<div class="editor_category_item" title="' + subCategories[i].name + '" data-hidden="' + subCategories[i].hidden + '" data-id="' + subCategories[i].categoryid + '" data-parent="' + catId + '" data-name="' + subCategories[i].name + '" data-sequence="' + subCategories[i].sequence + '">';
                            item += '<div class="editor_category_item_name_wrapper">';
                                item += '<div class="editor_category_item_name" onclick="selectCategory(\'' + subCategories[i].categoryid + '\');">' + name + '</div>';
                                item += editCategoriesButton;
                            item += '</div>';
                                item += subs;
                            item += '<div class="editor_category_item_group"></div>';
                        item += '</div>';
                item += '</div>';

                subcategoryHtml += item;

            }

            return subcategoryHtml;

        } else {
            return '';
        }

    }

    function makeCategoriesSortable() {

        var nestedSortables = [].slice.call(document.querySelectorAll('.editor_category_item_group'));

        for (var i = 0; i < nestedSortables.length; i++) {
            new Sortable(nestedSortables[i], {
                group: 'nested',
                animation: 150,
                fallbackOnBody: true,
                swapThreshold: 0.65,
                onSort: function (evt) {
                    document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");
                }
            });
        }

    }


    function selectCategory(categoryId) {

        if (document.querySelector(".editor_category_item_selected") != null) {
            document.querySelector(".editor_category_item_selected").classList.remove("editor_category_item_selected");
        }
        document.querySelector(".editor_category_item[data-id='" + categoryId + "'] .editor_category_item_name").classList.add("editor_category_item_selected");
        var name = document.querySelector(".editor_category_item[data-id='" + categoryId + "']").getAttribute("data-name");
        document.getElementById("manage_categories_add_label").innerHTML = "Add a new category into: <span class='manage_categories_add_label_highlight'>" + name + "</span>";

    }

    function selectRootCategory() {

        if (document.querySelector(".editor_category_item_selected") != null) {
            document.querySelector(".editor_category_item_selected").classList.remove("editor_category_item_selected");
        }
        document.querySelector("#editor_category_tree_title").classList.add("editor_category_item_selected");
        document.getElementById("manage_categories_add_label").innerText = "Add a new top level category";

    }


    function addNewCategory() {

        hideById("alert_add_new_category_name_exists", "alert_add_new_category_name_empty");

        var newCategoryName = document.getElementById("manage_categories_add").value.trim();

        if (newCategoryName.length == 0) {
            showById("alert_add_new_category_name_empty");
        } else {

            var categoryExists = false;
            var allCategoryItems = document.querySelectorAll(".editor_category_item");

            for (var i = 0; i < allCategoryItems.length; i++) {

                var name = allCategoryItems[i].getAttribute("data-name").trim().toLowerCase();
                if (name == newCategoryName.toLowerCase()) {
                    categoryExists = true;
                    showById("alert_add_new_category_name_exists");
                }

            }

            if (categoryExists == false) {

                var where = document.querySelector(".editor_category_item_selected");

                var newId = guid();

                var item = '<div class="editor_category_item_group">';
                        item += '<div class="editor_category_item" data-hidden="false" data-new="true" data-id="' + newId + '" data-name="' + newCategoryName + '">';
                            item += '<div class="editor_category_item_name" onclick="selectCategory(\'' + newId + '\');">' + newCategoryName + '</div>';
                            item += '<div class="editor_category_item_group"></div>';
                        item += '</div>';
                    item += '</div>';



                if (where.getAttribute("id") == "editor_category_tree_title") {
                    document.getElementById("editor_category_tree_inner").innerHTML += item;
                } else {
                    var whereId = where.parentElement.getAttribute("data-id");
                    document.querySelector(".editor_category_item[data-id='" + whereId + "']").innerHTML += item;
                }

                document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");

                document.getElementById("manage_categories_add").value = "";

                makeCategoriesSortable();

            }

        }

    }


    function editorCategoriesSort() {

        var allCategoryItems = document.querySelectorAll(".editor_category_item");

        for (var i = 0; i < allCategoryItems.length; i++) {

            // data-parent
            if (allCategoryItems[i].parentElement.parentElement.getAttribute("id") == "editor_category_tree_inner") {
                allCategoryItems[i].setAttribute("data-parent", "0");
            } else {
                allCategoryItems[i].setAttribute("data-parent", allCategoryItems[i].parentElement.parentElement.getAttribute("data-id"));
            }

            // data-sequence
            if (allCategoryItems[i].parentElement.parentElement.getAttribute("id") != "editor_category_tree_inner") {
                var sequence = $(allCategoryItems[i]).index();
                allCategoryItems[i].setAttribute("data-sequence", sequence);
            }

        }

        var allCategoryParentItems = document.querySelectorAll(".editor_category_item[data-parent='0']");

        for (var i = 0; i < allCategoryParentItems.length; i++) {

            allCategoryParentItems[i].setAttribute("data-sequence", i);

        }

        console.log(allCategoryItems.length);

    }

    function saveCategories() {

        editorCategoriesSort();

        var saveCategories = [];

        var allCategoryItems = document.querySelectorAll(".editor_category_item");

        for (var i = 0; i < allCategoryItems.length; i++) {

            var name = allCategoryItems[i].getAttribute("data-name").trim();

            var hidden = false;
            if (allCategoryItems[i].getAttribute("data-hidden") == "true") {
                hidden = true;
            }

            var isNew = false;
            if (allCategoryItems[i].getAttribute("data-new") == "true") {
                isNew = true;
            }

            var saveCategoryItem = {
                "name": name,
                "categoryid": allCategoryItems[i].getAttribute("data-id"),
                "parent": allCategoryItems[i].getAttribute("data-parent"),
                "hidden": hidden,
                "sequence": allCategoryItems[i].getAttribute("data-sequence"),
                "add": isNew
            }

            saveCategories.push(saveCategoryItem);

        }

        console.log(saveCategories);


        var data = {
            "storeId": storeId,
            "categories": saveCategories
        }

        console.log(data);
        data = JSON.stringify(data);

        axiosPost('/services/Categories.svc/UpdateCategories', data).then(function (data) {

            var result = data.d;

            if (result == true) {
                editorSaved();
            } else {
                console.log("ERROR:ManageCategories:UpdateCategories");
                typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
                errorOccurred("save", "categories", "UpdateCategories");
            }


        }).catch(function () {

            console.log("ERROR:ManageCategories:UpdateCategories");
            typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
            errorOccurred("save", "categories", "UpdateCategories");

        }).then(function () {

        });

    }

    function editCategory(categoryId) {

        currentlyEditingCategoryId = categoryId;
        openPanelToggle("edit-categories");

    }

</script>
                    

<style>

    #editor_product_loader-categories-edit{
        display: block;
    }

    #category_edit_loaded, #editor_category_edit_page_hidden{
        display: none;
    }

    #editor_category_edit_page_info{
        padding: 10px;
        background-color: #f5f5f7;
    }

    #editor_image-category{
        max-width: 100%;
        max-height: 100px;
        min-height: 50px;
    }

    #category_add_new_image_button i{
        margin-right: 5px;
        position: relative;
        top: 1px;
        font-size: 1rem;
    }

</style>

<div class="editor_panel_item" data-type="edit-categories">

    <div class="editor_product_loader" id="editor_product_loader-categories-edit">
        <div class="lds-roller"><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div></div>
        <div id="editor_product_loader_text">Loading Category...</div>
    </div>

    <div id="category_edit_loaded">

        <div id="editor_category_edit_page_hidden" class="bootstrap_warning marginb10">Category currently set to hidden.</div>

        <div class="input_container">
            <label for="editor_category_edit_page_name">Name</label>
            <input type="text" id="editor_category_edit_page_name" placeholder="Category Name..." />
            <div id="alert_editor_category_edit_page_name" class="alert">Category Name must be at least 1 character</div>
        </div>

        <div class="align_center">
            <div id="editor_image_container-category" class="editor_image_container">
                <div class="editor_image_container_bg_mode" data-type="category" onclick="editorImageChangeBgMode('category')"><i class="fa fa-moon-o" aria-hidden="true"></i></div>
                <div class="editor_image_inner_container">
                    <div id="editor_image-category_container"></div>
                    <div class="editor_image_add_button" onclick="addNewCategoryImage();">
                        <div class="editor_image_add_button_icon"><i class="fa fa-plus" aria-hidden="true"></i></div>
                        <span class="editor_image_add_button_text">Change</span>
                    </div>
                    <div class="editor_image_loading">
                        <div class="editor_image_loading_icon"><i class="fa fa-spinner fa-spin" aria-hidden="true"></i></div>
                        <span class="editor_image_loading_text">Loading</span>
                    </div>
                </div>
            </div>
            <a id="category_add_new_image_button" class="editor_main_button" onclick="addNewCategoryImage();">Add New Category Image</a>
        </div>

        <div id="editor_category_edit_page_info" class="editor_panel_nice_info">
            <div class="editor_panel_nice_info_item"><strong class="marginr10">Category ID:</strong><span id="editor_category_edit_page_info_id" data-currency="true"></span></div>
        </div>

        <div class="input_container margint20">
            <label for="editor_category_edit_page_description">Description</label>
            <textarea id="editor_category_edit_page_description"></textarea>
        </div>

    </div>


</div>

<script>

    var currentlyEditingCategoryId = "";
    var buildEditCategoriesPanelLoaded = false;
    function buildEditCategoriesPanel() {

        if (buildEditCategoriesPanelLoaded == false) {

            buildEditCategoriesPanelLoaded = true;
            document.querySelector(".editor_panel_item[data-type='edit-categories']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

            showById("editor_product_loader-categories-edit");
            hideById("category_edit_loaded");

            var tinymceMenuBarItems = "file edit view insert format table";
            var tinymceToolbarsBool = false;
            if (typeof packageTypeId !== "undefined") {
                if (packageTypeId != 0) {
                    tinymceMenuBarItems = "file edit view insert format tools";
                }
            }
            if (tinymceToolbarsBool == false && !checkUrlIsDomain(storeUrl)) {
                tinymceMenuBarItems = "file edit view insert format tools";
            }

            tinymce.init({
                selector: '#editor_category_edit_page_description',
                contextmenu: "",
                height: 600,
                plugins: ["advlist autolink lists link image charmap print preview anchor",
                    "searchreplace visualblocks code fullscreen",
                    "insertdatetime media table paste"
                ],
                fontsize_formats: "8px 10px 12px 14px 18px 24px 36px",
                toolbar1: "undo redo bold italic align bullist numlist link image media forecolor fontsizeselect",
                menubar: tinymceMenuBarItems,
                image_advtab: true,
                statusbar: false,
                encoding: "xml",
                force_br_newlines: false,
                force_p_newlines: false,
                forced_root_block: '',
                valid_children: "+body[style],+body[link]",
                verify_html: false,
                file_picker_callback: function (callback, value, meta) {

                    
                },
                init_instance_callback: function (editor) {
                    //buildPagesEditGetContent();
                    getEditorCategory();
                },
                setup: function (ed) {
                    ed.on('change keydown paste input', function (e) {
                        //productPageEditTyping();
                    });
                }
            });

            

        } else {
            document.querySelector(".editor_panel_item[data-type='edit-categories']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");
        }

    }

    var theCategory = null;
    function getEditorCategory() {

        axiosGet("/services/Categories.svc/GetCategory?storeId=" + storeId + "&categoryID=" + currentlyEditingCategoryId).then(function (data) {

            theCategory = data.d;
            console.log(theCategory);

            if (theCategory != null) {

                buildCategoryEditPage();

            }

        }).catch(function () {

            hideById("editor_product_loader-categories-edit");

        }).then(function () {

            hideById("editor_product_loader-categories-edit");

        });

    }

    function buildCategoryEditPage() {

        document.getElementById("editor_category_edit_page_name").value = theCategory.name;
        document.getElementById("editor_category_edit_page_info_id").innerText = theCategory.categoryid;

        if (theCategory.hidden == true) {
            showById("editor_category_edit_page_hidden");
        }

        if (theCategory.imageUrl != null && theCategory.imageUrl != null) {

            document.getElementById("editor_image-category_container").innerHTML = "<img id='editor_image-category' class='editor_image' src='https://imgapi.fw1.biz/origin/" + storeId + "/" + theCategory.imageUrl + "/' />";
            document.querySelector("#editor_image_container-category .editor_image_add_button_text").innerText = "Change";
            document.getElementById("category_add_new_image_button").innerText = "Change Category Image";

        } else {

            document.getElementById("editor_image_container-category").classList.add("editor_image_container_no_image");
            document.querySelector("#editor_image_container-category .editor_image_add_button_text").innerText = "Add";
            document.getElementById("category_add_new_image_button").innerText = "Add New Category Image";

        }

        tinymce.get("editor_category_edit_page_description").setContent(theCategory.desc);

        showById("category_edit_loaded");
    }

    // Add New Image
    function addNewCategoryImage() {
        document.getElementById("editor_overlay").classList.add("editor_overlay_active");
        openImageGallery(1, 'categoryAdd');
    }

</script>
                    

<style>

    #editor_cart_color_container{
        margin-top: 20px;
    }

    #basket_contrast_warning{
        margin-top: 20px;
        display: none;
        font-weight: bold;
    }

    #basket_contrast_warning i{
        margin-right: 5px;
        position: relative;
        top: 2px;
    }

</style>

<div class="editor_panel_item" data-type="cart">
    
    <p><strong>Cart/ Checkout</strong></p>
    <div class="editor_cart_hide_container marginb20">
        <div class="checkbox_container">
            <input type="radio" id="theme_editor_cart_hide_enabled" name="theme_editor_cart_hide" checked onchange="enableCartSave();" />
            <label for="theme_editor_cart_hide_enabled"><span>Cart Enabled</span></label>
        </div>
        <div class="checkbox_container">
            <input type="radio" id="theme_editor_cart_hide_disabled" name="theme_editor_cart_hide" onchange="enableCartSave();" />
            <label for="theme_editor_cart_hide_disabled"><span>Cart Disabled</span></label>
        </div>
    </div>

    <p><strong>Cart Theme</strong></p>
    <div class="editor_cart_theme_container">
        <div class="checkbox_container">
            <input type="radio" id="theme_editor_cart_theme_light" data-theme="0" name="theme_editor_cart_theme" checked onchange="checkButtonContrast(); enableCartSave();" />
            <label for="theme_editor_cart_theme_light"><span>Light</span></label>
        </div>
        <div class="checkbox_container">
            <input type="radio" id="theme_editor_cart_theme_dark" data-theme="1" name="theme_editor_cart_theme" onchange="checkButtonContrast(); enableCartSave();" />
            <label for="theme_editor_cart_theme_dark"><span>Dark</span></label>
        </div>
    </div>

    <div id="editor_cart_color_container">
        <p><strong>Cart Primary Color</strong></p>
        <input value="#20b7e6" id="editor_cart_color" />
    </div>

    <div id="basket_contrast_warning"><i class="fa fa-exclamation-triangle color_yellow" aria-hidden="true"></i><span>Warning<br /><br />Your cart primary color has a low contrast against your cart theme.<br /><br />We would recommend making your cart primary color <span id="basket_contrast_warning_which">darker</span> to ensure your text and buttons are visibile on your cart.</span></div>
    
    <div class="margint30">
        <a class="editor_main_button" onclick="manageAllCartSettings();"><i class="fa fa-external-link" aria-hidden="true"></i>Manage All Cart Settings</a>
    </div>

</div>

<script>

    function manageAllCartSettings() {
        location.href = "/manage_pages_edit_basket.aspx?pageid=" + currentPageId;
    }

    var buildCartPanelLoaded = false;
    function buildCartPanel() {

        if (buildCartPanelLoaded == false) {

            loadEditorIframe(currentPageId, currentPageTitle);

            if (store.settings.checkoutTheme != null && store.settings.checkoutTheme == "dark") {
                document.getElementById("theme_editor_cart_theme_dark").checked = true;
            }

            if (store.settings.checkoutColor != null) {
                document.getElementById("editor_cart_color").value = store.settings.checkoutColor;
            }

            if (store.settings.hideCheckoutFeatures == null || store.settings.hideCheckoutFeatures == false) {
                document.getElementById("theme_editor_cart_hide_enabled").checked = true;
            } else {
                document.getElementById("theme_editor_cart_hide_disabled").checked = true;
            }

            $("#editor_cart_color").spectrum({
                showInitial: true,
                showInput: true,
                show: function () {
                    $(".sp-button-container button").addClass("button_disabled");
                },
                move: function () {
                    $(".sp-button-container button").removeClass("button_disabled");
                },
                change: function () {
                    checkButtonContrast();
                    enableCartSave();
                }
            });

            checkButtonContrast();

            buildCartPanelLoaded = true;
            document.querySelector(".editor_panel_item[data-type='cart']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

        } else {
            document.querySelector(".editor_panel_item[data-type='cart']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");
        }

    }

    function checkButtonContrast() {

        var cartTheme = document.querySelector("[name='theme_editor_cart_theme']:checked").getAttribute("id");
        var buttonColor = $("#editor_cart_color").spectrum("get");
        buttonColor = buttonColor.toRgb();

        if (cartTheme == "theme_editor_cart_theme_light") {
            var whatContrast = contrast([buttonColor.r, buttonColor.g, buttonColor.b], [255, 255, 255]);
        } else {
            var whatContrast = contrast([buttonColor.r, buttonColor.g, buttonColor.b], [0, 0, 0]);
        }

        if (whatContrast < 2) {
            document.getElementById("basket_contrast_warning").style.display = "flex";
            if (cartTheme == "theme_editor_cart_theme_light") {
                document.getElementById("basket_contrast_warning_which").innerText = "darker";
            } else {
                document.getElementById("basket_contrast_warning_which").innerText = "lighter";
            }
        } else {
            hideById("basket_contrast_warning");
        }
    }

    function luminance(r, g, b) {
        var a = [r, g, b].map(function (v) {
            v /= 255;
            return v <= 0.03928
                ? v / 12.92
                : Math.pow((v + 0.055) / 1.055, 2.4);
        });
        return a[0] * 0.2126 + a[1] * 0.7152 + a[2] * 0.0722;
    }
    function contrast(rgb1, rgb2) {
        var lum1 = luminance(rgb1[0], rgb1[1], rgb1[2]);
        var lum2 = luminance(rgb2[0], rgb2[1], rgb2[2]);
        var brightest = Math.max(lum1, lum2);
        var darkest = Math.min(lum1, lum2);
        return (brightest + 0.05)
            / (darkest + 0.05);
    }

    function enableCartSave() {
        document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");
    }


    function saveCart() {

        console.log("Save Cart Colors")

        var cartSettings = {
            "checkoutTheme": $('input[name="theme_editor_cart_theme"]:checked').attr("data-theme"),
            "color": $("#editor_cart_color").val().replace('#', '')
        }

        var hideCheckoutFeatures = false;
        if (document.getElementById("theme_editor_cart_hide_disabled").checked == true) {
            hideCheckoutFeatures = true;
        }

        console.log(cartSettings);

        var jsonObj = JSON.stringify({
            "storeId": storeId,
            "settings": cartSettings,
            "hideCheckoutFeatures": hideCheckoutFeatures
        })

        axiosPost('/services/editor/editor.svc/editorSaveCartOptions', jsonObj).then(function (data) {

            editorSaved();
            document.getElementById("theme_editor_iframe").setAttribute("src", "https://shop" + storeId + ".fwspayments.com/cart/preview");

        }).catch(function (e) {
            
        }).then(function () {

        });

    }

</script>
                    

<style>

    #translate_page_container{
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
    }

    .translate_page_item{
        margin-bottom: 20px;
        border: 1px solid #ddd;
        padding-left: 20px;
        background-color: #F5F5F7;
        padding: 10px 10px 0 10px;
        border-left: 3px solid #339eff;
        min-width: 300px;
        max-width: 300px;
    }

    .translate_page_item.translate_page_item_highlight{
        border-left-color: #5DC548;
    }

    .translate_page_item_input_container{
        display: flex;
        flex-wrap: nowrap;
        width: 100%;
    }

    .translate_page_item_input_container img{
        width: 20px;
        margin-right: 5px;
        position: relative;
        top: 15px;
    }

    #no_page_search_translations, #page_translation_zero_available{
        display: none;
    }

</style>

<div class="editor_panel_item" data-type="translate-page">

    <div id="page_translation_zero_available">
        <p>No available translations on the current page.</p>
    </div>

    <div id="page_translation_outer_container">
        <div id="page_translation_search_input_container" class="input_container margint30">
            <div class="input_container_password">
                <input id="page_translation_search_input" type="text" placeholder="Search Translations..." onchange="pageTranslationSearch();" onkeyup="pageTranslationSearch();" onpaste="pageTranslationSearch();" />
                <div class="input_container_password_reveal"><i id="page_translation_search_icon" class="fa fa-search" aria-hidden="true"></i></div>
            </div>
        </div>
        <div id="translate_page_container"></div>
        <div id="no_page_search_translations"><strong>Your search did not match any of the current translation tokens.</strong></div>
    </div>
</div>

<script>

    var loadingTranslatePageFromButton = false;
    var pageTranslationSelected = "";

    function openTranslatePagePanelFromMenu() {
        loadingTranslatePageFromButton = true;
        openPanelToggle('translate-page')
    }

    var buildTranslatePagePanelLoaded = false;
    function buildTranslatePagePanel() {

        if (buildTranslatePagePanelLoaded == false) {

            axiosGet("/services/design/LanguagePacks.svc/GetLanguagePacks?shopkeeper=" + storeId).then(function (data) {

                languagePacks = data.d || data;
                console.log(languagePacks);

                console.log("herehereher");

                if (loadingTranslatePageFromButton == true) {
                    getPageTranslateTokens();
                } else {
                    buildPageTranslateContent();
                }
                

                buildTranslatePagePanelLoaded = true;
                document.querySelector(".editor_panel_item[data-type='translate-page']").classList.add("editor_panel_item_active");
                hideById("editor_panel_loader");

            }).catch(function (e) {

                console.log("ERROR:TranslatePage:GetLanguagePacks");
                typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
                errorOccurred("load", "translate-page", "GetLanguagePacks");

            }).then(function () {

            });

        } else {
            document.querySelector(".editor_panel_item[data-type='translate-page']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");
        }

    }


    function getPageTranslateTokens() {

        var updateIframeData = {
            "action": "GET_PAGE_TOKENS"
        }

        updateIframeData = JSON.stringify(updateIframeData);

        window.frames[0].window.postMessage(updateIframeData, "*");

    }
    
    function buildPageTranslateContent() {

        editingTranslationsIframe();

        var allItems = '';

        for (var i = 0; i < currentPageTranslateTokens.length; i++) {

            var theInputs = '';

            for (var c = 0; c < languagePacks.userLanguagePacks.packs.length; c++) {

                var foundTranslation = "";
                languagePacks.userLanguagePacks.packs[c].tokens.filter(function (obj) {
                    if (obj.token == currentPageTranslateTokens[i]) {

                        if (obj.translation != null && obj.translation != "null") {
                            foundTranslation = obj.translation;
                        }

                    }
                });

                var flag = '';
                if (languagePacks.userLanguagePacks.packs.length > 1) {
                    flag += '<div class="translate_page_item_input_container_image" title="' + languagePacks.userLanguagePacks.packs[c].description + '">'
                        flag += '<img src="' + languagePacks.userLanguagePacks.packs[c].url + '" alt="' + languagePacks.userLanguagePacks.packs[c].description + '" />';
                    flag += '</div>';
                }

                var inputItem = '<div class="input_container translate_page_item_input_container">';
                        inputItem += flag;
                        inputItem += '<input type="text" class="translate_page_item_input" data-id="' + languagePacks.userLanguagePacks.packs[c].id + '" data-token="' + currentPageTranslateTokens[i] + '" placeholder="' + currentPageTranslateTokens[i] + '" value="' + foundTranslation + '" onchange="translatePageChange();" />';
                    inputItem += '</div>';

                theInputs += inputItem;

            }


            var item = '<div class="translate_page_item" data-token="' + currentPageTranslateTokens[i] + '">';
                    item += '<div class="strong marginb10">' + currentPageTranslateTokens[i] + '</div>';
                    item += theInputs;
                item += '</div>';

            allItems += item;

        }

        document.querySelector("#translate_page_container").innerHTML = allItems;

        if (loadingTranslatePageFromButton == false) {
            
            document.querySelector(".translate_page_item[data-token='" + pageTranslationSelected + "']").classList.add("translate_page_item_highlight");

            setTimeout(function () {
                var tokenSectionTop = document.querySelector(".translate_page_item[data-token='" + pageTranslationSelected + "']").offsetTop;
                console.log(tokenSectionTop)
                var tokenContainer = document.querySelector(".editor_panel_item_active");

                tokenSectionTop = (tokenSectionTop - 70);

                tokenContainer.scroll({
                    top: tokenSectionTop,
                    behavior: "smooth"
                });

            }, 500);

        }

    }

    function translatePageChange() {
        document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");
    }

    function saveTranslatePage() {


        var packs = new Array();

        for (var i = 0; i < languagePacks.userLanguagePacks.packs.length; i++) {

            var packId = languagePacks.userLanguagePacks.packs[i].id;

            var inputs = document.querySelectorAll(".translate_page_item_input[data-id='" + packId + "']");

            var translations = new Array();
            for (var c = 0; c < inputs.length; c++) {

                var newTranslationObj = {
                    "token": inputs[c].getAttribute("data-token"),
                    "translation": inputs[c].value.trim()
                }

                translations.push(newTranslationObj);

            }

            var languagePackData = {
                "packid": packId,
                "translations": translations,
                "isDefault": languagePacks.userLanguagePacks.packs[i].defaultLanguage
            }

            packs.push(languagePackData);

        }

        var data = {
            "storeId": storeId,
            "packs": packs
        }

        console.log(data);

        data = JSON.stringify(data);

        axiosPost("/services/editor/editor.svc/editorSaveMultipleLanguagePack", data).then(function (data) {

            var result = data.d;
            console.log(result);

            if (result == "") {
                editorSaved();
            } else {
                console.log("ERROR:TranslatePage:editorSaveMultipleLanguagePack");
                typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
                errorOccurred("save", "translate-page", "editorSaveMultipleLanguagePack");
            }

        }).catch(function () {

            console.log("ERROR:TranslatePage:editorSaveMultipleLanguagePack");
            typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
            errorOccurred("save", "translate-page", "editorSaveMultipleLanguagePack");

        }).then(function () {


        });

    }

    // Search Translations 
    function pageTranslationSearch() {

        document.getElementById("page_translation_search_icon").classList.add("fa-spinner", "fa-spin");
        document.getElementById("page_translation_search_icon").classList.remove("fa-search");

        pageTranslationSearchPreviewDelay(function () {

            var pageTranslationSearch = document.getElementById("page_translation_search_input").value.trim();
            if (pageTranslationSearch.length > 0) {
                pageTranslationSearchFly();
            } else {
                document.getElementById("page_translation_search_icon").classList.remove("fa-spinner", "fa-spin");
                document.getElementById("page_translation_search_icon").classList.add("fa-search");
                $(".translate_page_item").show();
            }

        }, 500);

    }

    var pageTranslationSearchPreviewDelay = (function () {
        var timer = 0;
        return function (callback, ms) {
            clearTimeout(timer);
            timer = setTimeout(callback, ms);
        };
    })();

    function pageTranslationSearchFly() {

        var pageTranslationSearch = document.getElementById("page_translation_search_input").value.trim();
        pageTranslationSearch = pageTranslationSearch.toLowerCase();

        $(".translate_page_item").hide();

        var languageFound = 0;

        var languageInput = document.querySelectorAll(".translate_page_item_input");
        for (var i = 0; i < languageInput.length; i++) {

            var languageId = languageInput[i].getAttribute("data-token");
            languageId = languageId.toLowerCase();
            var languageValue = languageInput[i].value;
            languageValue = languageValue.toLowerCase();

            if (languageId.match(pageTranslationSearch) || languageValue.match(pageTranslationSearch)) {
                $(languageInput[i]).parent().parent().show();
                languageFound++;
            }

        }


        if (languageFound == 0) {
            showById("no_page_search_translations");
        } else {
            hideById("no_page_search_translations");
        }

        setTimeout(function () {
            document.getElementById("page_translation_search_icon").classList.remove("fa-spinner", "fa-spin");
            document.getElementById("page_translation_search_icon").classList.add("fa-search");
        }, 500);

    }

</script>
                    

<style>

    #editor_product_page_zero, #editor_product_page_found, #editor_product_page_found_hidden{
        display: none;
    }

    #editor_product_page_found_searchbar_container{
        border-bottom: 1px dashed #ddd;
        padding-bottom: 10px;
        margin-bottom: 10px;
    }

    #editor_product_page_found_info{
        padding: 10px;
        background-color: #f5f5f7;
    }

</style>

<div class="editor_panel_item" data-type="product-page">

    <div id="editor_product_page_zero" class="editor_panel_nice_info margint0">
        <p>You currently have zero products.</p>
        <p>Before you can edit a product in the Editor, you first need to add one.</p>
        <a class="editor_main_button" href="/manage_products?prodNew=true"><i class="fa fa-external-link" aria-hidden="true"></i>Add a Product</a>
    </div>

    <div id="editor_product_page_found">
       
        <div id="editor_product_page_found_searchbar_container">
            <div class="quicksearch_results_container" style="float: none !important;">
                <div class="input_container">
                    <input id="txtQuickSearch" type="search" placeholder="Search products..." autocomplete="off" />                         
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
        </div>

        <div id="editor_product_page_found_hidden" class="bootstrap_warning marginb10">Product currently set to hidden.</div>

        <div class="input_container">
            <label for="editor_product_page_found_name">Name</label>
            <input type="text" id="editor_product_page_found_name" placeholder="Product Name..." onchange="productPageEditTyping();" onpaste="productPageEditTyping();" onkeyup="productPageEditTyping();" />
            <div id="alert_editor_product_page_name" class="alert">Product Name must be at least 1 character</div>
        </div>

        <div id="editor_product_page_found_info" class="editor_panel_nice_info">
            <div class="editor_panel_nice_info_item"><strong class="marginr10">Base Price:</strong><span id="editor_product_page_found_price" data-currency="true"></span></div>
            <div class="editor_panel_nice_info_item"><strong class="marginr10">SKU:</strong><span id="editor_product_page_found_code"></span></div>
        </div>

        <div class="input_container margint20">
            <label for="editor_product_page_found_description">Description</label>
            <textarea id="editor_product_page_found_description"></textarea>
        </div>

        <div class="editor_panel_nice_info">
            <p>To edit all aspects of this product, click the button below:</p>
            <a id="editor_product_page_found_button" class="editor_main_button" onclick="externalLinkIconAnimation(this);"><i class="fa fa-external-link" aria-hidden="true"></i>Edit Product</a>
        </div>

    </div>

</div>

<script>

    var buildProductPagePanelLoaded = false;
    var productPageProductId = "";
    var defaultProductPageProductId;
    var defaultProductPageProductCode;
    var defaultProductPageName = "";
    var defaultProductPageContent = "";

    var buildProductPagePanelFromOtherId = "";

    function buildProductPagePanelFromOther(id) {

        buildProductPagePanelLoaded = false;

        result.pages.filter(function (obj) {
            if (obj.type == 12) {
                currentPageId = obj.id;
                currentPageTitle = obj.title;
            }
        });

        buildProductPagePanelFromOtherId = id;
        openPanelToggle("product-page");

    }


    function buildProductPagePanel() {

        if (buildProductPagePanelLoaded == false) {

            var tinymceMenuBarItems = "file edit view insert format table";
            var tinymceToolbarsBool = false;
            if (typeof packageTypeId !== "undefined") {
                if (packageTypeId != 0) {
                    tinymceMenuBarItems = "file edit view insert format tools";
                }
            }
            if (tinymceToolbarsBool == false && !checkUrlIsDomain(storeUrl)) {
                tinymceMenuBarItems = "file edit view insert format tools";
            }

            tinymce.init({
                selector: '#editor_product_page_found_description',
                contextmenu: "",
                height: 600,
                plugins: ["advlist autolink lists link image charmap print preview anchor",
                    "searchreplace visualblocks code fullscreen",
                    "insertdatetime media table paste"
                ],
                fontsize_formats: "8px 10px 12px 14px 18px 24px 36px",
                toolbar1: "undo redo bold italic align bullist numlist link image media forecolor fontsizeselect",
                menubar: tinymceMenuBarItems,
                image_advtab: true,
                statusbar: false,
                encoding: "xml",
                force_br_newlines: false,
                force_p_newlines: false,
                forced_root_block: '',
                valid_children: "+body[style],+body[link]",
                verify_html: false,
                file_picker_callback: function (callback, value, meta) {

                    /*openImageGallery(1, 'editorTextareaPages');
                    $('.tox-dialog, .tox-silver-sink').hide();
                    document.getElementById("editor_overlay").classList.add("editor_overlay_active");

                    $(".uc_imageGallery_close_modal_button").click(function () {
                        if (imageGalleryType != undefined) {
                            if (imageGalleryType == "editorTextareaPages") {
                                $('.tox-dialog, .tox-silver-sink').show();
                                document.getElementById("editor_overlay").classList.remove("editor_overlay_active");
                            }
                        }
                    });*/
                },
                init_instance_callback: function (editor) {
                    //buildPagesEditGetContent();
                },
                setup: function (ed) {
                    ed.on('change keydown paste input', function (e) {
                        productPageEditTyping();
                    });
                }
            });


            if (buildProductPagePanelFromOtherId == "") {
                axiosGet('/services/editor/editor.svc/editorGetNewProducts?storeId=' + storeId + '&showMax=1').then(function (data) {
                    trace("editorGetNewProducts:success");
                    var newProduct = data.d;
                    console.log(newProduct);

                    if (newProduct != null) {

                        if (newProduct.count == 0 || newProduct.found == 0) {
                            showById("editor_product_page_zero");
                        } else {

                            var product = newProduct.products[0];
                            defaultProductPageProduct = product;
                            defaultProductPageProductCode = product.sku;
                            productPageProductId = product.id;
                            loadEditorIframe(currentPageId, currentPageTitle);

                            buildProductPageEditor(product);
                        }

                    } else {
                        // Need to show a message stating that they first need to add one
                        showById("editor_product_page_zero");
                    }

                }).catch(function (e) {

                }).then(function () {
                    buildProductPagePanelLoaded = true;
                    document.querySelector(".editor_panel_item[data-type='product-page']").classList.add("editor_panel_item_active");
                    hideById("editor_panel_loader");
                });
            } else {
                getAnotherProductPageEditor(buildProductPagePanelFromOtherId);
            }

            

        } else {
            document.querySelector(".editor_panel_item[data-type='product-page']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");
        }

    }

    function getAnotherProductPageEditor(id) {

        buildProductPagePanelFromOtherId = id;

        document.querySelector(".editor_panel_item[data-type='product-page']").classList.remove("editor_panel_item_active");
        showById("editor_panel_loader");

        console.log("getAnotherProductPageEditor");
        console.log(id);

        document.getElementById("txtQuickSearch").value = "";
        document.getElementById("quicksearch_results").classList.remove("quicksearch_results_active");

        var fields = ["name", "images", "category", "price", "code", "hidden"];

        productPageProductId = id;
        loadEditorIframe(currentPageId, currentPageTitle);

        axiosGet('./services/manage/products/edit.svc/GetProductById?storeId=' + storeId + '&productId=' + id + "&fields=" + JSON.stringify(fields)).then(function (data) {
            theProduct = data.d;
            theProduct = JSON.parse(theProduct);
            console.log(theProduct);

            defaultProductPageProductCode = theProduct.code;

            buildProductPageEditor(theProduct);

        }).catch(function () {

        }).then(function () {
            document.querySelector(".editor_panel_item[data-type='product-page']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");
        });
    }

    function buildProductPageEditor(product) {

        if (product.hidden == true) {
            showById("editor_product_page_found_hidden");
        } else {
            hideById("editor_product_page_found_hidden");
        }

        document.getElementById("editor_product_page_found_name").value = product.name;
        defaultProductPageName = product.name;

        var price = product.base_price;
        if (price == null) {
            price = product.price;
        }

        document.getElementById("editor_product_page_found_price").innerText = price;
        UpdateEditorPriceStrings("#editor_product_page_found_price");

        var sku = product.code;
        if (sku == null) {
            sku = product.sku;
        }

        document.getElementById("editor_product_page_found_code").innerText = sku;

        axiosGet('./services/Products.svc/GetDescription?storeId=' + storeId + '&productId=' + product.id).then(function (data) {
            var description = data.d;

            console.log(description);
            defaultProductPageContent = description;
            tinymce.get("editor_product_page_found_description").setContent(description);

        }).catch(function () {
            console.log("fail")
        }).then(function () {
            showById("editor_product_page_found");
        });

        document.getElementById("editor_product_page_found_button").setAttribute("href", "/manage_products_editv2.aspx?prodid=" + product.id);

    }

    function productPageEditTyping() {

        hideById("alert_editor_product_page_name");

        var productPageName = stripHTMLPost($('#editor_product_page_found_name').val().trim());
        if (productPageName.length < 1) {
            showById("alert_editor_product_page_name");
            document.getElementById("editor_panel_main_buttons").classList.remove("editor_panel_main_buttons_active");
        } else {

            document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");

            productPageEditPreviewDelay(function () {

                previewProductPageEditFly();

            }, 1000);
        }
        

    }

    var productPageEditPreviewDelay = (function () {
        var timer = 0;
        return function (callback, ms) {
            clearTimeout(timer);
            timer = setTimeout(callback, ms);
        };
    })();

    function previewProductPageEditFly() {

        var productPageContent = tinymce.get("editor_product_page_found_description").getContent();
        console.log(productPageContent);
        var productPageName = document.getElementById("editor_product_page_found_name").value.trim();

        if (productPageName != null && productPageName.length != 0) {

            var updateIframeData = {
                "action": "UPDATE_PRODUCT_PAGE_CONTENT",
                "info": {
                    "content": productPageContent,
                    "name": productPageName
                }
            }

            updateIframeData = JSON.stringify(updateIframeData);

            window.frames[0].window.postMessage(updateIframeData, "*");

            showIframeLoader();

        }

    }

    function cancelProductPageEdit() {
        document.getElementById("editor_product_page_found_name").value = defaultProductPageName;
        tinymce.get("editor_product_page_found_description").setContent(defaultProductPageContent);
        previewProductPageEditFly();
    }


    var saveProductPageEditCount = 0;
    function saveProductPageEdit() {

        saveProductPageEditCount = 0;

        var name = document.getElementById("editor_product_page_found_name").value.trim();

        var productId = productPageProductId;
        var sku = defaultProductPageProductCode;

        var productToSave = {
            "name": name,
            "id": productId,
            "code": sku
        }

        var save_product_data = {
            storeId: storeId.toString(),
            productId: productId,
            product: JSON.stringify(productToSave),
            is_new: false
        };

        console.log(save_product_data);

        var data = JSON.stringify(save_product_data);

        axiosPost('./services/manage/products/edit.svc/SaveProduct', data).then(function (data) {

            saveProductPageEditCount++;

            checkSaveProductPageEditCount();

        }).catch(function () {

        }).then(function () {

        });

        var description = tinymce.get("editor_product_page_found_description").getContent();

        var descriptionData = {
            storeId: storeId.toString(),
            productId: productId,
            description: description
        }

        descriptionData = JSON.stringify(descriptionData);

        axiosPost('./services/Products.svc/UpdateDescription', descriptionData).then(function (data) {

            saveProductPageEditCount++;

            checkSaveProductPageEditCount();

        }).catch(function () {

        }).then(function () {

        });

    }

    function checkSaveProductPageEditCount() {

        if (saveProductPageEditCount == 2) {
            editorSaved();
        }

    }



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

    function QuickProductSearch(q) {
        $(".busy_wait_product_list_search").show();

        var start = 0;   //which result to start it (so we can page, show more etc)
        var pgsize = 10; //how many to show

        q = stripHTML(q);
        q = q.trim();
        q = q.replace(/[^a-z0-9-_ %.'+\/]/gi, "");
        axiosGet("/services/Products.svc/quickSearch?storeId=" +
            storeId +
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
                                "<a onclick='getAnotherProductPageEditor(\"" + $(this)[0].Key + "\")' class='hide_overflow'>" +
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

</script>
                    

<div class="editor_panel_item" data-type="product-reviews">
    
    <div class="editor_panel_nice_info">
        <p>Product Reviews cannot currently be edited via the Editor.</p>
        <p>To manage your reviews, click the button below:</p>
        <a href="/manage_products_reviews" class="editor_main_button" onclick="externalLinkIconAnimation(this);"><i class="fa fa-external-link" aria-hidden="true"></i>Manage Reviews</a>
    </div>

    <div class="editor_info_panel margint40" data-type="translations">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title"><i class="fa fa-language" aria-hidden="true"></i>Edit Labels</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-down" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_details_tokens_list"></div>
        </div>
    </div>

</div>

<script>

    var buildProductReviewsPanelLoaded = false;
    function buildProductReviewsPanel() {

        if (buildProductReviewsPanelLoaded == false) {

            buildProductReviewsPanelLoaded = true;

            document.querySelector(".editor_panel_item[data-type='product-reviews']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

        } else {

            document.querySelector(".editor_panel_item[data-type='product-reviews']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

        }

    }

</script>
                    

<div class="editor_panel_item" data-type="related-products">
    
    <div class="editor_panel_nice_info">
        <p>Related Products cannot currently be edited via the Editor.</p>
        <p>You can manage your related products via the Product Edit page.</p>
        <a href="/manage_products_list" class="editor_main_button" onclick="externalLinkIconAnimation(this);"><i class="fa fa-external-link" aria-hidden="true"></i>View All Products</a>
    </div>

    <div class="editor_info_panel margint40" data-type="translations">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title"><i class="fa fa-language" aria-hidden="true"></i>Edit Labels</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-down" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_details_tokens_list"></div>
        </div>
    </div>

</div>

<script>

    
    var buildRelatedProductsPanelLoaded = false;
    function buildRelatedProductsPanel() {

        if (buildRelatedProductsPanelLoaded == false) {

            document.querySelector(".editor_panel_item[data-type='related-products']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

        } else {

            document.querySelector(".editor_panel_item[data-type='related-products']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

        }

    }

</script>
                    

<div class="editor_panel_item" data-type="cookie-consent">
    
    <p>To manage your Cookie Consent App, click the button below:</p>
    <a href="/app/cookieconsent/index.aspx" class="editor_main_button"><i class="fa fa-external-link" aria-hidden="true"></i>Go To App</a>

    <div class="editor_info_panel margint40" data-type="translations">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title"><i class="fa fa-language" aria-hidden="true"></i>Edit Labels</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-down" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_details_tokens_list"></div>
        </div>
    </div>

</div>

<script>

    var buildCookieConsentPanelLoaded = false;
    function buildCookieConsentPanel() {

        if (buildCookieConsentPanelLoaded == false) {

            document.querySelector(".editor_panel_item[data-type='cookie-consent']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

            buildCookieConsentPanelLoaded = true;

        } else {

            document.querySelector(".editor_panel_item[data-type='cookie-consent']").classList.add("editor_panel_item_active");
            hideById("editor_panel_loader");

        }

    }

</script>
                    

<style>
    .editor_panel_item_notification_bar_container{
        text-align: center;
        margin-bottom: 50px;
    }

    .editor_panel_item_notification_bar_inner{
        display: flex;
        flex-wrap: nowrap;
        justify-content: center;
        align-items: center;
    }

    .editor_panel_item_notification_bar_item{
        text-align: center;
        height: 130px;
        width: 130px;
        cursor: pointer;
    }

    .editor_panel_item_notification_bar_item.editor_panel_item_age_verification_item_selected{
        outline: 2px solid rgba(51, 158, 255, 0.6);
    }

    .editor_panel_item_notification_bar_item:first-child{
        margin-right: 10px;
    }

    .editor_panel_item_notification_bar_item_image_container{
        position: relative;
    }

    .editor_panel_item_notification_bar_item img{
        width: 100%;
        border: 1px solid #ddd;
    }

    .editor_panel_item_notification_bar_item.editor_panel_item_notification_bar_item_selected img{
        border: 1px solid rgba(51, 158, 255, 0.6);
    }

    .editor_panel_item_notification_bar_item_text{
        line-height: 25px;
    }

    .editor_panel_item_notification_bar_item_text::before{
        content: '';
        display: inline-block;
        width: 15px;
        height: 15px;
        border: 1px solid #b9b9b9;
        border-radius: 2px;
        margin-right: 5px;
        position: relative;
        top: 3px;
    }

    .editor_panel_item_notification_bar_item.editor_panel_item_notification_bar_item_selected .editor_panel_item_notification_bar_item_text::before{
        border-color: rgba(51, 158, 255, 1);
        background-color: rgba(51, 158, 255, 0.3);
    }

    #notification_bar_container{
        display: none;
        margin-top: 50px;
    }

    #notification_bar_container.notification_bar_container_active{
        display: block;
    }

    #editor_panel_item_notification_bar_notification-bar{
        background-color: #ea1636;
        color: #FFF;
        position: absolute;
        top: 1px;
        left: 0px; right: 0px;
        margin: 0 auto;
        text-align: center;
        line-height: 20px;
        font-size: 0.7rem;
        text-transform: uppercase;
        letter-spacing: 1px;
        width: calc(100% - 2px);
    }
</style>

<div class="editor_panel_item" data-type="notification-bar">
    <div class="editor_panel_item_notification_bar_container">
        <div class="editor_panel_item_notification_bar_inner">
            <div class="editor_panel_item_notification_bar_item" data-type="enabled" onclick="toggleNotificationBarStatus(true);">
                <div class="editor_panel_item_notification_bar_item_image_container">
                    <img src="/images/products/Store-Wireframe.png" />
                    <div id="editor_panel_item_notification_bar_notification-bar">Notification Bar</div>
                </div>
                <div class="editor_panel_item_notification_bar_item_text">Enabled</div>
            </div>

            <div class="editor_panel_item_notification_bar_item" data-type="disabled" onclick="toggleNotificationBarStatus(false);">
                <div class="editor_panel_item_notification_bar_item_image_container">
                    <img src="/images/products/Store-Wireframe.png" />
                </div>
                <div class="editor_panel_item_notification_bar_item_text">Disabled</div>
            </div>
        </div>
    </div>

    <div id="notification_bar_container">

        <div class="input_container">
            <label>Message<span class="right marginr5"><em id="wordCount">0</em>/260</span></label>
            <textarea placeholder="Your Message" id="WelcomeMsg" maxlength="260" onchange="notificationBarChangeOngoing();" onkeyup="notificationBarChangeOngoing();"></textarea>
        </div>
        
        <div class="input_container">
            <label>Button Link</label>
            <input type="text" placeholder="https://..." id="buttonLink" maxlength="150" onchange="notificationBarChangeOngoing();" onkeyup="notificationBarChangeOngoing();" />
            <div id="alert_editor_buttonLink" class="alert">URL's should always start with either https:// or http://</div>
        </div>

        <div class="checkbox_container margint20 marginb20">
            <input type="checkbox" id="notification_bar_button_external" name="notification_bar_button_external" />
            <label for="notification_bar_button_external"><span>Open Link in New Tab</span></label>
        </div>
        
        <div class="input_container">
            <label>Button Text</label>
            <input type="text" placeholder="Read More" id="buttonText" maxlength="15" onchange="notificationBarChangeOngoing();" onkeyup="notificationBarChangeOngoing();" />
        </div>
        
        <div class="flex_2_container">
            <div class="flex_2_item">
                <p><strong>Text Color</strong></p>
                <div id="textColorContainer">
                    <input type="text" id="textColor" />
                </div>
            </div>
            <div class="flex_2_item">
                <p><strong>Background Color</strong></p>
                <div id="backgroundColorContainer">
                    <input type="text" id="backgroundColor" />
                </div>
            </div>
        </div>

        <div class="flex_2_container">
            <div class="flex_2_item">
                <p><strong>Button Text Color</strong></p>
                <div id="buttonTextColorContainer">
                    <input type="text" id="buttonTextColor" />
                </div>
            </div>
            <div class="flex_2_item">
                <p><strong>Button Background Color</strong></p>
                <div id="buttonBackgroundColorContainer">
                    <input type="text" id="buttonBackgroundColor" />
                </div>
            </div>
        </div>

    </div>


    <div class="editor_info_panel margint40" data-type="info">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title">Info</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-up" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_subtitle">What is Notification Bar?</div>
            <p>Enabling this feature places a notification bar at the top of your store.</p>
            <p>You can use this for advertising sales or relaying important information.</p>
        </div>
    </div>

    <div class="editor_info_panel margint20" data-type="help">
        <div class="editor_info_panel_header">
            <div class="editor_info_panel_title">Help</div>
            <div class="editor_info_panel_button"><i class="fa fa-chevron-up" aria-hidden="true"></i></div>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_subtitle">I can't see the bar on my live store</div>
            <p>The bar will not display if no message is provided.</p>
            <p>Add a message above to ensure the bar is working.</p>
        </div>
        <div class="editor_info_panel_details">
            <div class="editor_info_panel_subtitle">I don't see the button in the bar</div>
            <p>The button will not display if no link is provided.</p>
            <p>Add a button link above to ensure the button is working.</p>
        </div>
    </div>


</div>

<script>
    var buildNotificationBarPanelLoaded = false;
    var originalBanner = undefined;
    var notificationBarEnabled = !!0;
   
    
    function buildNotificationBarPanel() {
        if (buildNotificationBarPanelLoaded === false) {
            
            if(!notificationBarEnabled) {
                document.querySelector(".editor_panel_item[data-type='notification-bar']").classList.add("editor_panel_item_active");
                toggleNotificationBarStatus(false);
                hideById("editor_panel_loader");
                return;
            }

            

            if(store.notifyBar != null) {
                var banner = store.notifyBar;

                getId('textColor').value = (typeof banner.textColor !== "undefined" && banner.textColor != null) ? banner.textColor : "#FFFFFF";
                getId('backgroundColor').value = (typeof banner.bgColor !== "undefined" && banner.bgColor != null) ? banner.bgColor : "#359bdb";
                getId('buttonTextColor').value = (typeof banner.buttonTextColor !== "undefined" && banner.buttonTextColor != null) ? banner.buttonTextColor : "#FFFFFF";
                getId('buttonBackgroundColor').value = (typeof banner.buttonBGColor !== "undefined" && banner.buttonBGColor != null) ? banner.buttonBGColor : "#205d83";
                getId('WelcomeMsg').value = (typeof banner.message !== "undefined" && banner.message != null) ? banner.message.replace("\\'", "'").replace("<br/>", "\n") : "";
                getId('buttonLink').value = (typeof banner.buttonLink !== "undefined" && banner.buttonLink != null) ? banner.buttonLink : "";
                getId('buttonText').value = (typeof banner.buttonText !== "undefined" && banner.buttonText != null) ? banner.buttonText : "Read More";
                originalBanner = banner;

                toggleNotificationBarStatus(banner.enabled);

                if (banner.externalLink != null && banner.externalLink == true) {
                    document.getElementById("notification_bar_button_external").checked = true;
                }
            } else {
                getId('textColor').value = "#FFFFFF";
                getId('backgroundColor').value = "#359bdb";
                getId('buttonTextColor').value = "#FFFFFF";
                getId('buttonBackgroundColor').value = "#205d83";

                toggleNotificationBarStatus(false);
            }
            
            $("#textColor, #backgroundColor, #buttonTextColor, #buttonBackgroundColor").spectrum({
                showInitial: true,
                showInput: true,
                show: function () {
                    $(".sp-button-container button").addClass("button_disabled");
                },
                move: function () {
                    $(".sp-button-container button").removeClass("button_disabled");
                },
                change: function(color) {
                    notificationBarChangeOngoing();
                }
            });
            
            $(".sp-button-container button").addClass("button_disabled");
            
            var content = getId('WelcomeMsg');
            getId('wordCount').innerText = content.value.length;
            content.value.length >= 261 ? getId('wordCount').parentNode.classList.add('color_red') : getId('wordCount').parentNode.classList.remove('color_red');
            
            buildNotificationBarPanelLoaded = true;
            document.querySelector(".editor_panel_item[data-type='notification-bar']").classList.add("editor_panel_item_active");

            hideById("editor_panel_loader");
        } else {
            document.querySelector(".editor_panel_item[data-type='notification-bar']").classList.add("editor_panel_item_active");

            hideById("editor_panel_loader");
        }        
    }

    function toggleNotificationBarStatus(status) {
        if (status == false) {
            document.querySelector(".editor_panel_item_notification_bar_item[data-type='enabled']").classList.remove("editor_panel_item_notification_bar_item_selected");
            document.querySelector(".editor_panel_item_notification_bar_item[data-type='disabled']").classList.add("editor_panel_item_notification_bar_item_selected");
            hideById("notification_bar_container");
        } else {

            if (!notificationBarEnabled) {
                purchaseApp("notification-bar");
            }

            document.querySelector(".editor_panel_item_notification_bar_item[data-type='disabled']").classList.remove("editor_panel_item_notification_bar_item_selected");
            document.querySelector(".editor_panel_item_notification_bar_item[data-type='enabled']").classList.add("editor_panel_item_notification_bar_item_selected");
            showById("notification_bar_container");
        }
        if (buildNotificationBarPanelLoaded == true) {
            notificationBarChangeOngoing();
        }
    }
    
    function notificationBarChangeOngoing(firstNotificationBarLoad) {
    
        if (firstNotificationBarLoad == null) {
            document.getElementById("editor_panel_main_buttons").classList.add("editor_panel_main_buttons_active");
        }

        notificationBarPreviewDelay(function () {
            notificationBarChange();
        }, 500);
    }
    
    var notificationBarPreviewDelay = (function () {
        var timer = 0;
        return function (callback, ms) {
            clearTimeout(timer);
            timer = setTimeout(callback, ms);
        };
    })();
    
    function notificationBarChange() {


        var enabled = false;
        if (document.querySelector(".editor_panel_item_notification_bar_item[data-type='enabled']").classList.contains("editor_panel_item_notification_bar_item_selected")) {
            enabled = true;
        }

        var textColor = getId('textColor').value;
        var backgroundColor = getId('backgroundColor').value;
        var buttonTextColor = getId('buttonTextColor').value;
        var buttonBackgroundColor = getId('buttonBackgroundColor').value;
        var message = parseTextAndStripPost(getId('WelcomeMsg').value.trim());
        var buttonLink = parseTextAndStripPost(getId('buttonLink').value.trim());
        var buttonText = parseTextAndStripPost(getId('buttonText').value.trim());
        
        message = message.replace("'", "\\'");
        
        // Check Link Valid
        if (buttonLink != null && buttonLink.length > 0) {
            if (buttonLink.startsWith("http") === true) {
                hideById("alert_editor_buttonLink");
            } else {
                showById("alert_editor_buttonLink");
            }
        }

        if (!textColor.startsWith("#")) {
            textColor = "#" + textColor;
        }
        if (!backgroundColor.startsWith("#")) {
            backgroundColor = "#" + backgroundColor;
        }
        if (!buttonTextColor.startsWith("#")) {
            buttonTextColor = "#" + buttonTextColor;
        }
        if (!buttonBackgroundColor.startsWith("#")) {
            buttonBackgroundColor = "#" + buttonBackgroundColor;
        }
        
        var info = {
            textColor: textColor,
            bgColor: backgroundColor,
            buttonTextColor: buttonTextColor,
            buttonBGColor: buttonBackgroundColor,
            buttonText: buttonText,
            message: message,
            buttonLink: buttonLink,
            enabled: enabled,
            externalLink: document.getElementById("notification_bar_button_external").checked
        };

        var updateIframeData = {
            "action": "UPDATE_NOTIFICATION_BAR",
            "info": info
        }

        updateIframeData = JSON.stringify(updateIframeData);

        window.frames[0].window.postMessage(updateIframeData, "https://power.fwspayments.com");

        showIframeLoader();
    }
    
    function cancelNotificationBar() {
        var updateIframeData = {
            "action": "CANCEL_NOTIFICATION_BAR",
            "info": originalBanner
        }

        updateIframeData = JSON.stringify(updateIframeData);

        setTimeout(function () {
            window.frames[0].window.postMessage(updateIframeData, "https://power.fwspayments.com");
            showIframeLoader();
        }, 1000);
    }
    
    function saveNotificationBar() {

        var enabled = false;
        if (document.querySelector(".editor_panel_item_notification_bar_item[data-type='enabled']").classList.contains("editor_panel_item_notification_bar_item_selected")) {
            enabled = true;
        }

        var textColor = getId('textColor').value;
        var backgroundColor = getId('backgroundColor').value;
        var buttonTextColor = getId('buttonTextColor').value;
        var buttonBackgroundColor = getId('buttonBackgroundColor').value;
        var message = parseTextAndStripPost(getId('WelcomeMsg').value.trim());
        var buttonLink = parseTextAndStripPost(getId('buttonLink').value.trim());
        var buttonText = parseTextAndStripPost(getId('buttonText').value.trim());

        message = message.replace(/\n/gm, "<br/>");

        message = message.replace("'", "\\'");

        console.log(message);
    
        var info = {
            textColor: textColor,
            bgColor: backgroundColor,
            buttonTextColor: buttonTextColor,
            buttonBGColor: buttonBackgroundColor,
            buttonText: buttonText,
            message: message,
            buttonLink: buttonLink,
            enabled: enabled,
            externalLink: document.getElementById("notification_bar_button_external").checked
        };
        
        var data = {
            storeId: storeId,
            settings: info
        }
    
        var url = "app/banner/services/banner.svc/saveNotificationBar";
        data = JSON.stringify(data);
    
        axiosPost(url, data).then(function (data) {
            editorSaved();
            store.notifyBar = info;
        }).catch(function (e) {
            console.log("ERROR:NotificationBar:saveNotificationBar");
            typeof e == "string" ? beaver.error(e) : beaver.error(JSON.stringify(e));
            errorOccurred("save", "notification-bar", "saveNotificationBar");
        });
    }
    
    multipleEventHandler('#WelcomeMsg', 'input', function () {
        var content = getId('WelcomeMsg');
        getId('wordCount').innerText = content.value.length;
        content.value.length >= 261 ? getId('wordCount').parentNode.classList.add('color_red') : getId('wordCount').parentNode.classList.remove('color_red');
    });
</script>
                    

                    <div id="editor_panel_main_buttons">
                        <div id="editor_panel_main_buttons_tooltip"><div id="editor_panel_main_buttons_tooltip_inner">Change something first!</div></div>
                        <div id="editor_panel_main_buttons_inner">
                            <a id="editor_panel_main_buttons_cancel" class="editor_panel_main_buttons_item editor_panel_main_buttons_item_disabled" onclick="cancelEditor();">Cancel</a>
                            <a id="editor_panel_main_buttons_save" class="editor_panel_main_buttons_item editor_panel_main_buttons_item_disabled" onclick="saveEditor();">Save</a>
                        </div>
                    </div>

                </div>

            </div>

        <!-- END EDITOR PANEL -->

        </div>



    </div>

    <!-- Unsaved Changes Modal -->
    <div id="editor_unsaved_changes">
        <div id="editor_unsaved_changes_close" onclick="unsavedChangesExit();"><i class="fa fa-times"></i></div>
        <div class="editor_welcome_modal_title">Unsaved Changes</div>
        <div class="editor_welcome_modal_text">You have unsaved changes, would you like to save them?</div>
        <div id="editor_unsaved_changes_buttons">
            <div id="editor_unsaved_changes_buttons_cancel" class="editor_main_button" onclick="unsavedChangesNo();">No</div>
            <div class="editor_main_button" onclick="unsavedChangesYes();">Yes, Save</div>
        </div>
    </div>
    <!-- End Unsaved Changes Modal -->

    <!-- Welcome Modal -->

    <div id="editor_welcome_modal" data-step="1">

        <div id="editor_welcome_modal_step1" class="editor_welcome_modal_step">

            <div class="editor_welcome_modal_title">Welcome to Your Theme Editor</div>
            
            <div class="editor_welcome_modal_text">The Theme Editor lets you design how your store looks. Change your colors, slideshow, logo, social icons and lots more.</div>
            <br />
            <div class="editor_welcome_modal_text">Let's see how it works!</div>

            <div class="editor_main_button" onclick="welcomeToEditor2();" ontouchstart="javascript:welcomeToEditor2();">Next</div>

        </div>

        <div id="editor_welcome_modal_step2" class="editor_welcome_modal_step">

            <div class="editor_welcome_modal_title">Main Menu</div>

            <div class="editor_welcome_modal_text">This is the main menu, access your pages, add new sections, and access design and language options.</div>

            <div class="editor_main_button" onclick="welcomeToEditor3();" ontouchstart="javascript:welcomeToEditor3();">Next</div>

        </div>

        <div id="editor_welcome_modal_step3" class="editor_welcome_modal_step">

            <div class="editor_welcome_modal_title">Your Online Store</div>

            <div class="editor_welcome_modal_text">This is your store.</div>
            <br />
            <div class="editor_welcome_modal_text">Hover or click anything you want to change.</div>
            <br />
            <div class="editor_welcome_modal_text">Then click the EDIT button that appears to change that feature.</div>

            <div class="editor_welcome_modal_step3_website_example_container">

                <div class="editor_welcome_modal_step3_website_example">

                    <div class="editor_welcome_modal_step3_website_example_header">
                        <div class="editor_welcome_modal_step3_website_example_header_logo editor_welcome_modal_step3_website_example_item" data-step="1">LOGO</div>
                        <div class="editor_welcome_modal_step3_website_example_header_navigation editor_welcome_modal_step3_website_example_item" data-step="2">NAVIGATION</div>
                    </div>

                    <div class="editor_welcome_modal_step3_website_example_body">
                        <div class="editor_welcome_modal_step3_website_example_left">
                            <div class="editor_welcome_modal_step3_website_example_left_item_double editor_welcome_modal_step3_website_example_item" data-step="3">BANNER</div>
                            <div class="editor_welcome_modal_step3_website_example_left_item editor_welcome_modal_step3_website_example_item" data-step="4">PRODUCT</div>
                            <div class="editor_welcome_modal_step3_website_example_left_item editor_welcome_modal_step3_website_example_item" data-step="5">PRODUCT</div>
                        </div>
                        <div class="editor_welcome_modal_step3_website_example_right">
                            <div class="editor_welcome_modal_step3_website_example_right_slideshow editor_welcome_modal_step3_website_example_item" data-step="6">SLIDESHOW</div>
                            <div class="editor_welcome_modal_step3_website_example_right_text editor_welcome_modal_step3_website_example_item" data-step="7">PAGE TEXT</div>
                        </div>
                    </div>

                </div>

            </div>

            <div id="editor_welcome_modal_step3_button" class="editor_main_button" onclick="welcomeToEditor4();" ontouchstart="javascript:welcomeToEditor4();">Next</div>

        </div>

        <div id="editor_welcome_modal_step4" class="editor_welcome_modal_step">

            <div class="editor_welcome_modal_title">Editing</div>

            <div class="editor_welcome_modal_text">Clicking the Edit button will open up the Editing panel.</div>
            <br />
            <div class="editor_welcome_modal_text">Here you can edit the feature.</div>

            <div class="editor_welcome_modal_step3_website_example_container">

                <div class="editor_welcome_modal_step3_website_example_edit_panel">
                    Edit
                </div>

                <div class="editor_welcome_modal_step3_website_example" data-id="moveright">

                    <div class="editor_welcome_modal_step3_website_example_header">
                        <div class="editor_welcome_modal_step3_website_example_header_logo">LOGO</div>
                        <div class="editor_welcome_modal_step3_website_example_header_navigation">NAVIGATION</div>
                    </div>

                    <div class="editor_welcome_modal_step3_website_example_body">
                        <div class="editor_welcome_modal_step3_website_example_left">
                            <div class="editor_welcome_modal_step3_website_example_left_item_double">BANNER</div>
                            <div class="editor_welcome_modal_step3_website_example_left_item">PRODUCT</div>
                            <div class="editor_welcome_modal_step3_website_example_left_item">PRODUCT</div>
                        </div>
                        <div class="editor_welcome_modal_step3_website_example_right">
                            <div class="editor_welcome_modal_step3_website_example_right_slideshow editor_welcome_modal_step3_website_example_item" data-step="slideshow">SLIDESHOW</div>
                            <div class="editor_welcome_modal_step3_website_example_right_text">PAGE TEXT</div>
                        </div>
                    </div>

                </div>

            </div>

            <div class="editor_main_button" onclick="welcomeToEditor5();" ontouchstart="javascript:welcomeToEditor5();">Next</div>

        </div>

        <div id="editor_welcome_modal_step5" class="editor_welcome_modal_step">

            <div class="editor_welcome_modal_title">Start Editing</div>

            <div class="editor_welcome_modal_text">It's a simple as that! Let start editing!</div>

            <div class="editor_main_button" onclick="welcomeToEditor6();" ontouchstart="javascript:welcomeToEditor6();">Start</div>

        </div>

    </div>

    <!-- End Welcome Modal -->

    <div id="preview_store">

        <div id="preview_store_header">
            <div id="preview_store_header_left">
                <a id="preview_store_header_left_back" class="preview_store_header_link" onclick="exitPreviewStore();"><i class="fa fa-caret-left" aria-hidden="true"></i><span>Edit Store</span></a>
            </div>
            <div id="preview_store_header_right">
                <div class="preview_store_header_link_dropdown_container">
                    <div class="preview_store_header_link preview_store_header_link_boxed" onclick="toggleSharePreview();"><i class="fa fa-share-alt" aria-hidden="true"></i></div>
                    <div id="preview_store_header_link_dropdown_menu_share" class="preview_store_header_link_dropdown_menu">
                        
<style>
    #fullShareDiv {
        display: none;
        padding: 0;
    }

    #fullShareDiv h2 {
        padding: 20px 20px 0px 20px;
    }

    #fullShareDiv_links a{
        display: flex;
        align-items: center;
        padding: 0px 20px;
        line-height: 35px;
        color: #404041;
        cursor: pointer;
        position: relative;
    }

    #fullShareDiv_links a:hover{
        background-color: #f5f5f7;
    }

    #fullShareDiv_links a i {
        width: 30px;
        min-width: 30px;
        font-size: 1.2rem;
        position: relative;
        top: 1px;
    }

    #shareBtnFB i{
        color: #4267B2;
    }

    #shareBtnTW i{
        color: #1DA1F2;
    }

    #shareBtnLK i{
        color: #2867B2;
    }

    #shareBtnPI i{
        color: #E60023;
    }

    #shareBtnEmail i{
        color: #DC4B3E;
    }

</style>

<div id="fullShareDiv" class="panel_white">
    <h2>Share</h2>
    <div id="fullShareDiv_links">
        <a id="shareBtnFB"><i class="fa fa-facebook-square"></i><span>Post on Facebook</span></a>
        <a id="shareBtnTW"><i class="fa fa-twitter-square"></i><span>Tweet on Twitter</span></a>
        <a id="shareBtnLK"><i class="fa fa-linkedin-square"></i><span>Share on LinkedIn</span></a>
        <a id="shareBtnPI"><i class="fa fa-pinterest-square"></i><span>Pin on Pinterest</span></a>
        <a id="shareBtnEmail"><i class="fa fa-envelope"></i>Share via Email</a>
    </div>
</div>

<script>

    /*
     * A number referring to the social media
     * @typedef {{social :number}} Social
     * 1 - Facebook
     * 2 - Twitter
     * 3 - LinkedIn
     */
    
    /*
     * A number referring to the share type
     * @typedef { { type: number } } Type
     * 1 - Product Edit
     * 2 - Product List
     */

    /*
     * Update the social sharing links
     * @param {string} link - link you want to share
     * @param {ShareType} type - what type you want to display
     */
    function updateSocialLink(link, type) {
        console.log(arguments);
        getId('shareBtnFB').setAttribute('onclick', 'shareToSocial(\'' + link + '\', 1, ' + type + ');');
        getId('shareBtnTW').setAttribute('onclick', 'shareToSocial(\'' + link + '\', 2,  ' + type + ');');
        getId('shareBtnLK').setAttribute('onclick', 'shareToSocial(\'' + link + '\', 3, ' + type + ');');

        if (type == 2) {
            getId('shareBtnEmail').setAttribute('href', "mailto:?subject=" + encodeURIComponent('The product ' + stockRequestItemArray[0].productName + ' is now back in stock and available to order.') + "&body=" + encodeURIComponent('The product ' + stockRequestItemArray[0].productName + ' is now back in stock and available to order.') + ": " + link);
        } else if (type == 1) {
            getId('shareBtnEmail').setAttribute('href', "mailto:?subject=" + encodeURIComponent('Check out this product on my store!') + "&body=" + encodeURIComponent('Check out this product on my store!') + ": " + link);
        } else {
            getId('shareBtnEmail').setAttribute('href', "mailto:?subject=" + encodeURIComponent('Check out my store!') + "&body=" + encodeURIComponent('Check out my store: ') + link);
        }

        if (arguments.length > 1) {
            getId('shareBtnPI').setAttribute('onclick', 'shareToSocial(\'' + link + '\', 4, ' + type + ', \'' + arguments[2] + '\');');
        } else {
            hideById('shareBtnPI')
        }

        switch(type) {
        case 1:
            showById('fullShareDiv');
            break;
        default:
            showById('fullShareDiv');
            break;
        }
    }


    function shareToSocial(link, social, type) {
        var defaultStr = "Check out this product on my store!";

        if (type == 2) {
            defaultStr = "The product " + stockRequestItemArray[0].productName + " is now back in stock and available to order.";
        } else if (type == 3) {
            defaultStr = "Check out my store: " + link;
        }

        var builtUri = "";

        switch (social) {
            case 1: //Facebook
                builtUri = "https://www.facebook.com/sharer/sharer.php?display=popup&u=" + link;
                break;
            case 2: //Twitter
                if (typeof isRidgePackageTypeId != "undefined" && isRidgePackageTypeId != null && isRidgePackageTypeId != 'True' && packageTypeId != 12 && packageTypeId != 13 && packageTypeId != -1) {
                    builtUri = "https://twitter.com/intent/tweet?text=" + encodeURIComponent(defaultStr) + "&url=" + link + "&hashtags=freewebstore,fws";
                } else {
                    builtUri = "https://twitter.com/intent/tweet?text=" + encodeURIComponent(defaultStr) + "&url=" + link;
                }
                break;
            case 3: //LinkedIn
                builtUri = "https://www.linkedin.com/shareArticle?mini=true&url=" + link + "&title=" + encodeURIComponent(defaultStr);
                break;
            case 4: //Pinterest
                builtUri = "http://pinterest.com/pin/create/button/?url=" + link + "&media=" + arguments[3];
                break;
        }

        // Build Properties of window
        var dualScreenLeft = window.screenLeft !== undefined ? window.screenLeft : window.screenX;
        var dualScreenTop = window.screenTop !== undefined ? window.screenTop : window.screenY;

        var width = window.innerWidth ? window.innerWidth : document.documentElement.clientWidth ? document.documentElement.clientWidth : screen.width;
        var height = window.innerHeight ? window.innerHeight : document.documentElement.clientHeight ? document.documentElement.clientHeight : screen.height;

        var systemZoom = width / window.screen.availWidth;
        var left = (width - 900) / 2 / systemZoom + dualScreenLeft;
        var top = (height - 500) / 2 / systemZoom + dualScreenTop;
        var newWidth = 900 / systemZoom;
        var newHeight = 500 / systemZoom;

        var features = "top=" + top + ",left=" + left + ",width=" + newWidth + ",height=" + newHeight;

        var windowObjectReference = window.open(builtUri, "sharePageFWS", features);
        windowObjectReference.focus();
        windowObjectReference = null;
        
    }
</script>
                    </div>
                </div>
                <a id="preview_store_header_right_responsive" class="preview_store_header_link preview_store_header_link_boxed" onclick="togglePreviewStoreResponsive();"><i id="preview_store_header_right_responsive_icon" class="fa fa-desktop" aria-hidden="true"></i></a>
                <a id="preview_store_header_right_new_window" class="preview_store_header_link" target="PreviewEditorStore"><i class="fa fa-external-link" aria-hidden="true"></i><span>New Window</span></a>
            </div>
        </div>

        <div id="preview_store_body">
            <iframe id="preview_store_iframe"></iframe>
        </div>

        <div id="editor_preview_store_loader_container">
            <div id="editor_preview_store_loader_inner">
                <div id="editor_preview_store_loader">
                    <div class="lds-roller"><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div></div>
                    <div id="editor_preview_store_text">Launching...</div>
                </div>
            </div>
        </div>

    </div>

    


<style>

    #languages_modal{
        background-color: #FFF;
        position: fixed;
        top: 10px; right: 10px;
        bottom: 10px; left: 10px;
        z-index: 999999999;
        transition: 0.4s;
        opacity: 0;
        visibility: hidden;
        pointer-events: none;
        overflow-y: auto;
        border-radius: 10px;
    }

    #languages_modal_close_button{
        position: absolute;
        top: 20px;
        right: 20px;
        width: 30px;
        height: 30px;
        display: flex;
        flex-wrap: nowrap;
        justify-content: center;
        align-items: center;
        font-size: 1rem;
        border-radius: 4px;
        cursor: pointer;
        background-color: #f5f5f7;
        transition: 0.4s;
    }

    #languages_modal_close_button:hover{
        background-color: #ddd;
    }

    #languages_modal.languages_modal_active{
        opacity: 1;
        visibility: visible;
        pointer-events: initial;
    }

    #languages_modal_container{
        padding: 20px;
    }

    #languages_modal_main_header_icon{
        background-color: #FFB432;
        color: #FFF;
        display: inline-block;
        border-radius: 4px;
        padding: 5px;
        margin-right: 5px;
    }

    #languages_modal_loader{
        text-align: center;
        margin-top: 20px;
    }

    #languages_modal_loader_text{
        margin-top: 20px;
        font-size: 1.2rem;
        width: 100%;
        text-align: center;
        opacity: 0.9;
    }

    #languages_modal_loaded{
        display: none;
    }

    #languages_modal_error{
        display: none;
    }

    #languages_modal_top{
        
    }

    .language_modal_search_filter{
        margin-top: 40px;
        margin-bottom: 20px;
        display: flex;
        flex-wrap: wrap;
    }

    #language_modal_search_input_container{
        max-width: 300px;
        width: 100%;
        margin-right: 20px;
    }

    #language_modal_search_input_container_flex{
        display: flex;
        flex-wrap: nowrap;
        align-items: center;
    }

    #language_modal_search_input_container_flex .input_container_password{
        max-width: 250px;
    }

    #language_modal_search_input_remove{
        margin-left: 5px;
        text-decoration: underline;
        font-weight: bold;
        cursor: pointer;
        display: none;
    }

    #language_modal_filter_container{
        display: none;
    }

    #language_modal_filter_list{
        display: flex;
        flex-wrap: wrap;
        align-items: center;
        height: 45px;
    }

    .language_modal_filter_item{
        display: flex;
        flex-wrap: nowrap;
        color: #FFF;
        height: 25px;
    }

    .language_modal_filter_item span{
        padding: 0 10px;
        line-height: 25px;
        background-color: #339eff;
        border-top-left-radius: 4px;
        border-bottom-left-radius: 4px;
    }

    .language_modal_filter_item i{
        width: 25px;
        height: 25px;
        line-height: 25px;
        text-align: center;
        border-left: 1px solid #fff;
        background-color: #339eff;
        border-top-right-radius: 4px;
        border-bottom-right-radius: 4px;
        cursor: pointer;
    }

    .language_modal_filter_item i:hover{
        background-color: #287ecc;
    }

    /* Table */

    .table_container#language_modal_table_outer_container{
        height: calc(100vh - 320px);
        display: block;
        
        overflow-y: auto;
    }

    table#language_modal_table_container{
        width: calc(100% - 20px);
    }

    .language_modal_table_thead_item{
        position: relative;
    }

    #language_modal_table_thead tr th{
        border-left: 1px solid #cfd7d9;
        position: sticky;
        top: 0;
        background-color: #F5f5f7;
    }

    #language_modal_table_thead tr th:first-child{
        border-left: none;
    }

    #language_modal_table_thead tr th:last-child{
        max-width: 170px !important;
        min-width: 170px !important;
        background-color: #F5f5f7;
        border-bottom: none;
    }

    #language_modal_table_thead_abc{
        background-color: #FFB432;
        color: #FFF;
        border-radius: 4px;
        display: inline-block;
        padding: 0 10px;
        line-height: 25px;
    }

    #language_modal_table_thead_abc i{
        margin-right: 5px;
    }

    .language_modal_table_thead_item_inner{
        display: flex;
        flex-wrap: nowrap;
        justify-content: space-between;
    }

    .language_modal_table_thead_item_inner_left{
        display: flex;
        flex-wrap: nowrap;
        align-items: center;
    }

    .language_modal_table_thead_locked{
        background-color: #FFB432;
        color: #FFF;
        border-radius: 4px;
        height: 20px;
        width: 20px;
        text-align: center;
        margin-right: 10px;
        line-height: 20px;
        position: relative;
    }

    .language_modal_table_thead_locked_info{
        background-color: #FFF;
        color: #212121;
        min-width: 250px;
        box-shadow: 0 3px 5px 0px #949494;
        padding: 10px;
        border-radius: 6px;
        position: absolute;
        top: 30px;
        opacity: 0;
        visibility: hidden;
        transition: 0.4s;
        text-align: left;
    }

    .language_modal_table_thead_locked:hover .language_modal_table_thead_locked_info{
        top: 40px;
        opacity: 1;
        visibility: visible;
    }

    .language_modal_table_thead_image{
        width: 25px;
        height: 15px;
        cursor: pointer;
        margin-right: 5px;
    }

    .language_modal_table_thead_desc{
        padding: 10px;
        white-space: nowrap;
        max-width: 80%;
        
    }

    .language_modal_table_thead_desc[contenteditable]{
        border: 1px solid transparent;
    }

    .language_modal_table_thead_item:hover .language_modal_table_thead_desc[contenteditable]{
        background-color: #fff;
        border: 1px solid #212121;
        border-radius: 4px;
    }

    .language_modal_table_thead_desc_button{
        border: 1px solid #ddd;
        background-color: #FFF;
        border-radius: 4px;
        cursor: pointer;
    }

    .language_modal_table_thead_desc_button:hover{
        background-color: #339eff;
        border-color: #339eff;
        color: #FFF;
    }

    .language_modal_table_thead_item_add_new_language.language_modal_table_thead_item_settings_disabled .language_modal_table_thead_desc_button{
        pointer-events: none;
    }

    .language_modal_table_thead_item_dropdown{
        background-color: #FFF;
        box-shadow: 0 3px 5px 0px #949494;
        padding: 10px;
        border-radius: 6px;
        position: absolute;
        top: 30px;
        width: 250px;
        opacity: 0;
        visibility: hidden;
        transition: 0.4s;
    }

    .language_modal_table_thead_item_dropdown[data-id="new"]{
        left: -90px;
    }

    .language_modal_table_thead_item_dropdown.language_modal_table_thead_item_dropdown_active{
        opacity: 1;
        visibility: visible;
        top: 40px;
    }

    .language_modal_table_thead_item_dropdown[data-id="new"].language_modal_table_thead_item_dropdown_active{
        top: 50px;
    }

    .language_modal_table_thead_item_dropdown_inner{
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
        overflow-y: auto;
        max-height: 250px;
    }

    .language_modal_table_thead_item_dropdown_inner_item{
        width: 30%;
        text-align: center;
        margin-bottom: 10px;
        cursor: pointer;
    }

    .language_modal_table_thead_item_dropdown_inner_item_image{
        width: 100%;
        max-width: 60px;
        padding: 5px;
        border-radius: 4px;
        background-color: #f5f5f7;
        border: 1px solid #ddd;
        transition: 0.25s;
    }


    .language_modal_table_thead_item_settings{
        position: relative;
    }

    #language_modal_table_thead tr th:nth-child(2) .language_modal_table_thead_item_settings{
        display: none;
    }

    .language_modal_table_thead_item_savechanges{
        background-color: #ea1636;
        color: #FFF;
        position: absolute;
        top: 30px;
        width: 200px;
        right: 0;
        transition: 0.4s;
        border-radius: 4px;
        padding: 5px;
        line-height: 15px;
        font-size: 0.8rem;
        opacity: 0;
        visibility: hidden;
        pointer-events: none;
    }

    .language_modal_table_thead_item_settings.language_modal_table_thead_item_settings_disabled:hover .language_modal_table_thead_item_savechanges,
    .language_modal_table_thead_item_add_new_language.language_modal_table_thead_item_settings_disabled:hover .language_modal_table_thead_item_savechanges{
        top: 40px;
        opacity: 1;
        visibility: visible;
    }


    .language_modal_table_thead_item_settings_button{
        width: 30px;
        height: 30px;
        display: flex;
        justify-content: center;
        align-items: center;
        border-radius: 4px;
        cursor: pointer;
        border: 1px solid #ddd;
        background-color: #FFF;
    }

    .language_modal_table_thead_item_settings.language_modal_table_thead_item_settings_disabled .language_modal_table_thead_item_settings_button{
        pointer-events: none !important;
    }

    .language_modal_table_thead_item_settings_button:hover{
        background-color: #339eff;
        border-color: #339eff;
        color: #FFF;
    }

    .language_modal_table_thead_item_settings_dropdown{
        background-color: #FFF;
        box-shadow: 0 3px 5px 0px #949494;
        padding: 10px;
        border-radius: 6px;
        position: absolute;
        top: 30px;
        right: 0;
        opacity: 0;
        visibility: hidden;
        transition: 0.4s;
    }

    .language_modal_table_thead_item_settings_dropdown.language_modal_table_thead_item_settings_dropdown_active{
        opacity: 1;
        visibility: visible;
        top: 40px;
    }

    .language_modal_table_thead_item_settings_dropdown_button{
        line-height: 35px;
        color: #212121;
        padding: 0px 10px;
        cursor: pointer;
        white-space: nowrap;
        display: block;
        border-left: 6px solid #ddd;
        margin-bottom: 10px;
    }

    .language_modal_table_thead_item_settings_dropdown_button:last-child{
        margin-bottom: 10px;
    }

    .language_modal_table_thead_item_settings_dropdown_button.language_modal_table_thead_item_settings_dropdown_button_red{
        font-weight: bold;
        color: #ea1636;
    }

    .language_modal_table_thead_item_settings_dropdown_button:hover{
        background-color: #f5f5f7;
        border-left-color: #339eff;
    }

    .language_modal_table_thead_item_settings_dropdown_button.language_modal_table_thead_item_settings_dropdown_button_red:hover{
        border-left-color: #ea1636;
    }

    .language_modal_table_thead_item_settings_dropdown_button.language_modal_table_thead_item_settings_dropdown_button_disabled{
        pointer-events: none !important;
        cursor: text;
    }

    #language_modal_table_tbody tr td{
        border-left: 1px solid #cfd7d9;
    }

    #language_modal_table_tbody tr td:first-child{
        font-weight: bold;
        border-left: none;
    }

    #language_modal_table_thead tr th,
    #language_modal_table_tbody tr td{
        min-width: 200px;
        max-width: 200px;
    }

    #language_modal_table_tbody tr td span {
        padding: 10px 6px;
        display: block;
        border: 1px solid transparent;
    }

    #language_modal_table_tbody tr:not(:first-child) td:last-child,
    #language_modal_table_tbody tr:first-child td:nth-last-child(2){
        border-right: 1px solid #cfd7d9;
    }

    #language_modal_table_tbody tr:hover td span{
        background-color: #fff;
        border: 1px solid #212121;
        border-radius: 4px;
    }

    #language_modal_table_tbody tr:first-child td:last-child{
        background: #FFF !important;
        max-width: 160px !important;
        min-width: 160px !important;
        border-bottom: none !important;
        background-color: #f5f5f7 !important;
        border-left: none !important;
    }

    .language_modal_name_changed, .language_modal_token_changed{
        font-weight: bold;
        font-style: italic;
        color: #3bf10d;
    }

    /* Buttons */

    #languages_modal_footer_container{
        display: none;
    }

    #languages_modal_footer{
        display: flex;
        flex-wrap: nowrap;
        justify-content: space-between;
        width: 100%;
        margin-top: 30px;
    }

    .languages_modal_footer_button{
        border-radius: 4px;
        display: flex;
        justify-content: center;
        align-items: center;
        width: 95%;
        max-width: 145px;
        height: 40px;
        padding: 0 10px;
        text-align: center;
        cursor: pointer;
        text-transform: uppercase;
        transition: 0.4s;
    }

    #languages_modal_footer_button_cancel{
        background-color: #fff;
        color: #212121;
        border: 1px solid #ddd;
    }

    #languages_modal_footer_button_cancel:hover{
        background-color: #ddd;
    }

    #languages_modal_footer_button_save{
        background-color: #5DC548;
        color: #fff;
    }

    #languages_modal_footer_button_save i{
        margin-right: 5px;
    }

    #languages_modal_footer_button_save:hover{
        background-color: #57b544;
    }

    .languages_modal_footer_button.languages_modal_footer_button_disabled{
        color: #212121 !important;
        border: 1px solid #ddd !important;
        background-color: #ddd !important;
        pointer-events: none !important;
    }

</style>


<div id="languages_modal">

    <div id="languages_modal_container">

        <div id="languages_modal_close_button" onclick="closeLanguagesModal();"><i class="fa fa-times"></i></div>

        <div id="languages_modal_top">            

            <div id="languages_modal_loader">
                <div class="lds-roller"><div></div><div></div><div></div><div></div><div></div><div></div><div></div><div></div></div>
                <div id="languages_modal_loader_text">Launching Languages...</div>
            </div>

            <div id="languages_modal_error">
                <h2>Oops!</h2>
                <p>Something went wrong loading your languages.</p>
                <p>Please <a class="button button_primary" onclick="openLanguageModal();">try again</a> or <a href="/support_new_ticket.aspx" class="link_color_primary">contact support</a></p>
            </div>

            <div id="languages_modal_loaded">

                <h2><i id="languages_modal_main_header_icon" class="fa fa-language" aria-hidden="true"></i>Language &amp; Translations</h2>
                <p>This section allows you to edit your language and translations</p>

                <div class="language_modal_search_filter">

                    <div id="language_modal_search_input_container" class="input_container">
                        <label for="language_modal_search_input">Search Translations</label>
                        <div id="language_modal_search_input_container_flex">
                            <div class="input_container_password">
                                <input id="language_modal_search_input" type="text" placeholder="Search Translations..." onchange="languageModalSearch();" onkeyup="languageModalSearch();" onpaste="languageModalSearch();">
                                <div class="input_container_password_reveal"><i id="language_modal_search_icon" class="fa fa-search" aria-hidden="true"></i></div>
                            </div>
                            <div id="language_modal_search_input_remove" onclick="languageModalClearSearch();">Clear</div>
                        </div>
                    </div>

                    <div id="language_modal_filter_container">
                        <label class="strong">Filtering By</label>
                        <div id="language_modal_filter_list"></div>
                    </div>

                </div>

                <div class="table_container" id="language_modal_table_outer_container">
                    <table id="language_modal_table_container">
                        <thead id="language_modal_table_thead">
                            <tr>
                                <th><span id="language_modal_table_thead_abc"><i class="fa fa-language" aria-hidden="true"></i> ABC</span></th>
                            </tr>
                        </thead>
                        <tbody id="language_modal_table_tbody">
                        </tbody>
                    </table>
                </div>

            </div>
        </div>

        <div id="languages_modal_footer_container">
            <div id="languages_modal_footer">
                <a id="languages_modal_footer_button_cancel" class="languages_modal_footer_button languages_modal_footer_button_disabled" onclick="closeLanguagesModal();">Cancel</a>
                <a id="languages_modal_footer_button_save" class="languages_modal_footer_button languages_modal_footer_button_disabled" onclick="saveLanguageModal();">Save</a>
            </div>
        </div>

    </div>

</div>

<script>

    var languageModalTokens;
    var languageModalPacks;
    var languageModalPacksUser;
    var languageModalFiltersInUse = false;

    function closeLanguagesModal() {
        document.getElementById("languages_modal").classList.remove("languages_modal_active");
        document.getElementById("editor_overlay").classList.remove("editor_overlay_active");
    }

    function openLanguageModal(filter) {

        hideById("languages_modal_loaded", "languages_modal_footer_container", "languages_modal_error");
        showById("languages_modal_loader");

        /* Resets */
        document.getElementById("languages_modal_footer_button_cancel").classList.add("languages_modal_footer_button_disabled");
        document.getElementById("languages_modal_footer_button_save").classList.add("languages_modal_footer_button_disabled");
        $(".language_modal_table_thead_item").remove();
        document.querySelector("#language_modal_table_tbody").innerHTML = "";
        $(".language_modal_table_thead_item_settings").removeClass("language_modal_table_thead_item_settings_disabled");
        $(".language_modal_table_thead_item_add_new_language").removeClass("language_modal_table_thead_item_settings_disabled");
        document.getElementById("language_modal_search_input").value = "";



        // Build Filters

        if (filter != null) {

            languageModalFiltersInUse = true;

            document.getElementById("language_modal_search_input").value = filter;

        } else {
            languageModalFiltersInUse = false;
        }



        document.getElementById("languages_modal").classList.add("languages_modal_active");
        document.getElementById("editor_overlay").classList.add("editor_overlay_active");

        axiosGet("/services/design/LanguagePacks.svc/GetLanguagePacks?shopkeeper=" + storeId).then(function (data) {

            languageModalPacks = data.d || data;
            console.log(languageModalPacks);

            languageModalPacksUser = languageModalPacks.userLanguagePacks.packs;
            console.log(languageModalPacksUser);

            languageModalPacksUser = languageModalPacksUser.sort(function (a, b) {
                if (a.defaultLanguage > b.defaultLanguage) return -1;
                if (a.defaultLanguage < b.defaultLanguage) return 1;
                return 0;
            });

            getLanguageModalTokens();

            

        }).catch(function (e) {

            languageModalError();

        }).then(function () {

        });

        

    }

    function languageModalError() {
        hideById("languages_modal_loader");
        showById("languages_modal_error");
    }
    

    function getLanguageModalTokens() {

        axiosGet("/services/editor/editor.svc/getListOfAllTokens?storeId=" + storeId).then(function (data) {

            languageModalTokens = data.d || data;
            console.log(languageModalTokens);

            var languageModalTokensHtml = '';

            for (var i = 0; i < languageModalTokens.length; i++) {

                var additionalTds = '';
                for (var c = 0; c < languageModalPacksUser.length; c++) {

                    var tokens = languageModalPacksUser[c].tokens;
                    var tokenFound = "";
                    languageModalPacksUser[c].tokens.filter(function (obj) {

                        if (obj.token == languageModalTokens[i].token) {
                            if (obj.translation != null) {
                                tokenFound = obj.translation;
                            }
                            return false;
                        }

                    });

                    additionalTds += '<td><span data-token="' + languageModalTokens[i].token + '" data-id="' + languageModalPacksUser[c].id + '" contenteditable onInput="languageModalTokenChange(this);" class="languageModalDataToken">' + tokenFound + '</span></td>';
                }

                var item = '<tr data-token="' + languageModalTokens[i].token + '">';
                item += '<td class="languageModalDataToken_main" data-token="' + languageModalTokens[i].token + '">' + languageModalTokens[i].token + '</td>';
                item += additionalTds;
                item += '</tr>';

                languageModalTokensHtml += item;

            }

            document.querySelector("#language_modal_table_tbody").innerHTML = languageModalTokensHtml;

            buildUserLanguagePacksIndividual();

            showById("languages_modal_loaded", "languages_modal_footer_container");
            hideById("languages_modal_loader");

            if (languageModalFiltersInUse == true) {
                languageModalSearch();
            }


        }).catch(function (e) {

            languageModalError();

        }).then(function () {


        });
    }

    function buildUserLanguagePacksIndividual() {

        for (var i = 0; i < languageModalPacksUser.length; i++) {

            var locked = '';
            /*if (i > 0) {
                if (checkIfProRidge() == false) {
                    locked = '<div class="language_modal_table_thead_locked"><i class="fa fa-lock"></i><div class="language_modal_table_thead_locked_info">For additional languages to appear on your live store, you need to upgrade to the Pro Plan. You can still change the default language by clicking the cog button to the right and selecting <strong>Make Default</strong>.</div></div>';
                }
            }*/

            // Add table language headers
            var theadItem = '<th class="language_modal_table_thead_item" data-id="' + languageModalPacksUser[i].id + '" data-isdefault="' + languageModalPacksUser[i].defaultLanguage + '">';
                    theadItem += '<div class="language_modal_table_thead_item_inner">';
                        theadItem += '<div class="language_modal_table_thead_item_inner_left">';
                            theadItem += locked;
                            theadItem += '<img src="' + languageModalPacksUser[i].url + '" data-id="' + languageModalPacksUser[i].id + '" class="language_modal_table_thead_image" onclick="languageModalImageDropdown(\'' + languageModalPacksUser[i].id + '\')" />';
                            theadItem += '<span class="language_modal_table_thead_desc" contenteditable oninput="languageModalNameChange(this);">' + languageModalPacksUser[i].description + '</span>';
                            theadItem += '<div class="language_modal_table_thead_item_dropdown" data-id="' + languageModalPacksUser[i].id + '">';
                                theadItem += '<p>Select the flag you wish to use for your language.</p>';
                                theadItem += '<div class="language_modal_table_thead_item_dropdown_inner"></div>';
                                theadItem += '<p>If the flag you are looking for isn\'t here <a class="link_color_primary" href ="/support_new_ticket.aspx">contact our support team</a> and we will happily add it for you.</p>';
                            theadItem += '</div>';
                        theadItem += '</div>';
                        theadItem += '<div class="language_modal_table_thead_item_settings" data-id="' + languageModalPacksUser[i].id + '">';
                            theadItem += '<div class="language_modal_table_thead_item_savechanges">You need to save your changes before you can access the language settings.</div>';
                            theadItem += '<div class="language_modal_table_thead_item_settings_button" onclick="languageModalSettingsDropdown(\'' + languageModalPacksUser[i].id + '\')"><i class="fa fa-cogs"></i></div>';
                            theadItem += '<div class="language_modal_table_thead_item_settings_dropdown" data-id="' + languageModalPacksUser[i].id + '">';
                                theadItem += '<a class="language_modal_table_thead_item_settings_dropdown_button languageModalSettingsDropdownMakeDefault_button" data-id="' + languageModalPacksUser[i].id + '" onclick="languageModalSettingsDropdownMakeDefault(\'' + languageModalPacksUser[i].id + '\')">Make Default</a>';
                                theadItem += '<a class="language_modal_table_thead_item_settings_dropdown_button language_modal_table_thead_item_settings_dropdown_button_red languageModalSettingsDropdownDelete_button" data-id="' + languageModalPacksUser[i].id + '" onclick="languageModalSettingsDropdownDelete(\'' + languageModalPacksUser[i].id + '\')">Delete</a>';
                            theadItem += '</div>';
                        theadItem += '</div>';
                    theadItem += '</div>';
                theadItem += '</th>';

            document.querySelector("#language_modal_table_thead tr").innerHTML += theadItem;
        }

        // Add table language headers
        var theadItem = '<th class="language_modal_table_thead_item language_modal_table_thead_item_add_new_language">';
                theadItem += '<div class="language_modal_table_thead_item_savechanges">You need to save your changes before you can add a new language.</div>';
                    theadItem += '<span class="language_modal_table_thead_desc language_modal_table_thead_desc_button" data-id="new" onclick="languageModalImageDropdown(\'new\');">Add New Language</span>';
                    theadItem += '<div class="language_modal_table_thead_item_dropdown" data-id="new">';
                    theadItem += '<p>Select a new language pack to add to your store.</p>';
                    theadItem += '<div class="language_modal_table_thead_item_dropdown_inner">';

                        theadItem += '<div class="add_new_language_modal_item" onclick = "addNewModalLanguage(\'custom\')";>';
                            theadItem += '<div class="add_new_language_modal_item_left">';
                            theadItem += '<div class="add_new_language_modal_item_left_custom"><i class="fa fa-globe" aria-hidden="true"></i></div>';
                                theadItem += '<span class="add_new_language_modal_item_left_name">Custom</span>';
                            theadItem += '</div>';
                            theadItem += '<div class="add_new_language_modal_item_right">';
                                theadItem += '<div class="add_new_language_modal_item_right_add"><i class="fa fa-plus" aria-hidden="true"></i></div>';
                            theadItem += '</div>';
                        theadItem += '</div>';

                    theadItem += '</div>';
                theadItem += '</div>';
            theadItem += '</th>';

        document.querySelector("#language_modal_table_thead tr").innerHTML += theadItem;

        document.querySelector("#language_modal_table_tbody tr:first-child").innerHTML += '<td rowspan="' + languageModalTokens.length + '"></td>';

    }

    var flagModalArray = ["usd", "gbr", "aus", "can", "esp", "deu", "fra", "prt", "swe", "dnk", "fin", "nor", "grc", "rus", "svn", "isr", "ind",
        "irl", "bel", "nld", "tur", "jpn", "kor", "chn", "che", "bra", "abw", "ago", "aia", "ala", "alb", "and", "are", "arg",
        "arm", "asm", "ata", "atf", "atg", "aut", "aze", "bdi", "ben", "bfa", "bgd", "bgr", "bhr", "bhs", "bih", "blr", "blz",
        "bmu", "bol", "brb", "brn", "btn", "bvt", "bwa", "caf", "chl", "civ", "cmr", "cod", "cog", "cok", "col", "com", "cpv",
        "cri", "cub", "cuw", "cxr", "cym", "cyp", "cze", "dji", "dma", "dom", "dza", "ecu", "egy", "eri", "esh", "est", "eth",
        "fji", "flk", "fro", "fsm", "gab", "geo", "ggy", "gha", "gib", "gin", "glg", "gmb", "gnb", "gnq", "grd", "grl", "gtm", "gum",
        "guy", "hkg", "hnd", "hun", "hrv", "hti", "idn", "imn", "iot", "irn", "irq", "isl", "ita", "jam", "jey", "jor", "kaz",
        "ken", "kgz", "khm", "kir", "kna", "kwt", "lao", "lbn", "lbr", "lby", "lca", "lie", "lka", "lso", "ltu", "lux", "lva",
        "mac", "mar", "mco", "mda", "mdg", "mdv", "mex", "mhl", "mkd", "mli", "mlt", "mmr", "mne", "mng", "mnp", "moz", "mrt",
        "msr", "mus", "mwi", "mys", "nam", "ner", "nfk", "nga", "nic", "niu", "npl", "nru", "nzl", "omn", "pak", "pan", "pcn", "per",
        "phl", "plw", "png", "pol", "pri", "prk", "pry", "pse", "pyf", "qat", "rou", "rwa", "sau", "sdn", "sen", "sgp", "shn",
        "sjm", "slb", "sle", "slv", "smr", "som", "srb", "stp", "sur", "svk", "swz", "sxm", "syc", "syr", "tca", "tcd", "tgo",
        "tha", "tjk", "tkl", "tkm", "tls", "ton", "tto", "tun", "tuv", "twn", "tza", "uga", "ukr", "ury", "uzb", "vat", "vct",
        "ven", "vgb", "vir", "vnm", "vut", "wsm", "yem", "zaf", "zmb", "zwe"];

    function languageModalImageDropdown(id) {
        console.log(id)
        document.querySelector(".language_modal_table_thead_item_dropdown[data-id='" + id + "']").classList.toggle("language_modal_table_thead_item_dropdown_active");

        if (id != "new") {
            if (document.querySelector(".language_modal_table_thead_item_dropdown[data-id='" + id + "'] .language_modal_table_thead_item_dropdown_inner").innerHTML.length == 0) {

                flagModalArray.sort();
                var flagHtml = "";

                flagModalArray.forEach(function (fa) {
                    var flagHtmlItem = '<div class="language_modal_table_thead_item_dropdown_inner_item" onclick="changeLanguageModalFlag(\'' + fa + '\', \'' + id + '\')">';
                    flagHtmlItem += '<img src="//d11fdyfhxcs9cr.cloudfront.net/design_media/flags/large/' + fa + '.png" class="language_modal_table_thead_item_dropdown_inner_item_image" />';
                    flagHtmlItem += '</div>';

                    flagHtml += flagHtmlItem;
                });
                document.querySelector(".language_modal_table_thead_item_dropdown[data-id='" + id + "'] .language_modal_table_thead_item_dropdown_inner").innerHTML += flagHtml;

            }

        } else {

            var communityLanguagePacks = languageModalPacks.communityLanguagePacks.packs;

            var communityLanguageHtml = '';
            for (var i = 0; i < communityLanguagePacks.length; i++) {

                var communityLanguageHtmlItem = '<div class="add_new_language_modal_item" onclick="addNewModalLanguage(' + communityLanguagePacks[i].id + ');">';
                communityLanguageHtmlItem += '<div class="add_new_language_modal_item_left">';
                communityLanguageHtmlItem += '<img class="add_new_language_modal_item_left_image" src="' + communityLanguagePacks[i].url + '" />';
                communityLanguageHtmlItem += '<span class="add_new_language_modal_item_left_name">' + communityLanguagePacks[i].country + '</span>';
                communityLanguageHtmlItem += '</div>';
                communityLanguageHtmlItem += '<div class="add_new_language_modal_item_right">';
                communityLanguageHtmlItem += '<div class="add_new_language_modal_item_right_add"><i class="fa fa-plus"></i></div>';
                communityLanguageHtmlItem += '</div>';
                communityLanguageHtmlItem += '</div>';

                communityLanguageHtml += communityLanguageHtmlItem;

            }

            document.querySelector(".language_modal_table_thead_item_dropdown[data-id='" + id + "'] .language_modal_table_thead_item_dropdown_inner").innerHTML += communityLanguageHtml;
        }

    }

    function changeLanguageModalFlag(code, id) {
        code = code.toUpperCase();

        document.querySelector(".language_modal_table_thead_image[data-id='" + id + "']").setAttribute("src", "//d11fdyfhxcs9cr.cloudfront.net/design_media/flags/large/" + code + ".png");

        document.querySelector(".language_modal_table_thead_item_dropdown[data-id='" + id + "']").classList.remove("language_modal_table_thead_item_dropdown_active");

        document.getElementById("languages_modal_footer_button_cancel").classList.remove("languages_modal_footer_button_disabled");
        document.getElementById("languages_modal_footer_button_save").classList.remove("languages_modal_footer_button_disabled");
    }


    function languageModalNameChange(el) {
        document.getElementById("languages_modal_footer_button_cancel").classList.remove("languages_modal_footer_button_disabled");
        document.getElementById("languages_modal_footer_button_save").classList.remove("languages_modal_footer_button_disabled");
        el.classList.add("language_modal_name_changed");

        $(".language_modal_table_thead_item_settings").addClass("language_modal_table_thead_item_settings_disabled");
        $(".language_modal_table_thead_item_add_new_language").addClass("language_modal_table_thead_item_settings_disabled");
    }

    function languageModalTokenChange(el) {
        
        document.getElementById("languages_modal_footer_button_cancel").classList.remove("languages_modal_footer_button_disabled");
        document.getElementById("languages_modal_footer_button_save").classList.remove("languages_modal_footer_button_disabled");

        el.classList.add("language_modal_token_changed");

        $(".language_modal_table_thead_item_settings").addClass("language_modal_table_thead_item_settings_disabled");
        $(".language_modal_table_thead_item_add_new_language").addClass("language_modal_table_thead_item_settings_disabled");
        

    }

    function saveLanguageModal() {

        document.getElementById("languages_modal_footer_button_cancel").classList.add("languages_modal_footer_button_disabled");
        document.getElementById("languages_modal_footer_button_save").classList.add("languages_modal_footer_button_disabled");

        document.getElementById("languages_modal_footer_button_save").innerHTML = '<i class="fa fa-spinner fa-spin"></i>Saving';

        var data = {
            "storeId": storeId,
            "packs": []
        }

        var packs = document.querySelectorAll(".language_modal_table_thead_item:not(.language_modal_table_thead_item_add_new_language)");
        for (var i = 0; i < packs.length; i++) {
            var id = packs[i].getAttribute("data-id");

            var isDefault = false;
            if (packs[i].getAttribute("data-isdefault") == "true") {
                isDefault = true;
            }

            console.log(id);
            var name = document.querySelector(".language_modal_table_thead_item[data-id='" + id + "'] .language_modal_table_thead_desc").innerText;
            var flagUrl = document.querySelector(".language_modal_table_thead_image[data-id='" + id + "']").getAttribute("src");

            flagUrl = flagUrl.split("/");
            flagUrl = flagUrl.pop();
            flagUrl = flagUrl.split(".");
            flagUrl = flagUrl[0];
            flagUrl = flagUrl.toUpperCase();



            var pack = {
                "storeId": storeId,
                "packid": id,
                "name": name,
                "flag": flagUrl,
                "isDefault": isDefault,
                "translations": []
            }

            data.packs.push(pack);
        }

        console.log(data);

        var allChanged = document.querySelectorAll(".language_modal_token_changed");

        for (var i = 0; i < allChanged.length; i++) {

            var id = allChanged[i].getAttribute("data-id");

            var existingToken = allChanged[i].getAttribute("data-token");
            var translation = allChanged[i].innerText;

            var token = {
                "token": existingToken,
                "translation": translation
            }

            data.packs.filter(function (obj) {
                console.log(obj)
                console.log(id)
                if (obj.packid == id) {
                    obj.translations.push(token);
                }

            });

        }

        console.log(data);

        data = JSON.stringify(data);

        axiosPost("/services/editor/editor.svc/editorSaveMultipleLanguagePack", data).then(function (data) {

            var result = data.d;
            console.log(result);

            if (result == "") {

                reloadIframe();

                document.getElementById("languages_modal_footer_button_save").innerHTML = '<i class="fa fa-check color_green"></i>Saved';
                setTimeout(function () {
                    document.getElementById("languages_modal_footer_button_save").innerHTML = 'Save';
                }, 3500);

                if (languageModalFiltersInUse == true) {
                    closeLanguagesModal();
                }

            } else {
                console.log("fail via main")
            }

        }).catch(function () {

            console.log("failed to save")

        }).then(function () {

            $(".language_modal_table_thead_item_settings").removeClass("language_modal_table_thead_item_settings_disabled");
            $(".language_modal_table_thead_item_add_new_language").removeClass("language_modal_table_thead_item_settings_disabled");

        });

    }


    function languageModalSettingsDropdown(id) {

        document.querySelector(".language_modal_table_thead_item_settings_dropdown[data-id='" + id + "']").classList.toggle("language_modal_table_thead_item_settings_dropdown_active");

    }


    function addNewModalLanguage(id) {

        hideById("languages_modal_loaded", "languages_modal_footer_container");
        showById("languages_modal_loader");

        var name = "English";
        var flag = "gbp";

        languageModalPacks.communityLanguagePacks.packs.filter(function (obj) {

            if (obj.id == id) {
                name = obj.country;
                flag = obj.acronym;
            }

        });

        var data = {
            "storeId": storeId,
            "duplicatepackid": id,
            "name": name,
            "flag": flag,
        }

        data = JSON.stringify(data);

        axiosPost("/services/editor/editor.svc/editorCreateNewLanguagePack", data).then(function (data) {

            var result = data.d;
            console.log(result);

            console.log("saved");
            openLanguageModal();
            

        }).catch(function () {

            console.log("failed to save")

        }).then(function () {


        });

    }

    function languageModalSettingsDropdownMakeDefault(id) {

        document.querySelector(".languageModalSettingsDropdownMakeDefault_button[data-id='" + id + "']").innerHTML = "<i class='fa fa-spinner fa-spin'></i> Loading";
        document.querySelector(".languageModalSettingsDropdownMakeDefault_button[data-id='" + id + "']").classList.add("language_modal_table_thead_item_settings_dropdown_button_disabled");
        
        var data = {
            "storeId": storeId,
            "packid": id,
            "flag": null,
            "name": null,
            "isDefault": true,
            "translations": null
        }

        data = JSON.stringify(data);

        axiosPost('/services/editor/editor.svc/editorSaveLanguagePack', data).then(function (data) {

            openLanguageModal();

        }).catch(function (e) {



        }).then(function () {

        });

    }

    function languageModalSettingsDropdownDelete(id) {

        document.querySelector(".languageModalSettingsDropdownDelete_button[data-id='" + id + "']").innerHTML = "<i class='fa fa-spinner fa-spin'></i> Deleting";
        document.querySelector(".languageModalSettingsDropdownDelete_button[data-id='" + id + "']").classList.add("language_modal_table_thead_item_settings_dropdown_button_disabled");

        var data = {
            "storeId": storeId,
            "packs": [{
                "id": id
            }]
        }

        console.log(data);

        data = JSON.stringify(data);

        axiosPost('/services/editor/editor.svc/editorDeleteLanguagePacks', data).then(function (data) {

            openLanguageModal();

        }).catch(function (e) {

            

        }).then(function () {

        });

    }


    function languageModalSearch() {
        document.getElementById("language_modal_search_icon").classList.add("fa-spinner", "fa-spin");
        document.getElementById("language_modal_search_icon").classList.remove("fa-search");

        languageModalSearchPreviewDelay(function () {

            var pageTranslationSearch = document.getElementById("language_modal_search_input").value.trim();
            if (pageTranslationSearch.length > 0) {
                showById("language_modal_search_input_remove");
                languageModalSearchFly();
            } else {
                hideById("language_modal_search_input_remove");
                document.getElementById("language_modal_search_icon").classList.remove("fa-spinner", "fa-spin");
                document.getElementById("language_modal_search_icon").classList.add("fa-search");
                $("#language_modal_table_tbody tr").show();
            }

        }, 500);

    }

    var languageModalSearchPreviewDelay = (function () {
        var timer = 0;
        return function (callback, ms) {
            clearTimeout(timer);
            timer = setTimeout(callback, ms);
        };
    })();

    function languageModalClearSearch() {
        hideById("language_modal_search_input_remove");
        document.getElementById("language_modal_search_input").value = "";
        languageModalSearchFly();
    }

    function languageModalSearchFly() {

        var pageTranslationSearch = document.getElementById("language_modal_search_input").value.trim();
        pageTranslationSearch = pageTranslationSearch.toLowerCase();

        $("#language_modal_table_tbody tr").hide();

        var languageFound = 0;

        var languageInput = document.querySelectorAll(".languageModalDataToken");
        for (var i = 0; i < languageInput.length; i++) {

            var languageId = languageInput[i].getAttribute("data-token");
            languageId = languageId.toLowerCase();
            var languageValue = languageInput[i].innerText;
            languageValue = languageValue.toLowerCase();

            if (languageModalFiltersInUse == true) {

                if (languageId == pageTranslationSearch || languageValue == pageTranslationSearch) {
                    $(languageInput[i]).parent().parent().show();
                    languageFound++;
                }

            } else {
                if (languageId.match(pageTranslationSearch) || languageValue.match(pageTranslationSearch)) {
                    $(languageInput[i]).parent().parent().show();
                    languageFound++;
                }
            }
            

        }

/*
        if (languageFound == 0) {
            showById("no_page_search_translations");
        } else {
            hideById("no_page_search_translations");
        }*/

        setTimeout(function () {
            document.getElementById("language_modal_search_icon").classList.remove("fa-spinner", "fa-spin");
            document.getElementById("language_modal_search_icon").classList.add("fa-search");
        }, 500);

    }



</script>

    

<style>
    #modal_page_seo_customurl_notallowed, #modal_page_seo_customurl_allowed{
        display: none;
    }

    #modal_page_seo_customurl_link{
        margin-top: 5px;
        line-height: 20px;
        font-weight: bold;
        word-break: break-all;
    }

    #modal_page_seo_customurl{
        padding-right: 35px;
    }

    #modal_page_seo_customurl_icon{
        position: absolute;
        top: 12px;
        right: 10px;
        opacity: 0;
        visibility: hidden;
        font-size: 1rem;
        transition: 0.4s;
    }

    #modal_page_seo_customurl_icon.modal_page_seo_customurl_icon_active{
        opacity: 1;
        visibility: visible;
    }

    #modal_page_seo_customurl_icon.fa-check{ color: #5DC548; }
    #modal_page_seo_customurl_icon.fa-times{ color: #ea1636; }
    #modal_page_seo_customurl_icon.fa-spinner{ color: #212121; }

</style>

<div id="modal_page_seo" class="modal">
    <div class="modal_header">
        <div class="modal_title">Page SEO</div>
        <div class="modal_expand" data-expand="normal"><i class="fa fa-window-maximize" aria-hidden="true"></i></div>
        <div class="modal_close"><i class="fa fa-times" aria-hidden="true"></i></div>
    </div>
    <div class="modal_body_outer_container">
        <div class="modal_body">
            <div id="modal_page_seo_container" class="paddingt20 paddingb20">
                
                <div class="input_container">
                    <label for="modal_page_seo_title">Title<span class="static_tool_tip right" onclick="inputHelpText('seo_title')">?</span></label>
                    <div class="input_help_text" data-help="seo_title">
                        <p>The Title will appear in the Title Bar of the browser when this product is viewed on your webstore.</p>
                        <p><em>Recommended length: 50 - 100 characters</em></p>
                    </div>
                    <input type="text" id="modal_page_seo_title" maxlength="100" placeholder="Page Title" oninput="editorPageSeoChange();" />
                </div>

                <div class="input_container">
                    <label for="modal_page_seo_keywords">Keywords<span class="static_tool_tip right" onclick="inputHelpText('seo_keywords')">?</span></label>
                    <div class="input_help_text" data-help="seo_keywords">
                            <p>Add a list of relevant keywords separated by commas (for example, "keyword1, keyword2, keyword3"). Try to ensure that each of these keywords is also shown in the visible content of the page (such as in the Page Name and Description). Keywords will not be displayed on your webstore.</p>
                            <p><em>Recommended length: 100 - 300 characters</em></p>
                        </div>
                    <textarea id="modal_page_seo_keywords" maxlength="300" placeholder="Enter a list of comma-seperated keywords. e.g. keyword1, keyword2, keyword3 etc" oninput="editorPageSeoChange();"></textarea>
                </div>

                <div class="input_container">
                    <label for="modal_page_seo_description">Description<span class="static_tool_tip right" onclick="inputHelpText('seo_description')">?</span></label>
                    <div class="input_help_text" data-help="seo_description">
                        <p>Enter a description of the page here. Try to ensure that each of the relevant words in the description matches or partially matches the visible content of the page (such as in the Page Name and Description). Descriptions will not be displayed on your webstore but they may be displayed on search engine results pages.</p>
                        <p><em>Recommended length: 200 - 400 characters</em></p>
                    </div>
                    <textarea id="modal_page_seo_description" maxlength="1000" placeholder="Enter your Page Description here" oninput="editorPageSeoChange();"></textarea>
                </div>

                <div class="input_container">
                    <label for="modal_page_seo_customurl">Custom URL<span class="static_tool_tip right" onclick="inputHelpText('seo_url')">?</span></label>
                    <div class="input_help_text" data-help="seo_url">
                        <p>Setting a Custom URL for a page allows you to specify a unique address of your choosing for that page. This is entirely optional, but it does allow you to simplify your URLs a little, and can also be used to prevent search engines indexing duplicate content by accessing the same page from several different paths.</p>
                    </div>
                    <div id="modal_page_seo_customurl_notallowed">This feature is not available for this Page Type.</div>
                    <div id="modal_page_seo_customurl_allowed">
                        <div class="relative">
                            <input type="text" id="modal_page_seo_customurl" maxlength="100" placeholder="Custom URL here" oninput="pageSeoUrlChange(); editorPageSeoChange();" />
                            <i id="modal_page_seo_customurl_icon" class="fa fa-spinner fa-spin"></i>
                        </div>
                        <div id="modal_page_seo_customurl_allowed_exists" class="alert">Custom URL already exists</div>
                        <div id="modal_page_seo_customurl_link">
                            <span id="modal_page_seo_customurl_link1"></span><span id="modal_page_seo_customurl_link2" class="color_primary">[CUSTOM URL]</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal_footer">
        <a class="button button_dgrey modal_footer_left close_modal_button">Close</a>
        <a id="editorConfirmPageSeo_button" class="button button_primary button_disabled modal_footer_right" onclick="editorConfirmPageSeo();">Confirm</a>
    </div>
</div>

<script>

    function editPageSeo() {

        // Reset
        document.getElementById("modal_page_seo_title").value = "";
        document.getElementById("modal_page_seo_keywords").value = "";
        document.getElementById("modal_page_seo_description").value = "";
        hideById("modal_page_seo_customurl_allowed_exists");
        document.getElementById("editorConfirmPageSeo_button").classList.add("button_disabled");

        if (currentPageType == 2 || currentPageType == 7 || currentPageType == 11) {
            showById("modal_page_seo_customurl_allowed");
            hideById("modal_page_seo_customurl_notallowed");

            document.getElementById("modal_page_seo_customurl_link1").innerText = storeUrl + "/page/";
        } else {
            showById("modal_page_seo_customurl_notallowed");
            hideById("modal_page_seo_customurl_allowed");
        }

        // Populate
        if (thePageSeo != null) {

            document.getElementById("modal_page_seo_title").value = thePageSeo.title ?? "";
            document.getElementById("modal_page_seo_keywords").value = thePageSeo.keywords ?? "";
            document.getElementById("modal_page_seo_description").value = thePageSeo.description ?? "";

            if (thePageSeo.url != null && thePageSeo.url.length > 0) {
                document.getElementById("modal_page_seo_customurl").value = thePageSeo.url;
                document.getElementById("modal_page_seo_customurl_link1").innerText = ".../page/";
                document.getElementById("modal_page_seo_customurl_link2").innerText = thePageSeo.url;
            }

        }


        document.getElementById("editor_overlay").classList.add("editor_overlay_active");
        divFadeIn("#modal_page_seo");

    }

    var customUrlAlreadyExists = false;
    function pageSeoUrlChange() {
        var seoUrl = stripHTML(document.getElementById("modal_page_seo_customurl").value.trim());

        document.getElementById("modal_page_seo_customurl").value = seoUrl;

        var storeUrlSeo = storeUrl;
        storeUrlSeo = storeUrlSeo.replace("www.", "");

        if (seoUrl.length > 0) {
            document.getElementById("modal_page_seo_customurl_link1").innerText = ".../page/";
            document.getElementById("modal_page_seo_customurl_link2").innerText = seoUrl;
            checkPageSeoUrlNotUsed();
        } else {
            document.getElementById("modal_page_seo_customurl_link1").innerText = storeUrlSeo + "/page/";
            document.getElementById("modal_page_seo_customurl_link2").innerText = "[CUSTOM URL]";
            document.getElementById("modal_page_seo_customurl_icon").classList.remove("modal_page_seo_customurl_icon_active");
            document.getElementById("modal_page_seo_customurl").classList.remove("input_alert");
            hideById("modal_page_seo_customurl_allowed_exists");
            customUrlAlreadyExists = false;
        }

    }

    function checkPageSeoUrlNotUsed() {

        document.getElementById("modal_page_seo_customurl_icon").classList.add("modal_page_seo_customurl_icon_active");
        document.getElementById("modal_page_seo_customurl_icon").classList.add("fa-spin");
        document.getElementById("modal_page_seo_customurl_icon").classList.add("fa-spinner");
        document.getElementById("modal_page_seo_customurl_icon").classList.remove("fa-check");
        document.getElementById("modal_page_seo_customurl_icon").classList.remove("fa-times");

        pageSeoUrlDelay(function () {
            var seoUrl = stripHTML(document.getElementById("modal_page_seo_customurl").value.trim());
            seoUrl = makeUrlFriendly(seoUrl);
            document.getElementById("modal_page_seo_customurl").value = seoUrl;
            document.getElementById("modal_page_seo_customurl_link2").innerText = seoUrl;


            var seoUrlAlreadyExists = false;

            result.pages.filter(function (obj) {

                if (obj.seo != null && obj.seo.url != null && obj.seo.url == seoUrl) {

                    if (thePageIsNew != true) {
                        if (currentPageId != obj.id) {
                            seoUrlAlreadyExists = true;
                        }
                    } else {
                        seoUrlAlreadyExists = true;
                    }


                }

            });


            document.getElementById("modal_page_seo_customurl_icon").classList.remove("fa-spin");
            document.getElementById("modal_page_seo_customurl_icon").classList.remove("fa-spinner");
            if (seoUrlAlreadyExists == true) {
                document.getElementById("modal_page_seo_customurl_icon").classList.add("fa-times");
                showById("modal_page_seo_customurl_allowed_exists");
                document.getElementById("modal_page_seo_customurl").classList.add("input_alert");
            } else {
                document.getElementById("modal_page_seo_customurl_icon").classList.add("fa-check");
                hideById("modal_page_seo_customurl_allowed_exists");
                document.getElementById("modal_page_seo_customurl").classList.remove("input_alert");
            }



        }, 1500);

    }

    var pageSeoUrlDelay = (function () {
        var timer = 0;
        return function (callback, ms) {
            clearTimeout(timer);
            timer = setTimeout(callback, ms);
        };
    })();

    function editorPageSeoChange() {

        var seoUrl = stripHTML(document.getElementById("modal_page_seo_customurl").value.trim());
        seoUrl = makeUrlFriendly(seoUrl);

        var seoUrlAlreadyExists = false;

        result.pages.filter(function (obj) {
            if (obj.seo != null && obj.seo.url != null && obj.seo.url == seoUrl) {
                if (thePageIsNew != true) {
                    if (currentPageId != obj.id) {
                        seoUrlAlreadyExists = true;
                    }
                } else {
                    seoUrlAlreadyExists = true;
                }
            }
        });

        if (seoUrlAlreadyExists == false) {
            document.getElementById("editorConfirmPageSeo_button").classList.remove("button_disabled");
        } else {
            document.getElementById("editorConfirmPageSeo_button").classList.add("button_disabled");
        }
    }

    function editorConfirmPageSeo() {

        var title = parseTextAndStrip(document.getElementById("modal_page_seo_title").value).trim();
        var keywords = parseTextAndStrip(document.getElementById("modal_page_seo_keywords").value).trim();
        var description = parseTextAndStrip(document.getElementById("modal_page_seo_description").value).trim();
        var customUrl = null;

        if (currentPageType == 2 || currentPageType == 7 || currentPageType == 11) {
            customUrl = parseTextAndStrip(document.getElementById("modal_page_seo_customurl").value).trim();
        }

        if (thePageSeo == null) {
            thePageSeo = {
                "title": null,
                "keywords": null,
                "description": null,
                "url": null
            }
        }

        thePageSeo.title = title;
        thePageSeo.keywords = keywords;
        thePageSeo.description = description;
        thePageSeo.url = customUrl;

        if (currentPageType == 6) {
            contactDetailsChange();
        } else {
            pageEditTyping();
        }
        
        document.getElementById("editor_overlay").classList.remove("editor_overlay_active");
        hideById("modal_page_seo");
    }

</script>

    <!-- Editor Overlays -->
    <div id="editor_welcome_overlay"></div>
    <div id="editor_overlay"></div>
    <div id="editor_overlay_mobile"></div>
    <!-- End Editor Overlays -->
    
    <!-- Image Gallery -->
    
<link rel="stylesheet" type="text/css" href="/css/user_controls/image_gallery.css" />
<link rel="stylesheet" type="text/css" href="/css/reusable.css" />
<link rel="stylesheet" type="text/css" href="/css/manage/dropzone.css" />
<script src="/javascript/dropzone/dropzone.js"></script>
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
<script src="/javascript/moment/moment.min.js" type="text/javascript"></script>
<script src="/javascript/reusable/pagination.js"></script>
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
                                    <div class="quicksearch_results_container">
                                        <label for="">Search</label>
                                        <input class="txtQuickSearch" data-qSearch="image_gallery" type="text" placeholder="Search Image Name" onkeyup="imageQuickSearch();" />
                                    </div>
                                    <div class="quicksearch_results" data-qSearch="image_gallery" class="margint20"></div>
                                </div>
                                <div class="input_container_50">
                                    <div class="input_container inline_checkboxes images_view_type_ucImageGallery">
                                        <div class="checkbox_container">
                                            <input type="radio" id="images_view_type1_ucImageGallery" name="images_view_type_ucImageGallery" checked="checked" />
                                            <label for="images_view_type1_ucImageGallery"><span>Grid</span></label>
                                        </div>
                                        <div class="checkbox_container">
                                            <input type="radio" id="images_view_type2_ucImageGallery" name="images_view_type_ucImageGallery" />
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

    <script src='/javascript/reusable/jquery-1.11.3.min.js'></script>
    <script src='/javascript/reusable/jqueryuiclone1_12_1.js'></script>

    <script src="javascript/editor/editor.js?v=13ab114412da4eb823b1608708f2ec0e" type="text/javascript"></script>

    <script src="javascript/ace-builds-master/src-min-noconflict/ace.js?v=8d93bd13017346a7767e88751b194587" charset="utf-8"></script>

    <script src="javascript/theme-editor/html2canvas.js?v=1e002fa2771280c933b195a1515e0035" type="text/javascript" charset="utf-8"></script>

    <script src="javascript/color-picker/spectrum.js?v=120a32bcce0033565412d72069c90178" type="text/javascript" charset="utf-8"></script>
    <link rel="stylesheet" type="text/css" href="/javascript/color-picker/spectrum.css?v=137609544b8fc61b8dfc242a2f33fa31" />

    <script src="https://cdn.tiny.cloud/1/j93ak2nja3dy032vg0qvoc4sxblmds9f6zz2b0txhe5tz84p/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>




    <!-- Logo Generator -->
    <div class="modal modal_logo_generator">
        <div class="modal_header">
            <div class="modal_title">Logo Generator</div>
            <div class="modal_expand" data-expand="normal"><i class="fa fa-window-maximize" aria-hidden="true"></i></div>
            <div class="modal_close"><i class="fa fa-times" aria-hidden="true"></i></div>
        </div>
        <div class="modal_body_outer_container">
            <div class="modal_body">
                <p>Use this simple app to create your own text logo. Provide your own text, choose your favourite font and colors then hit the <strong>Generate Logo</strong> button.</p>
                <p>Once you are happy with the logo click the <strong>Save</strong> button.</p>
            </div>
            <div class="modal_body paddingt10">
                <div class="busy_wait busy_wait_static busy_wait_theme_logo_generator">
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
                        <span>Loading Generator</span>
                    </div>
                </div>
                <div id="logo_generator_inner">
                    <div id="logo_generator_inner_container">
                        <div class="hide_overflow">
                            <div class="width_50">
                                <div class="input_container">
                                    <label for="logo_generator_title">Logo Title</label>
                                    <input type="text" id="logo_generator_title" placeholder="Freewebstore" value="Freewebstore" onchange="logoGeneratorChange();" onkeyup="logoGeneratorChange();" />
                                </div>
                            </div>
                            <div class="width_50">
                                <div class="hide_overflow">
                                    <div class="width_50">
                                        <div class="input_container">
                                            <label for="logo_generator_title_size">Title Size</label>
                                            <input type="number" id="logo_generator_title_size" min="10" max="30" step="1" value="20" onchange="logoGeneratorChange();" onkeyup="logoGeneratorChange();" />
                                        </div>
                                    </div>
                                    <div class="width_50">
                                        <div class="logo_generator_color">
                                            <input type="text" class="logo_generator_title_color" value="#3bf10d" />
                                        </div>
                                    </div>
                                </div>
                    
                            </div>
                        </div>
                        <div class="hide_overflow">
                            <div class="width_50">
                                <div class="input_container">
                                    <label for="logo_generator_tag">Tag Line</label>
                                    <input type="text" id="logo_generator_tag" placeholder="Ecommerce for Everyone" value="Ecommerce for Everyone" onchange="logoGeneratorChange();" onkeyup="logoGeneratorChange();" />
                                </div>
                            </div>
                            <div class="width_50">
                                <div class="hide_overflow">
                                    <div class="width_50">
                                        <div class="input_container">
                                            <label for="logo_generator_tag_size">Tag Line Size</label>
                                            <input type="number" id="logo_generator_tag_size" min="10" max="30" step="1" value="11" onchange="logoGeneratorChange();" onkeyup="logoGeneratorChange();" />
                                        </div>
                                    </div>
                                    <div class="width_50">
                                        <div class="logo_generator_color">
                                            <input type="text" class="logo_generator_tag_color" value="#212121" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="hide_overflow">
                            <div class="width_50">
                                <div class="input_container">
                                    <label for="logo_generator_font">Logo Font</label>
                                    <select id="logo_generator_font" onchange="logoGeneratorChange();" >
                                        <option value='Arial, Helvetica, sans-serif'>Arial</option>
                                        <option value='"Arial Black", Gadget, sans-serif'>Arial Black</option>
                                        <option value='"Comic Sans MS", cursive, sans-serif'>Comic Sans MS</option>
                                        <option value='"Courier New", Courier, monospace'>Courier New</option>
                                        <option value='Georgia, serif'>Georgia</option>
                                        <option value='Impact, Charcoal, sans-serif'>Impact</option>
                                        <option value='"Lucida Console", Monaco, monospace'>Lucida Console</option>
                                        <option value='"Lucida Sans Unicode", "Lucida Grande", sans-serif'>Lucida Sans Unicode</option>
                                        <option value='"Palatino Linotype", "Book Antiqua", Palatino, serif'>Palatino Linotype</option>
                                        <option value='Tahoma, Geneva, sans-serif'>Tahoma</option>
                                        <option value='"Times New Roman", Times, serif'>Times New Roman</option>
                                        <option value='"Trebuchet MS", Helvetica, sans-serif'>Trebuchet MS</option>
                                        <option value='Verdana, Geneva, sans-serif'>Verdana</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="busy_wait busy_wait_static busy_wait_theme_logo_generating">
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
                            <span>Generating Logo</span>
                        </div>
                    </div>

                    <div id="logo_generator_canvas_container_preview" class="logo_generator_canvas_container">
                        <div class="marginb10"><strong>Preview</strong></div>
                        <div id="logo_generator_example">
                            <div id="logo_generator_example_inner">
                                <div id="logo_generator_example_title"></div>
                                <div id="logo_generator_example_tag"></div>
                            </div>
                        </div>
                    </div>

                    <div id="logo_generator_canvas_container_finished" class="logo_generator_canvas_container">
                        <div class="marginb10"><strong>Generated Logo</strong></div>
                        <div id="logo_generator_finished"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal_footer">
            <a class="button button_dgrey modal_footer_left close_modal_button">Cancel</a>
            <a id="logo_generator_button_save" class="button button_primary button_disabled modal_footer_right" onclick="saveGeneratedLogo();">Save</a>
            <a id="logo_generator_generate_button" class="button button_primary button_disabled button_disabled modal_footer_right marginr10" onclick="generateNewLogo();">Generate</a>
        </div>
    </div>
    <!-- End of Logo Generator -->


    <!-- FAQ Templates -->
    <div class="modal modal_faq_templates">
        <div class="modal_header">
            <div class="modal_title">FAQ Templates</div>
            <div class="modal_expand" data-expand="normal"><i class="fa fa-window-maximize" aria-hidden="true"></i></div>
            <div id="modal_faq_templates_top_close_button" class="modal_close"><i class="fa fa-times" aria-hidden="true"></i></div>
        </div>
        <div class="modal_body_outer_container">
            <div class="modal_body">
                <p>Select a FAQ template below, you can change this later if you wish.</p>
            </div>
            <div class="modal_body paddingt20 paddingb20">
                <div id="modal_faq_templates_container"></div>
            </div>
        </div>
        <div class="modal_footer">
            <a id="modal_faq_templates_close_button" class="button button_dgrey modal_footer_left close_modal_button">Close</a>
        </div>
    </div>
    <!-- End of FAQ Tempaltes -->
    
    <script type="text/javascript">

        window.$zopim || (function (d, s) {
            var z = $zopim = function (c) { z._.push(c) }, $ = z.s =
                d.createElement(s), e = d.getElementsByTagName(s)[0]; z.set = function (o) {
                    z.set.
                        _.push(o)
                }; z._ = []; z.set._ = []; $.async = !0; $.setAttribute("charset", "utf-8");
            $.src = "https://v2.zopim.com/?55zvj4XfrXeG1gwbXTH91yYvEExlBBDq"; z.t = +new Date; $.
                type = "text/javascript"; e.parentNode.insertBefore($, e)
        })(document, "script");

        $zopim(function () {
            $zopim.livechat.window.hide();
            $zopim.livechat.set({
                language: 'en'
            });
            $zopim.livechat.addTags('Editor', 'Ridge', 'storeId' + storeId);
        });
    </script>

    <script src="https://cdn.trackjs.com/agent/v3/latest/t.js"></script>
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
            $(document).ajaxError(function (evt, xhr, opts, message) {
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

    

<link type="text/css" rel="stylesheet" href="/css/user_controls/billingv2/billing.css?v=7b5e317d256e631d4ee72ef461d96aad" />

<div class="modal modal_billingv2">
    <div class="modal_header">
        <div class="modal_title">Billing</div>
        <div class="modal_expand" data-expand="normal"><i class="fa fa-window-maximize" aria-hidden="true"></i></div>
        <div class="modal_close"><i class="fa fa-times" aria-hidden="true"></i></div>
    </div>
    <div class="modal_body_outer_container">
        <div class="modal_body">

            <div class="busy_wait busy_wait_static busy_wait_billingv2">
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
                    <span id="busy_wait_billingv2_text">Checking VAT Status</span>
                </div>
            </div>

            

            <div id="modal_billingv2_list_payment_methods_error" class="align_center paddingt20">
                <h2>Oops!</h2>
                <p>Sorry, we were unable to load your payment methods.</p>
                <p>Please <a class="button button_primary" onclick="billingv2CheckPaymentMethods();">try again</a> or <a href="/support_new_ticket.aspx" class="link_color_primary">contact support</a>.</p>
            </div>

        </div>
    </div>
    <div class="modal_footer">
        <a class="button button_dgrey modal_footer_left close_modal_button">Close</a>
    </div>
</div>

<script src="/javascript/user_controls/billingv2/billing.js?v=1274b646afd1ea68a51316877f973224"></script>



<script>
    function VATSettings() {

        $(".busy_wait_modal_vat_status").show();
        $("#modal_body_vat_setup, #modal_body_vat_subscription, #saveVatStatus_button").hide();

        getCorrectCurrency().then(function (res) {
            var vatSettingsSubscription = res.subscription;
            if (vatSettingsSubscription == true) {
                $(".busy_wait_modal_vat_status, #saveVatStatus_button").hide();
                $("#modal_body_vat_subscription").show();
            } else {
                getVatSettings();
            }
            //getVatSettings(); only uncomment this if you are debugging - Remember to comment it out before you push live
        });
    }

    function getVatSettings() {
        $.ajax({
            async: true,
            url: '/services/settingsv2/settings_pricing.svc/VATInformation?storeId=' + storeId,
            success: function (data) {
                var tax = data.d || data;
                console.log(tax);
                $('#settings_business_tax').val(tax.chargeTax);
                if (tax.chargeTax === 1) {
                    $("#settings_pricing_container_taxadded").show();
                } else {
                    $("#settings_pricing_container_taxadded").hide();
                }
                $('#settings_business_taxPr').val(tax.taxrate);
                $('#settings_business_tax_store').val(tax.taxDisplayPrice);
                $('#settings_business_tax_Status').text(tax.VATStatus);
                if (tax.country != null) {
                    $('.vatstatus').val(tax.country);
                }
                $('#settings_business_tax_num').val(tax.vatNum);
                $('#settings_vat_registered').hide();
                $('#registeredyesno').hide();
                $("#settings_vat_StatusIndivid").prop("checked", true);
                if (tax.isbusiness || tax.vatNum) {
                    $("#settings_vat_StatusBusiness").prop("checked", true);
                    $('#registeredyesno').show();
                } else {
                    $("#settings_vat_StatusIndivid").prop("checked", true);
                }
                
                $('#vatnum').hide();
                if (tax.isReg == 1) {
                    $('#registeredyesno').show();
                    $('#settings_vat_registered').text("1");
                    $("#settings_vat_registeredYes").prop("checked", true);
                    $('#vatnum').show();
                } else {
                    $('#settings_vat_registered').text("0");
                    $("#settings_vat_registeredNo").prop("checked", true);
                }

                saveVatStatusChange()
            },
            error: function (r, s, e) {
                console.log(r);
            },
            complete: function () {
                $(".busy_wait_modal_vat_status").hide();
                $("#modal_body_vat_setup, #saveVatStatus_button").show();
            }
        });
    }

    $(document).ready(function () {
        $("input[name='settings_vatstatus']").click(function () {
            var storeStatusShow = $(this).attr("id");
            if (storeStatusShow === "settings_vat_StatusIndivid") {
                $('#registeredyesno').hide();
            } else {
                $('#registeredyesno').show();
            }
        });

        $("input[name='settings_vatregs']").click(function () {
            var storeStatusShow = $(this).attr("id");
            if (storeStatusShow === "settings_vat_registeredYes") {
                $("#settings_vat_registered").text("1");
                $('#vatnum').show();
            } else {
                $("#settings_vat_registered").text("0");
                $('#vatnum').hide();
            }
        });

        $("#settings_business_tax").change(function () {
            console.log("run");
            var pricingTaxShow = $(this).val();
            if (pricingTaxShow === "0") {
                $("#settings_pricing_container_taxadded").hide();
            } else {
                $("#settings_pricing_container_taxadded").show();
            }
        });

        $("#modal_container_vat_setup input, #modal_container_vat_setup select").on('change keydown paste input', function () {
            saveVatStatusChange();
        });
    });

    function saveVatStatusChange() {
        var vatStatusSelect = $(".vatstatus").val();
        if (vatStatusSelect != -1) {
            $("#saveVatStatus_button").removeClass("button_disabled");
        } else {
            $("#saveVatStatus_button").addClass("button_disabled");
        }
    }

    function saveVATStatus() {

        document.getElementById("saveVatStatus_button").innerHTML = '<i class="fa fa-spinner fa-spin"></i> Saving';
        document.getElementById("saveVatStatus_button").classList.add("button_disabled");

        var taxregion = $('.vatstatus').val();
        var taxnum = $('#settings_business_tax_num').val();
        var isreg = $('#settings_vat_registered').text();

        var isBusinessCheck = $("input[name='settings_vatstatus']:checked").attr("id");
        if (isBusinessCheck == "settings_vat_StatusIndivid") {
            var isBusiness = "0";
        } else {
            var isBusiness = "1";
        }
            
        $.ajax({
            async: true,
            url: '/services/account/vatdetails.svc/saveDetails?storeId=' + storeId + '&country=' + taxregion + '&business=' + isBusiness + '&registered=' + isreg + '&vatNum=' + taxnum,
            success: function (resp) {
                console.log(resp);
                if (resp.d == null) {
                    $(".modal_vat_setup, .modal_overlay").fadeOut();
                    $("body").removeClass("body_modal_is_open");

                    if (typeof billingV2VatCheck !== 'undefined') {
                        if (billingV2VatCheck == true) {
                            buildBillingV2OverviewVat();
                        }
                    } else  if (window.location.href.split("/").pop() == "marketing_domains.aspx") {
                        location.reload();
                    } else if (location.pathname == "/marketing_domains_register.aspx") {
                        $(".modal_vat_setup, .overlay_forced").hide();
                        checkVATStatus();
                    } else if (window.location.href.split("/").pop() == "account_subscription_packages.aspx") {
                        $(".modal_vat_setup, .overlay_forced").hide();
                        $("body").addClass("body_modal_is_open");
                        checkVATStatus();
                    } else if (location.pathname == "/appstore/appstore_item.aspx") {
                        $(".modal_vat_setup, .overlay_forced").hide();
                        checkVATStatus();
                    } else if (window.location.href.split("/").pop() == "settings_pricing.aspx") {
                        refreshPricingSettings();
                    } else if (window.location.href.split("/").pop() == "account_settings.aspx") {
						getVatInfo();
                    }

                    // Not sure why this was here?
                    //VATSettings();

                } else {
                    $('.errorvat').show();
                    $('.errorvat').text(resp.d);
                }
            },
            error: function (r, s, e) {
                formatErrorMessage(r, e);
            },
            complete: function () {
                document.getElementById("saveVatStatus_button").innerHTML = 'Save Details';
                document.getElementById("saveVatStatus_button").classList.remove("button_disabled");
            }
        })
    }
</script>


<div class="modal modal_vat_setup">
    <div class="modal_header">
        <div class="modal_title">Setup VAT Status</div>
        <div class="modal_expand" data-expand="normal"><i class="fa fa-window-maximize" aria-hidden="true"></i></div>
        <div class="modal_close"><i class="fa fa-times" aria-hidden="true"></i></div>
    </div>
    <div class="modal_body_outer_container" id="modal_container_vat_setup">
        <div class="busy_wait busy_wait_static busy_wait_modal_vat_status">
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
                <span>Loading VAT Status</span>
            </div>
        </div>

        <div id="modal_body_vat_subscription" class="modal_body align_center paddingt10 paddingb10">
            <h2>Active Subscription Detected!</h2>
            <p>You cannot make changes to your VAT status whilst you have an <strong>Active Subscription</strong>.</p>
			<p>If your VAT situation has changed then please contact our support team with your new details and they will make the necessary changes for you.</p>
            <a href="/support_new_ticket.aspx" class="button button_primary button_table">Contact Support</a>
        </div>

        <div id="modal_body_vat_setup" class="modal_body">
                <div class="hide_overflow">
                <p>1. Is your store operated by a business or an individual?</p>
                <div class="input_container inline_checkboxes">
                    <div class="checkbox_container ">
                        <input type="radio" id="settings_vat_StatusIndivid" name="settings_vatstatus" />
                        <label for="settings_vat_StatusIndivid"><span>Individual</span></label>
                    </div>
                    <div class="checkbox_container ">
                        <input type="radio" id="settings_vat_StatusBusiness" name="settings_vatstatus" />
                        <label for="settings_vat_StatusBusiness"><span>Business</span></label>
                    </div>
                </div>
          </div>
          <div class="hide_overflow">
              <p class="marginb10">2. What is your country of residence? If business, which country is the business registered in?</p>
              <div class="input_container input_container_50">
                  <select class="vatstatus" id="settings_vat_dropdown">
                        <option value="-1">Please Select</option>
                        <option value="AF">Afghanistan</option>
				        <option value="AX">Aland Islands</option>
				        <option value="AL">Albania</option>
				        <option value="DZ">Algeria</option>
				        <option value="AS">American Samoa</option>
				        <option value="AD">Andorra</option>
				        <option value="AO">Angola</option>
				        <option value="AI">Anguilla</option>				
				        <option value="AQ">Antarctica</option>
				        <option value="AG">Antigua and Barbuda</option>				
				        <option value="AN">Antilles (Netherlands)</option>
				        <option value="AR">Argentina</option>
				        <option value="AM">Armenia</option>		
				        <option value="AW">Aruba</option>
				        <option value="AU">Australia</option>
				        <option value="AT">Austria</option>
				        <option value="AZ">Azerbaijan</option>				
								
				        <option value="BS">Bahamas</option>
				        <option value="BH">Bahrain</option>
				        <option value="BD">Bangladesh</option>
				        <option value="BB">Barbados</option>
				        <option value="BY">Belarus</option>
				        <option value="BE">Belgium</option>
				        <option value="BZ">Belize</option>
				        <option value="BJ">Benin</option>
				        <option value="BM">Bermuda</option>
				        <option value="BT">Bhutan</option>
				        <option value="BO">Bolivia</option>				
				        <option value="BA">Bosnia and Herzegovina</option>				
				        <option value="BW">Botswana</option>
				        <option value="BV">Bouvet Island</option>
				        <option value="BR">Brazil</option>
				        <option value="IO">British Indian Ocean Territory</option>
				        <option value="BN">Brunei Darussalam</option>
				        <option value="BG">Bulgaria</option>
				        <option value="BF">Burkina Faso</option>
				        <option value="BI">Burundi</option>				
				
				
				        <option value="CA">Canada</option>
				        <option value="CV">Cape Verde</option>
				        <option value="KH">Cambodia</option>
				        <option value="CM">Cameroon</option>
				        <option value="KY">Cayman Islands</option>				
				        <option value="CF">Central African Republic</option>
				        <option value="TD">Chad</option>
				        <option value="CL">Chile</option>
				        <option value="CN">China</option>	
				        <option value="CX">Christmas Island</option>
				        <option value="CO">Colombia</option>
				        <option value="CD">Congo (Democratic Republic)</option>
				        <option value="CG">Congo</option>
				        <option value="KM">Comoros</option>
				        <option value="CK">Cook Islands</option>
				        <option value="CR">Costa Rica</option>
				        <option value="HR">Croatia (Hrvatska)</option>
				        <option value="CU">Cuba</option>			
				        <option value="CY">Cyprus</option>
				        <option value="CZ">Czech Republic</option>				
								
				        <option value="DK">Denmark</option>
				        <option value="DJ">Djibouti</option>
				        <option value="DM">Dominica</option>
				        <option value="DO">Dominican Republic</option>
				
				        <option value="TP">East Timor</option>
				        <option value="EC">Ecuador</option>
				        <option value="EG">Egypt</option>				
				        <option value="SV">El Salvador</option>			
				        <option value="ER">Eritrea</option>	
				        <option value="EE">Estonia</option>				
				        <option value="ET">Ethiopia</option>				
				
				        <option value="FK">Falkland Islands</option>
				        <option value="FO">Faroe Islands</option>
				        <option value="FJ">Fiji</option>
				        <option value="FI">Finland</option>
				        <option value="FR">France</option>
				        <option value="GF">French Guiana</option>
				        <option value="TF">French Southern Territories</option>
				
				        <option value="GA">Gabon</option>
				        <option value="GM">Gambia</option>
				        <option value="GE">Georgia</option>
				        <option value="DE">Germany</option>
				        <option value="GH">Ghana</option>
				        <option value="GI">Gibraltar</option>
				        <option value="GD">Grenada</option>				
				        <option value="EL">Greece</option>
				        <option value="GL">Greenland</option>
				        <option value="GP">Guadeloupe</option>				
				        <option value="GT">Guatemala</option>
				        <option value="GN">Guinea</option>							
				        <option value="GQ">Guinea (Equatorial)</option>
				        <option value="GU">Guam</option>
				        <option value="GW">Guinea-Bissau</option>
				        <option value="GY">Guyana</option>
								
				        <option value="HT">Haiti</option>
				        <option value="HN">Honduras</option>				
				        <option value="HK">Hong Kong</option>				
				        <option value="HU">Hungary</option>
								
				        <option value="IS">Iceland</option>
				        <option value="IN">India</option>	
				        <option value="ID">Indonesia</option>
				        <option value="IQ">Iraq</option>
				        <option value="IR">Iran</option>
				        <option value="IE">Ireland</option>
				        <option value="IL">Israel</option>
				        <option value="IT">Italy</option>
				        <option value="CI">Ivory Coast</option>
				
				        <option value="JM">Jamaica</option>
				        <option value="JP">Japan</option>
				        <option value="JO">Jordan</option>
				
							
				        <option value="KZ">Kazakhstan</option>
				        <option value="KE">Kenya</option>
				        <option value="KI">Kiribati</option>				
				        <option value="KP">Korea (North)</option>
				        <option value="KR">Korea (South)</option>
				        <option value="KW">Kuwait</option>	
				        <option value="KG">Kyrgyzstan</option>				
				
				        <option value="LA">Laos</option>
				        <option value="LV">Latvia</option>
				        <option value="LB">Lebanon</option>
				        <option value="LS">Lesotho</option>		
				        <option value="LR">Liberia</option>					
				        <option value="LY">Libya</option>	
				        <option value="LI">Liechtenstein</option>
				        <option value="LT">Lithuania</option>
				        <option value="LU">Luxembourg</option>
				
				
				        <option value="MO">Macao</option>
				        <option value="MK">Macedonia</option>
				        <option value="MG">Madagascar</option>
				        <option value="MW">Malawi</option>				
				        <option value="MY">Malaysia</option>
				        <option value="MV">Maldives</option>
				        <option value="ML">Mali</option>
				        <option value="MT">Malta</option>				
				        <option value="MQ">Martinique</option>
				        <option value="MH">Marshall Islands</option>
				        <option value="MR">Mauritania</option>								
				        <option value="MU">Mauritius</option>
				        <option value="YT">Mayotte</option>	
				        <option value="MX">Mexico</option>			
				        <option value="MD">Moldova</option>
				        <option value="MC">Monaco</option>
				        <option value="MN">Mongolia</option>
                        <option value="ME">Montenegro</option>
				        <option value="MS">Montserrat</option>				
				        <option value="MA">Morocco</option>
				        <option value="MZ">Mozambique</option>				
				        <option value="MM">Myanmar</option>
								
				        <option value="NA">Namibia</option>
				        <option value="NR">Nauru</option>
				        <option value="NP">Nepal</option>
				        <option value="NL">Netherlands</option>
				        <option value="NC">New Caledonia</option>
				        <option value="NZ">New Zealand</option>				
				        <option value="NI">Nicaragua</option>				
				        <option value="NE">Niger</option>
				        <option value="NG">Nigeria</option>
				        <option value="NU">Niue</option>				
				        <option value="NF">Norfolk Island</option>			
				        <option value="NO">Norway</option>	
				
				        <option value="OM">Oman</option>
												
				        <option value="PK">Pakistan</option>
				        <option value="PW">Palau</option>
				        <option value="PS">Palestinian Territory</option>
				        <option value="PA">Panama</option>				
				        <option value="PG">Papua New Guinea</option>				
				        <option value="PY">Paraguay</option>
				        <option value="PE">Peru</option>
				        <option value="PH">Philippines</option>
				        <option value="PN">Pitcairn</option>				
				        <option value="PL">Poland</option>								
				        <option value="PF">Polynesia (French)</option>						
				        <option value="PT">Portugal</option>		
				        <option value="PR">Puerto Rico</option>				
				
				        <option value="QA">Qatar</option>				
				
				        <option value="RE">Reunion</option>
				        <option value="RO">Romania</option>
				        <option value="RU">Russian Federation</option>
				        <option value="RW">Rwanda</option>
				
				        <option value="SH">Saint Helena</option>
				        <option value="PM">Saint Pierre and Miquelon</option>											
				        <option value="SM">San Marino</option>
				        <option value="ST">Sao Tome and Principe</option>
				        <option value="SA">Saudi Arabia</option>				
				        <option value="WS">Samoa</option>					
				        <option value="SN">Senegal</option>			
				        <option value="SC">Seychelles</option>				
				        <option value="SG">Singapore</option>		
				        <option value="SK">Slovak Republic</option>
				        <option value="SI">Slovenia</option>
				        <option value="SB">Solomon Islands</option>
				        <option value="SO">Somalia</option>
				        <option value="ZA">South Africa</option>
				        <option value="ES">Spain</option>
				        <option value="SD">Sudan</option>
				        <option value="SJ">Svalbard and Jan Mayen</option>
				        <option value="SE">Sweden</option>	
				        <option value="RS">Serbia</option>	
				        <option value="SL">Sierra Leone</option>
				        <option value="SR">Suriname</option>
				        <option value="SY">Syria</option>
				        <option value="SZ">Swaziland</option>
				        <option value="LC">Saint Lucia</option>
				        <option value="LK">Sri Lanka</option>
				        <option value="CH">Switzerland</option>
				        <option value="KN">Saint Kitts and Nevis</option>
				
				        <option value="TC">Turks and Caicos Islands</option>
				        <option value="TG">Togo</option>
				        <option value="TH">Thailand</option>
				        <option value="TJ">Tajikistan</option>
				        <option value="TK">Tokelau</option>
				        <option value="TL">Timor-Leste</option>
				        <option value="TM">Turkmenistan</option>
				        <option value="TN">Tunisia</option>
				        <option value="TO">Tonga</option>				
				        <option value="TR">Turkey</option>
				        <option value="TT">Trinidad and Tobago</option>
				        <option value="TV">Tuvalu</option>
				        <option value="TW">Taiwan</option>
				        <option value="TZ">Tanzania</option>
				
				        <option value="UA">Ukraine</option>
				        <option value="UG">Uganda</option>
				        <option value="AE">United Arab Emirates</option>
				        <option value="GB">United Kingdom</option>
				        <option value="US">United States</option>				
				        <option value="SU">USSR (former)</option>
				        <option value="UY">Uruguay</option>
				        <option value="UZ">Uzbekistan</option>
				
				        <option value="VE">Venezuela</option>
				        <option value="VG">Virgin Islands (British)</option>
				        <option value="VI">Virgin Islands (U.S.)</option>
				        <option value="VN">Viet Nam</option>
				        <option value="VU">Vanuatu</option>
				
				        <option value="WF">Wallis and Futuna</option>
				        <option value="EH">Western Sahara</option>
				
				        <option value="YE">Yemen</option>
				
				        <option value="ZM">Zambia</option>
				        <option value="ZR">Zaire</option>
				        <option value="ZW">Zimbabwe</option>
                  </select>
                </div>
              </div>
            <div class="hide_overflow" id="registeredyesno">
                <p>3. Are you VAT Registered?</p>
                <div id="settings_vat_registered"></div>
                <div class="input_container inline_checkboxes">
                    <div class="checkbox_container ">
                        <input type="radio" id="settings_vat_registeredYes" name="settings_vatregs" />
                        <label for="settings_vat_registeredYes"><span>Yes</span></label>
                    </div>
                    <div class="checkbox_container ">
                        <input type="radio" id="settings_vat_registeredNo" name="settings_vatregs" />
                        <label for="settings_vat_registeredNo"><span>No</span></label>
                    </div>
                </div>
          </div>
          <div class="hide_overflow" id="vatnum">
            <div class="input_container input_container_50">
                <label for="settings_business_tax_num">VAT Number:</label>
                <input type="text" id="settings_business_tax_num" placeholder="0123456789" data-settingsDefaultName="Tax Number" />
            </div>
         </div>
            <p class="errorvat color_red" style="display: none;"></p>
      </div>
    </div>
    <div class="modal_footer">
        <a class="button button_dgrey modal_footer_left close_modal_button cancelVatStatus_button">Close</a>
        <a id="saveVatStatus_button" class="button button_primary modal_footer_right button_disabled" onclick="saveVATStatus();">Save Details</a>
    </div>
</div>



<link type="text/css" rel="stylesheet" href="/css/user_controls/billingv2/billing_overview.css?v=4be916ff70025725f34cc2e55d778387" />

<div class="modal modal_billingv2_overview">
    <div class="modal_header">
        <div class="modal_title" id="modal_billingv2_overview_title">Payment Overview</div>
        <div class="modal_expand" data-expand="normal"><i class="fa fa-window-maximize" aria-hidden="true"></i></div>
        <div id="modal_billingv2_overview_close_button_X" class="modal_close"><i class="fa fa-times" aria-hidden="true"></i></div>
    </div>
    <div class="modal_body_outer_container">
        <div class="modal_body paddingt20 paddingb20">

            <div class="busy_wait busy_wait_static busy_wait_billingv2_overview">
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
                    <span>Loading Overview</span>
                </div>
            </div>

            <div id="modal_billingv2_overview_check_vat_error" class="align_center paddingt20">
                <h2>Oops!</h2>
                <p>Sorry, we were unable to load your VAT status.</p>
                <p>Please <a class="button button_primary" onclick="buildBillingV2Overview();">try again</a> or <a href="/support_new_ticket.aspx" class="link_color_primary">contact support</a>.</p>
            </div>

            <div id="modal_billingv2_overview_error" class="align_center paddingt20">
                <h2>Oops!</h2>
                <p>Sorry, we were unable to load the payment overview.</p>
                <p>Please <a class="button button_primary" onclick="buildBillingV2Overview();">try again</a> or <a href="/support_new_ticket.aspx" class="link_color_primary">contact support</a></p>
            </div>

            <div id="modal_billingv2_overview_container">
            
                <div id="modal_billingv2_overview_details">
                    <div id="modal_billingv2_overview_details_image_container">
                        <img id="modal_billingv2_overview_details_image" src="//d11fdyfhxcs9cr.cloudfront.net/design_media/freewebstore/appstore/freewebstore/checkout-paypal/icon.jpg">
                    </div>
                    <div id="modal_billingv2_overview_details_info_container">
                        <div id="modal_billingv2_overview_details_info_title"></div>
                        <div id="modal_billingv2_overview_details_info_trial">1-month free trial</div>
                        <div id="modal_billingv2_overview_details_info_rrp_container">RRP <span id="modal_billingv2_overview_details_info_rrp"></span></div>
                        <div id="modal_billingv2_overview_details_info_discount"><span id="modal_billingv2_overview_details_info_discount_percent"></span> Discount Applied*</div>
                        <div id="modal_billingv2_overview_details_info_priceTotal"></div>
                        <div id="modal_billingv2_overview_details_info_tax_overview">
                            <div id="modal_billingv2_overview_details_info_net"></div>
                            <div id="modal_billingv2_overview_details_info_rate"></div>
                            <div id="modal_billingv2_overview_details_info_tax"></div>
                        </div>
                        <div id="modal_billingv2_overview_details_info_period"></div>
                    </div>
                </div>
                <div id="modal_billingv2_overview_details_sub_message_trial" class="align_center"><p><strong>You will be billed automatically on the <span id="modal_billingv2_overview_details_sub_message_trial_date"></span> and monthly thereafter.</strong></p></div>
                <div class="align_center"><p id="modal_billingv2_overview_details_sub_message">You can cancel at any time.</p></div>
                <div id="modal_billingv2_overview_details_sub_message_discount" class="align_center"><p>*Discount Applies to 1st Payment Only.</p></div>

                <div id="modal_billingv2_overview_card_container">

                    <div class="busy_wait busy_wait_static busy_wait_billingv2_overview_card">
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
                            <span>Loading Payment Method</span>
                        </div>
                    </div>

                    <div id="modal_billingv2_overview_card_selected">
                        <div id="modal_billingv2_overview_card_selected_inner"></div>
                        <p><a id="modal_billingv2_overview_card_selected_change" class="link_color_primary">Change Payment Method</a></p>
                    </div>

                    <div id="modal_billingv2_overview_card_hascards">
                        <h3>Please select a payment method.</h3>
                        <a class="button button_primary" id="modal_billingv2_overview_card_hascards_button">Select Payment Method</a>
                    </div>

                    <div id="modal_billingv2_overview_card_nocards">
                        <h3>Please add a payment method.</h3>
                        <div id="modal_billingv2_overview_card_nocards_trial">Why do we ask for your payment info?<span id="modal_billingv2_overview_card_nocards_trial_info">We ask for payment information so you can enjoy premium features, apps, and boosts uninterrupted should you continue after the free period. If you cancel your trial before <span id="modal_billingv2_overview_card_nocards_trial_info_date"></span>, you won't be charged.</span></div>
                        <a class="button button_primary" onclick="loadBillingV2AddPaymentMethod();">Add Payment Method</a>
                    </div>

                    <div id="modal_billingv2_overview_card_noneselected">
                        <p class="color_red align_center"><strong>Please select a payment method.</strong></p>
                    </div>

                    <div id="modal_billingv2_overview_general_error" class="align_center">
                        <p class="color_red"><strong>Sorry, we encounted an error</strong></p>
                        <div id="modal_billingv2_overview_general_error_message" class="modal_billingv2_processing_error_general_info"></div>
                        <p>Please try again or <a href="/support_new_ticket.aspx" class="link_color_primary">contact support</a></p>
                    </div>

                </div>

            </div>

        </div>
    </div>
    <div class="modal_footer">
        <a id="modal_billingv2_overview_close_button" class="button button_dgrey modal_footer_left close_modal_button">Close</a>
        <a id="modal_billingv2_overview_install_free_app" class="button button_primary modal_footer_right" onclick="">Enable App</a>
        <a id="modal_billingv2_overview_confirm_payment" class="button button_primary button_disabled modal_footer_right" onclick="billingOverviewConfirmPayment();"><i class="fa fa-lock marginr5" aria-hidden="true"></i>Confirm</a>
    </div>
</div>

<script src='https://js.braintreegateway.com/web/3.80.0/js/three-d-secure.min.js'></script>
<script src="https://js.braintreegateway.com/web/3.80.0/js/data-collector.min.js"></script>
<script src="/javascript/user_controls/billingv2/billing_overview.js?v=4095dc83d8e0e195ddc0a45bfdf4d874"></script>


<link type="text/css" rel="stylesheet" href="/css/user_controls/billingv2/billing_cards_in_vault.css?v=6df373050c46dd74376656d3860c4f7b" />

<div class="modal modal_billingv2_cards_in_vault">
    <div class="modal_header">
        <div class="modal_title">Select Your Payment Method</div>
        <div class="modal_expand" data-expand="normal"><i class="fa fa-window-maximize" aria-hidden="true"></i></div>
        <div class="modal_close"><i class="fa fa-times" aria-hidden="true"></i></div>
    </div>
    <div class="modal_body_outer_container">
        <div class="modal_body paddingt20">
            <div class="marginb40">
                <a class="link_color_primary" onclick="backToBillingv2Overview();">Back To Payment Overview</a>
            </div>
            <h3 class="align_center">Select Your Payment Method</h3>
            <div id="modal_billingv2_cards_in_vault_list" class="marginb10"></div>
            <div id="modal_billingv2_cards_in_vault_add_new_container" class="align_center margint20 marginb20">
                <a class="button button_white" onclick="loadBillingV2AddPaymentMethod();">Add New Payment Method</a>
            </div>
        </div>
    </div>
    <div class="modal_footer">
        <a class="button button_dgrey modal_footer_left close_modal_button">Close</a>
        <a id="modal_billingv2_cards_in_vault_button" class="button button_primary button_disabled modal_footer_right" onclick="billingV2CardsInVaultSelect();">Select Payment Method</a>
    </div>
</div>

<script src="/javascript/user_controls/billingv2/billing_cards_in_vault.js?v=61a8954cab828992d1147ec3dd4204d2"></script>


<link type="text/css" rel="stylesheet" href="/css/user_controls/billingv2/billing_no_cards_in_vault.css?v=57609c2e3911cded0fd427c578fd2265" />

<div class="modal modal_billingv2_no_cards_in_vault">
    <div class="modal_header">
        <div class="modal_title">Add Payment Method</div>
        <div class="modal_expand" data-expand="normal"><i class="fa fa-window-maximize" aria-hidden="true"></i></div>
        <div class="modal_close"><i class="fa fa-times" aria-hidden="true"></i></div>
    </div>
    <div class="modal_body_outer_container">
        <div class="modal_body paddingt20 paddingb20">
            <div class="busy_wait busy_wait_static busy_wait_billingv2_no_cards_in_vault">
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
                    <span>Loading Add Payment Method</span>
                </div>
            </div>
            <div id="modal_billingv2_no_cards_in_vault_error" class="align_center paddingt20">
                <h2>Oops!</h2>
                <p>Sorry, we were unable to load the Add Payment Method section.</p>
                <p>Please <a class="button button_primary" onclick="loadBillingV2AddPaymentMethod();">try again</a> or <a href="/support_new_ticket.aspx" class="link_color_primary">contact support</a>.</p>
            </div>
            <div id="modal_billingv2_no_cards_in_vault_container">
                <div id="modal_billingv2_no_cards_in_vault_back" class="marginb40">
                    <a class="link_color_primary" onclick="billingv2BackToPaymentMethods();">Back to Payment Methods</a>
                </div>
                <h3 class="align_center marginb40 billingv2_translatable" data-translation="1">What payment method would you like to add?</h3>
                <div id="modal_billingv2_no_cards_in_vault_seperator" class="align_center">
                    <div id="billingv2_paypal_button_container"></div>
                </div>
                <div class="align_center">
                    <p class="billingv2_translatable" data-translation="3">Or</p>
                    <a class="button button_primary billingv2_translatable" data-translation="2" onclick="loadBillingV2AddPaymentMethodCard();">Debit/ Credit Card</a>
                </div>
            </div>
        </div>
    </div>
    <div class="modal_footer">
        <a class="button button_dgrey modal_footer_left close_modal_button">Close</a>
    </div>
</div>

<script src="https://js.braintreegateway.com/web/dropin/1.20.0/js/dropin.min.js" defer></script>
<script src="/javascript/user_controls/billingv2/billing_no_cards_in_vault.js?v=50ad97a01efdfea65bbb982e4386d8a6"></script>


<link type="text/css" rel="stylesheet" href="/css/user_controls/billingv2/billing_add_new_card.css?v=b41d9df4a28af0a710384efe6c991569" />

<div class="modal modal_billingv2_add_new_card">
    <div class="modal_header">
        <div class="modal_title billingv2_translatable" data-translation="5">Add New Card</div>
        <div class="modal_expand" data-expand="normal"><i class="fa fa-window-maximize" aria-hidden="true"></i></div>
        <div class="modal_close"><i class="fa fa-times" aria-hidden="true"></i></div>
    </div>
    <div class="modal_body_outer_container">
        <div class="modal_body paddingt20 paddingb20">

            <div class="busy_wait busy_wait_static busy_wait_billingv2_add_new_card">
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
                    <span class="billingv2_translatable" data-translation="6">Loading Add Payment Method</span>
                </div>
            </div>

            <div id="modal_billingv2_add_new_card_error" class="align_center paddingt20">
                <h2>Oops!</h2>
                <p>Sorry, we were unable to load the Add New Card section.</p>
                <p>Please <a class="button button_primary" onclick="loadBillingV2AddPaymentMethodCard();">try again</a> or <a href="/support_new_ticket.aspx" class="link_color_primary">contact support</a>.</p>
            </div>

            <div id="modal_billingv2_add_new_card_container">
                <div id="modal_billingv2_add_new_card_back" class="marginb40">
                    <a class="link_color_primary" onclick="billingv2BackToNoCardsInVault();">Back to Add Payment Method</a>
                </div>

				<div id="modal_billingv2_add_new_card_yours">
					<table id="modal_billingv2_add_new_card_yours_table" class="margint0">
                        <tbody></tbody>
                    </table>
				</div>

                <form action="/" id="modal_billingv2_add_new_card_form" method="post">

					<div id="modal_billingv2_add_new_card_form_braintree_section">
						<div class="input_container">
							<label for="modal_billingv2_add_new_card_cardname">Name on Card</label>
							<input type="text" id="modal_billingv2_add_new_card_cardname" placeholder="Name on Card" maxlength="255" />
						</div>

						<div class="input_container">
							<label for="modal_billingv2_add_new_card_cardnumber">Card Number<span class="modal_billingv2_add_new_card_required">*</span></label>
							<div id="modal_billingv2_add_new_card_cardnumber"></div>
						</div>

						<div class="input_container_3_outer">
							<div class="input_container input_container_50">
								<label for="modal_billingv2_add_new_card_expiration">Expiration Date<span class="modal_billingv2_add_new_card_required">*</span></label>
								<div id="modal_billingv2_add_new_card_expiration"></div>
							</div>
							<div class="input_container input_container_50">
								<label for="modal_billingv2_add_new_card_cvv">CVV<span class="modal_billingv2_add_new_card_required">*</span></label>
								<div id="modal_billingv2_add_new_card_cvv"></div>
							</div>
						</div>

					</div>

					<div class="hide_overflow">
						<div class="input_container input_container_50">
							<label for="modal_billingv2_add_new_card_fname">First name</label>
							<input type="text" id="modal_billingv2_add_new_card_fname" placeholder="First Name" maxlength="255" />
						</div>
						<div class="input_container input_container_50">
							<label for="modal_billingv2_add_new_card_lname">Last Name</label>
							<input type="text" id="modal_billingv2_add_new_card_lname" placeholder="Last Name" maxlength="255" />
						</div>
					</div>

                    <div class="input_container">
                        <label for="modal_billingv2_add_new_card_address1">Street Address</label>
                        <input type="text" id="modal_billingv2_add_new_card_address1" placeholder="Street Address" maxlength="255" />
                        <div class="alert alert_modal_billingv2_add_new_card_address1">Please enter your address</div>
                    </div>

					<div>
						<div class="input_container input_container_50">
							<label for="modal_billingv2_add_new_card_address2">Extended Address</label>
							<input type="text" id="modal_billingv2_add_new_card_address2" placeholder="Extended Address" maxlength="255" />
						</div>
						<div class="input_container input_container_50">
							<label for="modal_billingv2_add_new_card_zip">Zip/ Post Code</label>
							<input type="text" id="modal_billingv2_add_new_card_postal" placeholder="Zip/ Post Code" maxlength="255" />
						</div>
					</div>

                    <div class="hide_overflow">
                    <div class="input_container input_container_50">
                        <label for="modal_billingv2_add_new_card_city">Town/ City</label>
                        <input type="text" id="modal_billingv2_add_new_card_city" placeholder="City" maxlength="255" />
                        <div class="alert alert_modal_billingv2_add_new_card_city">Please enter your town/ city</div>
                    </div>

                    <div class="input_container input_container_50">
                        <label for="modal_billingv2_add_new_card_country">Country</label>
                        <select id="modal_billingv2_add_new_card_country">
							<option value="GB">United Kingdom</option>
		                    <option value="US" selected="selected">United States</option>
                            <option value="AF">Afghanistan</option>
		                    <option value="AX">Aland Islands</option>
		                    <option value="AL">Albania</option>
		                    <option value="DZ">Algeria</option>
		                    <option value="AS">American Samoa</option>
		                    <option value="AD">Andorra</option>
		                    <option value="AO">Angola</option>
		                    <option value="AI">Anguilla</option>
		                    <option value="AQ">Antarctica</option>
		                    <option value="AG">Antigua and Barbuda</option>
		                    <option value="AN">Antilles (Netherlands)</option>
		                    <option value="AR">Argentina</option>
		                    <option value="AM">Armenia</option>
		                    <option value="AW">Aruba</option>
		                    <option value="AU">Australia</option>
		                    <option value="AT">Austria</option>
		                    <option value="AZ">Azerbaijan</option>
		                    <option value="BS">Bahamas</option>
		                    <option value="BH">Bahrain</option>
		                    <option value="BD">Bangladesh</option>
		                    <option value="BB">Barbados</option>
		                    <option value="BY">Belarus</option>
		                    <option value="BE">Belgium</option>
		                    <option value="BZ">Belize</option>
		                    <option value="BJ">Benin</option>
		                    <option value="BM">Bermuda</option>
		                    <option value="BT">Bhutan</option>
		                    <option value="BO">Bolivia</option>
		                    <option value="BA">Bosnia and Herzegovina</option>
		                    <option value="BW">Botswana</option>
		                    <option value="BV">Bouvet Island</option>
		                    <option value="BR">Brazil</option>
		                    <option value="IO">British Indian Ocean Territory</option>
		                    <option value="BN">Brunei Darussalam</option>
		                    <option value="BG">Bulgaria</option>
		                    <option value="BF">Burkina Faso</option>
		                    <option value="BI">Burundi</option>
		                    <option value="CA">Canada</option>
		                    <option value="CV">Cape Verde</option>
		                    <option value="KH">Cambodia</option>
		                    <option value="CM">Cameroon</option>
		                    <option value="KY">Cayman Islands</option>
		                    <option value="CF">Central African Republic</option>
		                    <option value="TD">Chad</option>
		                    <option value="CL">Chile</option>
		                    <option value="CN">China</option>
		                    <option value="CX">Christmas Island</option>
		                    <option value="CO">Colombia</option>
		                    <option value="CD">Congo (Democratic Republic)</option>
		                    <option value="CG">Congo</option>
		                    <option value="KM">Comoros</option>
		                    <option value="CK">Cook Islands</option>
		                    <option value="CR">Costa Rica</option>
		                    <option value="HR">Croatia (Hrvatska)</option>
		                    <option value="CU">Cuba</option>
		                    <option value="CY">Cyprus</option>
		                    <option value="CZ">Czech Republic</option>
		                    <option value="DK">Denmark</option>
		                    <option value="DJ">Djibouti</option>
		                    <option value="DM">Dominica</option>
		                    <option value="DO">Dominican Republic</option>
		                    <option value="TP">East Timor</option>
		                    <option value="EC">Ecuador</option>
		                    <option value="EG">Egypt</option>
		                    <option value="SV">El Salvador</option>
		                    <option value="ER">Eritrea</option>
		                    <option value="EE">Estonia</option>
		                    <option value="ET">Ethiopia</option>
		                    <option value="FK">Falkland Islands</option>
		                    <option value="FO">Faroe Islands</option>
		                    <option value="FJ">Fiji</option>
		                    <option value="FI">Finland</option>
		                    <option value="FR">France</option>
		                    <option value="GF">French Guiana</option>
		                    <option value="TF">French Southern Territories</option>
		                    <option value="GA">Gabon</option>
		                    <option value="GM">Gambia</option>
		                    <option value="GE">Georgia</option>
		                    <option value="DE">Germany</option>
		                    <option value="GH">Ghana</option>
		                    <option value="GI">Gibraltar</option>
		                    <option value="GD">Grenada</option>
		                    <option value="GR">Greece</option>
		                    <option value="GL">Greenland</option>
		                    <option value="GP">Guadeloupe</option>
		                    <option value="GT">Guatemala</option>
		                    <option value="GN">Guinea</option>
		                    <option value="GQ">Guinea (Equatorial)</option>
		                    <option value="GU">Guam</option>
		                    <option value="GW">Guinea-Bissau</option>
		                    <option value="GY">Guyana</option>
		                    <option value="HT">Haiti</option>
		                    <option value="HN">Honduras</option>
		                    <option value="HK">Hong Kong</option>
		                    <option value="HU">Hungary</option>
		                    <option value="IS">Iceland</option>
		                    <option value="IN">India</option>
		                    <option value="ID">Indonesia</option>
		                    <option value="IQ">Iraq</option>
		                    <option value="IR">Iran</option>
		                    <option value="IE">Ireland</option>
		                    <option value="IL">Israel</option>
		                    <option value="IT">Italy</option>
		                    <option value="CI">Ivory Coast</option>
		                    <option value="JM">Jamaica</option>
		                    <option value="JP">Japan</option>
		                    <option value="JO">Jordan</option>
		                    <option value="KZ">Kazakhstan</option>
		                    <option value="KE">Kenya</option>
							<option value="KV">Kosovo</option>
		                    <option value="KI">Kiribati</option>
		                    <option value="KP">Korea (North)</option>
		                    <option value="KR">Korea (South)</option>
		                    <option value="KW">Kuwait</option>
		                    <option value="KG">Kyrgyzstan</option>
		                    <option value="LA">Laos</option>
		                    <option value="LV">Latvia</option>
		                    <option value="LB">Lebanon</option>
		                    <option value="LS">Lesotho</option>
		                    <option value="LR">Liberia</option>
		                    <option value="LY">Libya</option>
		                    <option value="LI">Liechtenstein</option>
		                    <option value="LT">Lithuania</option>
		                    <option value="LU">Luxembourg</option>
		                    <option value="MO">Macao</option>
		                    <option value="MK">Macedonia</option>
		                    <option value="MG">Madagascar</option>
		                    <option value="MW">Malawi</option>
		                    <option value="MY">Malaysia</option>
		                    <option value="MV">Maldives</option>
		                    <option value="ML">Mali</option>
		                    <option value="MT">Malta</option>
		                    <option value="MQ">Martinique</option>
		                    <option value="MH">Marshall Islands</option>
		                    <option value="MR">Mauritania</option>
		                    <option value="MU">Mauritius</option>
		                    <option value="YT">Mayotte</option>
		                    <option value="MX">Mexico</option>
		                    <option value="MD">Moldova</option>
		                    <option value="MC">Monaco</option>
		                    <option value="MN">Mongolia</option>
		                    <option value="ME">Montenegro</option>
		                    <option value="MS">Montserrat</option>
		                    <option value="MA">Morocco</option>
		                    <option value="MZ">Mozambique</option>
		                    <option value="MM">Myanmar</option>
		                    <option value="NA">Namibia</option>
		                    <option value="NR">Nauru</option>
		                    <option value="NP">Nepal</option>
		                    <option value="NL">Netherlands</option>
		                    <option value="NC">New Caledonia</option>
		                    <option value="NZ">New Zealand</option>
		                    <option value="NI">Nicaragua</option>
		                    <option value="NE">Niger</option>
		                    <option value="NG">Nigeria</option>
		                    <option value="NU">Niue</option>
		                    <option value="NF">Norfolk Island</option>
		                    <option value="NO">Norway</option>
		                    <option value="OM">Oman</option>
		                    <option value="PK">Pakistan</option>
		                    <option value="PW">Palau</option>
		                    <option value="PS">Palestinian Territory</option>
		                    <option value="PA">Panama</option>
		                    <option value="PG">Papua New Guinea</option>
		                    <option value="PY">Paraguay</option>
		                    <option value="PE">Peru</option>
		                    <option value="PH">Philippines</option>
		                    <option value="PN">Pitcairn</option>
		                    <option value="PL">Poland</option>
		                    <option value="PF">Polynesia (French)</option>
		                    <option value="PT">Portugal</option>
		                    <option value="PR">Puerto Rico</option>
		                    <option value="QA">Qatar</option>
		                    <option value="RE">Reunion</option>
		                    <option value="RO">Romania</option>
		                    <option value="RU">Russian Federation</option>
		                    <option value="RW">Rwanda</option>
		                    <option value="SH">Saint Helena</option>
		                    <option value="PM">Saint Pierre and Miquelon</option>
		                    <option value="SM">San Marino</option>
		                    <option value="ST">Sao Tome and Principe</option>
		                    <option value="SA">Saudi Arabia</option>
		                    <option value="WS">Samoa</option>
		                    <option value="SN">Senegal</option>
		                    <option value="SC">Seychelles</option>
		                    <option value="SG">Singapore</option>
		                    <option value="SK">Slovak Republic</option>
		                    <option value="SI">Slovenia</option>
		                    <option value="SB">Solomon Islands</option>
		                    <option value="SO">Somalia</option>
		                    <option value="ZA">South Africa</option>
		                    <option value="ES">Spain</option>
		                    <option value="SD">Sudan</option>
		                    <option value="SJ">Svalbard and Jan Mayen</option>
		                    <option value="SE">Sweden</option>
		                    <option value="RS">Serbia</option>
		                    <option value="SL">Sierra Leone</option>
		                    <option value="SR">Suriname</option>
		                    <option value="SY">Syria</option>
		                    <option value="SZ">Swaziland</option>
		                    <option value="LC">Saint Lucia</option>
		                    <option value="LK">Sri Lanka</option>
		                    <option value="CH">Switzerland</option>
		                    <option value="KN">Saint Kitts and Nevis</option>
		                    <option value="TC">Turks and Caicos Islands</option>
		                    <option value="TG">Togo</option>
		                    <option value="TH">Thailand</option>
		                    <option value="TJ">Tajikistan</option>
		                    <option value="TK">Tokelau</option>
		                    <option value="TL">Timor-Leste</option>
		                    <option value="TM">Turkmenistan</option>
		                    <option value="TN">Tunisia</option>
		                    <option value="TO">Tonga</option>
		                    <option value="TR">Turkey</option>
		                    <option value="TT">Trinidad and Tobago</option>
		                    <option value="TV">Tuvalu</option>
		                    <option value="TW">Taiwan</option>
		                    <option value="TZ">Tanzania</option>
		                    <option value="UA">Ukraine</option>
		                    <option value="UG">Uganda</option>
		                    <option value="AE">United Arab Emirates</option>
		                    <option value="GB">United Kingdom</option>
		                    <option value="US">United States</option>
		                    <option value="SU">USSR (former)</option>
		                    <option value="UY">Uruguay</option>
		                    <option value="UZ">Uzbekistan</option>
		                    <option value="VE">Venezuela</option>
		                    <option value="VG">Virgin Islands (British)</option>
		                    <option value="VI">Virgin Islands (U.S.)</option>
		                    <option value="VN">Viet Nam</option>
		                    <option value="VU">Vanuatu</option>
		                    <option value="WF">Wallis and Futuna</option>
		                    <option value="EH">Western Sahara</option>
		                    <option value="YE">Yemen</option>
		                    <option value="ZM">Zambia</option>
		                    <option value="ZR">Zaire</option>
		                    <option value="ZW">Zimbabwe</option>
                        </select>
                        <div class="alert alert_modal_billingv2_add_new_card_country">Please select your country</div>
                    </div>
                </div>

                </form>
            </div>

        </div>
    </div>
    <div class="modal_footer">
        <a class="button button_dgrey modal_footer_left close_modal_button">Close</a>
        <a id="modal_billingv2_add_new_card_button" class="button button_primary button_disabled modal_footer_right billingv2_translatable" data-translation="4">Add New Card</a>
    </div>
</div>

<script src="https://js.braintreegateway.com/web/3.80.0/js/client.min.js" defer></script>
<script src="https://js.braintreegateway.com/web/3.80.0/js/hosted-fields.min.js" defer></script>
<script src="https://js.braintreegateway.com/web/3.80.0/js/data-collector.min.js" defer></script>
<script src="/javascript/user_controls/billingv2/billing_add_new_card.js?v=4cdafa4a7090cb7cf1359c37c18cfb4b"></script>


<link type="text/css" rel="stylesheet" href="/css/user_controls/billingv2/billing_processing.css?v=8ace60fb07651f8c444a1fcb033512b2" />


<div class="modal modal_billingv2_processing">
    <div class="modal_header">
        <div class="modal_title" id="modal_billingv2_processing_title">Processing Payment</div>
        <div class="modal_expand" data-expand="normal"><i class="fa fa-window-maximize" aria-hidden="true"></i></div>
        <!--<div class="modal_close"><i class="fa fa-times" aria-hidden="true"></i></div>-->
    </div>
    <div class="modal_body_outer_container">
        <div class="modal_body paddingt20 paddingb20">

            <div class="busy_wait busy_wait_static busy_wait_billingv2_processing">
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
                    <span id="busy_wait_billingv2_processing_text">Processing</span>
                </div>
            </div>
            

            <!-- Case 1a -->
            <div id="modal_billingv2_processing_case1a_complete" class="align_center paddingt20">
                <h2>Thank You <i class="fa fa-smile-o color_primary" aria-hidden="true"></i></h2>
                <p>Successfully taken your invoice payment.</p>
                <div id="modal_billingv2_processing_case1a_error_invoice" class="modal_billingv2_processing_error_general_info">
                    <p>However, we were unable to remove the invoice from your control panel.</p>
                    <p>We have notified our team who will remove the invoice as soon as possible.</p>
                    <p>Please <strong>DO NOT</strong> pay this invoice again.</p>
                </div>
                <a href="/main.aspx" class="button button_primary">Close</a>
            </div>

            <div id="modal_billingv2_processing_case1a_error_card" class="align_center paddingt20">
                <h2>Oops!</h2>
                <p>Sorry, we were unable to add your new card!</p>
                <div id="modal_billingv2_processing_case1a_error_card_message" class="modal_billingv2_processing_error_general_info">
                    <p><strong>Error:</strong></p>
                    <div id="modal_billingv2_processing_case1a_error_card_message_inner"></div>
                </div>
                <a class="button button_lgrey marginr5" onclick="billingV2InstructionsCase6Close();">Cancel</a>
                <a class="button button_primary" onclick="billingV2InstructionsCase6TryAgain();">Try Again</a>
            </div>

            <div id="modal_billingv2_processing_case1a_error" class="align_center paddingt20">
                <h2>Oops!</h2>
                <div id="modal_billingv2_processing_case1a_error_message" class="modal_billingv2_processing_error_general_info"></div>
                <a class="button button_lgrey marginr5" onclick="billingV2InstructionsCase1aClose();">Cancel</a>
                <a class="button button_primary" onclick="billingV2InstructionsCase1aTryAgain();">Try Again</a>
            </div>


            <!-- Case 2 -->

            <div id="modal_billingv2_processing_case2_error" class="align_center paddingt20">
                <h2>Oops!</h2>
                <p>Sorry, something went wrong.</p>
                <div id="modal_billingv2_processing_case2_error_message" class="modal_billingv2_processing_error_general_info"></div>
                <a class="button button_lgrey marginr5" onclick="billingV2InstructionsCase2Close();">Cancel</a>
                <a class="button button_primary" onclick="billingV2InstructionsCase2TryAgain();">Try Again</a>
            </div>

            <div id="modal_billingv2_processing_case2_success" class="align_center paddingt20">
                <h2>Thank You <i class="fa fa-smile-o color_primary" aria-hidden="true"></i></h2>
                <p>Successfully upgraded your account.</p>
                <a class="button button_primary marginr5" onclick="billingV2InstructionsCase2CloseFinal();">Continue</a>
            </div>


            <!-- Case 3 -->

            <div id="modal_billingv2_processing_case3_error" class="align_center paddingt20">
                <h2>Oops!</h2>
                <p>Sorry, something went wrong.</p>
                <div id="modal_billingv2_processing_case3_error_message" class="modal_billingv2_processing_error_general_info"></div>
                <a class="button button_lgrey marginr5" onclick="billingV2InstructionsCase3Close();">Cancel</a>
                <a class="button button_primary" onclick="billingV2InstructionsCase3TryAgain();">Try Again</a>
            </div>

            <div id="modal_billingv2_processing_case3_success" class="align_center paddingt20">
                <div id="modal_billingv2_processing_case3_success_step1">
                    <h2>Thank You <i class="fa fa-smile-o color_primary" aria-hidden="true"></i></h2>
                    <p>Successfully taken your payment.</p>
                </div>

				<div class="busy_wait busy_wait_static busy_wait_billingv2_processing_registration_form">
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
						<span id="busy_wait_billingv2_processing_registration_form_text">Loading Registration Form</span>
					</div>
				</div>

                <div id="modal_billingv2_processing_case3_success_step2">
					<div id="modal_billingv2_processing_case3_success_step2_help" class="modal_billingv2_processing_error_general_info paddingb10">
						<p><strong>Struggling to register your domain name?</strong></p>
						<p>Let our support team do it for you.</p>
						<a id="modal_billingv2_processing_case3_success_step2_help_button" class="button button_primary" onclick="billingV2InstructionsCase3FormSubmitSupport();">Submit to Support</a>
						<div class="alert alert_modal_billingv2_processing_case3_success_step2_help">Please fill in the form below.</div>
						<div class="alert alert_modal_billingv2_processing_case3_success_step2_help_oops">Sorry, we were unable to submit to support. Please try again!</div>
						<div id="modal_billingv2_processing_case3_success_step2_help_sent">
							<p><i class="fa fa-check color_green"></i> Submitted to support.</p>
							<p>Please allow up to 24 hours for us to register your domain name on your behalf.</p>
							<p>We'll be in touch once this is done.</p>
							<a href="/main.aspx" class="button button_primary marginr5">Back to Dashboard</a>
						</div>
					</div>
					<div id="modal_billingv2_processing_case3_success_step2_form_container">
						<h2>Register Your Domain</h2>
						<p>Please fill in the form below.</p>
						<p id="modal_billingv2_processing_case3_success_step2_warning"><strong class="color_red">Failure to complete this form may result in a domain name not being registered but still being charged!</strong></p>
						<div id="modal_billingv2_processing_case3_success_step2_form">

                        <div class="hide_overflow">

                            <div class="input_container input_container_50">
                                <label for="modal_buyDomainAddress_fname">Your First Name</label>
                                <input type="text" placeholder="John" id="modal_buyDomainAddress_fname" maxlength="30" data-hj-whitelist="">
                                <div class="alert alert_modal_buy_domain_address_fname">Required</div>
                            </div>

                            <div class="input_container input_container_50">
                                <label for="modal_buyDomainAddress_lname">Your Last Name</label>
                                <input type="text" placeholder="Smith" id="modal_buyDomainAddress_lname" maxlength="30" data-hj-whitelist="">
                                <div class="alert alert_modal_buy_domain_address_lname">Required</div>
                            </div>

                        </div>

                        <div class="hide_overflow">

                            <div class="input_container input_container_50">
                                <label for="modal_buyDomainAddress_address1">Address Line 1</label>
                                <input type="text" placeholder="123 Your Street" id="modal_buyDomainAddress_address1" maxlength="30" data-hj-whitelist="">
                                <div class="alert alert_modal_buy_domain_address_address1">Required</div>
                            </div>

                            <div class="input_container input_container_50">
                                <label for="modal_buyDomainAddress_city">Address City</label>
                                <input type="text" placeholder="San Francisco Bay Area" id="modal_buyDomainAddress_city" maxlength="30" data-hj-whitelist="">
                                <div class="alert alert_modal_buy_domain_address_city">Required</div>
                            </div>

                        </div>

                        <div class="hide_overflow">

                            <div class="input_container input_container_50">
                                <label for="modal_buyDomainAddress_state">Address State/ County</label>
                                <input type="text" placeholder="San Francisco" id="modal_buyDomainAddress_state" maxlength="30" data-hj-whitelist="">
                                <div class="alert alert_modal_buy_domain_address_state">Required</div>
                            </div>

                            <div class="input_container input_container_50">
                                <label for="modal_buyDomainAddress_code">Address Zip/ Post Code</label>
                                <input type="text" placeholder="91210" id="modal_buyDomainAddress_code" maxlength="10" data-hj-whitelist="">
                                <div class="alert alert_modal_buy_domain_address_code">Required</div>
								<div class="alert alert_modal_buy_domain_address_code1">Postcode must include a space. Valid formats:
									<ul>
										<li>A9 9AA</li>
										<li>A99 9AA</li>
										<li>AA9 9AA</li>
										<li>AA99 9AA</li>
										<li>A9A 9AA</li>
										<li>AA9A 9AA</li>
									</ul>
								</div>
                            </div>

                        </div>

                        <div class="hide_overflow">

                            <div class="input_container input_container_50">
                                <label for="modal_buyDomainAddress_country">Address Country</label>
                                <select id="modal_buyDomainAddress_country">
									<option value="-1" selected="selected">Please Select</option>
									<option value="GB">United Kingdom</option>
									<option value="US">United States</option>
									<option value="AF">Afghanistan</option>
									<option value="AX">Aland Islands</option>
									<option value="AL">Albania</option>
									<option value="DZ">Algeria</option>
									<option value="AS">American Samoa</option>
									<option value="AD">Andorra</option>
									<option value="AO">Angola</option>
									<option value="AI">Anguilla</option>
									<option value="AQ">Antarctica</option>
									<option value="AG">Antigua and Barbuda</option>
									<option value="AN">Antilles (Netherlands)</option>
									<option value="AR">Argentina</option>
									<option value="AM">Armenia</option>
									<option value="AW">Aruba</option>
									<option value="AU">Australia</option>
									<option value="AT">Austria</option>
									<option value="AZ">Azerbaijan</option>
									<option value="BS">Bahamas</option>
									<option value="BH">Bahrain</option>
									<option value="BD">Bangladesh</option>
									<option value="BB">Barbados</option>
									<option value="BY">Belarus</option>
									<option value="BE">Belgium</option>
									<option value="BZ">Belize</option>
									<option value="BJ">Benin</option>
									<option value="BM">Bermuda</option>
									<option value="BT">Bhutan</option>
									<option value="BO">Bolivia</option>
									<option value="BA">Bosnia and Herzegovina</option>
									<option value="BW">Botswana</option>
									<option value="BV">Bouvet Island</option>
									<option value="BR">Brazil</option>
									<option value="IO">British Indian Ocean Territory</option>
									<option value="BN">Brunei Darussalam</option>
									<option value="BG">Bulgaria</option>
									<option value="BF">Burkina Faso</option>
									<option value="BI">Burundi</option>
									<option value="CA">Canada</option>
									<option value="CV">Cape Verde</option>
									<option value="KH">Cambodia</option>
									<option value="CM">Cameroon</option>
									<option value="KY">Cayman Islands</option>
									<option value="CF">Central African Republic</option>
									<option value="TD">Chad</option>
									<option value="CL">Chile</option>
									<option value="CN">China</option>
									<option value="CX">Christmas Island</option>
									<option value="CO">Colombia</option>
									<option value="CD">Congo (Democratic Republic)</option>
									<option value="CG">Congo</option>
									<option value="KM">Comoros</option>
									<option value="CK">Cook Islands</option>
									<option value="CR">Costa Rica</option>
									<option value="HR">Croatia (Hrvatska)</option>
									<option value="CU">Cuba</option>
									<option value="CY">Cyprus</option>
									<option value="CZ">Czech Republic</option>
									<option value="DK">Denmark</option>
									<option value="DJ">Djibouti</option>
									<option value="DM">Dominica</option>
									<option value="DO">Dominican Republic</option>
									<option value="TP">East Timor</option>
									<option value="EC">Ecuador</option>
									<option value="EG">Egypt</option>
									<option value="SV">El Salvador</option>
									<option value="ER">Eritrea</option>
									<option value="EE">Estonia</option>
									<option value="ET">Ethiopia</option>
									<option value="FK">Falkland Islands</option>
									<option value="FO">Faroe Islands</option>
									<option value="FJ">Fiji</option>
									<option value="FI">Finland</option>
									<option value="FR">France</option>
									<option value="GF">French Guiana</option>
									<option value="TF">French Southern Territories</option>
									<option value="GA">Gabon</option>
									<option value="GM">Gambia</option>
									<option value="GE">Georgia</option>
									<option value="DE">Germany</option>
									<option value="GH">Ghana</option>
									<option value="GI">Gibraltar</option>
									<option value="GD">Grenada</option>
									<option value="GR">Greece</option>
									<option value="GL">Greenland</option>
									<option value="GP">Guadeloupe</option>
									<option value="GT">Guatemala</option>
									<option value="GN">Guinea</option>
									<option value="GQ">Guinea (Equatorial)</option>
									<option value="GU">Guam</option>
									<option value="GW">Guinea-Bissau</option>
									<option value="GY">Guyana</option>
									<option value="HT">Haiti</option>
									<option value="HN">Honduras</option>
									<option value="HK">Hong Kong</option>
									<option value="HU">Hungary</option>
									<option value="IS">Iceland</option>
									<option value="IN">India</option>
									<option value="ID">Indonesia</option>
									<option value="IQ">Iraq</option>
									<option value="IR">Iran</option>
									<option value="IE">Ireland</option>
									<option value="IL">Israel</option>
									<option value="IT">Italy</option>
									<option value="CI">Ivory Coast</option>
									<option value="JM">Jamaica</option>
									<option value="JP">Japan</option>
									<option value="JO">Jordan</option>
									<option value="KZ">Kazakhstan</option>
									<option value="KE">Kenya</option>
									<option value="KV">Kosovo</option>
									<option value="KI">Kiribati</option>
									<option value="KP">Korea (North)</option>
									<option value="KR">Korea (South)</option>
									<option value="KW">Kuwait</option>
									<option value="KG">Kyrgyzstan</option>
									<option value="LA">Laos</option>
									<option value="LV">Latvia</option>
									<option value="LB">Lebanon</option>
									<option value="LS">Lesotho</option>
									<option value="LR">Liberia</option>
									<option value="LY">Libya</option>
									<option value="LI">Liechtenstein</option>
									<option value="LT">Lithuania</option>
									<option value="LU">Luxembourg</option>
									<option value="MO">Macao</option>
									<option value="MK">Macedonia</option>
									<option value="MG">Madagascar</option>
									<option value="MW">Malawi</option>
									<option value="MY">Malaysia</option>
									<option value="MV">Maldives</option>
									<option value="ML">Mali</option>
									<option value="MT">Malta</option>
									<option value="MQ">Martinique</option>
									<option value="MH">Marshall Islands</option>
									<option value="MR">Mauritania</option>
									<option value="MU">Mauritius</option>
									<option value="YT">Mayotte</option>
									<option value="MX">Mexico</option>
									<option value="MD">Moldova</option>
									<option value="MC">Monaco</option>
									<option value="MN">Mongolia</option>
									<option value="ME">Montenegro</option>
									<option value="MS">Montserrat</option>
									<option value="MA">Morocco</option>
									<option value="MZ">Mozambique</option>
									<option value="MM">Myanmar</option>
									<option value="NA">Namibia</option>
									<option value="NR">Nauru</option>
									<option value="NP">Nepal</option>
									<option value="NL">Netherlands</option>
									<option value="NC">New Caledonia</option>
									<option value="NZ">New Zealand</option>
									<option value="NI">Nicaragua</option>
									<option value="NE">Niger</option>
									<option value="NG">Nigeria</option>
									<option value="NU">Niue</option>
									<option value="NF">Norfolk Island</option>
									<option value="NO">Norway</option>
									<option value="OM">Oman</option>
									<option value="PK">Pakistan</option>
									<option value="PW">Palau</option>
									<option value="PS">Palestinian Territory</option>
									<option value="PA">Panama</option>
									<option value="PG">Papua New Guinea</option>
									<option value="PY">Paraguay</option>
									<option value="PE">Peru</option>
									<option value="PH">Philippines</option>
									<option value="PN">Pitcairn</option>
									<option value="PL">Poland</option>
									<option value="PF">Polynesia (French)</option>
									<option value="PT">Portugal</option>
									<option value="PR">Puerto Rico</option>
									<option value="QA">Qatar</option>
									<option value="RE">Reunion</option>
									<option value="RO">Romania</option>
									<option value="RU">Russian Federation</option>
									<option value="RW">Rwanda</option>
									<option value="SH">Saint Helena</option>
									<option value="PM">Saint Pierre and Miquelon</option>
									<option value="SM">San Marino</option>
									<option value="ST">Sao Tome and Principe</option>
									<option value="SA">Saudi Arabia</option>
									<option value="WS">Samoa</option>
									<option value="SN">Senegal</option>
									<option value="SC">Seychelles</option>
									<option value="SG">Singapore</option>
									<option value="SK">Slovak Republic</option>
									<option value="SI">Slovenia</option>
									<option value="SB">Solomon Islands</option>
									<option value="SO">Somalia</option>
									<option value="ZA">South Africa</option>
									<option value="ES">Spain</option>
									<option value="SD">Sudan</option>
									<option value="SJ">Svalbard and Jan Mayen</option>
									<option value="SE">Sweden</option>
									<option value="RS">Serbia</option>
									<option value="SL">Sierra Leone</option>
									<option value="SR">Suriname</option>
									<option value="SY">Syria</option>
									<option value="SZ">Swaziland</option>
									<option value="LC">Saint Lucia</option>
									<option value="LK">Sri Lanka</option>
									<option value="CH">Switzerland</option>
									<option value="KN">Saint Kitts and Nevis</option>
									<option value="TC">Turks and Caicos Islands</option>
									<option value="TG">Togo</option>
									<option value="TH">Thailand</option>
									<option value="TJ">Tajikistan</option>
									<option value="TK">Tokelau</option>
									<option value="TL">Timor-Leste</option>
									<option value="TM">Turkmenistan</option>
									<option value="TN">Tunisia</option>
									<option value="TO">Tonga</option>
									<option value="TR">Turkey</option>
									<option value="TT">Trinidad and Tobago</option>
									<option value="TV">Tuvalu</option>
									<option value="TW">Taiwan</option>
									<option value="TZ">Tanzania</option>
									<option value="UA">Ukraine</option>
									<option value="UG">Uganda</option>
									<option value="AE">United Arab Emirates</option>
									<option value="GB">United Kingdom</option>
									<option value="US">United States</option>
									<option value="SU">USSR (former)</option>
									<option value="UY">Uruguay</option>
									<option value="UZ">Uzbekistan</option>
									<option value="VE">Venezuela</option>
									<option value="VG">Virgin Islands (British)</option>
									<option value="VI">Virgin Islands (U.S.)</option>
									<option value="VN">Viet Nam</option>
									<option value="VU">Vanuatu</option>
									<option value="WF">Wallis and Futuna</option>
									<option value="EH">Western Sahara</option>
									<option value="YE">Yemen</option>
									<option value="ZM">Zambia</option>
									<option value="ZR">Zaire</option>
									<option value="ZW">Zimbabwe</option>
								</select>
								<div class="alert alert_modal_buyDomainAddress_country">Required</div>
                            </div>

                            <div class="input_container input_container_50">
								<label for="modal_buyDomainAddress_telephone">Telephone/ Mobile Number</label>
								<input type="text" placeholder="+1.1234567890"  id="modal_buyDomainAddress_telephone" maxlength="50" data-hj-whitelist="" />
								<div class="modal_buyDomainAddress_telephone_example">Example: +1.1234567890</div>
								<div class="alert alert_modal_buyDomainAddress_telephone">Required</div>
								<div class="alert alert_modal_buyDomainAddress_telephone1">Telephone number is invalid</div>
								<div class="alert alert_modal_buyDomainAddress_telephone2">Telephone number must be at least 10 characters long</div>
								<div class="alert alert_modal_buyDomainAddress_telephone3">Telephone number requires a "+" at the start</div>
								<div class="alert alert_modal_buyDomainAddress_telephone4">Telephone number requires a full stop after the country calling code e.g: +44.</div>
								<div class="alert alert_modal_buyDomainAddress_telephone5">Telephone number can only contain "0-9", "+" and "." characters.</div>
								<div class="alert alert_modal_buyDomainAddress_telephone6">Telephone number must include full stop in correct place. Valid formats:
									<ul>
										<li>+4.</li>
										<li>+44.</li>
										<li>+444.</li>
									</ul>
								</div>
                            </div>

                        </div>

                    </div>
					</div>
                </div>

				<div id="modal_billingv2_processing_case3_success_step2_error" class="align_center paddingt20">
					<h2>Oops!</h2>
					<p>Sorry, something went wrong.</p>
					<div id="modal_billingv2_processing_case3_success_step2_error_message" class="modal_billingv2_processing_error_general_info"></div>
					<a class="button button_lgrey marginr5" onclick="billingV2InstructionsCase3Close();">Cancel</a>
					<a id="billingV2InstructionsCase3FormTryAgain_button" class="button button_primary" onclick="billingV2InstructionsCase3FormTryAgain();">Try Again</a>
				</div>

				<div id="modal_billingv2_processing_case3_success_step3">
                    <h2>Domain Registered <i class="fa fa-smile-o color_primary" aria-hidden="true"></i></h2>
                    <p>Your domain name is now being processed.</p>
					<p>This can take up to 48 hours.</p>
					<div id="modal_billingv2_processing_case3_success_step3_pending" class="modal_billingv2_processing_error_general_info">
						<p>A verification email will be sent to you within the few hours.</p>
						<p>Click the link in the email to attach your domain name to your store.</p>
					</div>
					<a href="/main.aspx" class="button button_primary marginr5">Back to Dashboard</a>
                </div>

            </div>


            <!-- Case 4a -->

            <div id="modal_billingv2_processing_case4a_error" class="align_center paddingt20">
                <h2>Oops!</h2>
                <p>Sorry, something went wrong.</p>
                <div id="modal_billingv2_processing_case4a_error_message" class="modal_billingv2_processing_error_general_info"></div>
                <a class="button button_lgrey marginr5" onclick="billingV2InstructionsCase4aClose();">Cancel</a>
                <a class="button button_primary" onclick="billingV2InstructionsCase4aTryAgain();">Try Again</a>
            </div>

            <div id="modal_billingv2_processing_case4a_success" class="align_center paddingt20">
                <h2>Thank You <i class="fa fa-smile-o color_primary" aria-hidden="true"></i></h2>
                <p>Successfully enabled app.</p>
                <a class="button button_lgrey marginr5" onclick="billingV2InstructionsCase4aClose();">Close</a>
                <a id="modal_billingv2_processing_case4a_success_gotoapp_button" class="button button_primary">Go To App</a>
            </div>


            <!-- Case 5 -->
            <div id="modal_billingv2_processing_case5_complete" class="align_center paddingt20">
                <h2>Updated <i class="fa fa-smile-o color_primary" aria-hidden="true"></i></h2>
                <p>Successfully updated your billing details.</p>
                <a class="button button_primary" onclick="billingV2InstructionsCase5Close();">Close</a>
            </div>

            <div id="modal_billingv2_processing_case5_error" class="align_center paddingt20">
                <h2>Oops!</h2>
                <p>Sorry, we were unable to update your billing details</p>
                <a class="button button_lgrey marginr5" onclick="billingV2InstructionsCase5Close();">Cancel</a>
                <a class="button button_primary" onclick="billingV2InstructionsCase5TryAgain();">Try Again</a>
            </div>

            <!-- Case 6 -->
            <div id="modal_billingv2_processing_case6_complete" class="align_center paddingt20">
                <h2>Success <i class="fa fa-smile-o color_primary" aria-hidden="true"></i></h2>
                <p>Successfully added your new <span id="modal_billingv2_processing_case6_complete_text"></span>.</p>
                <a class="button button_primary" onclick="billingV2InstructionsCase6Close();">Close</a>
            </div>

            <div id="modal_billingv2_processing_case6_error" class="align_center paddingt20">
                <h2>Oops!</h2>
                <p>Sorry, we were unable to add your new card.</p>
                <div id="modal_billingv2_processing_case6_error_message" class="modal_billingv2_processing_error_general_info"></div>
                <a class="button button_lgrey marginr5" onclick="billingV2InstructionsCase6Close();">Cancel</a>
                <a class="button button_primary" onclick="billingV2InstructionsCase6TryAgain();">Try Again</a>
            </div>



			<!-- Case 7 -->

            <div id="modal_billingv2_processing_case7_error" class="align_center paddingt20">
                <h2>Oops!</h2>
                <p>Sorry, something went wrong.</p>
                <div id="modal_billingv2_processing_case7_error_message" class="modal_billingv2_processing_error_general_info"></div>
                <a class="button button_lgrey marginr5" onclick="billingV2InstructionsCase7Close();">Cancel</a>
                <a class="button button_primary" onclick="billingV2InstructionsCase7TryAgain();">Try Again</a>
            </div>

            <div id="modal_billingv2_processing_case7_success" class="align_center paddingt20">
                <h2>Thank You <i class="fa fa-smile-o color_primary" aria-hidden="true"></i></h2>
                <p>Successfully payed overdue bill.</p>
                <a href="/main.aspx" class="button button_lgrey marginr5">Go To Dashboard</a>
            </div>


			

			<!-- Case 8 -->

            <div id="modal_billingv2_processing_case8_error" class="align_center paddingt20">
                <h2>Oops!</h2>
                <p>Sorry, something went wrong.</p>
                <div id="modal_billingv2_processing_case8_error_message" class="modal_billingv2_processing_error_general_info"></div>
                <a class="button button_lgrey marginr5" onclick="billingV2InstructionsCase8Close();">Cancel</a>
                <a class="button button_primary" onclick="billingV2InstructionsCase8TryAgain();">Try Again</a>
            </div>

            <div id="modal_billingv2_processing_case8_success" class="align_center paddingt20">
                <h2>Thank You <i class="fa fa-smile-o color_primary" aria-hidden="true"></i></h2>
                <p>Successfully deposited funds.</p>
                <a href="/main.aspx" class="button button_lgrey marginr5">Go To Dashboard</a>
            </div>

			<!-- Case 9 -->

            <div id="modal_billingv2_processing_case9_error" class="align_center paddingt20">
                <h2>Oops!</h2>
                <p>Sorry, something went wrong.</p>
                <div id="modal_billingv2_processing_case9_error_message" class="modal_billingv2_processing_error_general_info"></div>
                <a class="button button_lgrey marginr5" onclick="billingV2InstructionsCase9Close();">Cancel</a>
                <a class="button button_primary" onclick="billingV2InstructionsCase9TryAgain();">Try Again</a>
            </div>

            <div id="modal_billingv2_processing_case9_success" class="align_center paddingt20">
                <h2>Thank You <i class="fa fa-smile-o color_primary" aria-hidden="true"></i></h2>
                <p>Domain(s) successfully registered.</p>
				<p>A verification email will be sent to you within the few hours.</p>
                <a href="/marketing_domains.aspx" class="button button_lgrey marginr5">Go To Domain Dashboard</a>
            </div>


        </div>
    </div>
    <div class="modal_footer" id="modal_billingv2_processing_footer">
        <a id="modal_billingv2_processing_footer_register_domain_button" class="button button_primary button_disabled modal_footer_right" onclick="billingv2RegisterDomain();">Register Domain</a>
    </div>
</div>

<script src="/javascript/user_controls/billingv2/billing_processing.js?v=9b03b62f135c9cc8f3c23158009d11cc"></script>


    </div>

    <script>
        $(".modal_overlay, .modal_close, .close_modal_button").click(function(){
            $(".modal_overlay, .modal").fadeOut();

            if (document.getElementById("editor_overlay") != null && document.querySelector(".editor_is_active_modal") == null) {
                document.getElementById("editor_overlay").classList.remove("editor_overlay_active");
            }

            $("body").removeClass("body_modal_is_open");
        });

        $(".dropdown_main").click(function(){
            $(this).parent().find(".dropdown_container").toggle();
        });
        var businessUser = 0;
        var cpTheme = 'fws_pink';
        
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
    </script>
    <script src="/javascript/css_variables.js"></script>
    <script type="text/javascript">
        (function (c, l, a, r, i, t, y) {
            c[a] = c[a] || function () { (c[a].q = c[a].q || []).push(arguments) };
            t = l.createElement(r); t.async = 1; t.src = "https://www.clarity.ms/tag/" + i;
            y = l.getElementsByTagName(r)[0]; y.parentNode.insertBefore(t, y);
        })(window, document, "clarity", "script", "8funo71987");
        if (clarity) clarity("set", "storeId", storeId);
    </script>
    </form>
</body>
</html>
