  


<!DOCTYPE html>
<html>
  <head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# githubog: http://ogp.me/ns/fb/githubog#">
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>MBProgressHUD/MBProgressHUD.h at master · jdg/MBProgressHUD · GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-144.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144.png" />
    <link rel="logo" type="image/svg" href="http://github-media-downloads.s3.amazonaws.com/github-logo.svg" />
    <meta name="msapplication-TileImage" content="/windows-tile.png">
    <meta name="msapplication-TileColor" content="#ffffff">

    
    
    <link rel="icon" type="image/x-icon" href="/favicon.ico" />

    <meta content="authenticity_token" name="csrf-param" />
<meta content="ELdaq9TCtG2Lp2ScqcVTCTZRq8qBDl70OgBl2axyc8c=" name="csrf-token" />

    <link href="https://a248.e.akamai.net/assets.github.com/assets/github-51d2d4593ac3448a3ccd372edd9a7eeaac7c7f7d.css" media="screen" rel="stylesheet" type="text/css" />
    <link href="https://a248.e.akamai.net/assets.github.com/assets/github2-5fee4310cb7130fe9656cf64857b2fa600fbabd7.css" media="screen" rel="stylesheet" type="text/css" />
    


      <script src="https://a248.e.akamai.net/assets.github.com/assets/frameworks-ad1b87fda705d87118448f87fb6a20bdb15bd841.js" type="text/javascript"></script>
      <script src="https://a248.e.akamai.net/assets.github.com/assets/github-3a6fac8029cd81a166ea0548ce145459eb6c5c15.js" type="text/javascript"></script>
      
      <meta http-equiv="x-pjax-version" content="ca46cc9e6edebdc38aeb71bf09f442a8">

        <link data-pjax-transient rel='permalink' href='/jdg/MBProgressHUD/blob/4eda67f5d92ffdede6c4258d56d76ae975ac86df/MBProgressHUD.h'>
    <meta property="og:title" content="MBProgressHUD"/>
    <meta property="og:type" content="githubog:gitrepository"/>
    <meta property="og:url" content="https://github.com/jdg/MBProgressHUD"/>
    <meta property="og:image" content="https://secure.gravatar.com/avatar/8e9e6c17b40e36a7567b1436dafba4f5?s=420&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png"/>
    <meta property="og:site_name" content="GitHub"/>
    <meta property="og:description" content="MBProgressHUD + Customizations. Contribute to MBProgressHUD development by creating an account on GitHub."/>
    <meta property="twitter:card" content="summary"/>
    <meta property="twitter:site" content="@GitHub">
    <meta property="twitter:title" content="jdg/MBProgressHUD"/>

    <meta name="description" content="MBProgressHUD + Customizations. Contribute to MBProgressHUD development by creating an account on GitHub." />

  <link href="https://github.com/jdg/MBProgressHUD/commits/master.atom" rel="alternate" title="Recent Commits to MBProgressHUD:master" type="application/atom+xml" />

  </head>


  <body class="logged_out page-blob macintosh vis-public env-production  ">
    <div id="wrapper">

      

      

      

      


        <div class="header header-logged-out">
          <div class="container clearfix">

            <a class="header-logo-wordmark" href="https://github.com/">
              <img alt="GitHub" class="github-logo-4x" height="30" src="https://a248.e.akamai.net/assets.github.com/images/modules/header/logov7@4x.png?1340659511" />
              <img alt="GitHub" class="github-logo-4x-hover" height="30" src="https://a248.e.akamai.net/assets.github.com/images/modules/header/logov7@4x-hover.png?1340659511" />
            </a>

              
<ul class="top-nav">
    <li class="explore"><a href="https://github.com/explore">Explore GitHub</a></li>
  <li class="search"><a href="https://github.com/search">Search</a></li>
  <li class="features"><a href="https://github.com/features">Features</a></li>
    <li class="blog"><a href="https://github.com/blog">Blog</a></li>
</ul>


            <div class="header-actions">
                <a class="button primary" href="https://github.com/signup">Sign up for free</a>
              <a class="button" href="https://github.com/login?return_to=%2Fjdg%2FMBProgressHUD%2Fblob%2Fmaster%2FMBProgressHUD.h">Sign in</a>
            </div>

          </div>
        </div>


      

      


            <div class="site hfeed" itemscope itemtype="http://schema.org/WebPage">
      <div class="hentry">
        
        <div class="pagehead repohead instapaper_ignore readability-menu ">
          <div class="container">
            <div class="title-actions-bar">
              


<ul class="pagehead-actions">



    <li>
      <a href="/login?return_to=%2Fjdg%2FMBProgressHUD"
        class="minibutton js-toggler-target star-button entice tooltipped upwards"
        title="You must be signed in to use this feature" rel="nofollow">
        <span class="mini-icon mini-icon-star"></span>Star
      </a>
      <a class="social-count js-social-count" href="/jdg/MBProgressHUD/stargazers">
        3,061
      </a>
    </li>
    <li>
      <a href="/login?return_to=%2Fjdg%2FMBProgressHUD"
        class="minibutton js-toggler-target fork-button entice tooltipped upwards"
        title="You must be signed in to fork a repository" rel="nofollow">
        <span class="mini-icon mini-icon-fork"></span>Fork
      </a>
      <a href="/jdg/MBProgressHUD/network" class="social-count">
        814
      </a>
    </li>
</ul>

              <h1 itemscope itemtype="http://data-vocabulary.org/Breadcrumb" class="entry-title public">
                <span class="repo-label"><span>public</span></span>
                <span class="mega-icon mega-icon-public-repo"></span>
                <span class="author vcard">
                  <a href="/jdg" class="url fn" itemprop="url" rel="author">
                  <span itemprop="title">jdg</span>
                  </a></span> /
                <strong><a href="/jdg/MBProgressHUD" class="js-current-repository">MBProgressHUD</a></strong>
              </h1>
            </div>

            
  <ul class="tabs">
    <li><a href="/jdg/MBProgressHUD" class="selected" highlight="repo_source repo_downloads repo_commits repo_tags repo_branches">Code</a></li>
    <li><a href="/jdg/MBProgressHUD/network" highlight="repo_network">Network</a></li>
    <li><a href="/jdg/MBProgressHUD/pulls" highlight="repo_pulls">Pull Requests <span class='counter'>14</span></a></li>

      <li><a href="/jdg/MBProgressHUD/issues" highlight="repo_issues">Issues <span class='counter'>26</span></a></li>



    <li><a href="/jdg/MBProgressHUD/graphs" highlight="repo_graphs repo_contributors">Graphs</a></li>


  </ul>
  
<div class="tabnav">

  <span class="tabnav-right">
    <ul class="tabnav-tabs">
          <li><a href="/jdg/MBProgressHUD/tags" class="tabnav-tab" highlight="repo_tags">Tags <span class="counter ">1</span></a></li>
    </ul>
    
  </span>

  <div class="tabnav-widget scope">


    <div class="select-menu js-menu-container js-select-menu js-branch-menu">
      <a class="minibutton select-menu-button js-menu-target" data-hotkey="w" data-ref="master">
        <span class="mini-icon mini-icon-branch"></span>
        <i>branch:</i>
        <span class="js-select-button">master</span>
      </a>

      <div class="select-menu-modal-holder js-menu-content js-navigation-container js-select-menu-pane">

        <div class="select-menu-modal js-select-menu-pane">
          <div class="select-menu-header">
            <span class="select-menu-title">Switch branches/tags</span>
            <span class="mini-icon mini-icon-remove-close js-menu-close"></span>
          </div> <!-- /.select-menu-header -->

          <div class="select-menu-filters">
            <div class="select-menu-text-filter">
              <input type="text" id="commitish-filter-field" class="js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
            </div>
            <div class="select-menu-tabs">
              <ul>
                <li class="select-menu-tab">
                  <a href="#" data-tab-filter="branches" class="js-select-menu-tab">Branches</a>
                </li>
                <li class="select-menu-tab">
                  <a href="#" data-tab-filter="tags" class="js-select-menu-tab">Tags</a>
                </li>
              </ul>
            </div><!-- /.select-menu-tabs -->
          </div><!-- /.select-menu-filters -->

          <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket css-truncate" data-tab-filter="branches" data-filterable-for="commitish-filter-field" data-filterable-type="substring">


              <div class="select-menu-item js-navigation-item js-navigation-target selected">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/jdg/MBProgressHUD/blob/master/MBProgressHUD.h" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="master" rel="nofollow" title="master">master</a>
              </div> <!-- /.select-menu-item -->

              <div class="select-menu-no-results js-not-filterable">Nothing to show</div>
          </div> <!-- /.select-menu-list -->


          <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket css-truncate" data-tab-filter="tags" data-filterable-for="commitish-filter-field" data-filterable-type="substring">

              <div class="select-menu-item js-navigation-item js-navigation-target ">
                <span class="select-menu-item-icon mini-icon mini-icon-confirm"></span>
                <a href="/jdg/MBProgressHUD/blob/0.5/MBProgressHUD.h" class="js-navigation-open select-menu-item-text js-select-button-text css-truncate-target" data-name="0.5" rel="nofollow" title="0.5">0.5</a>
              </div> <!-- /.select-menu-item -->

            <div class="select-menu-no-results js-not-filterable">Nothing to show</div>

          </div> <!-- /.select-menu-list -->

        </div> <!-- /.select-menu-modal -->
      </div> <!-- /.select-menu-modal-holder -->
    </div> <!-- /.select-menu -->

  </div> <!-- /.scope -->

  <ul class="tabnav-tabs">
    <li><a href="/jdg/MBProgressHUD" class="selected tabnav-tab" highlight="repo_source">Files</a></li>
    <li><a href="/jdg/MBProgressHUD/commits/master" class="tabnav-tab" highlight="repo_commits">Commits</a></li>
    <li><a href="/jdg/MBProgressHUD/branches" class="tabnav-tab" highlight="repo_branches" rel="nofollow">Branches <span class="counter ">1</span></a></li>
  </ul>

</div>

  
  
  


            
          </div>
        </div><!-- /.repohead -->

        <div id="js-repo-pjax-container" class="container context-loader-container" data-pjax-container>
          


<!-- blob contrib key: blob_contributors:v21:0692afb547bd831e038af3cc3f2e46fb -->
<!-- blob contrib frag key: views10/v8/blob_contributors:v21:0692afb547bd831e038af3cc3f2e46fb -->


<div id="slider">
    <div class="frame-meta">

      <p title="This is a placeholder element" class="js-history-link-replace hidden"></p>

        <div class="breadcrumb">
          <span class='bold'><span itemscope="" itemtype="http://data-vocabulary.org/Breadcrumb"><a href="/jdg/MBProgressHUD" class="js-slide-to" data-branch="master" data-direction="back" itemscope="url"><span itemprop="title">MBProgressHUD</span></a></span></span><span class="separator"> / </span><strong class="final-path">MBProgressHUD.h</strong> <span class="js-zeroclipboard zeroclipboard-button" data-clipboard-text="MBProgressHUD.h" data-copied-hint="copied!" title="copy to clipboard"><span class="mini-icon mini-icon-clipboard"></span></span>
        </div>

      <a href="/jdg/MBProgressHUD/find/master" class="js-slide-to" data-hotkey="t" style="display:none">Show File Finder</a>


        
  <div class="commit file-history-tease">
    <img class="main-avatar" height="24" src="https://secure.gravatar.com/avatar/488c2dcaa43806d49cac768901604ab5?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
    <span class="author"><a href="/tewha" rel="author">tewha</a></span>
    <time class="js-relative-date" datetime="2013-02-05T15:07:08-08:00" title="2013-02-05 15:07:08">February 05, 2013</time>
    <div class="commit-title">
        <a href="/jdg/MBProgressHUD/commit/f3dd4fd0bcba7b65f7bf92cbc72b4d4de4ba2a78" class="message">Fix typo in MBProgressHUD</a>
    </div>

    <div class="participation">
      <p class="quickstat"><a href="#blob_contributors_box" rel="facebox"><strong>14</strong> contributors</a></p>
          <a class="avatar tooltipped downwards" title="matej" href="/jdg/MBProgressHUD/commits/master/MBProgressHUD.h?author=matej"><img height="20" src="https://secure.gravatar.com/avatar/360ddb1a8027be3be14913308e90fe29?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="tewha" href="/jdg/MBProgressHUD/commits/master/MBProgressHUD.h?author=tewha"><img height="20" src="https://secure.gravatar.com/avatar/488c2dcaa43806d49cac768901604ab5?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="bloveridge" href="/jdg/MBProgressHUD/commits/master/MBProgressHUD.h?author=bloveridge"><img height="20" src="https://secure.gravatar.com/avatar/f18505b0283c908c7d906566abfb8f6f?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="jdg" href="/jdg/MBProgressHUD/commits/master/MBProgressHUD.h?author=jdg"><img height="20" src="https://secure.gravatar.com/avatar/8e9e6c17b40e36a7567b1436dafba4f5?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="mattjgalloway" href="/jdg/MBProgressHUD/commits/master/MBProgressHUD.h?author=mattjgalloway"><img height="20" src="https://secure.gravatar.com/avatar/651fd8d10e3ec72551f4d683c688f0f2?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="mattrubin" href="/jdg/MBProgressHUD/commits/master/MBProgressHUD.h?author=mattrubin"><img height="20" src="https://secure.gravatar.com/avatar/cd8cfc83a3e11428854ebe3669dbac3e?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="yosit" href="/jdg/MBProgressHUD/commits/master/MBProgressHUD.h?author=yosit"><img height="20" src="https://secure.gravatar.com/avatar/9188faeed9c0ac3519f798d20f67b68a?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="myell0w" href="/jdg/MBProgressHUD/commits/master/MBProgressHUD.h?author=myell0w"><img height="20" src="https://secure.gravatar.com/avatar/ba791cd9ce723c252e1fccc33839259a?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="meslater" href="/jdg/MBProgressHUD/commits/master/MBProgressHUD.h?author=meslater"><img height="20" src="https://secure.gravatar.com/avatar/079145bfac0d4cc644bbbfb8b80ddccb?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="sbandol" href="/jdg/MBProgressHUD/commits/master/MBProgressHUD.h?author=sbandol"><img height="20" src="https://secure.gravatar.com/avatar/3cd96ee55e914d32a0c9ba910db4e4c1?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="fernyb" href="/jdg/MBProgressHUD/commits/master/MBProgressHUD.h?author=fernyb"><img height="20" src="https://secure.gravatar.com/avatar/6410dbc33199702e66146cbb0546a34e?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="5D" href="/jdg/MBProgressHUD/commits/master/MBProgressHUD.h?author=5D"><img height="20" src="https://secure.gravatar.com/avatar/fb2ac9f0ecf350127c0a03d9fc29a787?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="renebigot" href="/jdg/MBProgressHUD/commits/master/MBProgressHUD.h?author=renebigot"><img height="20" src="https://secure.gravatar.com/avatar/cd499be10493ccaf8b8ae57caedf03c2?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>
    <a class="avatar tooltipped downwards" title="albertodebortoli" href="/jdg/MBProgressHUD/commits/master/MBProgressHUD.h?author=albertodebortoli"><img height="20" src="https://secure.gravatar.com/avatar/d906ed8942d09821cbead00b19c6dabe?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="20" /></a>


    </div>
    <div id="blob_contributors_box" style="display:none">
      <h2>Users on GitHub who have contributed to this file</h2>
      <ul class="facebox-user-list">
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/360ddb1a8027be3be14913308e90fe29?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/matej">matej</a>
        </li>
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/488c2dcaa43806d49cac768901604ab5?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/tewha">tewha</a>
        </li>
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/f18505b0283c908c7d906566abfb8f6f?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/bloveridge">bloveridge</a>
        </li>
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/8e9e6c17b40e36a7567b1436dafba4f5?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/jdg">jdg</a>
        </li>
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/651fd8d10e3ec72551f4d683c688f0f2?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/mattjgalloway">mattjgalloway</a>
        </li>
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/cd8cfc83a3e11428854ebe3669dbac3e?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/mattrubin">mattrubin</a>
        </li>
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/9188faeed9c0ac3519f798d20f67b68a?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/yosit">yosit</a>
        </li>
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/ba791cd9ce723c252e1fccc33839259a?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/myell0w">myell0w</a>
        </li>
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/079145bfac0d4cc644bbbfb8b80ddccb?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/meslater">meslater</a>
        </li>
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/3cd96ee55e914d32a0c9ba910db4e4c1?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/sbandol">sbandol</a>
        </li>
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/6410dbc33199702e66146cbb0546a34e?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/fernyb">fernyb</a>
        </li>
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/fb2ac9f0ecf350127c0a03d9fc29a787?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/5D">5D</a>
        </li>
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/cd499be10493ccaf8b8ae57caedf03c2?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/renebigot">renebigot</a>
        </li>
        <li>
          <img height="24" src="https://secure.gravatar.com/avatar/d906ed8942d09821cbead00b19c6dabe?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-user-420.png" width="24" />
          <a href="/albertodebortoli">albertodebortoli</a>
        </li>
      </ul>
    </div>
  </div>


    </div><!-- ./.frame-meta -->

    <div class="frames">
      <div class="frame" data-permalink-url="/jdg/MBProgressHUD/blob/4eda67f5d92ffdede6c4258d56d76ae975ac86df/MBProgressHUD.h" data-title="MBProgressHUD/MBProgressHUD.h at master · jdg/MBProgressHUD · GitHub" data-type="blob">

        <div id="files" class="bubble">
          <div class="file">
            <div class="meta">
              <div class="info">
                <span class="icon"><b class="mini-icon mini-icon-text-file"></b></span>
                <span class="mode" title="File Mode">executable file</span>
                  <span>452 lines (383 sloc)</span>
                <span>15.658 kb</span>
              </div>
              <div class="actions">
                <div class="button-group">
                      <a class="minibutton js-entice" href=""
                         data-entice="You must be signed in and on a branch to make or propose changes">Edit</a>
                  <a href="/jdg/MBProgressHUD/raw/master/MBProgressHUD.h" class="button minibutton " id="raw-url">Raw</a>
                    <a href="/jdg/MBProgressHUD/blame/master/MBProgressHUD.h" class="button minibutton ">Blame</a>
                  <a href="/jdg/MBProgressHUD/commits/master/MBProgressHUD.h" class="button minibutton " rel="nofollow">History</a>
                </div><!-- /.button-group -->
              </div><!-- /.actions -->

            </div>
                <div class="data type-objective-c js-blob-data">
      <table cellpadding="0" cellspacing="0" class="lines">
        <tr>
          <td>
            <pre class="line_numbers"><span id="L1" rel="#L1">1</span>
<span id="L2" rel="#L2">2</span>
<span id="L3" rel="#L3">3</span>
<span id="L4" rel="#L4">4</span>
<span id="L5" rel="#L5">5</span>
<span id="L6" rel="#L6">6</span>
<span id="L7" rel="#L7">7</span>
<span id="L8" rel="#L8">8</span>
<span id="L9" rel="#L9">9</span>
<span id="L10" rel="#L10">10</span>
<span id="L11" rel="#L11">11</span>
<span id="L12" rel="#L12">12</span>
<span id="L13" rel="#L13">13</span>
<span id="L14" rel="#L14">14</span>
<span id="L15" rel="#L15">15</span>
<span id="L16" rel="#L16">16</span>
<span id="L17" rel="#L17">17</span>
<span id="L18" rel="#L18">18</span>
<span id="L19" rel="#L19">19</span>
<span id="L20" rel="#L20">20</span>
<span id="L21" rel="#L21">21</span>
<span id="L22" rel="#L22">22</span>
<span id="L23" rel="#L23">23</span>
<span id="L24" rel="#L24">24</span>
<span id="L25" rel="#L25">25</span>
<span id="L26" rel="#L26">26</span>
<span id="L27" rel="#L27">27</span>
<span id="L28" rel="#L28">28</span>
<span id="L29" rel="#L29">29</span>
<span id="L30" rel="#L30">30</span>
<span id="L31" rel="#L31">31</span>
<span id="L32" rel="#L32">32</span>
<span id="L33" rel="#L33">33</span>
<span id="L34" rel="#L34">34</span>
<span id="L35" rel="#L35">35</span>
<span id="L36" rel="#L36">36</span>
<span id="L37" rel="#L37">37</span>
<span id="L38" rel="#L38">38</span>
<span id="L39" rel="#L39">39</span>
<span id="L40" rel="#L40">40</span>
<span id="L41" rel="#L41">41</span>
<span id="L42" rel="#L42">42</span>
<span id="L43" rel="#L43">43</span>
<span id="L44" rel="#L44">44</span>
<span id="L45" rel="#L45">45</span>
<span id="L46" rel="#L46">46</span>
<span id="L47" rel="#L47">47</span>
<span id="L48" rel="#L48">48</span>
<span id="L49" rel="#L49">49</span>
<span id="L50" rel="#L50">50</span>
<span id="L51" rel="#L51">51</span>
<span id="L52" rel="#L52">52</span>
<span id="L53" rel="#L53">53</span>
<span id="L54" rel="#L54">54</span>
<span id="L55" rel="#L55">55</span>
<span id="L56" rel="#L56">56</span>
<span id="L57" rel="#L57">57</span>
<span id="L58" rel="#L58">58</span>
<span id="L59" rel="#L59">59</span>
<span id="L60" rel="#L60">60</span>
<span id="L61" rel="#L61">61</span>
<span id="L62" rel="#L62">62</span>
<span id="L63" rel="#L63">63</span>
<span id="L64" rel="#L64">64</span>
<span id="L65" rel="#L65">65</span>
<span id="L66" rel="#L66">66</span>
<span id="L67" rel="#L67">67</span>
<span id="L68" rel="#L68">68</span>
<span id="L69" rel="#L69">69</span>
<span id="L70" rel="#L70">70</span>
<span id="L71" rel="#L71">71</span>
<span id="L72" rel="#L72">72</span>
<span id="L73" rel="#L73">73</span>
<span id="L74" rel="#L74">74</span>
<span id="L75" rel="#L75">75</span>
<span id="L76" rel="#L76">76</span>
<span id="L77" rel="#L77">77</span>
<span id="L78" rel="#L78">78</span>
<span id="L79" rel="#L79">79</span>
<span id="L80" rel="#L80">80</span>
<span id="L81" rel="#L81">81</span>
<span id="L82" rel="#L82">82</span>
<span id="L83" rel="#L83">83</span>
<span id="L84" rel="#L84">84</span>
<span id="L85" rel="#L85">85</span>
<span id="L86" rel="#L86">86</span>
<span id="L87" rel="#L87">87</span>
<span id="L88" rel="#L88">88</span>
<span id="L89" rel="#L89">89</span>
<span id="L90" rel="#L90">90</span>
<span id="L91" rel="#L91">91</span>
<span id="L92" rel="#L92">92</span>
<span id="L93" rel="#L93">93</span>
<span id="L94" rel="#L94">94</span>
<span id="L95" rel="#L95">95</span>
<span id="L96" rel="#L96">96</span>
<span id="L97" rel="#L97">97</span>
<span id="L98" rel="#L98">98</span>
<span id="L99" rel="#L99">99</span>
<span id="L100" rel="#L100">100</span>
<span id="L101" rel="#L101">101</span>
<span id="L102" rel="#L102">102</span>
<span id="L103" rel="#L103">103</span>
<span id="L104" rel="#L104">104</span>
<span id="L105" rel="#L105">105</span>
<span id="L106" rel="#L106">106</span>
<span id="L107" rel="#L107">107</span>
<span id="L108" rel="#L108">108</span>
<span id="L109" rel="#L109">109</span>
<span id="L110" rel="#L110">110</span>
<span id="L111" rel="#L111">111</span>
<span id="L112" rel="#L112">112</span>
<span id="L113" rel="#L113">113</span>
<span id="L114" rel="#L114">114</span>
<span id="L115" rel="#L115">115</span>
<span id="L116" rel="#L116">116</span>
<span id="L117" rel="#L117">117</span>
<span id="L118" rel="#L118">118</span>
<span id="L119" rel="#L119">119</span>
<span id="L120" rel="#L120">120</span>
<span id="L121" rel="#L121">121</span>
<span id="L122" rel="#L122">122</span>
<span id="L123" rel="#L123">123</span>
<span id="L124" rel="#L124">124</span>
<span id="L125" rel="#L125">125</span>
<span id="L126" rel="#L126">126</span>
<span id="L127" rel="#L127">127</span>
<span id="L128" rel="#L128">128</span>
<span id="L129" rel="#L129">129</span>
<span id="L130" rel="#L130">130</span>
<span id="L131" rel="#L131">131</span>
<span id="L132" rel="#L132">132</span>
<span id="L133" rel="#L133">133</span>
<span id="L134" rel="#L134">134</span>
<span id="L135" rel="#L135">135</span>
<span id="L136" rel="#L136">136</span>
<span id="L137" rel="#L137">137</span>
<span id="L138" rel="#L138">138</span>
<span id="L139" rel="#L139">139</span>
<span id="L140" rel="#L140">140</span>
<span id="L141" rel="#L141">141</span>
<span id="L142" rel="#L142">142</span>
<span id="L143" rel="#L143">143</span>
<span id="L144" rel="#L144">144</span>
<span id="L145" rel="#L145">145</span>
<span id="L146" rel="#L146">146</span>
<span id="L147" rel="#L147">147</span>
<span id="L148" rel="#L148">148</span>
<span id="L149" rel="#L149">149</span>
<span id="L150" rel="#L150">150</span>
<span id="L151" rel="#L151">151</span>
<span id="L152" rel="#L152">152</span>
<span id="L153" rel="#L153">153</span>
<span id="L154" rel="#L154">154</span>
<span id="L155" rel="#L155">155</span>
<span id="L156" rel="#L156">156</span>
<span id="L157" rel="#L157">157</span>
<span id="L158" rel="#L158">158</span>
<span id="L159" rel="#L159">159</span>
<span id="L160" rel="#L160">160</span>
<span id="L161" rel="#L161">161</span>
<span id="L162" rel="#L162">162</span>
<span id="L163" rel="#L163">163</span>
<span id="L164" rel="#L164">164</span>
<span id="L165" rel="#L165">165</span>
<span id="L166" rel="#L166">166</span>
<span id="L167" rel="#L167">167</span>
<span id="L168" rel="#L168">168</span>
<span id="L169" rel="#L169">169</span>
<span id="L170" rel="#L170">170</span>
<span id="L171" rel="#L171">171</span>
<span id="L172" rel="#L172">172</span>
<span id="L173" rel="#L173">173</span>
<span id="L174" rel="#L174">174</span>
<span id="L175" rel="#L175">175</span>
<span id="L176" rel="#L176">176</span>
<span id="L177" rel="#L177">177</span>
<span id="L178" rel="#L178">178</span>
<span id="L179" rel="#L179">179</span>
<span id="L180" rel="#L180">180</span>
<span id="L181" rel="#L181">181</span>
<span id="L182" rel="#L182">182</span>
<span id="L183" rel="#L183">183</span>
<span id="L184" rel="#L184">184</span>
<span id="L185" rel="#L185">185</span>
<span id="L186" rel="#L186">186</span>
<span id="L187" rel="#L187">187</span>
<span id="L188" rel="#L188">188</span>
<span id="L189" rel="#L189">189</span>
<span id="L190" rel="#L190">190</span>
<span id="L191" rel="#L191">191</span>
<span id="L192" rel="#L192">192</span>
<span id="L193" rel="#L193">193</span>
<span id="L194" rel="#L194">194</span>
<span id="L195" rel="#L195">195</span>
<span id="L196" rel="#L196">196</span>
<span id="L197" rel="#L197">197</span>
<span id="L198" rel="#L198">198</span>
<span id="L199" rel="#L199">199</span>
<span id="L200" rel="#L200">200</span>
<span id="L201" rel="#L201">201</span>
<span id="L202" rel="#L202">202</span>
<span id="L203" rel="#L203">203</span>
<span id="L204" rel="#L204">204</span>
<span id="L205" rel="#L205">205</span>
<span id="L206" rel="#L206">206</span>
<span id="L207" rel="#L207">207</span>
<span id="L208" rel="#L208">208</span>
<span id="L209" rel="#L209">209</span>
<span id="L210" rel="#L210">210</span>
<span id="L211" rel="#L211">211</span>
<span id="L212" rel="#L212">212</span>
<span id="L213" rel="#L213">213</span>
<span id="L214" rel="#L214">214</span>
<span id="L215" rel="#L215">215</span>
<span id="L216" rel="#L216">216</span>
<span id="L217" rel="#L217">217</span>
<span id="L218" rel="#L218">218</span>
<span id="L219" rel="#L219">219</span>
<span id="L220" rel="#L220">220</span>
<span id="L221" rel="#L221">221</span>
<span id="L222" rel="#L222">222</span>
<span id="L223" rel="#L223">223</span>
<span id="L224" rel="#L224">224</span>
<span id="L225" rel="#L225">225</span>
<span id="L226" rel="#L226">226</span>
<span id="L227" rel="#L227">227</span>
<span id="L228" rel="#L228">228</span>
<span id="L229" rel="#L229">229</span>
<span id="L230" rel="#L230">230</span>
<span id="L231" rel="#L231">231</span>
<span id="L232" rel="#L232">232</span>
<span id="L233" rel="#L233">233</span>
<span id="L234" rel="#L234">234</span>
<span id="L235" rel="#L235">235</span>
<span id="L236" rel="#L236">236</span>
<span id="L237" rel="#L237">237</span>
<span id="L238" rel="#L238">238</span>
<span id="L239" rel="#L239">239</span>
<span id="L240" rel="#L240">240</span>
<span id="L241" rel="#L241">241</span>
<span id="L242" rel="#L242">242</span>
<span id="L243" rel="#L243">243</span>
<span id="L244" rel="#L244">244</span>
<span id="L245" rel="#L245">245</span>
<span id="L246" rel="#L246">246</span>
<span id="L247" rel="#L247">247</span>
<span id="L248" rel="#L248">248</span>
<span id="L249" rel="#L249">249</span>
<span id="L250" rel="#L250">250</span>
<span id="L251" rel="#L251">251</span>
<span id="L252" rel="#L252">252</span>
<span id="L253" rel="#L253">253</span>
<span id="L254" rel="#L254">254</span>
<span id="L255" rel="#L255">255</span>
<span id="L256" rel="#L256">256</span>
<span id="L257" rel="#L257">257</span>
<span id="L258" rel="#L258">258</span>
<span id="L259" rel="#L259">259</span>
<span id="L260" rel="#L260">260</span>
<span id="L261" rel="#L261">261</span>
<span id="L262" rel="#L262">262</span>
<span id="L263" rel="#L263">263</span>
<span id="L264" rel="#L264">264</span>
<span id="L265" rel="#L265">265</span>
<span id="L266" rel="#L266">266</span>
<span id="L267" rel="#L267">267</span>
<span id="L268" rel="#L268">268</span>
<span id="L269" rel="#L269">269</span>
<span id="L270" rel="#L270">270</span>
<span id="L271" rel="#L271">271</span>
<span id="L272" rel="#L272">272</span>
<span id="L273" rel="#L273">273</span>
<span id="L274" rel="#L274">274</span>
<span id="L275" rel="#L275">275</span>
<span id="L276" rel="#L276">276</span>
<span id="L277" rel="#L277">277</span>
<span id="L278" rel="#L278">278</span>
<span id="L279" rel="#L279">279</span>
<span id="L280" rel="#L280">280</span>
<span id="L281" rel="#L281">281</span>
<span id="L282" rel="#L282">282</span>
<span id="L283" rel="#L283">283</span>
<span id="L284" rel="#L284">284</span>
<span id="L285" rel="#L285">285</span>
<span id="L286" rel="#L286">286</span>
<span id="L287" rel="#L287">287</span>
<span id="L288" rel="#L288">288</span>
<span id="L289" rel="#L289">289</span>
<span id="L290" rel="#L290">290</span>
<span id="L291" rel="#L291">291</span>
<span id="L292" rel="#L292">292</span>
<span id="L293" rel="#L293">293</span>
<span id="L294" rel="#L294">294</span>
<span id="L295" rel="#L295">295</span>
<span id="L296" rel="#L296">296</span>
<span id="L297" rel="#L297">297</span>
<span id="L298" rel="#L298">298</span>
<span id="L299" rel="#L299">299</span>
<span id="L300" rel="#L300">300</span>
<span id="L301" rel="#L301">301</span>
<span id="L302" rel="#L302">302</span>
<span id="L303" rel="#L303">303</span>
<span id="L304" rel="#L304">304</span>
<span id="L305" rel="#L305">305</span>
<span id="L306" rel="#L306">306</span>
<span id="L307" rel="#L307">307</span>
<span id="L308" rel="#L308">308</span>
<span id="L309" rel="#L309">309</span>
<span id="L310" rel="#L310">310</span>
<span id="L311" rel="#L311">311</span>
<span id="L312" rel="#L312">312</span>
<span id="L313" rel="#L313">313</span>
<span id="L314" rel="#L314">314</span>
<span id="L315" rel="#L315">315</span>
<span id="L316" rel="#L316">316</span>
<span id="L317" rel="#L317">317</span>
<span id="L318" rel="#L318">318</span>
<span id="L319" rel="#L319">319</span>
<span id="L320" rel="#L320">320</span>
<span id="L321" rel="#L321">321</span>
<span id="L322" rel="#L322">322</span>
<span id="L323" rel="#L323">323</span>
<span id="L324" rel="#L324">324</span>
<span id="L325" rel="#L325">325</span>
<span id="L326" rel="#L326">326</span>
<span id="L327" rel="#L327">327</span>
<span id="L328" rel="#L328">328</span>
<span id="L329" rel="#L329">329</span>
<span id="L330" rel="#L330">330</span>
<span id="L331" rel="#L331">331</span>
<span id="L332" rel="#L332">332</span>
<span id="L333" rel="#L333">333</span>
<span id="L334" rel="#L334">334</span>
<span id="L335" rel="#L335">335</span>
<span id="L336" rel="#L336">336</span>
<span id="L337" rel="#L337">337</span>
<span id="L338" rel="#L338">338</span>
<span id="L339" rel="#L339">339</span>
<span id="L340" rel="#L340">340</span>
<span id="L341" rel="#L341">341</span>
<span id="L342" rel="#L342">342</span>
<span id="L343" rel="#L343">343</span>
<span id="L344" rel="#L344">344</span>
<span id="L345" rel="#L345">345</span>
<span id="L346" rel="#L346">346</span>
<span id="L347" rel="#L347">347</span>
<span id="L348" rel="#L348">348</span>
<span id="L349" rel="#L349">349</span>
<span id="L350" rel="#L350">350</span>
<span id="L351" rel="#L351">351</span>
<span id="L352" rel="#L352">352</span>
<span id="L353" rel="#L353">353</span>
<span id="L354" rel="#L354">354</span>
<span id="L355" rel="#L355">355</span>
<span id="L356" rel="#L356">356</span>
<span id="L357" rel="#L357">357</span>
<span id="L358" rel="#L358">358</span>
<span id="L359" rel="#L359">359</span>
<span id="L360" rel="#L360">360</span>
<span id="L361" rel="#L361">361</span>
<span id="L362" rel="#L362">362</span>
<span id="L363" rel="#L363">363</span>
<span id="L364" rel="#L364">364</span>
<span id="L365" rel="#L365">365</span>
<span id="L366" rel="#L366">366</span>
<span id="L367" rel="#L367">367</span>
<span id="L368" rel="#L368">368</span>
<span id="L369" rel="#L369">369</span>
<span id="L370" rel="#L370">370</span>
<span id="L371" rel="#L371">371</span>
<span id="L372" rel="#L372">372</span>
<span id="L373" rel="#L373">373</span>
<span id="L374" rel="#L374">374</span>
<span id="L375" rel="#L375">375</span>
<span id="L376" rel="#L376">376</span>
<span id="L377" rel="#L377">377</span>
<span id="L378" rel="#L378">378</span>
<span id="L379" rel="#L379">379</span>
<span id="L380" rel="#L380">380</span>
<span id="L381" rel="#L381">381</span>
<span id="L382" rel="#L382">382</span>
<span id="L383" rel="#L383">383</span>
<span id="L384" rel="#L384">384</span>
<span id="L385" rel="#L385">385</span>
<span id="L386" rel="#L386">386</span>
<span id="L387" rel="#L387">387</span>
<span id="L388" rel="#L388">388</span>
<span id="L389" rel="#L389">389</span>
<span id="L390" rel="#L390">390</span>
<span id="L391" rel="#L391">391</span>
<span id="L392" rel="#L392">392</span>
<span id="L393" rel="#L393">393</span>
<span id="L394" rel="#L394">394</span>
<span id="L395" rel="#L395">395</span>
<span id="L396" rel="#L396">396</span>
<span id="L397" rel="#L397">397</span>
<span id="L398" rel="#L398">398</span>
<span id="L399" rel="#L399">399</span>
<span id="L400" rel="#L400">400</span>
<span id="L401" rel="#L401">401</span>
<span id="L402" rel="#L402">402</span>
<span id="L403" rel="#L403">403</span>
<span id="L404" rel="#L404">404</span>
<span id="L405" rel="#L405">405</span>
<span id="L406" rel="#L406">406</span>
<span id="L407" rel="#L407">407</span>
<span id="L408" rel="#L408">408</span>
<span id="L409" rel="#L409">409</span>
<span id="L410" rel="#L410">410</span>
<span id="L411" rel="#L411">411</span>
<span id="L412" rel="#L412">412</span>
<span id="L413" rel="#L413">413</span>
<span id="L414" rel="#L414">414</span>
<span id="L415" rel="#L415">415</span>
<span id="L416" rel="#L416">416</span>
<span id="L417" rel="#L417">417</span>
<span id="L418" rel="#L418">418</span>
<span id="L419" rel="#L419">419</span>
<span id="L420" rel="#L420">420</span>
<span id="L421" rel="#L421">421</span>
<span id="L422" rel="#L422">422</span>
<span id="L423" rel="#L423">423</span>
<span id="L424" rel="#L424">424</span>
<span id="L425" rel="#L425">425</span>
<span id="L426" rel="#L426">426</span>
<span id="L427" rel="#L427">427</span>
<span id="L428" rel="#L428">428</span>
<span id="L429" rel="#L429">429</span>
<span id="L430" rel="#L430">430</span>
<span id="L431" rel="#L431">431</span>
<span id="L432" rel="#L432">432</span>
<span id="L433" rel="#L433">433</span>
<span id="L434" rel="#L434">434</span>
<span id="L435" rel="#L435">435</span>
<span id="L436" rel="#L436">436</span>
<span id="L437" rel="#L437">437</span>
<span id="L438" rel="#L438">438</span>
<span id="L439" rel="#L439">439</span>
<span id="L440" rel="#L440">440</span>
<span id="L441" rel="#L441">441</span>
<span id="L442" rel="#L442">442</span>
<span id="L443" rel="#L443">443</span>
<span id="L444" rel="#L444">444</span>
<span id="L445" rel="#L445">445</span>
<span id="L446" rel="#L446">446</span>
<span id="L447" rel="#L447">447</span>
<span id="L448" rel="#L448">448</span>
<span id="L449" rel="#L449">449</span>
<span id="L450" rel="#L450">450</span>
<span id="L451" rel="#L451">451</span>
</pre>
          </td>
          <td width="100%">
                  <div class="highlight"><pre><div class='line' id='LC1'><span class="c1">//</span></div><div class='line' id='LC2'><span class="c1">//  MBProgressHUD.h</span></div><div class='line' id='LC3'><span class="c1">//  Version 0.5</span></div><div class='line' id='LC4'><span class="c1">//  Created by Matej Bukovinski on 2.4.09.</span></div><div class='line' id='LC5'><span class="c1">//</span></div><div class='line' id='LC6'><br/></div><div class='line' id='LC7'><span class="c1">// This code is distributed under the terms and conditions of the MIT license. </span></div><div class='line' id='LC8'><br/></div><div class='line' id='LC9'><span class="c1">// Copyright (c) 2011 Matej Bukovinski</span></div><div class='line' id='LC10'><span class="c1">//</span></div><div class='line' id='LC11'><span class="c1">// Permission is hereby granted, free of charge, to any person obtaining a copy</span></div><div class='line' id='LC12'><span class="c1">// of this software and associated documentation files (the &quot;Software&quot;), to deal</span></div><div class='line' id='LC13'><span class="c1">// in the Software without restriction, including without limitation the rights</span></div><div class='line' id='LC14'><span class="c1">// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell</span></div><div class='line' id='LC15'><span class="c1">// copies of the Software, and to permit persons to whom the Software is</span></div><div class='line' id='LC16'><span class="c1">// furnished to do so, subject to the following conditions:</span></div><div class='line' id='LC17'><span class="c1">//</span></div><div class='line' id='LC18'><span class="c1">// The above copyright notice and this permission notice shall be included in</span></div><div class='line' id='LC19'><span class="c1">// all copies or substantial portions of the Software.</span></div><div class='line' id='LC20'><span class="c1">//</span></div><div class='line' id='LC21'><span class="c1">// THE SOFTWARE IS PROVIDED &quot;AS IS&quot;, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR</span></div><div class='line' id='LC22'><span class="c1">// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,</span></div><div class='line' id='LC23'><span class="c1">// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE</span></div><div class='line' id='LC24'><span class="c1">// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER</span></div><div class='line' id='LC25'><span class="c1">// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,</span></div><div class='line' id='LC26'><span class="c1">// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN</span></div><div class='line' id='LC27'><span class="c1">// THE SOFTWARE.</span></div><div class='line' id='LC28'><br/></div><div class='line' id='LC29'><span class="cp">#import &lt;Foundation/Foundation.h&gt;</span></div><div class='line' id='LC30'><span class="cp">#import &lt;UIKit/UIKit.h&gt;</span></div><div class='line' id='LC31'><span class="cp">#import &lt;CoreGraphics/CoreGraphics.h&gt;</span></div><div class='line' id='LC32'><br/></div><div class='line' id='LC33'><span class="k">@protocol</span> <span class="nc">MBProgressHUDDelegate</span>;</div><div class='line' id='LC34'><br/></div><div class='line' id='LC35'><br/></div><div class='line' id='LC36'><span class="k">typedef</span> <span class="k">enum</span> <span class="p">{</span></div><div class='line' id='LC37'>	<span class="cm">/** Progress is shown using an UIActivityIndicatorView. This is the default. */</span></div><div class='line' id='LC38'>	<span class="n">MBProgressHUDModeIndeterminate</span><span class="p">,</span></div><div class='line' id='LC39'>	<span class="cm">/** Progress is shown using a round, pie-chart like, progress view. */</span></div><div class='line' id='LC40'>	<span class="n">MBProgressHUDModeDeterminate</span><span class="p">,</span></div><div class='line' id='LC41'>	<span class="cm">/** Progress is shown using a ring-shaped progress view. */</span></div><div class='line' id='LC42'>	<span class="n">MBProgressHUDModeAnnularDeterminate</span><span class="p">,</span></div><div class='line' id='LC43'>	<span class="cm">/** Shows a custom view */</span></div><div class='line' id='LC44'>	<span class="n">MBProgressHUDModeCustomView</span><span class="p">,</span></div><div class='line' id='LC45'>	<span class="cm">/** Shows only labels */</span></div><div class='line' id='LC46'>	<span class="n">MBProgressHUDModeText</span></div><div class='line' id='LC47'><span class="p">}</span> <span class="n">MBProgressHUDMode</span><span class="p">;</span></div><div class='line' id='LC48'><br/></div><div class='line' id='LC49'><span class="k">typedef</span> <span class="k">enum</span> <span class="p">{</span></div><div class='line' id='LC50'>	<span class="cm">/** Opacity animation */</span></div><div class='line' id='LC51'>	<span class="n">MBProgressHUDAnimationFade</span><span class="p">,</span></div><div class='line' id='LC52'>	<span class="cm">/** Opacity + scale animation */</span></div><div class='line' id='LC53'>	<span class="n">MBProgressHUDAnimationZoom</span><span class="p">,</span></div><div class='line' id='LC54'>	<span class="n">MBProgressHUDAnimationZoomOut</span> <span class="o">=</span> <span class="n">MBProgressHUDAnimationZoom</span><span class="p">,</span></div><div class='line' id='LC55'>	<span class="n">MBProgressHUDAnimationZoomIn</span></div><div class='line' id='LC56'><span class="p">}</span> <span class="n">MBProgressHUDAnimation</span><span class="p">;</span></div><div class='line' id='LC57'><br/></div><div class='line' id='LC58'><br/></div><div class='line' id='LC59'><span class="cp">#ifndef MB_STRONG</span></div><div class='line' id='LC60'><span class="cp">#if __has_feature(objc_arc)</span></div><div class='line' id='LC61'>	<span class="err">#</span><span class="n">define</span> <span class="n">MB_STRONG</span> <span class="n">strong</span></div><div class='line' id='LC62'><span class="cp">#else</span></div><div class='line' id='LC63'>	<span class="err">#</span><span class="n">define</span> <span class="n">MB_STRONG</span> <span class="n">retain</span></div><div class='line' id='LC64'><span class="cp">#endif</span></div><div class='line' id='LC65'><span class="cp">#endif</span></div><div class='line' id='LC66'><br/></div><div class='line' id='LC67'><span class="cp">#ifndef MB_WEAK</span></div><div class='line' id='LC68'><span class="cp">#if __has_feature(objc_arc_weak)</span></div><div class='line' id='LC69'>	<span class="err">#</span><span class="n">define</span> <span class="n">MB_WEAK</span> <span class="n">weak</span></div><div class='line' id='LC70'><span class="cp">#elif __has_feature(objc_arc)</span></div><div class='line' id='LC71'>	<span class="err">#</span><span class="n">define</span> <span class="n">MB_WEAK</span> <span class="n">unsafe_unretained</span></div><div class='line' id='LC72'><span class="cp">#else</span></div><div class='line' id='LC73'>	<span class="err">#</span><span class="n">define</span> <span class="n">MB_WEAK</span> <span class="n">assign</span></div><div class='line' id='LC74'><span class="cp">#endif</span></div><div class='line' id='LC75'><span class="cp">#endif</span></div><div class='line' id='LC76'><br/></div><div class='line' id='LC77'><span class="cp">#if __IPHONE_OS_VERSION_MIN_REQUIRED &gt;= 60000</span></div><div class='line' id='LC78'>	<span class="err">#</span><span class="n">define</span> <span class="n">MBLabelAlignmentCenter</span> <span class="n">NSTextAlignmentCenter</span></div><div class='line' id='LC79'><span class="cp">#else</span></div><div class='line' id='LC80'>	<span class="err">#</span><span class="n">define</span> <span class="n">MBLabelAlignmentCenter</span> <span class="n">UITextAlignmentCenter</span></div><div class='line' id='LC81'><span class="cp">#endif</span></div><div class='line' id='LC82'><br/></div><div class='line' id='LC83'><span class="cp">#if NS_BLOCKS_AVAILABLE</span></div><div class='line' id='LC84'><span class="k">typedef</span> <span class="kt">void</span> <span class="p">(</span><span class="o">^</span><span class="n">MBProgressHUDCompletionBlock</span><span class="p">)();</span></div><div class='line' id='LC85'><span class="cp">#endif</span></div><div class='line' id='LC86'><br/></div><div class='line' id='LC87'><br/></div><div class='line' id='LC88'><br/></div><div class='line' id='LC89'><br/></div><div class='line' id='LC90'><span class="cm">/** </span></div><div class='line' id='LC91'><span class="cm"> * Displays a simple HUD window containing a progress indicator and two optional labels for short messages.</span></div><div class='line' id='LC92'><span class="cm"> *</span></div><div class='line' id='LC93'><span class="cm"> * This is a simple drop-in class for displaying a progress HUD view similar to Apple&#39;s private UIProgressHUD class.</span></div><div class='line' id='LC94'><span class="cm"> * The MBProgressHUD window spans over the entire space given to it by the initWithFrame constructor and catches all</span></div><div class='line' id='LC95'><span class="cm"> * user input on this region, thereby preventing the user operations on components below the view. The HUD itself is</span></div><div class='line' id='LC96'><span class="cm"> * drawn centered as a rounded semi-transparent view which resizes depending on the user specified content.</span></div><div class='line' id='LC97'><span class="cm"> *</span></div><div class='line' id='LC98'><span class="cm"> * This view supports four modes of operation:</span></div><div class='line' id='LC99'><span class="cm"> * - MBProgressHUDModeIndeterminate - shows a UIActivityIndicatorView</span></div><div class='line' id='LC100'><span class="cm"> * - MBProgressHUDModeDeterminate - shows a custom round progress indicator</span></div><div class='line' id='LC101'><span class="cm"> * - MBProgressHUDModeAnnularDeterminate - shows a custom annular progress indicator</span></div><div class='line' id='LC102'><span class="cm"> * - MBProgressHUDModeCustomView - shows an arbitrary, user specified view (@see customView)</span></div><div class='line' id='LC103'><span class="cm"> *</span></div><div class='line' id='LC104'><span class="cm"> * All three modes can have optional labels assigned:</span></div><div class='line' id='LC105'><span class="cm"> * - If the labelText property is set and non-empty then a label containing the provided content is placed below the</span></div><div class='line' id='LC106'><span class="cm"> *   indicator view.</span></div><div class='line' id='LC107'><span class="cm"> * - If also the detailsLabelText property is set then another label is placed below the first label.</span></div><div class='line' id='LC108'><span class="cm"> */</span></div><div class='line' id='LC109'><span class="k">@interface</span> <span class="nc">MBProgressHUD</span> : <span class="nc">UIView</span></div><div class='line' id='LC110'><br/></div><div class='line' id='LC111'><span class="cm">/**</span></div><div class='line' id='LC112'><span class="cm"> * Creates a new HUD, adds it to provided view and shows it. The counterpart to this method is hideHUDForView:animated:.</span></div><div class='line' id='LC113'><span class="cm"> * </span></div><div class='line' id='LC114'><span class="cm"> * @param view The view that the HUD will be added to</span></div><div class='line' id='LC115'><span class="cm"> * @param animated If set to YES the HUD will appear using the current animationType. If set to NO the HUD will not use</span></div><div class='line' id='LC116'><span class="cm"> * animations while appearing.</span></div><div class='line' id='LC117'><span class="cm"> * @return A reference to the created HUD.</span></div><div class='line' id='LC118'><span class="cm"> *</span></div><div class='line' id='LC119'><span class="cm"> * @see hideHUDForView:animated:</span></div><div class='line' id='LC120'><span class="cm"> * @see animationType</span></div><div class='line' id='LC121'><span class="cm"> */</span></div><div class='line' id='LC122'><span class="k">+</span> <span class="p">(</span><span class="n">MBProgressHUD</span> <span class="o">*</span><span class="p">)</span><span class="nf">showHUDAddedTo:</span><span class="p">(</span><span class="n">UIView</span> <span class="o">*</span><span class="p">)</span><span class="nv">view</span> <span class="nf">animated:</span><span class="p">(</span><span class="kt">BOOL</span><span class="p">)</span><span class="nv">animated</span><span class="p">;</span></div><div class='line' id='LC123'><br/></div><div class='line' id='LC124'><span class="cm">/**</span></div><div class='line' id='LC125'><span class="cm"> * Finds the top-most HUD subview and hides it. The counterpart to this method is showHUDAddedTo:animated:.</span></div><div class='line' id='LC126'><span class="cm"> *</span></div><div class='line' id='LC127'><span class="cm"> * @param view The view that is going to be searched for a HUD subview.</span></div><div class='line' id='LC128'><span class="cm"> * @param animated If set to YES the HUD will disappear using the current animationType. If set to NO the HUD will not use</span></div><div class='line' id='LC129'><span class="cm"> * animations while disappearing.</span></div><div class='line' id='LC130'><span class="cm"> * @return YES if a HUD was found and removed, NO otherwise. </span></div><div class='line' id='LC131'><span class="cm"> *</span></div><div class='line' id='LC132'><span class="cm"> * @see showHUDAddedTo:animated:</span></div><div class='line' id='LC133'><span class="cm"> * @see animationType</span></div><div class='line' id='LC134'><span class="cm"> */</span></div><div class='line' id='LC135'><span class="k">+</span> <span class="p">(</span><span class="kt">BOOL</span><span class="p">)</span><span class="nf">hideHUDForView:</span><span class="p">(</span><span class="n">UIView</span> <span class="o">*</span><span class="p">)</span><span class="nv">view</span> <span class="nf">animated:</span><span class="p">(</span><span class="kt">BOOL</span><span class="p">)</span><span class="nv">animated</span><span class="p">;</span></div><div class='line' id='LC136'><br/></div><div class='line' id='LC137'><span class="cm">/**</span></div><div class='line' id='LC138'><span class="cm"> * Finds all the HUD subviews and hides them. </span></div><div class='line' id='LC139'><span class="cm"> *</span></div><div class='line' id='LC140'><span class="cm"> * @param view The view that is going to be searched for HUD subviews.</span></div><div class='line' id='LC141'><span class="cm"> * @param animated If set to YES the HUDs will disappear using the current animationType. If set to NO the HUDs will not use</span></div><div class='line' id='LC142'><span class="cm"> * animations while disappearing.</span></div><div class='line' id='LC143'><span class="cm"> * @return the number of HUDs found and removed.</span></div><div class='line' id='LC144'><span class="cm"> *</span></div><div class='line' id='LC145'><span class="cm"> * @see hideAllHUDForView:animated:</span></div><div class='line' id='LC146'><span class="cm"> * @see animationType</span></div><div class='line' id='LC147'><span class="cm"> */</span></div><div class='line' id='LC148'><span class="k">+</span> <span class="p">(</span><span class="n">NSUInteger</span><span class="p">)</span><span class="nf">hideAllHUDsForView:</span><span class="p">(</span><span class="n">UIView</span> <span class="o">*</span><span class="p">)</span><span class="nv">view</span> <span class="nf">animated:</span><span class="p">(</span><span class="kt">BOOL</span><span class="p">)</span><span class="nv">animated</span><span class="p">;</span></div><div class='line' id='LC149'><br/></div><div class='line' id='LC150'><span class="cm">/**</span></div><div class='line' id='LC151'><span class="cm"> * Finds the top-most HUD subview and returns it. </span></div><div class='line' id='LC152'><span class="cm"> *</span></div><div class='line' id='LC153'><span class="cm"> * @param view The view that is going to be searched.</span></div><div class='line' id='LC154'><span class="cm"> * @return A reference to the last HUD subview discovered.</span></div><div class='line' id='LC155'><span class="cm"> */</span></div><div class='line' id='LC156'><span class="k">+</span> <span class="p">(</span><span class="n">MBProgressHUD</span> <span class="o">*</span><span class="p">)</span><span class="nf">HUDForView:</span><span class="p">(</span><span class="n">UIView</span> <span class="o">*</span><span class="p">)</span><span class="nv">view</span><span class="p">;</span></div><div class='line' id='LC157'><br/></div><div class='line' id='LC158'><span class="cm">/**</span></div><div class='line' id='LC159'><span class="cm"> * Finds all HUD subviews and returns them.</span></div><div class='line' id='LC160'><span class="cm"> *</span></div><div class='line' id='LC161'><span class="cm"> * @param view The view that is going to be searched.</span></div><div class='line' id='LC162'><span class="cm"> * @return All found HUD views (array of MBProgressHUD objects).</span></div><div class='line' id='LC163'><span class="cm"> */</span></div><div class='line' id='LC164'><span class="k">+</span> <span class="p">(</span><span class="n">NSArray</span> <span class="o">*</span><span class="p">)</span><span class="nf">allHUDsForView:</span><span class="p">(</span><span class="n">UIView</span> <span class="o">*</span><span class="p">)</span><span class="nv">view</span><span class="p">;</span></div><div class='line' id='LC165'><br/></div><div class='line' id='LC166'><span class="cm">/**</span></div><div class='line' id='LC167'><span class="cm"> * A convenience constructor that initializes the HUD with the window&#39;s bounds. Calls the designated constructor with</span></div><div class='line' id='LC168'><span class="cm"> * window.bounds as the parameter.</span></div><div class='line' id='LC169'><span class="cm"> *</span></div><div class='line' id='LC170'><span class="cm"> * @param window The window instance that will provide the bounds for the HUD. Should be the same instance as</span></div><div class='line' id='LC171'><span class="cm"> * the HUD&#39;s superview (i.e., the window that the HUD will be added to).</span></div><div class='line' id='LC172'><span class="cm"> */</span></div><div class='line' id='LC173'><span class="k">-</span> <span class="p">(</span><span class="kt">id</span><span class="p">)</span><span class="nf">initWithWindow:</span><span class="p">(</span><span class="n">UIWindow</span> <span class="o">*</span><span class="p">)</span><span class="nv">window</span><span class="p">;</span></div><div class='line' id='LC174'><br/></div><div class='line' id='LC175'><span class="cm">/**</span></div><div class='line' id='LC176'><span class="cm"> * A convenience constructor that initializes the HUD with the view&#39;s bounds. Calls the designated constructor with</span></div><div class='line' id='LC177'><span class="cm"> * view.bounds as the parameter</span></div><div class='line' id='LC178'><span class="cm"> *</span></div><div class='line' id='LC179'><span class="cm"> * @param view The view instance that will provide the bounds for the HUD. Should be the same instance as</span></div><div class='line' id='LC180'><span class="cm"> * the HUD&#39;s superview (i.e., the view that the HUD will be added to).</span></div><div class='line' id='LC181'><span class="cm"> */</span></div><div class='line' id='LC182'><span class="k">-</span> <span class="p">(</span><span class="kt">id</span><span class="p">)</span><span class="nf">initWithView:</span><span class="p">(</span><span class="n">UIView</span> <span class="o">*</span><span class="p">)</span><span class="nv">view</span><span class="p">;</span></div><div class='line' id='LC183'><br/></div><div class='line' id='LC184'><span class="cm">/** </span></div><div class='line' id='LC185'><span class="cm"> * Display the HUD. You need to make sure that the main thread completes its run loop soon after this method call so</span></div><div class='line' id='LC186'><span class="cm"> * the user interface can be updated. Call this method when your task is already set-up to be executed in a new thread</span></div><div class='line' id='LC187'><span class="cm"> * (e.g., when using something like NSOperation or calling an asynchronous call like NSURLRequest).</span></div><div class='line' id='LC188'><span class="cm"> *</span></div><div class='line' id='LC189'><span class="cm"> * @param animated If set to YES the HUD will appear using the current animationType. If set to NO the HUD will not use</span></div><div class='line' id='LC190'><span class="cm"> * animations while appearing.</span></div><div class='line' id='LC191'><span class="cm"> *</span></div><div class='line' id='LC192'><span class="cm"> * @see animationType</span></div><div class='line' id='LC193'><span class="cm"> */</span></div><div class='line' id='LC194'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">show:</span><span class="p">(</span><span class="kt">BOOL</span><span class="p">)</span><span class="nv">animated</span><span class="p">;</span></div><div class='line' id='LC195'><br/></div><div class='line' id='LC196'><span class="cm">/** </span></div><div class='line' id='LC197'><span class="cm"> * Hide the HUD. This still calls the hudWasHidden: delegate. This is the counterpart of the show: method. Use it to</span></div><div class='line' id='LC198'><span class="cm"> * hide the HUD when your task completes.</span></div><div class='line' id='LC199'><span class="cm"> *</span></div><div class='line' id='LC200'><span class="cm"> * @param animated If set to YES the HUD will disappear using the current animationType. If set to NO the HUD will not use</span></div><div class='line' id='LC201'><span class="cm"> * animations while disappearing.</span></div><div class='line' id='LC202'><span class="cm"> *</span></div><div class='line' id='LC203'><span class="cm"> * @see animationType</span></div><div class='line' id='LC204'><span class="cm"> */</span></div><div class='line' id='LC205'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">hide:</span><span class="p">(</span><span class="kt">BOOL</span><span class="p">)</span><span class="nv">animated</span><span class="p">;</span></div><div class='line' id='LC206'><br/></div><div class='line' id='LC207'><span class="cm">/** </span></div><div class='line' id='LC208'><span class="cm"> * Hide the HUD after a delay. This still calls the hudWasHidden: delegate. This is the counterpart of the show: method. Use it to</span></div><div class='line' id='LC209'><span class="cm"> * hide the HUD when your task completes.</span></div><div class='line' id='LC210'><span class="cm"> *</span></div><div class='line' id='LC211'><span class="cm"> * @param animated If set to YES the HUD will disappear using the current animationType. If set to NO the HUD will not use</span></div><div class='line' id='LC212'><span class="cm"> * animations while disappearing.</span></div><div class='line' id='LC213'><span class="cm"> * @param delay Delay in seconds until the HUD is hidden.</span></div><div class='line' id='LC214'><span class="cm"> *</span></div><div class='line' id='LC215'><span class="cm"> * @see animationType</span></div><div class='line' id='LC216'><span class="cm"> */</span></div><div class='line' id='LC217'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">hide:</span><span class="p">(</span><span class="kt">BOOL</span><span class="p">)</span><span class="nv">animated</span> <span class="nf">afterDelay:</span><span class="p">(</span><span class="n">NSTimeInterval</span><span class="p">)</span><span class="nv">delay</span><span class="p">;</span></div><div class='line' id='LC218'><br/></div><div class='line' id='LC219'><span class="cm">/** </span></div><div class='line' id='LC220'><span class="cm"> * Shows the HUD while a background task is executing in a new thread, then hides the HUD.</span></div><div class='line' id='LC221'><span class="cm"> *</span></div><div class='line' id='LC222'><span class="cm"> * This method also takes care of autorelease pools so your method does not have to be concerned with setting up a</span></div><div class='line' id='LC223'><span class="cm"> * pool.</span></div><div class='line' id='LC224'><span class="cm"> *</span></div><div class='line' id='LC225'><span class="cm"> * @param method The method to be executed while the HUD is shown. This method will be executed in a new thread.</span></div><div class='line' id='LC226'><span class="cm"> * @param target The object that the target method belongs to.</span></div><div class='line' id='LC227'><span class="cm"> * @param object An optional object to be passed to the method.</span></div><div class='line' id='LC228'><span class="cm"> * @param animated If set to YES the HUD will (dis)appear using the current animationType. If set to NO the HUD will not use</span></div><div class='line' id='LC229'><span class="cm"> * animations while (dis)appearing.</span></div><div class='line' id='LC230'><span class="cm"> */</span></div><div class='line' id='LC231'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">showWhileExecuting:</span><span class="p">(</span><span class="kt">SEL</span><span class="p">)</span><span class="nv">method</span> <span class="nf">onTarget:</span><span class="p">(</span><span class="kt">id</span><span class="p">)</span><span class="nv">target</span> <span class="nf">withObject:</span><span class="p">(</span><span class="kt">id</span><span class="p">)</span><span class="nv">object</span> <span class="nf">animated:</span><span class="p">(</span><span class="kt">BOOL</span><span class="p">)</span><span class="nv">animated</span><span class="p">;</span></div><div class='line' id='LC232'><br/></div><div class='line' id='LC233'><span class="cp">#if NS_BLOCKS_AVAILABLE</span></div><div class='line' id='LC234'><br/></div><div class='line' id='LC235'><span class="cm">/**</span></div><div class='line' id='LC236'><span class="cm"> * Shows the HUD while a block is executing on a background queue, then hides the HUD.</span></div><div class='line' id='LC237'><span class="cm"> *</span></div><div class='line' id='LC238'><span class="cm"> * @see showAnimated:whileExecutingBlock:onQueue:completion:</span></div><div class='line' id='LC239'><span class="cm"> */</span></div><div class='line' id='LC240'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">showAnimated:</span><span class="p">(</span><span class="kt">BOOL</span><span class="p">)</span><span class="nv">animated</span> <span class="nf">whileExecutingBlock:</span><span class="p">(</span><span class="kt">dispatch_block_t</span><span class="p">)</span><span class="nv">block</span><span class="p">;</span></div><div class='line' id='LC241'><br/></div><div class='line' id='LC242'><span class="cm">/**</span></div><div class='line' id='LC243'><span class="cm"> * Shows the HUD while a block is executing on a background queue, then hides the HUD.</span></div><div class='line' id='LC244'><span class="cm"> *</span></div><div class='line' id='LC245'><span class="cm"> * @see showAnimated:whileExecutingBlock:onQueue:completion:</span></div><div class='line' id='LC246'><span class="cm"> */</span></div><div class='line' id='LC247'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">showAnimated:</span><span class="p">(</span><span class="kt">BOOL</span><span class="p">)</span><span class="nv">animated</span> <span class="nf">whileExecutingBlock:</span><span class="p">(</span><span class="kt">dispatch_block_t</span><span class="p">)</span><span class="nv">block</span> <span class="nf">completionBlock:</span><span class="p">(</span><span class="n">MBProgressHUDCompletionBlock</span><span class="p">)</span><span class="nv">completion</span><span class="p">;</span></div><div class='line' id='LC248'><br/></div><div class='line' id='LC249'><span class="cm">/**</span></div><div class='line' id='LC250'><span class="cm"> * Shows the HUD while a block is executing on the specified dispatch queue, then hides the HUD.</span></div><div class='line' id='LC251'><span class="cm"> *</span></div><div class='line' id='LC252'><span class="cm"> * @see showAnimated:whileExecutingBlock:onQueue:completion:</span></div><div class='line' id='LC253'><span class="cm"> */</span></div><div class='line' id='LC254'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">showAnimated:</span><span class="p">(</span><span class="kt">BOOL</span><span class="p">)</span><span class="nv">animated</span> <span class="nf">whileExecutingBlock:</span><span class="p">(</span><span class="kt">dispatch_block_t</span><span class="p">)</span><span class="nv">block</span> <span class="nf">onQueue:</span><span class="p">(</span><span class="kt">dispatch_queue_t</span><span class="p">)</span><span class="nv">queue</span><span class="p">;</span></div><div class='line' id='LC255'><br/></div><div class='line' id='LC256'><span class="cm">/** </span></div><div class='line' id='LC257'><span class="cm"> * Shows the HUD while a block is executing on the specified dispatch queue, executes completion block on the main queue, and then hides the HUD.</span></div><div class='line' id='LC258'><span class="cm"> *</span></div><div class='line' id='LC259'><span class="cm"> * @param animated If set to YES the HUD will (dis)appear using the current animationType. If set to NO the HUD will</span></div><div class='line' id='LC260'><span class="cm"> * not use animations while (dis)appearing.</span></div><div class='line' id='LC261'><span class="cm"> * @param block The block to be executed while the HUD is shown.</span></div><div class='line' id='LC262'><span class="cm"> * @param queue The dispatch queue on which the block should be executed.</span></div><div class='line' id='LC263'><span class="cm"> * @param completion The block to be executed on completion.</span></div><div class='line' id='LC264'><span class="cm"> *</span></div><div class='line' id='LC265'><span class="cm"> * @see completionBlock</span></div><div class='line' id='LC266'><span class="cm"> */</span></div><div class='line' id='LC267'><span class="k">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="nf">showAnimated:</span><span class="p">(</span><span class="kt">BOOL</span><span class="p">)</span><span class="nv">animated</span> <span class="nf">whileExecutingBlock:</span><span class="p">(</span><span class="kt">dispatch_block_t</span><span class="p">)</span><span class="nv">block</span> <span class="nf">onQueue:</span><span class="p">(</span><span class="kt">dispatch_queue_t</span><span class="p">)</span><span class="nv">queue</span></div><div class='line' id='LC268'>		  <span class="nl">completionBlock:</span><span class="p">(</span><span class="n">MBProgressHUDCompletionBlock</span><span class="p">)</span><span class="nv">completion</span><span class="p">;</span></div><div class='line' id='LC269'><br/></div><div class='line' id='LC270'><span class="cm">/**</span></div><div class='line' id='LC271'><span class="cm"> * A block that gets called after the HUD was completely hidden.</span></div><div class='line' id='LC272'><span class="cm"> */</span></div><div class='line' id='LC273'><span class="k">@property</span> <span class="p">(</span><span class="n">copy</span><span class="p">)</span> <span class="n">MBProgressHUDCompletionBlock</span> <span class="n">completionBlock</span><span class="p">;</span></div><div class='line' id='LC274'><br/></div><div class='line' id='LC275'><span class="cp">#endif</span></div><div class='line' id='LC276'><br/></div><div class='line' id='LC277'><span class="cm">/** </span></div><div class='line' id='LC278'><span class="cm"> * MBProgressHUD operation mode. The default is MBProgressHUDModeIndeterminate.</span></div><div class='line' id='LC279'><span class="cm"> *</span></div><div class='line' id='LC280'><span class="cm"> * @see MBProgressHUDMode</span></div><div class='line' id='LC281'><span class="cm"> */</span></div><div class='line' id='LC282'><span class="k">@property</span> <span class="p">(</span><span class="n">assign</span><span class="p">)</span> <span class="n">MBProgressHUDMode</span> <span class="n">mode</span><span class="p">;</span></div><div class='line' id='LC283'><br/></div><div class='line' id='LC284'><span class="cm">/**</span></div><div class='line' id='LC285'><span class="cm"> * The animation type that should be used when the HUD is shown and hidden. </span></div><div class='line' id='LC286'><span class="cm"> *</span></div><div class='line' id='LC287'><span class="cm"> * @see MBProgressHUDAnimation</span></div><div class='line' id='LC288'><span class="cm"> */</span></div><div class='line' id='LC289'><span class="k">@property</span> <span class="p">(</span><span class="n">assign</span><span class="p">)</span> <span class="n">MBProgressHUDAnimation</span> <span class="n">animationType</span><span class="p">;</span></div><div class='line' id='LC290'><br/></div><div class='line' id='LC291'><span class="cm">/**</span></div><div class='line' id='LC292'><span class="cm"> * The UIView (e.g., a UIImageView) to be shown when the HUD is in MBProgressHUDModeCustomView.</span></div><div class='line' id='LC293'><span class="cm"> * For best results use a 37 by 37 pixel view (so the bounds match the built in indicator bounds). </span></div><div class='line' id='LC294'><span class="cm"> */</span></div><div class='line' id='LC295'><span class="k">@property</span> <span class="p">(</span><span class="n">MB_STRONG</span><span class="p">)</span> <span class="n">UIView</span> <span class="o">*</span><span class="n">customView</span><span class="p">;</span></div><div class='line' id='LC296'><br/></div><div class='line' id='LC297'><span class="cm">/** </span></div><div class='line' id='LC298'><span class="cm"> * The HUD delegate object. </span></div><div class='line' id='LC299'><span class="cm"> *</span></div><div class='line' id='LC300'><span class="cm"> * @see MBProgressHUDDelegate</span></div><div class='line' id='LC301'><span class="cm"> */</span></div><div class='line' id='LC302'><span class="k">@property</span> <span class="p">(</span><span class="n">MB_WEAK</span><span class="p">)</span> <span class="kt">id</span><span class="o">&lt;</span><span class="n">MBProgressHUDDelegate</span><span class="o">&gt;</span> <span class="n">delegate</span><span class="p">;</span></div><div class='line' id='LC303'><br/></div><div class='line' id='LC304'><span class="cm">/** </span></div><div class='line' id='LC305'><span class="cm"> * An optional short message to be displayed below the activity indicator. The HUD is automatically resized to fit</span></div><div class='line' id='LC306'><span class="cm"> * the entire text. If the text is too long it will get clipped by displaying &quot;...&quot; at the end. If left unchanged or</span></div><div class='line' id='LC307'><span class="cm"> * set to @&quot;&quot;, then no message is displayed.</span></div><div class='line' id='LC308'><span class="cm"> */</span></div><div class='line' id='LC309'><span class="k">@property</span> <span class="p">(</span><span class="n">copy</span><span class="p">)</span> <span class="n">NSString</span> <span class="o">*</span><span class="n">labelText</span><span class="p">;</span></div><div class='line' id='LC310'><br/></div><div class='line' id='LC311'><span class="cm">/** </span></div><div class='line' id='LC312'><span class="cm"> * An optional details message displayed below the labelText message. This message is displayed only if the labelText</span></div><div class='line' id='LC313'><span class="cm"> * property is also set and is different from an empty string (@&quot;&quot;). The details text can span multiple lines. </span></div><div class='line' id='LC314'><span class="cm"> */</span></div><div class='line' id='LC315'><span class="k">@property</span> <span class="p">(</span><span class="n">copy</span><span class="p">)</span> <span class="n">NSString</span> <span class="o">*</span><span class="n">detailsLabelText</span><span class="p">;</span></div><div class='line' id='LC316'><br/></div><div class='line' id='LC317'><span class="cm">/** </span></div><div class='line' id='LC318'><span class="cm"> * The opacity of the HUD window. Defaults to 0.8 (80% opacity). </span></div><div class='line' id='LC319'><span class="cm"> */</span></div><div class='line' id='LC320'><span class="k">@property</span> <span class="p">(</span><span class="n">assign</span><span class="p">)</span> <span class="kt">float</span> <span class="n">opacity</span><span class="p">;</span></div><div class='line' id='LC321'><br/></div><div class='line' id='LC322'><span class="cm">/**</span></div><div class='line' id='LC323'><span class="cm"> * The color of the HUD window. Defaults to black. If this property is set, color is set using</span></div><div class='line' id='LC324'><span class="cm"> * this UIColor and the opacity property is not used.  using retain because performing copy on</span></div><div class='line' id='LC325'><span class="cm"> * UIColor base colors (like [UIColor greenColor]) cause problems with the copyZone.</span></div><div class='line' id='LC326'><span class="cm"> */</span></div><div class='line' id='LC327'><span class="k">@property</span> <span class="p">(</span><span class="n">MB_STRONG</span><span class="p">)</span> <span class="n">UIColor</span> <span class="o">*</span><span class="n">color</span><span class="p">;</span></div><div class='line' id='LC328'><br/></div><div class='line' id='LC329'><span class="cm">/** </span></div><div class='line' id='LC330'><span class="cm"> * The x-axis offset of the HUD relative to the centre of the superview. </span></div><div class='line' id='LC331'><span class="cm"> */</span></div><div class='line' id='LC332'><span class="k">@property</span> <span class="p">(</span><span class="n">assign</span><span class="p">)</span> <span class="kt">float</span> <span class="n">xOffset</span><span class="p">;</span></div><div class='line' id='LC333'><br/></div><div class='line' id='LC334'><span class="cm">/** </span></div><div class='line' id='LC335'><span class="cm"> * The y-axis offset of the HUD relative to the centre of the superview. </span></div><div class='line' id='LC336'><span class="cm"> */</span></div><div class='line' id='LC337'><span class="k">@property</span> <span class="p">(</span><span class="n">assign</span><span class="p">)</span> <span class="kt">float</span> <span class="n">yOffset</span><span class="p">;</span></div><div class='line' id='LC338'><br/></div><div class='line' id='LC339'><span class="cm">/**</span></div><div class='line' id='LC340'><span class="cm"> * The amount of space between the HUD edge and the HUD elements (labels, indicators or custom views). </span></div><div class='line' id='LC341'><span class="cm"> * Defaults to 20.0</span></div><div class='line' id='LC342'><span class="cm"> */</span></div><div class='line' id='LC343'><span class="k">@property</span> <span class="p">(</span><span class="n">assign</span><span class="p">)</span> <span class="kt">float</span> <span class="n">margin</span><span class="p">;</span></div><div class='line' id='LC344'><br/></div><div class='line' id='LC345'><span class="cm">/** </span></div><div class='line' id='LC346'><span class="cm"> * Cover the HUD background view with a radial gradient. </span></div><div class='line' id='LC347'><span class="cm"> */</span></div><div class='line' id='LC348'><span class="k">@property</span> <span class="p">(</span><span class="n">assign</span><span class="p">)</span> <span class="kt">BOOL</span> <span class="n">dimBackground</span><span class="p">;</span></div><div class='line' id='LC349'><br/></div><div class='line' id='LC350'><span class="cm">/*</span></div><div class='line' id='LC351'><span class="cm"> * Grace period is the time (in seconds) that the invoked method may be run without </span></div><div class='line' id='LC352'><span class="cm"> * showing the HUD. If the task finishes before the grace time runs out, the HUD will</span></div><div class='line' id='LC353'><span class="cm"> * not be shown at all. </span></div><div class='line' id='LC354'><span class="cm"> * This may be used to prevent HUD display for very short tasks.</span></div><div class='line' id='LC355'><span class="cm"> * Defaults to 0 (no grace time).</span></div><div class='line' id='LC356'><span class="cm"> * Grace time functionality is only supported when the task status is known!</span></div><div class='line' id='LC357'><span class="cm"> * @see taskInProgress</span></div><div class='line' id='LC358'><span class="cm"> */</span></div><div class='line' id='LC359'><span class="k">@property</span> <span class="p">(</span><span class="n">assign</span><span class="p">)</span> <span class="kt">float</span> <span class="n">graceTime</span><span class="p">;</span></div><div class='line' id='LC360'><br/></div><div class='line' id='LC361'><span class="cm">/**</span></div><div class='line' id='LC362'><span class="cm"> * The minimum time (in seconds) that the HUD is shown. </span></div><div class='line' id='LC363'><span class="cm"> * This avoids the problem of the HUD being shown and than instantly hidden.</span></div><div class='line' id='LC364'><span class="cm"> * Defaults to 0 (no minimum show time).</span></div><div class='line' id='LC365'><span class="cm"> */</span></div><div class='line' id='LC366'><span class="k">@property</span> <span class="p">(</span><span class="n">assign</span><span class="p">)</span> <span class="kt">float</span> <span class="n">minShowTime</span><span class="p">;</span></div><div class='line' id='LC367'><br/></div><div class='line' id='LC368'><span class="cm">/**</span></div><div class='line' id='LC369'><span class="cm"> * Indicates that the executed operation is in progress. Needed for correct graceTime operation.</span></div><div class='line' id='LC370'><span class="cm"> * If you don&#39;t set a graceTime (different than 0.0) this does nothing.</span></div><div class='line' id='LC371'><span class="cm"> * This property is automatically set when using showWhileExecuting:onTarget:withObject:animated:.</span></div><div class='line' id='LC372'><span class="cm"> * When threading is done outside of the HUD (i.e., when the show: and hide: methods are used directly),</span></div><div class='line' id='LC373'><span class="cm"> * you need to set this property when your task starts and completes in order to have normal graceTime </span></div><div class='line' id='LC374'><span class="cm"> * functionality.</span></div><div class='line' id='LC375'><span class="cm"> */</span></div><div class='line' id='LC376'><span class="k">@property</span> <span class="p">(</span><span class="n">assign</span><span class="p">)</span> <span class="kt">BOOL</span> <span class="n">taskInProgress</span><span class="p">;</span></div><div class='line' id='LC377'><br/></div><div class='line' id='LC378'><span class="cm">/**</span></div><div class='line' id='LC379'><span class="cm"> * Removes the HUD from its parent view when hidden. </span></div><div class='line' id='LC380'><span class="cm"> * Defaults to NO. </span></div><div class='line' id='LC381'><span class="cm"> */</span></div><div class='line' id='LC382'><span class="k">@property</span> <span class="p">(</span><span class="n">assign</span><span class="p">)</span> <span class="kt">BOOL</span> <span class="n">removeFromSuperViewOnHide</span><span class="p">;</span></div><div class='line' id='LC383'><br/></div><div class='line' id='LC384'><span class="cm">/** </span></div><div class='line' id='LC385'><span class="cm"> * Font to be used for the main label. Set this property if the default is not adequate. </span></div><div class='line' id='LC386'><span class="cm"> */</span></div><div class='line' id='LC387'><span class="k">@property</span> <span class="p">(</span><span class="n">MB_STRONG</span><span class="p">)</span> <span class="n">UIFont</span><span class="o">*</span> <span class="n">labelFont</span><span class="p">;</span></div><div class='line' id='LC388'><br/></div><div class='line' id='LC389'><span class="cm">/** </span></div><div class='line' id='LC390'><span class="cm"> * Font to be used for the details label. Set this property if the default is not adequate. </span></div><div class='line' id='LC391'><span class="cm"> */</span></div><div class='line' id='LC392'><span class="k">@property</span> <span class="p">(</span><span class="n">MB_STRONG</span><span class="p">)</span> <span class="n">UIFont</span><span class="o">*</span> <span class="n">detailsLabelFont</span><span class="p">;</span></div><div class='line' id='LC393'><br/></div><div class='line' id='LC394'><span class="cm">/** </span></div><div class='line' id='LC395'><span class="cm"> * The progress of the progress indicator, from 0.0 to 1.0. Defaults to 0.0. </span></div><div class='line' id='LC396'><span class="cm"> */</span></div><div class='line' id='LC397'><span class="k">@property</span> <span class="p">(</span><span class="n">assign</span><span class="p">)</span> <span class="kt">float</span> <span class="n">progress</span><span class="p">;</span></div><div class='line' id='LC398'><br/></div><div class='line' id='LC399'><span class="cm">/**</span></div><div class='line' id='LC400'><span class="cm"> * The minimum size of the HUD bezel. Defaults to CGSizeZero (no minimum size).</span></div><div class='line' id='LC401'><span class="cm"> */</span></div><div class='line' id='LC402'><span class="k">@property</span> <span class="p">(</span><span class="n">assign</span><span class="p">)</span> <span class="n">CGSize</span> <span class="n">minSize</span><span class="p">;</span></div><div class='line' id='LC403'><br/></div><div class='line' id='LC404'><span class="cm">/**</span></div><div class='line' id='LC405'><span class="cm"> * Force the HUD dimensions to be equal if possible. </span></div><div class='line' id='LC406'><span class="cm"> */</span></div><div class='line' id='LC407'><span class="k">@property</span> <span class="p">(</span><span class="n">assign</span><span class="p">,</span> <span class="n">getter</span> <span class="o">=</span> <span class="n">isSquare</span><span class="p">)</span> <span class="kt">BOOL</span> <span class="n">square</span><span class="p">;</span></div><div class='line' id='LC408'><br/></div><div class='line' id='LC409'><span class="k">@end</span></div><div class='line' id='LC410'><br/></div><div class='line' id='LC411'><br/></div><div class='line' id='LC412'><span class="k">@protocol</span> <span class="nc">MBProgressHUDDelegate</span> <span class="o">&lt;</span><span class="n">NSObject</span><span class="o">&gt;</span></div><div class='line' id='LC413'><br/></div><div class='line' id='LC414'><span class="k">@optional</span></div><div class='line' id='LC415'><br/></div><div class='line' id='LC416'><span class="cm">/** </span></div><div class='line' id='LC417'><span class="cm"> * Called after the HUD was fully hidden from the screen. </span></div><div class='line' id='LC418'><span class="cm"> */</span></div><div class='line' id='LC419'><span class="o">-</span> <span class="p">(</span><span class="kt">void</span><span class="p">)</span><span class="n">hudWasHidden</span><span class="o">:</span><span class="p">(</span><span class="n">MBProgressHUD</span> <span class="o">*</span><span class="p">)</span><span class="n">hud</span><span class="p">;</span></div><div class='line' id='LC420'><br/></div><div class='line' id='LC421'><span class="k">@end</span></div><div class='line' id='LC422'><br/></div><div class='line' id='LC423'><br/></div><div class='line' id='LC424'><span class="cm">/**</span></div><div class='line' id='LC425'><span class="cm"> * A progress view for showing definite progress by filling up a circle (pie chart).</span></div><div class='line' id='LC426'><span class="cm"> */</span></div><div class='line' id='LC427'><span class="k">@interface</span> <span class="nc">MBRoundProgressView</span> : <span class="nc">UIView</span> </div><div class='line' id='LC428'><br/></div><div class='line' id='LC429'><span class="cm">/**</span></div><div class='line' id='LC430'><span class="cm"> * Progress (0.0 to 1.0)</span></div><div class='line' id='LC431'><span class="cm"> */</span></div><div class='line' id='LC432'><span class="k">@property</span> <span class="p">(</span><span class="n">nonatomic</span><span class="p">,</span> <span class="n">assign</span><span class="p">)</span> <span class="kt">float</span> <span class="n">progress</span><span class="p">;</span></div><div class='line' id='LC433'><br/></div><div class='line' id='LC434'><span class="cm">/**</span></div><div class='line' id='LC435'><span class="cm"> * Indicator progress color.</span></div><div class='line' id='LC436'><span class="cm"> * Defaults to white [UIColor whiteColor]</span></div><div class='line' id='LC437'><span class="cm"> */</span></div><div class='line' id='LC438'><span class="k">@property</span> <span class="p">(</span><span class="n">nonatomic</span><span class="p">,</span> <span class="n">MB_STRONG</span><span class="p">)</span> <span class="n">UIColor</span> <span class="o">*</span><span class="n">progressTintColor</span><span class="p">;</span></div><div class='line' id='LC439'><br/></div><div class='line' id='LC440'><span class="cm">/**</span></div><div class='line' id='LC441'><span class="cm"> * Indicator background (non-progress) color.</span></div><div class='line' id='LC442'><span class="cm"> * Defaults to translucent white (alpha 0.1)</span></div><div class='line' id='LC443'><span class="cm"> */</span></div><div class='line' id='LC444'><span class="k">@property</span> <span class="p">(</span><span class="n">nonatomic</span><span class="p">,</span> <span class="n">MB_STRONG</span><span class="p">)</span> <span class="n">UIColor</span> <span class="o">*</span><span class="n">backgroundTintColor</span><span class="p">;</span></div><div class='line' id='LC445'><br/></div><div class='line' id='LC446'><span class="cm">/*</span></div><div class='line' id='LC447'><span class="cm"> * Display mode - NO = round or YES = annular. Defaults to round.</span></div><div class='line' id='LC448'><span class="cm"> */</span></div><div class='line' id='LC449'><span class="k">@property</span> <span class="p">(</span><span class="n">nonatomic</span><span class="p">,</span> <span class="n">assign</span><span class="p">,</span> <span class="n">getter</span> <span class="o">=</span> <span class="n">isAnnular</span><span class="p">)</span> <span class="kt">BOOL</span> <span class="n">annular</span><span class="p">;</span></div><div class='line' id='LC450'><br/></div><div class='line' id='LC451'><span class="k">@end</span></div></pre></div>
          </td>
        </tr>
      </table>
  </div>

          </div>
        </div>

        <a href="#jump-to-line" rel="facebox" data-hotkey="l" class="js-jump-to-line" style="display:none">Jump to Line</a>
        <div id="jump-to-line" style="display:none">
          <h2>Jump to Line</h2>
          <form accept-charset="UTF-8" class="js-jump-to-line-form">
            <input class="textfield js-jump-to-line-field" type="text">
            <div class="full-button">
              <button type="submit" class="button">Go</button>
            </div>
          </form>
        </div>

      </div>
    </div>
</div>

<div id="js-frame-loading-template" class="frame frame-loading large-loading-area" style="display:none;">
  <img class="js-frame-loading-spinner" src="https://a248.e.akamai.net/assets.github.com/images/spinners/octocat-spinner-128.gif?1347543527" height="64" width="64">
</div>


        </div>
      </div>
      <div class="context-overlay"></div>
    </div>

      <div id="footer-push"></div><!-- hack for sticky footer -->
    </div><!-- end of wrapper - hack for sticky footer -->

      <!-- footer -->
      <div id="footer">
  <div class="container clearfix">

      <dl class="footer_nav">
        <dt>GitHub</dt>
        <dd><a href="https://github.com/about">About us</a></dd>
        <dd><a href="https://github.com/blog">Blog</a></dd>
        <dd><a href="https://github.com/contact">Contact &amp; support</a></dd>
        <dd><a href="http://enterprise.github.com/">GitHub Enterprise</a></dd>
        <dd><a href="http://status.github.com/">Site status</a></dd>
      </dl>

      <dl class="footer_nav">
        <dt>Applications</dt>
        <dd><a href="http://mac.github.com/">GitHub for Mac</a></dd>
        <dd><a href="http://windows.github.com/">GitHub for Windows</a></dd>
        <dd><a href="http://eclipse.github.com/">GitHub for Eclipse</a></dd>
        <dd><a href="http://mobile.github.com/">GitHub mobile apps</a></dd>
      </dl>

      <dl class="footer_nav">
        <dt>Services</dt>
        <dd><a href="http://get.gaug.es/">Gauges: Web analytics</a></dd>
        <dd><a href="http://speakerdeck.com">Speaker Deck: Presentations</a></dd>
        <dd><a href="https://gist.github.com">Gist: Code snippets</a></dd>
        <dd><a href="http://jobs.github.com/">Job board</a></dd>
      </dl>

      <dl class="footer_nav">
        <dt>Documentation</dt>
        <dd><a href="http://help.github.com/">GitHub Help</a></dd>
        <dd><a href="http://developer.github.com/">Developer API</a></dd>
        <dd><a href="http://github.github.com/github-flavored-markdown/">GitHub Flavored Markdown</a></dd>
        <dd><a href="http://pages.github.com/">GitHub Pages</a></dd>
      </dl>

      <dl class="footer_nav">
        <dt>More</dt>
        <dd><a href="http://training.github.com/">Training</a></dd>
        <dd><a href="https://github.com/edu">Students &amp; teachers</a></dd>
        <dd><a href="http://shop.github.com">The Shop</a></dd>
        <dd><a href="/plans">Plans &amp; pricing</a></dd>
        <dd><a href="http://octodex.github.com/">The Octodex</a></dd>
      </dl>

      <hr class="footer-divider">


    <p class="right">&copy; 2013 <span title="0.03965s from fe16.rs.github.com">GitHub</span>, Inc. All rights reserved.</p>
    <a class="left" href="https://github.com/">
      <span class="mega-icon mega-icon-invertocat"></span>
    </a>
    <ul id="legal">
        <li><a href="https://github.com/site/terms">Terms of Service</a></li>
        <li><a href="https://github.com/site/privacy">Privacy</a></li>
        <li><a href="https://github.com/security">Security</a></li>
    </ul>

  </div><!-- /.container -->

</div><!-- /.#footer -->


    <div class="fullscreen-overlay js-fullscreen-overlay" id="fullscreen_overlay">
  <div class="fullscreen-container js-fullscreen-container">
    <div class="textarea-wrap">
      <textarea name="fullscreen-contents" id="fullscreen-contents" class="js-fullscreen-contents" placeholder="" data-suggester="fullscreen_suggester"></textarea>
          <div class="suggester-container">
              <div class="suggester fullscreen-suggester js-navigation-container" id="fullscreen_suggester"
                 data-url="/jdg/MBProgressHUD/suggestions/commit">
              </div>
          </div>
    </div>
  </div>
  <div class="fullscreen-sidebar">
    <a href="#" class="exit-fullscreen js-exit-fullscreen tooltipped leftwards" title="Exit Zen Mode">
      <span class="mega-icon mega-icon-normalscreen"></span>
    </a>
    <a href="#" class="theme-switcher js-theme-switcher tooltipped leftwards"
      title="Switch themes">
      <span class="mini-icon mini-icon-brightness"></span>
    </a>
  </div>
</div>



    <div id="ajax-error-message" class="flash flash-error">
      <span class="mini-icon mini-icon-exclamation"></span>
      Something went wrong with that request. Please try again.
      <a href="#" class="mini-icon mini-icon-remove-close ajax-error-dismiss"></a>
    </div>

    
    
    <span id='server_response_time' data-time='0.04005' data-host='fe16'></span>
    
  </body>
</html>

