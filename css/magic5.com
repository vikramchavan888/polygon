*, *:after, *:before { -webkit-box-sizing: border-box; -moz-box-sizing: border-box; box-sizing: border-box; }
.clearfix:before, .clearfix:after { content: ''; display: table; }
.clearfix:after { clear: both; }

/* ------------------------- START - UI KIT RESET -------------------------------------------------- */
.uk-h1, .uk-h2, .uk-h3, .uk-h4, .uk-h5, .uk-h6, .uk-heading-2xlarge, .uk-heading-large, .uk-heading-medium, .uk-heading-small, .uk-heading-xlarge, h1, h2, h3, h4, h5, h6 {color: inherit;}
.uk-link, a, .uk-link:hover, a:hover {color: inherit; text-decoration: none;}
svg {max-width: none; height: auto; width: auto;}
/* ------------------------- END UI - KIT RESET -------------------------------------------------- */

@font-face {font-family: MonumentExtended-Regular; src: url("../fonts/Monument_Extended/MonumentExtended-Regular.otf");}
@font-face {font-family: Manrope-Regular; src: url("../fonts/Manrope/Manrope-Regular.ttf");}
@font-face {font-family: Manrope-Medium; src: url("../fonts/Manrope/Manrope-Medium.ttf");}
@font-face {font-family: Manrope-SemiBold; src: url("../fonts/Manrope/Manrope-SemiBold.ttf");}
@font-face {font-family: Manrope-Bold; src: url("../fonts/Manrope/Manrope-Bold.ttf");}


h1, h2, h3, h4, p, a, strong  {padding: 0; margin: 0; font-weight: 400; letter-spacing: normal;}
li, ul {padding: 0; margin: 0; list-style: none;}

h1          {font-size: 80px; font-family: 'MonumentExtended-Regular', sans-serif; text-transform: uppercase; line-height: .9; margin-bottom: 1vw;}
h1.big      {font-size: 125px; font-family: 'MonumentExtended-Regular', sans-serif;}
h2          {font-size: 55px; font-family: 'Manrope-SemiBold', sans-serif; margin-bottom: calc(25px + 1vw); line-height: 1.15;}
h2.big      {font-size: 80px; font-family: 'MonumentExtended-Regular', sans-serif; text-transform: uppercase; line-height: 1;}
h3          {font-size: 18px; font-family: 'MonumentExtended-Regular', sans-serif; text-transform: uppercase; line-height: 1;}
h4          {font-family: 'Manrope-SemiBold', sans-serif; margin-bottom: calc(.5vw + 15px);}
p           {font-size: 20px; margin-bottom: 30px;}
p.small     {font-size: 15px; margin-bottom: 20px; display: inline-block;}
strong 	    {font-family: 'Manrope-Bold', sans-serif;}
a           {text-decoration: none;}
p a         {position: relative; display: inline-block;}
p a:hover   {opacity: .5; transform: translate(0, -2px);}
em          {color: #fff; font-style: italic; opacity: 0.6;}

h2 ~ .btn {
    margin-top: 10px;
}

h1          {font-size: clamp(35px, 3.8vw, 60px);}
h1.big      {font-size: clamp(40px, 5.5vw, 100px);}
h2          {font-size: clamp(26px, 2.6vw, 40px);}
h2.big      {font-size: clamp(22px, 4vw, 50px);}
h4          {font-size: clamp(19px, 1.5vw, 24px);}
p           {font-size: clamp(16px, 1.1vw, 18px);}

h1:last-child, h2:last-child, h2.big:last-child, h3:last-child, h4:last-child, p:last-child, p.big:last-child, a:last-child, strong:last-child  {margin-bottom: 0;}

@media screen and (max-width: 1200px){
    p.small {
        opacity: .7;
    }
}

@media screen and (max-width: 540px){
    h1              {font-size: 30px; font-size: clamp(30px, 8vw, 40px); margin-bottom: 4vw;}
    h1.big          {font-size: 40px; font-size: clamp(40px, 10vw, 50px);}
    h2 				{font-size: 26px;}
    h2.big          {font-size: 30px; font-size: 7vw;}
    h4          	{font-size: 19px;}
    p           	{font-size: 16px;}
    p.small         {font-size: 12.5px;}
}

h1.center, h2.center, h3.center, h4.center, p.center {text-align: center;}

body {
    font-family: 'Manrope-Regular', sans-serif;
    font-size: 15px;
    line-height: 1.5;
    font-weight: 400;
	color: #000;
    -webkit-font-smoothing: antialiased;
	top: 0;  
    left: 0;
}

html, body {
    width: 100%;
    -webkit-font-smoothing: antialiased;
    position: relative;
    background: #000;
}

::-webkit-scrollbar { 
    display: none; 
}

* { 
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    -moz-tap-highlight-color: rgba(0, 0, 0, 0);
}

/* ------------------------- All -------------------------------------------------- */

::selection {
    background: rgba(0, 255, 255, 0.7);
}

main {
    float: left;
    width: 100%;
    position: relative;
    background: #fff;
    overflow: hidden;
}

main.dark {
    color: #fff;
    background: #000;
}


.section {
    float: left;
    width: 100%;
    position: relative;
    padding-top: 10vw;
    padding-bottom: 10vw;
}

.wrap {
    margin: 0 auto;
    max-width: 1220px;
    padding-left: 30px;
    padding-right: 30px;
    position: relative;
}

.wrap-wide {
    margin: 0 auto;
    max-width: 1420px;
    padding-left: 30px;
    padding-right: 30px;
    position: relative;
}

.wrap-text {
    max-width: 800px;
    margin: 0 auto;
    padding-left: 30px;
    padding-right: 30px;
    position: relative;
}

.wrap-block {
    width: 1420px;
    padding-left: 30px;
    padding-right: 30px;
    left: 50%;
    top: 50%;
    position: absolute;
    transform: translate(-50%, -50%);
}

.row {
    display: flex;
    flex-wrap: wrap;
    position: relative;
}

.sub-wrap {
    width: 50%;
    position: relative;
    float: left;
}

.stripe {
    background: rgba(0, 0, 0, 0.15);
    width: 100%;
    height: 1px;
    float: left;
    position: relative;
}

main.dark .stripe {
    background: rgba(255, 255, 255, 0.3);
}

.stripe svg {
    position: absolute;
    left: 50%;
    bottom: 0;
    transform: translate(-50%, 0px);
}

main.light .stripe svg path {
    stroke: #d9d9d9;
    fill: #fff;
    stroke-width: 1px;
    stroke-linecap: butt;
    transform: translate(0, 2px);
}

main.dark .stripe svg path {
    stroke: #4d4d4d;
    fill: #000;
    stroke-width: 1px;
    stroke-linecap: butt;
    transform: translate(0, 2px);
}

.overlay {
    position: absolute;
    left: 0;
    top: -5%;
    width: 100%;
    height: 110%;
}

.dark-overlay {
    position: absolute;
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
    background: rgba(0, 0, 0, 0.4);
}

main.light img[data-src][src*='data:image'] { background-color: rgba(0,0,0,0.1);}
main.dark img[data-src][src*='data:image'] { background-color: rgba(255,255,255,0.2);}
main.light .single-image[data-src] { background-color: rgba(0,0,0,0.1);}
main.dark .single-image[data-src] { background-color: rgba(255,255,255,0.2);}

@media screen and (max-width: 1740px){

    .wrap-block {
        width: 100%;
        left: 0;
        transform: translate(0, -50%);
        padding: 0 12vw;
    }

    .wrap {
        max-width: 100%;
        padding: 0 12vw;
    }
    
    .wrap-wide {
        max-width: 100%;
        padding: 0 12vw;
    }
    
}

@media screen and (max-width: 1500px){

    .stripe svg {
        position: absolute;
        left: 50%;
        bottom: 0;
        transform: translate(-50%, 25%) scale(.5);
    }

    main.light .stripe svg path {
        stroke-width: 2.2px;
    }
    
    main.dark .stripe svg path {
        stroke-width: 2.2px;
    }
    
}

@media screen and (max-width: 1080px){

    .wrap-text {
        max-width: 100%;
        padding: 0 18vw;
    }
}

@media screen and (max-width: 540px){

    .section {
        float: left;
        width: 100%;
        position: relative;
        padding-top: 20vw;
        padding-bottom: 20vw;
    }

    .wrap, .wrap-text {
        padding: 0 30px;
    }
    
    .wrap-wide {
        padding: 0 30px;
    }
    
    .wrap-block {
        padding: 0 30px;
    }
    
    .dark-overlay {
	    background: rgba(0, 0, 0, 0.6);
    }
}

/* ------------------------- Buttons -------------------------------------------------- */

.btn {
    height: 50px;
    display: inline-block;
    padding: 10px 30px 10px 30px;
    position: relative;
    font-size: 16px; 
    line-height: 30px; 
    text-decoration: none; 
    background: #fff;
    overflow: hidden;
    border-radius: 25px;
    font-family: 'Manrope-SemiBold', sans-serif;
    text-align: center;
}

.btn span {
    z-index: 1;
    position: relative;
    color: #000;
}

.btn.dark {
    background: #000;
    color: #fff;
}

.btn.dark span {
    color: #fff;
}

@keyframes btnHover {
    0% {background-position-x: 0;}
    100% {background-position-x: 600%;}
}

.btn-bg {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: 0;
    animation: btnHover 10s linear;
    animation-iteration-count: infinite; 
    background: #FFC700 url("../img/gradient-2.jpg");
    background-size: 600%;
    opacity: 0;
}

.btn span {
    z-index: 1;
    position: relative;
}

.btn:hover {
    cursor: pointer;
    transform: translate(0, -3px);
}

.btn:hover .btn-bg{
    opacity: 1;
}

.btn:hover span, main.light.active .nav-cta-btn:hover span {
    color: #fff;
}

.btn-bg, .btn span, .nav-cta-btn span{
	-webkit-transition: all .25s ease-in-out;
	-moz-transition: all .25s ease-in-out;
	-ms-transition: all .25s ease-in-out;
	-o-transition: all .25s ease-in-out;
	transition: all .25s ease-in-out;  
}

.icon-links {
    display: inline-block;
}

.icon-link {
    display: flex;
	align-items: center;
    margin-bottom: 10px;
}

.icon-link:last-child {
    margin-bottom: 0px;
}

.icon-link svg {
    float: left;
    margin-right: 10px;
}

.icon-link p {
    float: left;
    margin: 0;
}

.icon-link:hover p {
    opacity: .5;
}



/* ------------------------- GDPR - Cookies Accept -------------------------------------------------- */

#gdpr-box {
    position: fixed;
    right: 60px;
    bottom: -100%;
    background: #fff;
    z-index: 5;
    padding: 20px;
    -webkit-box-shadow: 0px 100px 200px 0px rgba(35,36,45,0.3);
    -moz-box-shadow: 0px 100px 200px 0px rgba(35,36,45,0.3);
    box-shadow: 0px 100px 200px 0px rgba(35,36,45,0.3);
}

#gdpr-box.active {
    bottom: 40px;
    display: block;
}

#gdpr-box.notactive {
    bottom: -100%;
}


.gdpr-text {
    float: left;
    height: 50px;
    max-width: 250px;
    font-size: 14px;
    padding: 4px 0 4px 5px;
}

.gdpr-text a {
    color: #23242D;
    text-decoration: underline;
    position: relative;
    display: inline-block;
}

.gdpr-text a:hover {
    transform: translate(0, -3px);
    opacity: .5;
}

.gdpr-button {
    float: left;
    height: 50px;
    padding-left: 20px;
}

.gdpr-button-accept {
    float: left;
    font-size: 15px;
    padding: 10px 25px 10px 25px;
    height: 50px;
}

#gdpr-box.notactive  {
    bottom: -100%;
}

#gdpr-box.notactive {
    -webkit-transition: all .7s ease-in-out;
	-moz-transition: all .7s ease-in-out;
	-ms-transition: all .7s ease-in-out;
	-o-transition: all .7s ease-in-out;
	transition: all .7s ease-in-out;     
}

@media screen and (max-width: 540px){
    #gdpr-box {
        right: 0;
        width: 100%;
        padding: 20px 30px;
        bottom: -100%;
    }

    #gdpr-box.active {
        bottom: 0;
    }

    #gdpr-box.notactive {
        bottom: -100%;
    }

    .gdpr-text {
        max-width: calc(100% - 85px);
        font-size: 13px;
        padding: 4px 0 4px 0px;
    }

    .gdpr-button {
        padding-left: 10px;
        width: 85px;
    }
}


/* ------------------------- Textblock -------------------------------------------------- */

.textpage-textblock {
    padding-top: 0;
}

.textblock h1 {
    font-size: clamp(21px, 2.6vw, 30px);
    margin-bottom: 20px;
    margin-top: 10px;
}

.textblock h2 {
    margin-top: 10px;
    margin-bottom: 30px;
    display: inline-block;
} 

.textblock h3 {
    margin-top: 10px;
    margin-bottom: 10px;
    display: inline-block;
}

.textblock img {
    width: 100%;
    margin-bottom: 30px;
}

.textblock h1:first-child, .textblock h2:first-child, .textblock h3:first-child {
    margin-top: 0px;
}

.textblock p:last-child {
    margin-bottom: 0;
}

.textblock ul {
    padding-bottom: 30px;
    display: inline;
    float: left;
    width: 100%;
}

.textblock ol {
    padding-bottom: 30px;
    display: inline;
    float: left;
    width: 100%;
    padding-left: 23px;
}

.textblock ul li {
    margin-bottom: 10px;
    position: relative;
    padding-left: 20px;
    font-size: clamp(16px, 1.1vw, 18px);
}

.textblock ol li {
	list-style: decimal;
	margin-left: -5px;
    color: #000;
    font-size: clamp(16px, 1.1vw, 18px);
}

.textblock ul li:before {
    content: "";
    width: 5px;
    height: 5px;
    background: #000;
    position: absolute;
    left: 0;
    top: 9px;
}

.textblock p a:after {
    content: "";
    position: absolute;
    left: 0;
    bottom: 1px;
    height: 1px;
    width: 100%;
    background: #fff;
    opacity: .6;
}

main.light .textblock p a:after {
    background: #000;
}


/* ------------------------- Page Transition -------------------------------------------------- */

.loading-screen {
    position: fixed;
    top: 0;
    left: 0;
    bottom: 0;
    right: 0;
    overflow: hidden;
    z-index: 100;
    pointer-events: none;
    background: #000;
}

.loading-screen svg {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%) scale(1.2);
    opacity: 0;
}
/* ------------------------- Default Header -------------------------------------------------- */

.default-header {
    padding-top: calc(90px + 10vw);
    text-align: center;
    padding-bottom: 8vw;
}

.default-header  .dark-overlay {
    height: 100vh;
}

.fade-overlay {
    position: absolute;
    width: 100%;
    height: 100vh;
    top: 0;
    left: 0;
    background: rgba(0, 0, 0, 0.5);
    background: linear-gradient(0deg, rgba(255,255,255,1) 0%, rgba(255,255,255,.4) 100%);
}

main.dark .fade-overlay {
    background: linear-gradient(0deg, rgba(0,0,0,1) 0%, rgba(0,0,0,.2) 100%);
}

.default-header .line {
    overflow: hidden;
}

.default-header .line .line-content {
    position: relative;
    will-change: transform;
    backface-visibility: hidden;
    display: block;
}

@media screen and (max-width: 540px){
    .default-header {
        padding-top: calc(90px + 15vw);
        padding-bottom: 20vw;
    }
}

/* ------------------------- TRICKS H1 -------------------------------------------------- */

.default-header .tricks .tricksword-wrapper {
    overflow: hidden;
    display: inline-block;
    margin-top: -1.5vw;
}

.default-header .tricks .tricksword {
    display: inline-block;
    white-space: nowrap;
}

/* ------------------------- Default Header - Full Height -------------------------------------------------- */

.default-header.full-height {
    height: 100vh;
    padding: 0;
    overflow: hidden;
}

/* ------------------------- Pre Footer -------------------------------------------------- */

.prefooter .sub-wrap:nth-child(1) {
    width: 35%;
}

.prefooter .sub-wrap:nth-child(2) {
    width: 65%;
}

.prefooter h2 a {
    position: relative;
    display: inline-block;
}

.prefooter h2 a .underline {
    width: 100%;
    height: 3px;
    background: #fff;
    position: relative;
    transform: translate(0, 2px);
}

main.light .prefooter h2 a .underline {
    background: #000;
}

.prefooter h2 a:hover .underline .btn-bg {
    opacity: 1;
    background: url("../img/gradient-2.jpg");
    background-size: 600%;
}

.prefooter h2 a:hover {
    color: rgba(255, 255, 255, .5);
}

main.light .prefooter h2 a:hover {
    color: rgba(0, 0, 0, .5);
}

.prefooter h2 a:hover .underline {
    transform: translate(0, 5px);
}

.prefooter ul {
    display: flex;
    flex-wrap: wrap;
    justify-content: flex-end;
    padding-top: 5px;
}

.prefooter ul li {
    padding-right: calc(3vw + 15px);
}

.prefooter ul li:first-child {
    padding-right: calc(5vw + 15px);
}

.prefooter ul li:last-child {
    padding-right: 0;
}

.prefooter ul li p {
    margin: 0;
}

.prefooter ul li p strong {
    margin-bottom: calc(.5vw + 15px);
    display: block;
}

.prefooter ul li p a {
    text-decoration: none;
}

.prefooter .mobile-legal {
    display: none;
}

main#home .header-image.mobile {
	display: none;
}

@media screen and (max-width: 1200px){

    .prefooter .mobile-credits {
        display: none;
    }
}

@media screen and (max-width: 1060px){
    .prefooter {
        padding-bottom: 40px;
    }

    .prefooter .sub-wrap:nth-child(1) {
        width: 100%;
        padding-bottom: 7vw;
    }

    .prefooter .sub-wrap:nth-child(2) {
        width: 100%;
    }

    .prefooter ul {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
        padding-top: 5px;
    }

    .prefooter .mobile-legal {
        float: left;
        width: 100%;
        display: block;
        padding-top: 7vw;
    }

    .prefooter .mobile-legal p {
        margin-right: 20px;
        margin-bottom: 0;
    }
}


@media screen and (max-width: 640px){

    .prefooter ul {
        padding-top: 30px;
    }

    .prefooter ul li, .prefooter ul li:first-child, .prefooter ul li:last-child {
        width: 50%;
        margin-bottom: 60px;
        padding-right: 0;
        padding-left: 0;
    }

    .prefooter ul li:last-child {
        margin-bottom: 0;
    }

    .prefooter .mobile-legal {
        padding-top: 55px;
    }
    
    main#home .header-image.desktop {
	    display: none;
    }
	main#home .header-image.mobile {
		display: block;
	}
}

@media screen and (max-width: 440px){
    .prefooter ul li:first-child {
        width: 40%;
        margin-bottom: 45px;
    }

    .prefooter ul li, .prefooter ul li:nth-child(2) {
        width: 60%;
        margin-bottom: 45px;
    }

    .prefooter ul li, .prefooter ul li:nth-child(3) {
        width: 100%;
    }
}

/* ------------------------- Footer -------------------------------------------------- */

.footer {
    padding-top: 0;
    padding-bottom: 3vw;
}

.footer .stripe {
    margin-bottom: 3vw;
}

.footer-wrap {
    width: 100%;
    float: left;
    position: relative;
}

.footer .credits {
    float: left;
}

.footer .legal {
    position: absolute;
    top: 50%;
    right: 120px;
    transform: translate(0, -50%);
}

.footer p {
    margin-right: 20px;
    margin-bottom: 0;
}

.social-icons {
    position: absolute;
    right: 0;
    top: 50%;
    transform: translate(0, -50%);
}

.social-icons.social-hover:hover .social-sticker {
	opacity: 1;
	transform: translate(35%, -95%) rotate(15deg) scale(1.2);
}

.social-ico {
    position: relative;
    display: inline-block;
    margin-left: 10px;
    width: 24px;
    height: 24px;
}

main.dark .social-ico svg path, main.light .social-ico svg circle {
    fill: #fff;
}

.social-ico:hover {
    opacity: .5;
    transform: translate(0, -3px);
}

@media screen and (max-width: 1000px){
    .footer {
        padding-bottom: 40px;
    }
    
    .footer .stripe {
        margin-bottom: 40px;
    }

    .footer .legal {
        display: none;
    } 
}

@media screen and (max-width: 450px){

    .footer-wrap {
        padding-top: 50px;
    }

    .social-icons {
        right: auto;
        top: 0px;
        left: -8px;
        transform: translate(0, 0);
    }
}

/* ------------------------- Home - Header -------------------------------------------------- */

.home-header h1 {
    text-align: left;
    margin-top: 10vh;
    max-width: 55%;
}

.home-header p {
    max-width: 55%;
    text-align: left;
}

.header-image{
    position: absolute;
    width: 100%;
    height: 100vh;
    top: 0;
    left: 0;
}

@keyframes headerZoom {
    0% {transform: translate(-50%, -50%) scale(1);}
    100% {transform: translate(-50%, -50%) scale(1.3);}
}

.header-image.zoom {
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%) scale(1.3);
    animation: headerZoom 20s linear;
    animation-iteration-count: unset; 
}

.scroll-down {
    position: absolute;
    left: 55px;
    bottom: 50px;
    transform: translate(-35%, -155%) rotate(90deg);
}

.scroll-down span {
    text-transform: uppercase;
    font-size: 12px;
    letter-spacing: 3px;
    display: inline-block;
    margin-right: 15px;
    opacity: .8;
}

.scroll-down:hover {
    cursor: pointer;
}

.scroll-down:hover span {
    opacity: 1;
}

@media screen and (max-width: 540px){
    .default-header.home-header {
        height: 87vh;
    }

    .home-header h1 {
        max-width: 100%;
    }
    
    .home-header p {
        max-width: 100%;
    }

    .scroll-down {
        left: 25px;
        bottom: 40px;
    }
    
    .scroll-down span {
	    opacity: 1;
	}
}

@media screen and (max-height: 700px){
	.scroll-down span {
	    opacity: 0;
	}
}

/* ------------------------- Home - Header Animation -------------------------------------------------- */

.ignite {
    position: absolute;
    width: 180px;
    height: 180px;
    top: 35%;
    right: 30px;
    transform: translate(0, -50%);
    border-radius: 110px;
}

.ignite-desktop {
    position: absolute;
    width: 100%;
    height: 100%;
    left: 0;
    top: 0;
}

.ignite-mobile {
    position: absolute;
    width: 100%;
    height: 100%;
    left: 0;
    top: 0;
    display: none;
}

.ignite:hover {
    cursor: pointer;
    background: rgba(0, 0, 0, 0);
}

.ignite:hover svg.rotate {
    animation-play-state: paused;
}

.ignite svg {
    position: absolute;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
}

.ignite svg.rotate {
    animation: rotateIgnite 15s linear;
    animation-iteration-count: infinite; 
}

@keyframes rotateIgnite {
    0% {transform: translate(-50%, -50%) rotate(0deg);}
    100% {transform: translate(-50%, -50%) rotate(-360deg);}
}

.home-header-animation {
    position: absolute;
    top: 0;
    left: 0;
    height: 100vh;
    width: 100%;
    background: #000;
    opacity: 0;
}

.home-header-animation.active {
    opacity: 1;
}

.home-header-animation .slide {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    animation: singleSlide 2s linear;
    animation-iteration-count: infinite; 
}

@keyframes singleSlide {
    0% {opacity: 1; transform: scale(1);}
    5% {opacity: 1; transform: scale(1.02);}
    6% {opacity: 0; transform: scale(1.02);}
    100% {opacity: 0; transform: scale(1);}
}

.home-header-animation .slide:nth-child(2) { animation-delay: .1s;}
.home-header-animation .slide:nth-child(3) { animation-delay: .2s;}
.home-header-animation .slide:nth-child(4) { animation-delay: .3s;}
.home-header-animation .slide:nth-child(5) { animation-delay: .4s;}
.home-header-animation .slide:nth-child(6) { animation-delay: .5s;}
.home-header-animation .slide:nth-child(7) { animation-delay: .6s;}
.home-header-animation .slide:nth-child(8) { animation-delay: .7s;}
.home-header-animation .slide:nth-child(9) { animation-delay: .8s;}
.home-header-animation .slide:nth-child(10) { animation-delay: .9s;}
.home-header-animation .slide:nth-child(11) { animation-delay: 1s;}
.home-header-animation .slide:nth-child(12) { animation-delay: 1.1s;}
.home-header-animation .slide:nth-child(13) { animation-delay: 1.2s;}
.home-header-animation .slide:nth-child(14) { animation-delay: 1.3s;}
.home-header-animation .slide:nth-child(15) { animation-delay: 1.4s;}
.home-header-animation .slide:nth-child(16) { animation-delay: 1.5s;}
.home-header-animation .slide:nth-child(17) { animation-delay: 1.6s;}
.home-header-animation .slide:nth-child(18) { animation-delay: 1.7s;}
.home-header-animation .slide:nth-child(19) { animation-delay: 1.8s;}
.home-header-animation .slide:nth-child(20) { animation-delay: 1.9s;}

@media screen and (max-width: 1760px){
    .ignite {
        right: 12vw;
    }
}
@media screen and (max-width: 800px){
    .ignite-mobile {
        display: block;
    }

    .ignite-desktop {
        display: none;
    }

    .ignite {
        transform: translate(25%, -50%) scale(.7);
    }
}

@media screen and (max-width: 540px){
    .ignite {
        transform: translate(25%, -25%) scale(.6);
        top: -10vh;
    }
}

/* ------------------------- Home - Targets -------------------------------------------------- */

.targets {
    padding-top: 7vw;
    padding-bottom: 7vw;
}

.targets .wrap-wide {
    display: flex;
    flex-wrap: wrap;
	align-items: center;
}

.targets .wrap-wide .sub-wrap:nth-child(1) {
    padding-right: 5vw;
}

.targets .wrap-wide .sub-wrap:nth-child(2) {
    padding-left: 5vw;
}

.targets-animation {
    float: left;
    width: 100%;
    position: relative;
    opacity: 0;
    visibility: hidden;
}

.targets-animation.targets-visible {
    opacity: 1;
    visibility: visible;
    transition: opacity .5s ease-in-out;  
}

.targets-animation:before {
    content: "";
    padding-top: 100%;
    display: block;
}

.targets-animation-wrapper {
    position: absolute;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    border-radius: 20%;
}

.targets .triangle {
    position: absolute;
    width: 49%;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -37%) rotate(0deg) scale(1);
    z-index: 2;
    opacity: 1;
}

.targets .logo-onenil {
    position: absolute;
    width: 7%;
    top: 50%;
    left: 50%;
    transform: translate(-50%, 25%);
    z-index: 2; 
}

.targets .dotted {
    position: absolute;
    width: 50%;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -37%) rotate(4deg);
    z-index: 1;
    opacity: .9;
}

.targets .circle {
    position: absolute;
    width: 42%;
    height: 42%;
    border-radius: 50%;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    border: 1px solid #fff;
}

.targets .circle-brands {
    transform: translate(-50%, -93%);
}

.targets .circle-fans {
    transform: translate(0%, -7%);
}

.targets .circle-sports {
    transform: translate(-100%, -7%);
}

.targets .circle h4 {
    margin: 0;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%) scale(.8);
    opacity: 0;
    transition: all .25s ease-in-out;  
}

.targets .top-circle {
    opacity: 0;
    background: rgba(0, 0, 0, .5);
    backdrop-filter: blur(8px);
    -webkit-backdrop-filter: blur(8px);
    transition: all .25s ease-in-out; 
    border: 1px solid #fff;
    z-index: 3;
}

@keyframes topCircleBrands {
    0% {opacity: 1; transform: translate(-50%, -111%); backdrop-filter: blur(0px); -webkit-backdrop-filter: blur(0px); background: rgba(0, 0, 0, 0); border: 1px solid rgba(255, 255, 255, 0.6); z-index: 1;}
    55% {opacity: 1; transform: translate(-50%, -111%); backdrop-filter: blur(0px); -webkit-backdrop-filter: blur(0px); background: rgba(0, 0, 0, 0); border: 1px solid rgba(255, 255, 255, 0.6); z-index: 1;}
    70% {opacity: 1; transform: translate(-50%, -93%); backdrop-filter: blur(0px); -webkit-backdrop-filter: blur(0px); background: rgba(0, 0, 0, 0); border: 1px solid rgba(255, 255, 255, 1); z-index: 1;}
    80% {opacity: 0; transform: translate(-50%, -93%); backdrop-filter: blur(0px); -webkit-backdrop-filter: blur(0px); background: rgba(0, 0, 0, 0); border: 1px solid rgba(255, 255, 255, 1); z-index: 1;}
    100% {z-index: 3;}
}

.targets-animation.targets-visible .top-circle-brands {
    animation: topCircleBrands 4s ease-in-out;
    animation-iteration-count: unset; 
}

@keyframes topCircleFans {
    0% {opacity: 1; transform: translate(16%, 3%); backdrop-filter: blur(0px); -webkit-backdrop-filter: blur(0px); background: rgba(0, 0, 0, 0); border: 1px solid rgba(255, 255, 255, 0.6); z-index: 1;}
    55% {opacity: 1; transform: translate(16%, 3%); backdrop-filter: blur(0px); -webkit-backdrop-filter: blur(0px); background: rgba(0, 0, 0, 0); border: 1px solid rgba(255, 255, 255, 0.6); z-index: 1;}
    70% {opacity: 1; transform: translate(0%, -7%); backdrop-filter: blur(0px); -webkit-backdrop-filter: blur(0px); background: rgba(0, 0, 0, 0); border: 1px solid rgba(255, 255, 255, 1); z-index: 1;}
    80% {opacity: 0; transform: translate(0%, -7%); backdrop-filter: blur(0px); -webkit-backdrop-filter: blur(0px); background: rgba(0, 0, 0, 0); border: 1px solid rgba(255, 255, 255, 1); z-index: 1;}
    100% {z-index: 3;}
}

.targets-animation.targets-visible .top-circle-fans {
    animation: topCircleFans 4s ease-in-out;
    animation-iteration-count: unset; 
}

@keyframes topCircleSports {
    0% {opacity: 1; transform: translate(-116%, 3%); backdrop-filter: blur(0px); -webkit-backdrop-filter: blur(0px); background: rgba(0, 0, 0, 0); border: 1px solid rgba(255, 255, 255, 0.6); z-index: 1;}
    55% {opacity: 1; transform: translate(-116%, 3%); backdrop-filter: blur(0px); -webkit-backdrop-filter: blur(0px); background: rgba(0, 0, 0, 0); border: 1px solid rgba(255, 255, 255, 0.6); z-index: 1;}
    70% {opacity: 1; transform: translate(-100%, -7%); backdrop-filter: blur(0px); -webkit-backdrop-filter: blur(0px); background: rgba(0, 0, 0, 0); border: 1px solid rgba(255, 255, 255, 1); z-index: 1;}
    80% {opacity: 0; transform: translate(-100%, -7%); backdrop-filter: blur(0px); -webkit-backdrop-filter: blur(0px); background: rgba(0, 0, 0, 0); border: 1px solid rgba(255, 255, 255, 1); z-index: 1;}
    100% {z-index: 3;}
}

.targets-animation.targets-visible .top-circle-sports {
    animation: topCircleSports 4s ease-in-out;
    animation-iteration-count: unset; 
}

@keyframes backCircle {
    0% {opacity: 0;}
    70% {opacity: 0;}
    71% {opacity: 1;}
}

.targets-animation.targets-visible .back-circle{
    animation: backCircle 4s ease-in-out;
    animation-iteration-count: unset; 
}

@keyframes circleTextBrands {
    0% {opacity: 0; transform: translate(-50%, -50%) scale(.8);}
    10% {opacity: 0; transform: translate(-50%, -50%) scale(.8);}
    25% {opacity: 1; transform: translate(-50%, -50%) scale(1);}
    55% {opacity: 1; transform: translate(-50%, -50%) scale(1);}
    70% {opacity: 0; transform: translate(-50%, -50%) scale(1);}
}

.targets-animation.targets-visible .top-circle-brands h4{
    animation: circleTextBrands 4s ease-in-out;
    animation-iteration-count: unset; 
}

@keyframes circleTextFans {
    0% {opacity: 0; transform: translate(-50%, -50%) scale(.8);}
    20% {opacity: 0; transform: translate(-50%, -50%) scale(.8);}
    35% {opacity: 1; transform: translate(-50%, -50%) scale(1);}
    55% {opacity: 1; transform: translate(-50%, -50%) scale(1);}
    70% {opacity: 0; transform: translate(-50%, -50%) scale(1);}
}

.targets-animation.targets-visible .top-circle-fans h4{
    animation: circleTextFans 4s ease-in-out;
    animation-iteration-count: unset; 
}

@keyframes circleTextSports {
    0% {opacity: 0; transform: translate(-50%, -50%) scale(.8);}
    30% {opacity: 0; transform: translate(-50%, -50%) scale(.8);}
    45% {opacity: 1; transform: translate(-50%, -50%) scale(1);}
    55% {opacity: 1; transform: translate(-50%, -50%) scale(1);}
    70% {opacity: 0; transform: translate(-50%, -50%) scale(1);}
}

.targets-animation.targets-visible .top-circle-sports h4{
    animation: circleTextSports 4s ease-in-out;
    animation-iteration-count: unset; 
}

@keyframes triangleAnimation {
    0% {transform: translate(-50%, -37%) rotate(-18deg) scale(1); opacity: 0;}
    55% {transform: translate(-50%, -37%) rotate(-18deg) scale(1); opacity: 0;}
    70% {transform: translate(-50%, -37%) rotate(0deg) scale(1); opacity: 1;}
}

.targets-animation.targets-visible .triangle{
    animation: triangleAnimation 4s ease-in-out;
    animation-iteration-count: unset; 
}

@keyframes triangleBlurry {
    0% {opacity: 0;}
    50% {opacity: 1;}
    100% {opacity: 0;}
}

.targets-animation.targets-visible .triangle .blurry{
    animation: triangleBlurry 4s ease-in-out;
    animation-iteration-count: infinite; 
    filter: blur(30px);
    -webkit-filter: blur(30px);
    opacity: 0;
    transform: scale(1.1);

}

@keyframes logoOnenilAnimation {
    0% {opacity: 0;}
    55% {opacity: 0;}
    70% {opacity: 1;}
}

.targets-animation.targets-visible .logo-onenil{
    animation: logoOnenilAnimation 4s ease-in-out;
    animation-iteration-count: unset; 
}

@keyframes dottedAnimation {
    0% {transform: translate(-50%, -37%) rotate(-4deg); opacity: 0;}
    60% {transform: translate(-50%, -37%) rotate(-4deg); opacity: 0;}
    70% {transform: translate(-50%, -37%) rotate(4deg); opacity: .9;}
}

.targets-animation.targets-visible .dotted{
    animation: dottedAnimation 4s ease-in-out;
    animation-iteration-count: unset; 
}

@keyframes dottedImgAnimation {
    0% {transform: rotate(0deg);}
    100% {transform: rotate(360deg);}
}

.targets-animation.targets-visible .dotted .dotted-img{
    animation: dottedImgAnimation 60s linear;
    animation-iteration-count: infinite; 
}

.targets .top-circle:hover {
    opacity: 1;
    cursor: pointer;
}

.targets .top-circle:hover h4 {
    transform: translate(-50%, -50%) scale(1);
    opacity: 1;
}

.targets .logo-onenil img {
    transition: all .25s linear;  
}

.targets .logo-onenil.active img {
    opacity: .2;  
    transition: all .25s linear;
}


@media screen and (max-width: 1000px){
    .targets .wrap-wide .sub-wrap:nth-child(1) {
        padding-right: 0;
        width: 70%;
        margin-left: 15%;
    }
    
    .targets .wrap-wide .sub-wrap:nth-child(2) {
        padding-left: 0;
        width: 70%;
        margin-left: 15%;
        padding-top: 3vh;
        padding-bottom: 2vh;
    }
}

@media screen and (max-width: 640px){
    .targets .wrap-wide .sub-wrap:nth-child(1) {
        width: 100%;
        margin-left: 0;
    }
    
    .targets .wrap-wide .sub-wrap:nth-child(2) {
        width: 100%;
        margin-left: 0;
    }
}

/* ------------------------- Home - Logos -------------------------------------------------- */

.logos {
    padding-top: 6vw;
    padding-bottom: 6vw;
}

.logos-wrapper {
    float: left;
    width: 100%;
    position: relative;
    height: 65px;
}

.logos .wrap-wide .logos-row {
    float: left;
    width: 100%;
    display: flex;
    flex-wrap: wrap;
	justify-content: space-between;
    height: 5vh;
    align-items: center;
    position: absolute;
    transform: translate(0 -50%);
}

.logos .single-logo {
    display: flex;
    align-items: center;
    background: #000;
    width: 110px;
    height: 65px;
}

.logos .single-logo img {
    max-width: 110px;
    max-height: 65px;
    object-fit: contain;
}

@keyframes logoFade {
    0% {opacity: 0;}
    2% {opacity: 1;}
    50% {opacity: 1;}
    52% {opacity: 0;}
    100% {opacity: 0;}
}

.logos .wrap-wide .bottom-row .single-logo {
    animation: logoFade 24s linear;
    animation-iteration-count: infinite; 
    opacity: 0;
}

.logos .wrap-wide .bottom-row .single-logo:nth-child(4) {animation-delay: 2s;}
.logos .wrap-wide .bottom-row .single-logo:nth-child(6) {animation-delay: 4s;}
.logos .wrap-wide .bottom-row .single-logo:nth-child(1) {animation-delay: 6s;}
.logos .wrap-wide .bottom-row .single-logo:nth-child(5) {animation-delay: 8s;}
.logos .wrap-wide .bottom-row .single-logo:nth-child(3) {animation-delay: 10s;}
.logos .wrap-wide .bottom-row .single-logo:nth-child(2) {animation-delay: 12s;}

@media screen and (max-width: 1740px){

    .logos-wrapper {
        height: 4vw;
    }

    .logos .single-logo {
        width: 6.4vw;
        height: 4vw;
    }
    
    .logos .single-logo img {
        max-width: 6.4vw;
        max-height: 4vw;
    }
}

@media screen and (max-width: 900px){

    .logos {
        padding-top: 8vw;
        padding-bottom: 8vw;
    }

    .logos-wrapper {
        height: 30vw;
    }

    .logos .wrap-wide {
        padding: 0 10px;
    }

    .logos .single-logo {
        display: flex;
        align-items: center;
        justify-content: center;
        width: 33.333%;
        height: 15vw;
    }

    .logos .single-logo img {
        max-width: calc(25px + 7.5vw);
        max-height: calc(15px + 5vw);
    }

}



/* ------------------------- Home - Slogan -------------------------------------------------- */

.slogan {
    overflow: hidden;
}

.slogan h2.big {
    width: 80%;
    margin: 0 0 0 10%;
    text-align: center;
    font-size: clamp(30px, 4vw, 65px);
}

@media screen and (max-width: 800px){

    .slogan h2.big {
        width: 100%;
        margin: 0;
    }
}
@media screen and (max-width: 540px){

    .slogan {
        padding-top: 25vw;
        padding-bottom: 25vw;
    }

    .slogan h2.big {
        font-size: 7vw;
    }

    .slogan .overlay {
        top: -20%;
        width: 100%;
        height: 140%;
    }
}

/* ------------------------- Home - Services -------------------------------------------------- */

.home-services h2 {
    max-width: calc(200px + 14vw);
}

.home-services ul {
    float: left;
    width: 100%;
    display: flex;
    flex-wrap: wrap;
	justify-content: space-between;
    padding-top: 3vw;
}

.home-services li {
    width: calc(150px + 5vw);
}

.home-services li h4 {
    padding-top: calc(.5vw + 15px);
}

.home-services li img {
    width: 36px;
}

@media screen and (max-width: 1740px){
    .home-services li img {
        width: 2vw;
    }
}


@media screen and (max-width: 1200px){
    .home-services li {
        width: 180px;
    }

    .home-services li img {
        width: 28px;
    }
}

@media screen and (max-width: 1000px){

    .home-services li {
        width: 50%;
        margin-bottom: 60px;
        padding-right: 30px;
    }

    .home-services li:nth-child(even) {
        padding-right: 0px;
        padding-left: 30px;
    }
    
    .home-services li:nth-child(3), .home-services li:nth-child(4) {
        margin-bottom: 0;
    }
}

@media screen and (max-width: 640px){


    .home-services li {
        width: 50%;
        padding-right: 0;
    }

    .home-services li:nth-child(odd) {
        padding-right: 10px;
    }

    .home-services li:nth-child(even) {
        padding-right: 0px;
        padding-left: 10px;
    }

}

/* ------------------------- Home - Split Footer -------------------------------------------------- */

.split-footer {
    padding: 0;
    display: flex;
}

.split-footer .sub-wrap {
    position: relative;
    display: flex;
}

.split-footer .archive, .split-footer .jobs {
    float: left;
    width: 100%;
    position: relative;
    padding-top: 150px;
    padding-bottom: 130px;
}

.split-footer .archive {
    height: 100%;
}

.split-footer .archive .inner-wrap {
    float: right;
    max-width: 710px;
    padding-left: 30px;
    padding-right: 180px;
    position: relative;
}

.split-footer .jobs .inner-wrap {
    float: left;
    max-width: 710px;
    padding-left: 180px;
    padding-right: 30px;
    position: relative;
}

.stripe-shape {
    position: absolute;
    left: 50%;
    bottom: 0;
    transform: translate(-50%, 1px);
    z-index: 2;
}


@media screen and (max-width: 1740px){
    .split-footer .archive, .split-footer .jobs {
        padding-top: 8vw;
        padding-bottom: 7vw;
    }

    .split-footer .archive .inner-wrap {
        max-width: 100%;
        width: 100%;
        padding-left: 12vw;
        padding-right: 5vw;
    }
    
    .split-footer .jobs .inner-wrap {
        max-width: 100%;
        width: 100%;
        padding-left: 7vw;
        padding-right: 10vw;
    }
}

@media screen and (max-width: 1500px){
    .stripe-shape {
        position: absolute;
        left: 50%;
        bottom: 0;
        transform: translate(-50%, 26%) scale(.5);
    }
}

@media screen and (max-width: 1000px){

    .split-footer {
        display: block;
    }

    .split-footer .sub-wrap {
        width: 100%;
    }

    .split-footer .archive .inner-wrap {
        padding-left: 12vw;
        padding-right: 12vw;
    }
    
    .split-footer .jobs .inner-wrap {
        padding-left: 12vw;
        padding-right: 12vw;
    }
}

@media screen and (max-width: 540px){

    .split-footer .archive, .split-footer .jobs {
        padding-top: 16vw;
        padding-bottom: 14vw;
    }
   

    .split-footer .archive .inner-wrap {
        padding-left: 30px;
        padding-right: 30px;
    }

    .split-footer .jobs .inner-wrap {
        padding-left: 30px;
        padding-right: 30px;
    }

}

/* ------------------------- Home - Split Footer - Archive -------------------------------------------------- */

.split-footer .archive {
    position: relative;
}

.split-footer .header-image {
    height: 100%;
}

.split-footer .light-overlay {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(255, 255, 255, 0.1);
}

.split-footer .split-footer-overlay {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
}

.split-footer .archive p {
    color: #fff;
    margin-bottom: 20px;
}

.split-footer .archive h2 {
    color: #fff;
    margin-bottom: 40px;
}

.split-footer .archive p.small {
    margin: 0;
    opacity: .8;
}

.split-footer .archive p.small svg {
    transform: translate(5px, 0);
}

.split-footer .archive p.small svg path {
    stroke: #fff;
}

.split-footer .archive:hover .split-footer-overlay {
    opacity: .9;
}

.split-footer .archive:hover p.small  {
    opacity: 1;
}

.split-footer .archive:hover p.small svg {
    transform: translate(10px, 0);
}

/* ------------------------- Home - Split Footer - Jobs -------------------------------------------------- */

.split-footer .jobs {
    background: #fff;
}

.split-footer .jobs p {
    color: #000;
    margin-bottom: 20px;
}

.split-footer .jobs h2 {
    color: #000;
    margin-bottom: 40px;
}

.split-footer .jobs p.small {
    margin: 0;
    opacity: .5;
}

.split-footer .jobs p.small svg {
    transform: translate(5px, 0);
}

.split-footer .jobs:hover {
    background: #eee;
}

.split-footer .jobs:hover p.small  {
    opacity: 1;
}

.split-footer .jobs:hover p.small svg {
    transform: translate(10px, 0);
}

/* ------------------------- Archive - Header -------------------------------------------------- */

.archive-header .wrap-text {
    max-width: 800px;
}

.header-image.stars {
    background: url("../img/stars.png") center top;
}

@keyframes move-twink-back {
    from {background-position:0 0;}
    to {background-position:-10000px 5000px;}
}

.header-image.twinkling {
    background: url("../img/twinkling.png") center top;
    animation: move-twink-back 200s linear infinite;
}

@media screen and (max-width: 540px){

    .header-image.stars {
        background: url("../img/stars.png");
        background-size: cover;
    }
}
/* ------------------------- Archive - Header -------------------------------------------------- */

.archive-images {
    padding-top: 3vw;
    padding-bottom: 0;
}

.archive-images .archive-grid {
    width: 100%;
    float: left;
}

.archive-images li {
    float: left;
    width: 33.33%;
    position: relative;
}

.archive-images li img {
    position: relative;
    float: left;
    width: 100% !important;
    border: 0;
    stroke: 0;
    outline: 0;
    height: auto !important;
}

.archive-images li:nth-child(2) {
    margin-top: 5vw;
}

.archive-images li.slide-in {
    transform: translate(0, 5vw);
    opacity: 0;
    transition: all 1s cubic-bezier(0.87, 0, 0.13, 1); 
    transition-delay: -.25s;   
}

.archive-images li.slide-in.appear {
    transform: translate(0,0);
    opacity: 1;
}

.archive-images li:nth-child(1), .archive-images li:nth-child(2), .archive-images li:nth-child(3) {
    opacity: 1;
    transform: translate(0, 0);
}

@media screen and (max-width: 540px){
    .archive-images li {
        float: left;
        width: 50%;
        position: relative;
    }
}

/* ------------------------- Projects Grid -------------------------------------------------- */

.projects-grid .wrap-wide {
    padding: 0 calc(30px - 1vw);
}

.projects-grid ul {
    float: left;
    width: 100%;
}

.projects-grid ul li {
    float: left;
    width: 33.33%;
    position: relative;
    padding: 1vw;
}

.projects-grid ul li a {
    float: left;
    width: 100%;
    position: relative;
    background: #000;
    overflow: hidden;
}

main.dark .projects-grid ul li a {
    background: #272727;
}

.projects-grid ul li a:before {
    content: "";
    padding-top: 150%;
    display: block;
}

.project-thumb-back {
    position: absolute;
    height: 100%;
    width: 100%;
    top: 0;
    left: 0;
}

.project-thumb-front {
    position: absolute;
    height: 105%;
    width: 100%;
    top: 0;
    left: 0;
}

.project-video-file {
    position: absolute;
    height: 105%;
    width: 100%;
    top: 0;
    left: 0;
    opacity: 0;
}

.project-video-thumb {
    position: absolute;
    height: 105%;
    width: 100%;
    top: 0;
    left: 0;
}

.project-thumb-dark-overlay {
    position: absolute;
    height: 100%;
    width: 100%;
    top: 0;
    left: 0;
    background: #000;
}

.projects-grid .project-thumb-logo {
    position: absolute;
    top: 12%;
    left: 12%;
    width: 22%;
    height: 9%;
    padding: 0;
}

.projects-grid .project-thumb-logo img {
    position: absolute;
    left: 0;
    top: 0;
    max-height: 100%;
    max-width: 100%;
    object-fit: contain;
}

.projects-grid .project-thumb-content {
    position: absolute;
    bottom: -8%;
    width: 100%;
    padding: 12%;
}

.projects-grid .project-thumb .project-thumb-content h2 {
    margin-bottom: 10%;
    font-size: clamp(22px, 2.1vw, 35px);
}

.projects-grid .project-thumb-content p {
    opacity: 0;
}

.projects-grid .project-thumb .project-thumb-content svg {
    transform: translate(5px, 0);
}

.projects-grid .project-thumb.light .project-thumb-content {
    color: #000;
}

.projects-grid .project-thumb.dark .project-thumb-content {
    color: #fff;
}

.projects-grid .project-thumb.light .project-thumb-content svg g {
    stroke: #000;
}

.projects-grid .project-thumb.dark .project-thumb-content svg g {
    stroke: #fff;
}

.project-thumb-back, .project-thumb-front, .project-video-thumb, .project-video-file, .projects-grid .project-thumb-content, .projects-grid .project-thumb .project-thumb-content p {
    transition: all .4s cubic-bezier(0.7, 0, 0.3, 1); 
}

/* --- Hover --- */


.projects-grid ul li a:hover .project-thumb-front {
    top: -5%;
}

.projects-grid ul li a:hover .project-video-file {
    top: -5%;
    opacity: 1;
}

.projects-grid ul li a:hover .project-thumb-content {
    position: absolute;
    bottom: 0%;
}

.projects-grid ul li a:hover .project-thumb-content p {
    opacity: 1;
}


@media screen and (max-width: 1740px){
    .projects-grid .wrap-wide {
        padding: 0 11vw;
    }
}

@media screen and (max-width: 1100px){
 
    .projects-grid .wrap-wide {
        padding: 0 10.5vw;
    }    

    .projects-grid ul li {
        width: 50%;
        padding: 1.5vw;
    }

    .projects-grid .project-thumb .project-thumb-content h2 {
        font-size: clamp(20px, 3vw, 35px);
    }

    /* --- Hover OFF --- */

    .projects-grid ul li a:hover .project-thumb-back {
        bottom: 0;
        left: 0;
    }
    
    .projects-grid ul li a:hover .project-thumb-front, .projects-grid ul li a:hover .project-video-thumb, .projects-grid ul li a:hover .project-video-file {
        top: 0;
        right: 0;
    }
    
    .projects-grid ul li a .project-thumb-content, .projects-grid ul li a:hover .project-thumb-content {
        position: absolute;
        bottom: 0;
    }
    
    .projects-grid ul li a .project-thumb-content p {
        opacity: 1;
    }
    
}

@media screen and (max-width: 640px){

    
    .projects-grid ul li {
        width: 100%;
        padding: 15px 0;
    }

    .projects-grid .project-thumb .project-thumb-content h2 {
        font-size: clamp(20px, 7vw, 40px);
    }
}

@media screen and (max-width: 540px){
    
    .projects-grid .wrap-wide {
        padding: 0 30px;
    }
}

/* ------------------------- Projects - Projects Grid -------------------------------------------------- */

.projects-projects-grid {
    padding-top: 0;
    padding-bottom: 0;
}

.projects-projects-grid ul li:nth-child(2) {
    margin-top: 9vw;
}

.projects-projects-grid ul li:nth-child(3) {
    margin-top: 6vw;
}

@media screen and (max-width: 1100px){

    .projects-projects-grid ul li:nth-child(3) {
        margin-top: 0vw;
    }
}

@media screen and (max-width: 640px){

    .projects-projects-grid ul li:nth-child(2) {
        margin-top: 0vw;
    }
}

/* ------------------------- Home - Home Projects Intro -------------------------------------------------- */

.home-projects-intro {
    padding-bottom: 0;
}

.home-projects-intro .icon-links {
    position: absolute;
    right: 30px;
    top: 50%;
    transform: translate(0, -50%);
}

main.light .home-projects-intro svg g {
    stroke: #000;
}

@media screen and (max-width: 1740px){
    .home-projects-intro .icon-links {
        right: 12vw;
    }
}

@media screen and (max-width: 540px){
    .home-projects-intro .icon-links {
        right: 30px;
        display: none;
        
        display: block;
        right: auto;
        top: auto;
        position: relative;
        margin-top: 40px;
        margin-bottom: 10px;
    }
    
    .home-projects-intro .icon-links .icon-link:last-child {
        display: none;
    }

    .home-projects-intro .icon-links p {
        font-size: 15px;
    }

    .home-projects-intro .icon-links svg {
        transform: scale(.9);
    }

    .home-projects-intro .icon-links .icon-link {
        margin-bottom: 3px;
        margin-top: 2px
    }
}


/* ------------------------- Home - Home Projects Grid (& Single Project) -------------------------------------------------- */

.home-projects-grid {
    padding-top: 5vw;
}

@media screen and (min-width: 1100px){

    .home-projects-grid .home-projects-grid-ul {
        transform: translate3d(0px, 0px, 0px) !important;
    }

}

@media screen and (max-width: 1100px){
    .home-projects-grid ul li a {
        transform: translateY(0vw) !important;
    }
    
}

@media screen and (max-width: 640px){

    .home-projects-grid {
        padding-top: 0vw;
    }
    
    .home-projects-grid ul li {
        padding-right: 30px;
    }

}

/* ------------------------- Single Project - Header -------------------------------------------------- */


.single-project-header .sub-wrap:nth-child(1) {
    width: 25%;
}

.single-project-header .sub-wrap:nth-child(2) {
    width: 75%;
}

.single-project-header h1, .single-project-header h3 {
    text-align: left;
}

.single-project-header .single-project-info {
    float: left;
    width: 100%;
    display: flex;
    justify-content: flex-start;
    padding-top: 3vw;
    padding-bottom: 0vw;
}

.single-project-header .single-project-info li {
    padding-right: 7vw;
    display: inline-block;
    text-align: left;
}

.single-project-header .single-project-info li:last-child {
    padding-right: 0;
}

.single-project-header .single-project-info span {
    text-transform: uppercase;
    font-size: 12px;
    letter-spacing: 3px;
    display: inline-block;
    padding-bottom: 10px;
    color: rgba(255, 255, 255, 0.9);
}

main.light .single-project-header .single-project-info span {
    color: rgba(0, 0, 0, 0.7);
}

.single-project-header .single-project-info p {
    margin: 0;
}

@media screen and (max-width: 1000px){
    .single-project-header h1, .single-project-header h3 {
        text-align: center;
    }

    .single-project-header h3 {
        margin-bottom: 30px;
        font-size: 16px;
        color: rgba(0, 0, 0, 0.5);
    }

    main.dark .single-project-header h3 {
        color: rgba(255, 255, 255, 1);
    }

    .single-project-header .single-project-info p {
        margin: 0;
    }

    .single-project-header .sub-wrap:nth-child(1), .single-project-header .sub-wrap:nth-child(2) {
        width: 100%;
    }

    .single-project-header .single-project-info {
        display: flex;
        justify-content: space-between;
        padding-top: 5vw;
        padding-bottom: 3vw;
    }

    .single-project-header .single-project-info li {
        padding-right: 0;
        text-align: center;
    }
    
}

@media screen and (max-width: 540px){

    .single-project-header .header-image, .single-project-header .fade-overlay {
        height: 75vh;
    }

    .single-project-header h3 {
        font-size: 13px;
        margin-bottom: 20px;
    }
    
    .single-project-header .single-project-info {
        display: block;
        padding-top: 2vh;
        padding-bottom: 0;
    }

    .single-project-header .single-project-info li {
        width: 100%;
        margin-bottom: 2vh;
    }

    .single-project-header .single-project-info span {
        font-size: 10px;
        padding-bottom: 7px;
    }
}

/* ------------------------- Single Project - All Blocks -------------------------------------------------- */

.blocks-wrapper {
    float: left;
    position: relative;
    width: 100%;
}

.single-block {
    padding-top: 0;
}

.single-block p a:after {
    content: "";
    position: absolute;
    left: 0;
    bottom: 1px;
    height: 1px;
    width: 100%;
    background: #fff;
    opacity: .6;
}

main.light .single-block p a:after {
    background: #000;
}

.single-block.fullwidth_true .wrap-wide {
    padding: 0;
    max-width: 100%;
}

.single-block.padding_false {
    padding: 0;
}

.single-block.padding_false + .stripe {
    display: none;
}

@media screen and (max-width: 540px){

}

/* ------------------------- Single Project - Block: Images -------------------------------------------------- */

.block-images .wrapper {
    width: 100%;
    float: left;
    position: relative;
    overflow: hidden;
}

.block-images .wrapper:before {
    content: "";
    padding-top: 56.25%;
    display: block;
}

.block-images .wrapper-inner {
    position: absolute;
    width: 100%;
    height: 100%;
    top: 0;
    left: 0; 
}

.block-images .single-image {
    float: left;
    width: 100%;
    height: 100%;
    position: relative;
    overflow: hidden;
}

/* one item */
.single-image:first-child:nth-last-child(1) {
    width: 100%;
    margin-right: 0px;
}

/* two items */
.single-image:first-child:nth-last-child(2),
.single-image:first-child:nth-last-child(2) ~ .single-image {
    width: calc(50% - 30px);
    margin-right: 60px;
}

/* three items */
.single-image:first-child:nth-last-child(3),
.single-image:first-child:nth-last-child(3) ~ .single-image {
    width: calc(33.333% - 40px);
    margin-right: 60px;
}

.single-image:last-child {
    margin-right: 0 !important;
}

@media screen and (max-width: 1740px){

    /* two items */
    .single-image:first-child:nth-last-child(2), .single-image:first-child:nth-last-child(2) ~ .single-image {
        width: calc(50% - 1vw);
        margin-right: 2vw;
    }

    /* three items */
    .single-image:first-child:nth-last-child(3), .single-image:first-child:nth-last-child(3) ~ .single-image {
        width: calc(33.333% - 1.5vw);
        margin-right: 2vw;
    }
}

@media screen and (max-width: 1100px){

    /* two items */
    .single-image:first-child:nth-last-child(2), .single-image:first-child:nth-last-child(2) ~ .single-image {
        width: calc(50% - 1.5vw);
        margin-right: 3vw;
    }

    /* three items */
    .single-image:first-child:nth-last-child(3), .single-image:first-child:nth-last-child(3) ~ .single-image {
        width: calc(33.333% - 2vw);
        margin-right: 3vw;
    }
}

@media screen and (max-width: 540px){
    .block-images .wrap-wide {
        padding: 0;
    }

    .block-images:last-child {
        padding-bottom: 0;
    }
}

/* ------------------------- Single Project - Block: Video -------------------------------------------------- */

@media screen and (max-width: 540px){
    .block-video .wrap-wide {
        padding: 0;
    }
}

/* ------------------------- Single Project - Block: Text Left Right -------------------------------------------------- */

.block-textleftright .wrap-wide {
    display: flex;
}

.block-textleftright .wrap-wide .sub-wrap {
    width: 50%;
    order: 2;
}

.block-textleftright.textleftright_true .wrap-wide .sub-wrap:nth-child(2) {
    order: 1;
}

@media screen and (max-width: 540px){
    .block-textleftright .wrap-wide {
        display: block;
    }
    
    .block-textleftright .wrap-wide .sub-wrap {
        width: 100%;
    }
    
}

/* ------------------------- Single Project - Block: Intro -------------------------------------------------- */

.block-intro {
    text-align: center;
}

/* ------------------------- Single Project - Block: Text Split -------------------------------------------------- */

.block-textsplit h2 {
    margin-top: -0.3vw;
}

@media screen and (max-width: 1740px){

    .block-textsplit .wrap-wide .sub-wrap:nth-child(1) {
        padding-right: 5vw;
    }

    .block-textsplit .wrap-wide .sub-wrap:nth-child(2) {
        padding-left: 5vw;
    }

}

@media screen and (max-width: 1300px){

    .block-textsplit .wrap-wide .sub-wrap:nth-child(1) {
        padding-right: 4vw;
    }

    .block-textsplit .wrap-wide .sub-wrap:nth-child(2) {
        padding-left: 4vw;
    }
}

@media screen and (max-width: 900px){

    .block-textsplit .wrap-wide .sub-wrap:nth-child(1) {
        padding-right: 2vw;
    }

    .block-textsplit .wrap-wide .sub-wrap:nth-child(2) {
        padding-left: 2vw;
    }
}

@media screen and (max-width: 540px){
    .block-textsplit .sub-wrap {
        width: 100%;
    }

    .block-textsplit h2 {
        margin-bottom: calc(25px + 1vw);
    }
    
    .block-textsplit .wrap-wide .sub-wrap:nth-child(1) {
        padding-right: 0;
    }

    .block-textsplit .wrap-wide .sub-wrap:nth-child(2) {
        padding-left: 0;
    }
    
}

/* ------------------------- Single Project - Block: Numbers -------------------------------------------------- */

.block-numbers #counter {
	display: flex;
	justify-content: center;
	flex-wrap: wrap;
}


.block-numbers .single-number {
    width: 33.333%;
    padding: 0 30px;
    text-align: center;
    display: block;
}

.block-numbers h2 {
    font-size: clamp(40px, 4vw, 80px);
    margin-bottom: 1.2vw;
}

@media screen and (max-width: 540px){

    .block-numbers .single-number {
        width: 100%;
        padding: 2vh 0;
        margin-bottom: 20px;
    }

    .block-numbers .single-number:last-child {
        margin-bottom: 0px;
    }

    .block-numbers h2 {
        margin-bottom: 1.5vw;
    }

}

/* ------------------------- Contact - Header -------------------------------------------------- */

.contact-header {
    text-align: center;
}

.contact-header .btn-bg {
    opacity: 1;
    height: 100vh;
    animation: btnHover 30s linear;
    background: #C700DA url("../img/gradient-2-big.jpg");
    background-size: 600%;
}

.contact-sticker {
    position: absolute;
    top: 0;
    left: 50%;
    width: 10%;
    display: block;
    transform: translate(-50%, -100%) rotate(10deg);
}

@media screen and (max-width: 540px){

    .contact-header .header-image, .contact-header .fade-overlay {
        height: 75vh;
    }

    .contact-header .btn-bg {
        height: 75vh;
    }
}

/* ------------------------- Contact - Info -------------------------------------------------- */

.section-form .nav-info {
    opacity: 1;
    align-content: flex-start;
    margin-left: 10%;
    width: 0;
    padding: 0;

}

.section-form .nav-info p {
    white-space: nowrap;
}

@media screen and (max-width: 700px){
    .section-form .nav-info {
        display: none;
    }
}

/* ------------------------- Contact - Form -------------------------------------------------- */

.section-form {
    padding-top: 0;
}

main#contact .prefooter {
    display: none;
}

@media screen and (max-width: 700px){
    .section-form {
        padding-bottom: 0;
    }

    main#contact .prefooter {
        display: block;
    }

    main#contact .prefooter .sub-wrap:nth-child(1) {
        display: none;
    }
}

.section-form .row {
    flex-wrap: nowrap;
}

.form {
    width: 100%;
    display: block;
}

.form-container {
    display: flex;
    width: 100%;
}

.hidden-field {
   position: absolute;
   left: -9999px;
}

.form input, .form textarea, .form select {
   border:0;
   -webkit-box-shadow: none;
   -moz-box-shadow: none;
   box-shadow: none;
}

.grecaptcha-badge { 
   top: calc(100% - 120px) !important; 
   transform: translate(0, -50%);
   box-shadow: rgba(0, 0, 0, 0.20) 0px 2px 5px !important;
   visibility: hidden;
}

.form-col {
   display: block;
   width: 100%;
   margin-bottom: 20px;
}

.form-col:last-child {
    margin-bottom: 0;
}

.form .field {
   appearance: none;
   -moz-appearance: none;
   -webkit-appearance: none;
   -webkit-box-shadow: none;
   -moz-box-shadow: none;
   box-shadow: none;
   width: 100%;
   padding: 1em 1.25em;
   border: 1px solid rgba(255, 255, 255, 0.35);
   border-radius: 0;
   font-weight: 500;
   font-size: clamp(16px, 1.1vw, 18px);
   color: #fff;
   display: block;
   background: transparent;
}

.form .field:focus {
   outline: 0;
   outline-width: 1px !important;
   outline-offset: 0px;
   border-radius: 0;
   border: 1px solid rgba(255, 255, 255, 0.7);
}

.form .field::-webkit-input-placeholder, 
.form .field:-ms-input-placeholder,
.form .field::-ms-input-placeholder,
.form .field::placeholder {
   color: rgba(255, 255, 255, 0.5);
   font-weight: 500;
}

.form textarea.field {
   min-height: 10em;
   padding-top: 1em;
   resize: vertical;
}

.form .label {
   width: 100%;
   display: block;
   margin-bottom: 1em;
   color: rgba(255, 255, 255, 0.5);
   font-size: .75em;
   font-weight: 500;
   display: none;
}

.form .label span {
   color: #ff2929;
   font-weight: 700;
}

.form .form-btn {
   padding-left: 1.5em;
   padding-right: 1.5em; 
}

input.form-btn {
    color: black;
    font-weight: 400;
    letter-spacing: 0;
 }

/* --- Arlert Options --- */

.alert {
   width: 100%;
   padding: .4em .5em .6em .5em;
   border-style: solid;
   border-width: 1px;
   border-color: #ff2929;
   background-color: rgba(255, 71, 71, 0.2);
   text-align: center;
   margin: 1em 0;
}

.alert span {
   color: #ff2929;
   font-size: .8em;
   font-weight: 500; 
}

.alert-success {
   border-color: #00b350;
   background-color: rgba(11, 160, 78, 0.2);
}

.alert-success span {
   color: #00b350;
}

input:-webkit-autofill,
input:-webkit-autofill:hover, 
input:-webkit-autofill:focus,
textarea:-webkit-autofill,
textarea:-webkit-autofill:hover,
textarea:-webkit-autofill:focus,
select:-webkit-autofill,
select:-webkit-autofill:hover,
select:-webkit-autofill:focus {
   -webkit-text-fill-color: #000;
   -webkit-box-shadow: 0 0 0px 1000px #fff inset;
   box-shadow: 0 0 0px 1000px #fff inset;
   transition: background-color 5000s ease-in-out 0s;
}

input[type=radio] {
   -webkit-appearance: none;
}

@media screen and (max-width: 700px){

    .form-col {
        display: block;
        width: 100%;
        margin-bottom: 15px;
    }

}

/* ------------------------- Jobs - Header -------------------------------------------------- */


/* ------------------------- Jobs - List -------------------------------------------------- */

.jobs-list {
    padding-top: 3vw;
    padding-bottom: 0;
}

.jobs-list a {
    float: left;
    width: 100%;
    position: relative;
    border-bottom: 1px solid rgba(255, 255, 255, 0.3);
    padding: 3vw 0;
}

.jobs-list a:hover {
    padding: 3vw 1.5vw;
}

.jobs-list .wrap-wide a:first-child {
    border-top: 1px solid rgba(255, 255, 255, 0.3);
}

.jobs-list a .sub-wrap.left {
    width: 65%;
}

.jobs-list a .sub-wrap.right {
    width: 35%;
}

.jobs-list .btn {
    margin: 0;
    float: right;
    color: #fff;
    background: 0;
    border: 1px solid rgba(255, 255, 255, 0.3);
    padding: 9px 30px 9px 30px;
}

.jobs-list .btn:hover {
    transform: translate(0, 0);
}

.jobs-list h2 {
    line-height: 50px;
}

.jobs-list p {
    line-height: 30px;
    padding: 10px 0;
    margin: 0;
}

.jobs-list a:hover .btn {
    background: #fff;
    color: #000;
    border: 1px solid #fff;
}

@media screen and (max-width: 800px){

	.jobs-list .wrap-wide {
		padding: 0;
	}
	
	.jobs-list .wrap-wide a:last-child {
		border-bottom: 0;
	}

    .jobs-list a, .jobs-list a:hover {
        padding: 10vw 30px;
    }

    .jobs-list a .sub-wrap.left {
        width: 100%;
    }
    
    .jobs-list a .sub-wrap.right {
        width: 100%;
        padding-top: 20px;
        display: flex;
    }

    .jobs-list a .sub-wrap.right .sub-wrap:nth-child(1) {
        order: 2;
    } 

    .jobs-list a .sub-wrap.right .sub-wrap:nth-child(2) {
        width: auto;
        order: 1;
        padding-right: 20px;
    } 

    .jobs-list a .btn {
        float: left;
        background: #fff;
        color: #000;
        border: 1px solid #fff;
    } 

    .jobs-list a p {
        float: left;
    } 

    .jobs-list h2 {
        line-height: 1.2;
    }

}

/* ------------------------- Jobs - List -------------------------------------------------- */

.jobs-block-images {
    padding-top: 10vw;
    padding-bottom: 0;
}

@media screen and (max-width: 540px){
    .jobs-block-images {
        padding-top: 5vw;
    }
}


/* ------------------------- Single Article - Header -------------------------------------------------- */

.single-article-header .tag-wrap {
	width: 100%;
	float: left;
	position: relative;
}

.single-article-header .tag-article {
    position: absolute;
    top: -5px;
    left: -7vw;
    transform: translate(-100%, 0);
    color: white;
}

.single-article-header h1, .single-article-header h3 {
    text-align: left;
}

.single-article-header .single-article-info {
    float: left;
    width: 100%;
    display: flex;
    justify-content: flex-start;
    padding-top: 3vw;
    padding-bottom: 0vw;
}

.single-article-header .single-article-info li {
    display: inline-block;
    text-align: left;
    width: 100%;
}
.single-article-header .single-article-info span {
    text-transform: uppercase;
    font-size: 12px;
    letter-spacing: 3px;
    display: inline-block;
    padding-bottom: 10px;
    color: rgba(255, 255, 255, 0.9);
}

.single-article-header .single-article-info p {
    margin: 0;
}

@media screen and (max-width: 1000px){
    .single-article-header h1, .single-article-header h3 {
        text-align: center;
    }

    .single-article-header h3 {
        margin-bottom: 30px;
        font-size: 16px;
        color: rgba(0, 0, 0, 0.5);
    }

    .single-article-header .single-article-info p {
        margin: 0;
    }

    .single-article-header .single-article-info {
        display: flex;
        justify-content: space-between;
        padding-top: 5vw;
        padding-bottom: 3vw;
    }

    .single-article-header .single-article-info li {
        padding-right: 0;
        text-align: center;
    }
    
    .single-article-header .tag-article {
	    position: relative;
	    top: 0;
	    left: 0;
	    transform: translate(0, 0);
	    width: 100%;
	    margin-bottom: 50px;
	}
    
}

@media screen and (max-width: 540px){

    .single-article-header .header-image, .single-article-header .fade-overlay {
        height: 75vh;
    }

    .single-article-header h3 {
        font-size: 13px;
        margin-bottom: 20px;
    }
    
    .single-article-header .single-article-info {
        display: block;
        padding-top: 2vh;
        padding-bottom: 0;
    }

    .single-article-header .single-article-info li {
        width: 100%;
        margin-bottom: 2vh;
    }

    .single-article-header .single-article-info span {
        font-size: 10px;
        padding-bottom: 7px;
    }
}

/* ------------------------- Single Article - Textblock -------------------------------------------------- */

.article-textblock {
	text-align: left;
	padding-top: 0px;
	overflow: hidden;
}

.article-textblock img {
	margin-left: -80px;
	width: calc(100% + 160px);
	margin-top: 20px;
	max-width: unset;
}

.article-textblock figure:last-child img {
	margin-bottom: 0;
}


@media screen and (max-width: 1000px){
	
	.article-textblock {
		text-align: left;
		padding-top: 0px;
	}

}

@media screen and (max-width: 540px){ 
	.article-textblock img {
		margin-left: -30px;
		width: calc(100% + 60px);
		margin-top: 10px;
	}
}


/* ------------------------- Section - Maps Contact -------------------------------------------------- */

.section-maps {
    padding-top: 0;
}

.section-maps iframe {
    filter: grayscale(100%) invert(95%) contrast(100%);
    width: 100%;
}

@media screen and (max-width: 720px){ 
	.section-maps {
        padding-top: 10vw;
        padding-bottom: 0;
    }
}

@media screen and (max-width: 540px){ 
    .section-maps {
        padding-top: 20vw;
    }

    .section-maps .wrap {
        padding: 0;
    } 
}

/* ------------------------- Animations -------------------------------------------------- */

.slide-in, .image-in {
	-webkit-transition: all 1.5s ease-in;
	-moz-transition: all 1.5s ease-in;
	-ms-transition: all 1.5s ease-in;
	-o-transition: all 1.5s ease-in;
	transition: all 1.5s ease-in;  
}

.fade-in {
    opacity: 0;
	transition: opacity 1s ease-in-out;  
}

.fade-in.appear {
    opacity: 1;
    transition-delay: .5s;
}


#gdpr-box a, .btn, p a, .icon-link p, .scroll-down, .scroll-down span, h2 a, .underline, .social-ico, .logo-onenil, .jobs, .split-footer p.small, .split-footer p.small svg, .split-footer a, .split-footer-overlay, .jobs-list a {
	-webkit-transition: all .25s ease-in-out;
	-moz-transition: all .25s ease-in-out;
	-ms-transition: all .25s ease-in-out;
	-o-transition: all .25s ease-in-out;
	transition: all .25s ease-in-out;  
}























