<%@ page import="au.org.ala.cas.util.AuthenticationCookieUtils" %>


<style type="text/css">
.locale {
    text-transform: uppercase;
}
.selectable {
    cursor: pointer;
}
.hidden { display: none; }
.container#main, .container-fluid#main {
    margin-bottom: 4em;
    padding: 2em;
}
</style>



<!-- Navbar -->
<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container-fluid">
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${grailsApplication.config.ala.baseURL}">
                <img alt="DoeDat" class="brand img-responsive" src="/userdetails/assets/doedat/logoDoeDatInverted.png">
            </a>
            <div class="nav-collapse collapse">
            <div class="nav-collapse collapse">
                <!--<ul class="nav">
                    <li>
                        <a href="http://www.ala.org.au/about-the-atlas/contact-us/">Contact us</a>
                    </li>
                    <li>
                        <a href="http://www.ala.org.au/get-involved/">Get involved</a>
                    </li>
                    <li class="dropdown font-xsmall">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                            ALA Apps
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="http://spatial.ala.org.au">Spatial portal</a></li>
                            <li><a href="http://biocache.ala.org.au">Occurrence search</a></li>
                            <li><a href="http://fish.ala.org.au">Fish map</a></li>
                            <li><a href="http://regions.ala.org.au">Regions</a></li>
                            <li><a href="http://biocache.ala.org.au/explore/your-area">Explore your area</a></li>

                            <li class="divider"></li>
                            <li><a href="http://sightings.ala.org.au">Record a sighting</a></li>
                            <li><a href="http://collections.ala.org.au">Collections</a></li>
                            <li><a href="http://www.ala.org.au/biocollect/">Biocollect</a></li>
                            <li><a href="http://volunteer.ala.org.au">DigiVol</a></li>
                            <li><a href="http://fieldcapture.ala.org.au/merit">MERIT</a></li>
                            <li><a href="http://www.soils2satellites.org.au/">Soils to satellite</a></li>
                            <li><a href="http://lists.ala.org.au">Traits, species lists</a></li>
                            <li><a href="http://phylolink.ala.org.au/">Phylolink</a></li>

                            <li class="divider"></li>
                            <li><a href="http://root.ala.org.au">Community portals</a></li>
                            <li><a href="http://dashboard.ala.org.au">Dashboard</a></li>
                            <li><a href="http://collections.ala.org.au/datasets">Datasets browser</a></li>
                        </ul>
                    </li>
                    <li class="dropdown font-xsmall">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                            ALA Info
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="::centralServer::/about-the-atlas/">About the Atlas</a></li>
                            <li><a href="::centralServer::/get-involved/">Get Involved</a></li>

                            <li class="divider"></li>
                            <li><a href="::centralServer::/education-resources/">Education Resources</a></li>

                            <li class="divider"></li>
                            <li><a href="::centralServer::/about-the-atlas/contact-us/">Contact Us</a></li>
                        </ul>
                    </li>
                </ul>-->
                <ul class="nav pull-right">
                    <li class="dropdown font-xsmall">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                            User settings
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu" role="menu">
                            <li class="${AuthenticationCookieUtils.cookieExists(request, AuthenticationCookieUtils.ALA_AUTH_COOKIE)?"":"hidden"}"><a href="/userdetails/myprofile">My profile</a></li>
                            <li class="divider"></li>
                            <li class="${AuthenticationCookieUtils.cookieExists(request, AuthenticationCookieUtils.ALA_AUTH_COOKIE)?"hidden":""}"><a href="/userdetails/myprofile">Login</a></li>
                            <li class="${AuthenticationCookieUtils.cookieExists(request, AuthenticationCookieUtils.ALA_AUTH_COOKIE)?"hidden":""}"><a href="/userdetails/registration/createAccount">Register</a></li>
                            <li class="${AuthenticationCookieUtils.cookieExists(request, AuthenticationCookieUtils.ALA_AUTH_COOKIE)?"":"hidden"}"><a href="${grailsApplication.config.security.cas.logoutUrl}">Logout</a></li>
                        </ul>
                    </li>

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <span class="locale">${ org.springframework.context.i18n.LocaleContextHolder.getLocale().getLanguage()}</span>
                            <span class="caret"></span>
                        </a>
                        <g:render template="/layouts/languageDropdown"/>
                    </li>
                </ul>
                <!--<form class="navbar-form" role="search" action="http://bie.ala.org.au/search" method="get">
                    <input type="text" class="general-search ac_input form-control" name="q" placeholder="Search the Atlas">
                    <button type="submit" class="btn btn-primary">Search</button>
                </form>-->
            </div>
            <!-- /.nav-collapse -->
        </div>
        <!-- /.container -->
    </div>
    <!-- /.navbar-inner -->
</div>
</div>
<!-- /.navbar -->