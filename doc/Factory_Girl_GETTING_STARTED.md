


<!DOCTYPE html>
<html>
  <head>
    <meta charset='utf-8'>
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
        <title>GETTING_STARTED.md at master from thoughtbot/factory_girl - GitHub</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub" />
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub" />

    
    

    <meta content="authenticity_token" name="csrf-param" />
<meta content="897a9a530b00c16795f34a95f999cf6b25cee05b" name="csrf-token" />

    <link href="https://a248.e.akamai.net/assets.github.com/stylesheets/bundles/github-ed04e8b8be3e88286d2fedb5ade5607df0599719.css" media="screen" rel="stylesheet" type="text/css" />
    

    <script src="https://a248.e.akamai.net/assets.github.com/javascripts/bundles/jquery-0afaa9d8025004af7fc6f2a561837057d3f21298.js" type="text/javascript"></script>
    <script src="https://a248.e.akamai.net/assets.github.com/javascripts/bundles/github-b1872f46a080aa92c45573ca095de24a21d5f9ff.js" type="text/javascript"></script>
    

      <link rel='permalink' href='/thoughtbot/factory_girl/blob/6bf74f034a56bf495d75fd667db618d6ec662e25/GETTING_STARTED.md'>
    

    <meta name="description" content="factory_girl - Fixture replacement for focused and readable tests." />
  <link href="https://github.com/thoughtbot/factory_girl/commits/master.atom" rel="alternate" title="Recent Commits to factory_girl:master" type="application/atom+xml" />

  </head>


  <body class="logged_out page-blob linux env-production ">
    


    

    <div id="main">
      <div id="header" class="true">
          <a class="logo" href="https://github.com">
            <img alt="github" class="default svg" height="45" src="https://a248.e.akamai.net/assets.github.com/images/modules/header/logov6.svg" />
            <img alt="github" class="default png" height="45" src="https://a248.e.akamai.net/assets.github.com/images/modules/header/logov6.png" />
            <!--[if (gt IE 8)|!(IE)]><!-->
            <img alt="github" class="hover svg" height="45" src="https://a248.e.akamai.net/assets.github.com/images/modules/header/logov6-hover.svg" />
            <img alt="github" class="hover png" height="45" src="https://a248.e.akamai.net/assets.github.com/images/modules/header/logov6-hover.png" />
            <!--<![endif]-->
          </a>

        <div class="topsearch">
    <!--
      make sure to use fully qualified URLs here since this nav
      is used on error pages on other domains
    -->
    <ul class="nav logged_out">
        <li class="pricing"><a href="https://github.com/plans">Signup and Pricing</a></li>
        <li class="explore"><a href="https://github.com/explore">Explore GitHub</a></li>
      <li class="features"><a href="https://github.com/features">Features</a></li>
        <li class="blog"><a href="https://github.com/blog">Blog</a></li>
      <li class="login"><a href="https://github.com/login?return_to=%2Fthoughtbot%2Ffactory_girl%2Fblob%2Fmaster%2FGETTING_STARTED.md">Login</a></li>
    </ul>
</div>

      </div>

      
            <div class="site">
      <div class="pagehead repohead vis-public   instapaper_ignore readability-menu">


      <div class="title-actions-bar">
        <h1>
          <a href="/thoughtbot">thoughtbot</a> /
          <strong><a href="/thoughtbot/factory_girl" class="js-current-repository">factory_girl</a></strong>
        </h1>
        



            <ul class="pagehead-actions">

        <li class="js-toggler-container watch-button-container ">
          <a href="/thoughtbot/factory_girl/toggle_watch" class="minibutton btn-watch watch-button js-toggler-target" data-method="post" data-remote="true"><span><span class="icon"></span>Watch</span></a>
          <a href="/thoughtbot/factory_girl/toggle_watch" class="minibutton btn-watch unwatch-button js-toggler-target" data-method="post" data-remote="true"><span><span class="icon"></span>Unwatch</span></a>
        </li>
            <li><a href="/thoughtbot/factory_girl/fork" class="minibutton btn-fork fork-button" data-method="post"><span><span class="icon"></span>Fork</span></a></li>

      <li class="repostats">
        <ul class="repo-stats">
          <li class="watchers ">
            <a href="/thoughtbot/factory_girl/watchers" title="Watchers" class="tooltipped downwards">
              1,781
            </a>
          </li>
          <li class="forks">
            <a href="/thoughtbot/factory_girl/network" title="Forks" class="tooltipped downwards">
              215
            </a>
          </li>
        </ul>
      </li>
    </ul>

      </div>

        

  <ul class="tabs">
    <li><a href="/thoughtbot/factory_girl" class="selected" highlight="repo_sourcerepo_downloadsrepo_commitsrepo_tagsrepo_branches">Code</a></li>
    <li><a href="/thoughtbot/factory_girl/network" highlight="repo_networkrepo_fork_queue">Network</a>
    <li><a href="/thoughtbot/factory_girl/pulls" highlight="repo_pulls">Pull Requests <span class='counter'>2</span></a></li>

      <li><a href="/thoughtbot/factory_girl/issues" highlight="repo_issues">Issues <span class='counter'>6</span></a></li>

      <li><a href="/thoughtbot/factory_girl/wiki" highlight="repo_wiki">Wiki <span class='counter'>7</span></a></li>

    <li><a href="/thoughtbot/factory_girl/graphs" highlight="repo_graphsrepo_contributors">Stats &amp; Graphs</a></li>

  </ul>

  
<div class="frame frame-center tree-finder" style="display:none"
      data-tree-list-url="/thoughtbot/factory_girl/tree-list/6bf74f034a56bf495d75fd667db618d6ec662e25"
      data-blob-url-prefix="/thoughtbot/factory_girl/blob/6bf74f034a56bf495d75fd667db618d6ec662e25"
    >

  <div class="breadcrumb">
    <b><a href="/thoughtbot/factory_girl">factory_girl</a></b> /
    <input class="tree-finder-input" type="text" name="query" autocomplete="off" spellcheck="false">
  </div>

    <div class="octotip">
      <p>
        <a href="/thoughtbot/factory_girl/dismiss-tree-finder-help" class="dismiss js-dismiss-tree-list-help" title="Hide this notice forever">Dismiss</a>
        <strong>Octotip:</strong> You've activated the <em>file finder</em>
        by pressing <span class="kbd">t</span> Start typing to filter the
        file list. Use <span class="kbd badmono">↑</span> and
        <span class="kbd badmono">↓</span> to navigate,
        <span class="kbd">enter</span> to view files.
      </p>
    </div>

  <table class="tree-browser" cellpadding="0" cellspacing="0">
    <tr class="js-header"><th>&nbsp;</th><th>name</th></tr>
    <tr class="js-no-results no-results" style="display: none">
      <th colspan="2">No matching files</th>
    </tr>
    <tbody class="js-results-list">
    </tbody>
  </table>
</div>

<div id="jump-to-line" style="display:none">
  <h2>Jump to Line</h2>
  <form>
    <input class="textfield" type="text">
    <div class="full-button">
      <button type="submit" class="classy">
        <span>Go</span>
      </button>
    </div>
  </form>
</div>


<div class="subnav-bar">

  <ul class="actions">
    
      <li class="switcher">

        <div class="context-menu-container js-menu-container">
          <span class="text">Current branch:</span>
          <a href="#"
             class="minibutton bigger switcher context-menu-button js-menu-target js-commitish-button btn-branch repo-tree"
             data-master-branch="master"
             data-ref="master">
            <span><span class="icon"></span>master</span>
          </a>

          <div class="context-pane commitish-context js-menu-content">
            <a href="javascript:;" class="close js-menu-close"></a>
            <div class="title">Switch Branches/Tags</div>
            <div class="body pane-selector commitish-selector js-filterable-commitishes">
              <div class="filterbar">
                <div class="placeholder-field js-placeholder-field">
                  <label class="placeholder" for="context-commitish-filter-field" data-placeholder-mode="sticky">Filter branches/tags</label>
                  <input type="text" id="context-commitish-filter-field" class="commitish-filter" />
                </div>

                <ul class="tabs">
                  <li><a href="#" data-filter="branches" class="selected">Branches</a></li>
                  <li><a href="#" data-filter="tags">Tags</a></li>
                </ul>
              </div>

                <div class="commitish-item branch-commitish selector-item">
                  <h4>
                      <a href="/thoughtbot/factory_girl/blob/1.3.x/GETTING_STARTED.md" data-name="1.3.x">1.3.x</a>
                  </h4>
                </div>
                <div class="commitish-item branch-commitish selector-item">
                  <h4>
                      <a href="/thoughtbot/factory_girl/blob/correct-module/GETTING_STARTED.md" data-name="correct-module">correct-module</a>
                  </h4>
                </div>
                <div class="commitish-item branch-commitish selector-item">
                  <h4>
                      <a href="/thoughtbot/factory_girl/blob/master/GETTING_STARTED.md" data-name="master">master</a>
                  </h4>
                </div>
                <div class="commitish-item branch-commitish selector-item">
                  <h4>
                      <a href="/thoughtbot/factory_girl/blob/remove-associate/GETTING_STARTED.md" data-name="remove-associate">remove-associate</a>
                  </h4>
                </div>
                <div class="commitish-item branch-commitish selector-item">
                  <h4>
                      <a href="/thoughtbot/factory_girl/blob/use-bundler-conventions/GETTING_STARTED.md" data-name="use-bundler-conventions">use-bundler-conventions</a>
                  </h4>
                </div>

                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/thoughtbot/factory_girl/blob/v2.2.0/GETTING_STARTED.md" data-name="v2.2.0">v2.2.0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/thoughtbot/factory_girl/blob/v2.1.2/GETTING_STARTED.md" data-name="v2.1.2">v2.1.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/thoughtbot/factory_girl/blob/v2.1.1/GETTING_STARTED.md" data-name="v2.1.1">v2.1.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/thoughtbot/factory_girl/blob/v2.1.0/GETTING_STARTED.md" data-name="v2.1.0">v2.1.0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/thoughtbot/factory_girl/blob/v2.0.5/GETTING_STARTED.md" data-name="v2.0.5">v2.0.5</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/thoughtbot/factory_girl/blob/v2.0.4/GETTING_STARTED.md" data-name="v2.0.4">v2.0.4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/thoughtbot/factory_girl/blob/v2.0.3/GETTING_STARTED.md" data-name="v2.0.3">v2.0.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/thoughtbot/factory_girl/blob/v2.0.2/GETTING_STARTED.md" data-name="v2.0.2">v2.0.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/thoughtbot/factory_girl/blob/v2.0.1/GETTING_STARTED.md" data-name="v2.0.1">v2.0.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/thoughtbot/factory_girl/blob/v2.0.0.rc4/GETTING_STARTED.md" data-name="v2.0.0.rc4">v2.0.0.rc4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/thoughtbot/factory_girl/blob/v2.0.0.rc3/GETTING_STARTED.md" data-name="v2.0.0.rc3">v2.0.0.rc3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/thoughtbot/factory_girl/blob/v2.0.0.rc2/GETTING_STARTED.md" data-name="v2.0.0.rc2">v2.0.0.rc2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/thoughtbot/factory_girl/blob/v2.0.0.rc1/GETTING_STARTED.md" data-name="v2.0.0.rc1">v2.0.0.rc1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/thoughtbot/factory_girl/blob/v2.0.0.beta5/GETTING_STARTED.md" data-name="v2.0.0.beta5">v2.0.0.beta5</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/thoughtbot/factory_girl/blob/v2.0.0.beta4/GETTING_STARTED.md" data-name="v2.0.0.beta4">v2.0.0.beta4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/thoughtbot/factory_girl/blob/v2.0.0.beta3/GETTING_STARTED.md" data-name="v2.0.0.beta3">v2.0.0.beta3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/thoughtbot/factory_girl/blob/v2.0.0/GETTING_STARTED.md" data-name="v2.0.0">v2.0.0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/thoughtbot/factory_girl/blob/v1.3.3/GETTING_STARTED.md" data-name="v1.3.3">v1.3.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/thoughtbot/factory_girl/blob/v1.3.2/GETTING_STARTED.md" data-name="v1.3.2">v1.3.2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/thoughtbot/factory_girl/blob/v1.3.1/GETTING_STARTED.md" data-name="v1.3.1">v1.3.1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/thoughtbot/factory_girl/blob/v1.3.0/GETTING_STARTED.md" data-name="v1.3.0">v1.3.0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/thoughtbot/factory_girl/blob/v1.2.5/GETTING_STARTED.md" data-name="v1.2.5">v1.2.5</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/thoughtbot/factory_girl/blob/v1.2.4/GETTING_STARTED.md" data-name="v1.2.4">v1.2.4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/thoughtbot/factory_girl/blob/v1.2.3/GETTING_STARTED.md" data-name="v1.2.3">v1.2.3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/thoughtbot/factory_girl/blob/v1.0.0/GETTING_STARTED.md" data-name="v1.0.0">v1.0.0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/thoughtbot/factory_girl/blob/rel_1-2-2/GETTING_STARTED.md" data-name="rel_1-2-2">rel_1-2-2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/thoughtbot/factory_girl/blob/rel_1-2-1/GETTING_STARTED.md" data-name="rel_1-2-1">rel_1-2-1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/thoughtbot/factory_girl/blob/rel_1-2-0/GETTING_STARTED.md" data-name="rel_1-2-0">rel_1-2-0</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/thoughtbot/factory_girl/blob/rel_1-1-5/GETTING_STARTED.md" data-name="rel_1-1-5">rel_1-1-5</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/thoughtbot/factory_girl/blob/rel_1-1-4/GETTING_STARTED.md" data-name="rel_1-1-4">rel_1-1-4</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/thoughtbot/factory_girl/blob/rel_1-1-3/GETTING_STARTED.md" data-name="rel_1-1-3">rel_1-1-3</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/thoughtbot/factory_girl/blob/rel_1-1-2/GETTING_STARTED.md" data-name="rel_1-1-2">rel_1-1-2</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/thoughtbot/factory_girl/blob/rel_1-1-1/GETTING_STARTED.md" data-name="rel_1-1-1">rel_1-1-1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/thoughtbot/factory_girl/blob/rel_1-1/GETTING_STARTED.md" data-name="rel_1-1">rel_1-1</a>
                  </h4>
                </div>
                <div class="commitish-item tag-commitish selector-item">
                  <h4>
                      <a href="/thoughtbot/factory_girl/blob/rel_1-0/GETTING_STARTED.md" data-name="rel_1-0">rel_1-0</a>
                  </h4>
                </div>

              <div class="no-results" style="display:none">Nothing to show</div>
            </div>
          </div><!-- /.commitish-context-context -->
        </div>

      </li>
  </ul>

  <ul class="subnav">
    <li><a href="/thoughtbot/factory_girl" class="selected" highlight="repo_source">Files</a></li>
    <li><a href="/thoughtbot/factory_girl/commits/master" highlight="repo_commits">Commits</a></li>
    <li><a href="/thoughtbot/factory_girl/branches" class="" highlight="repo_branches">Branches <span class="counter">5</span></a></li>
    <li><a href="/thoughtbot/factory_girl/tags" class="" highlight="repo_tags">Tags <span class="counter">35</span></a></li>
    <li><a href="/thoughtbot/factory_girl/downloads" class="blank" highlight="repo_downloads">Downloads <span class="counter">0</span></a></li>
  </ul>

</div>

  
  
  


        

      </div><!-- /.pagehead -->

      




  
  <p class="last-commit">Latest commit to the <strong>master</strong> branch</p>

<div class="commit commit-tease js-details-container">
  <p class="commit-title ">
      <a href="/thoughtbot/factory_girl/commit/6bf74f034a56bf495d75fd667db618d6ec662e25" class="message">Merge pull request </a><a href="https://github.com/thoughtbot/factory_girl/issues/233" title="Use correct module in docs." class="issue-link">#233</a><a href="/thoughtbot/factory_girl/commit/6bf74f034a56bf495d75fd667db618d6ec662e25" class="message"> from thoughtbot/correct-module</a>
      <a href="javascript:;" class="minibutton expander-minibutton js-details-target"><span>…</span></a>
  </p>
    <div class="commit-desc"><pre>Use correct module in docs.</pre></div>
  <div class="commit-meta">
    <a href="/thoughtbot/factory_girl/commit/6bf74f034a56bf495d75fd667db618d6ec662e25" class="sha-block">commit <span class="sha">6bf74f034a</span></a>

    <div class="authorship">
      <img class="gravatar" height="20" src="https://secure.gravatar.com/avatar/7fd56fa98da45bc532e898132085bd05?s=140&amp;d=https://a248.e.akamai.net/assets.github.com%2Fimages%2Fgravatars%2Fgravatar-140.png" width="20" />
      <span class="author-name"><a href="/jferris">jferris</a></span>
      authored <time class="js-relative-date" datetime="2011-11-11T12:03:29-08:00" title="2011-11-11 12:03:29">November 11, 2011</time>

    </div>
  </div>
</div>


  <div id="slider">

    <div class="breadcrumb" data-path="GETTING_STARTED.md/">
      <b><a href="/thoughtbot/factory_girl/tree/6bf74f034a56bf495d75fd667db618d6ec662e25" class="js-rewrite-sha">factory_girl</a></b> / GETTING_STARTED.md       <span style="display:none" id="clippy_3650" class="clippy-text">GETTING_STARTED.md</span>
      
      <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000"
              width="110"
              height="14"
              class="clippy"
              id="clippy" >
      <param name="movie" value="https://a248.e.akamai.net/assets.github.com/flash/clippy.swf?v5"/>
      <param name="allowScriptAccess" value="always" />
      <param name="quality" value="high" />
      <param name="scale" value="noscale" />
      <param NAME="FlashVars" value="id=clippy_3650&amp;copied=copied!&amp;copyto=copy to clipboard">
      <param name="bgcolor" value="#FFFFFF">
      <param name="wmode" value="opaque">
      <embed src="https://a248.e.akamai.net/assets.github.com/flash/clippy.swf?v5"
             width="110"
             height="14"
             name="clippy"
             quality="high"
             allowScriptAccess="always"
             type="application/x-shockwave-flash"
             pluginspage="http://www.macromedia.com/go/getflashplayer"
             FlashVars="id=clippy_3650&amp;copied=copied!&amp;copyto=copy to clipboard"
             bgcolor="#FFFFFF"
             wmode="opaque"
      />
      </object>
      

    </div>

    <div class="frames">
      <div class="frame frame-center" data-path="GETTING_STARTED.md/" data-permalink-url="/thoughtbot/factory_girl/blob/6bf74f034a56bf495d75fd667db618d6ec662e25/GETTING_STARTED.md" data-title="GETTING_STARTED.md at master from thoughtbot/factory_girl - GitHub" data-type="blob">
          <ul class="big-actions">
            <li><a class="file-edit-link minibutton js-rewrite-sha" href="/thoughtbot/factory_girl/edit/6bf74f034a56bf495d75fd667db618d6ec662e25/GETTING_STARTED.md" data-method="post"><span>Edit this file</span></a></li>
          </ul>

        <div id="files">
          <div class="file">
            <div class="meta">
              <div class="info">
                <span class="icon"><img alt="Txt" height="16" src="https://a248.e.akamai.net/assets.github.com/images/icons/txt.png" width="16" /></span>
                <span class="mode" title="File Mode">100644</span>
                  <span>528 lines (384 sloc)</span>
                <span>15.403 kb</span>
              </div>
              <ul class="actions">
                <li><a href="/thoughtbot/factory_girl/raw/master/GETTING_STARTED.md" id="raw-url">raw</a></li>
                  <li><a href="/thoughtbot/factory_girl/blame/master/GETTING_STARTED.md">blame</a></li>
                <li><a href="/thoughtbot/factory_girl/commits/master/GETTING_STARTED.md">history</a></li>
              </ul>
            </div>
            
  <div id="readme" class="blob instapaper_body">
    <div class="wikistyle"><h1>Getting Started</h1>

<h2>Update Your Gemfile</h2>

<p>If you're using Rails, you'll need to change the required version of <code>factory_girl_rails</code>:</p>

<pre><code>gem "factory_girl_rails", "~&gt; 1.2"
</code></pre>

<p>If you're <em>not</em> using Rails, you'll just have to change the required version of <code>factory_girl</code>:</p>

<pre><code>gem "factory_girl", "~&gt; 2.1.0"
</code></pre>

<p>Once your Gemfile is updated, you'll want to update your bundle.</p>

<h2>Defining factories</h2>

<p>Each factory has a name and a set of attributes. The name is used to guess the class of the object by default, but it's possible to explicitly specify it:</p>

<pre><code># This will guess the User class
FactoryGirl.define do
  factory :user do
    first_name 'John'
    last_name  'Doe'
    admin false
  end

  # This will use the User class (Admin would have been guessed)
  factory :admin, :class =&gt; User do
    first_name 'Admin'
    last_name  'User'
    admin true
  end

  # The same, but using a string instead of class constant
  factory :admin, :class =&gt; 'user' do
    first_name 'Admin'
    last_name  'User'
    admin true
  end
end
</code></pre>

<p>It is highly recommended that you have one factory for each class that provides the simplest set of attributes necessary to create an instance of that class. If you're creating ActiveRecord objects, that means that you should only provide attributes that are required through validations and that do not have defaults. Other factories can be created through inheritance to cover common scenarios for each class.</p>

<p>Attempting to define multiple factories with the same name will raise an error.</p>

<p>Factories can be defined anywhere, but will be automatically loaded if they
are defined in files at the following locations:</p>

<pre><code>test/factories.rb
spec/factories.rb
test/factories/*.rb
spec/factories/*.rb
</code></pre>

<h2>Using factories</h2>

<p>factory_girl supports several different build strategies: build, create, attributes_for and stub:</p>

<pre><code># Returns a User instance that's not saved
user = FactoryGirl.build(:user)

# Returns a saved User instance
user = FactoryGirl.create(:user)

# Returns a hash of attributes that can be used to build a User instance
attrs = FactoryGirl.attributes_for(:user)

# Returns an object with all defined attributes stubbed out
stub = FactoryGirl.build_stubbed(:user)

# Passing a block to any of the methods above will yield the return object
FactoryGirl.create(:user) do |user|
  user.posts.create(attributes_for(:post))
end
</code></pre>

<p>No matter which strategy is used, it's possible to override the defined attributes by passing a hash:</p>

<pre><code># Build a User instance and override the first_name property
user = FactoryGirl.build(:user, :first_name =&gt; 'Joe')
user.first_name
# =&gt; "Joe"
</code></pre>

<p>If repeating "FactoryGirl" is too verbose for you, you can mix the syntax methods in:</p>

<pre><code># rspec
RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
end

# Test::Unit
class Test::Unit::TestCase
  include Factory::Syntax::Methods
end
</code></pre>

<p>This would allow you to write:</p>

<pre><code>describe User, "#full_name" do
  subject { create(:user, :first_name =&gt; "John", :last_name =&gt; "Doe") }

  its(:full_name) { should == "John Doe" }
end
</code></pre>

<h2>Lazy Attributes</h2>

<p>Most factory attributes can be added using static values that are evaluated when
the factory is defined, but some attributes (such as associations and other
attributes that must be dynamically generated) will need values assigned each
time an instance is generated. These "lazy" attributes can be added by passing a
block instead of a parameter:</p>

<pre><code>factory :user do
  # ...
  activation_code { User.generate_activation_code }
  date_of_birth   { 21.years.ago }
end
</code></pre>

<h2>Aliases</h2>

<p>Aliases allow you to use named associations more easily.</p>

<pre><code>factory :user, :aliases =&gt; [:author, :commenter] do
  first_name    "John"
  last_name     "Doe"
  date_of_birth { 18.years.ago }
end

factory :post do
  author
  # instead of
  # association :author, :factory =&gt; :user
  title "How to read a book effectively"
  body  "There are five steps involved."
end

factory :comment do
  commenter
  # instead of
  # association :commenter, :factory =&gt; :user
  body "Great article!"
end
</code></pre>

<h2>Dependent Attributes</h2>

<p>Attributes can be based on the values of other attributes using the proxy that is yielded to lazy attribute blocks:</p>

<pre><code>factory :user do
  first_name 'Joe'
  last_name  'Blow'
  email { "#{first_name}.#{last_name}@example.com".downcase }
end

FactoryGirl.create(:user, :last_name =&gt; 'Doe').email
# =&gt; "joe.doe@example.com"
</code></pre>

<h2>Transient Attributes</h2>

<p>There may be times where your code can be DRYed up by passing in transient attributes to factories.</p>

<pre><code>factory :user do
  ignore do
    rockstar true
    upcased { false }
  end

  name  { "John Doe#{" - Rockstar" if rockstar}" }
  email { "#{name.downcase}@example.com" }

  after_create do |user, proxy|
    user.name.upcase! if proxy.upcased
  end
end

FactoryGirl.create(:user, :upcased =&gt; true).name
#=&gt; "JOHN DOE - ROCKSTAR"
</code></pre>

<p>Static and dynamic attributes can be ignored. Ignored attributes will be ignored
within attributes_for and won't be set on the model, even if the attribute
exists or you attempt to override it.</p>

<p>Within Factory Girl's dynamic attributes, you can access ignored attributes as
you would expect. If you need to access the proxy in a Factory Girl callback,
you'll need to declare a second block argument (for the proxy) and access
ignored attributes from there.</p>

<h2>Associations</h2>

<p>It's possible to set up associations within factories. If the factory name is the same as the association name, the factory name can be left out.</p>

<pre><code>factory :post do
  # ...
  author
end
</code></pre>

<p>You can also specify a different factory or override attributes:</p>

<pre><code>factory :post do
  # ...
  association :author, :factory =&gt; :user, :last_name =&gt; 'Writely'
end
</code></pre>

<p>The behavior of the association method varies depending on the build strategy used for the parent object.</p>

<pre><code># Builds and saves a User and a Post
post = FactoryGirl.create(:post)
post.new_record?        # =&gt; false
post.author.new_record? # =&gt; false

# Builds and saves a User, and then builds but does not save a Post
post = FactoryGirl.build(:post)
post.new_record?        # =&gt; true
post.author.new_record? # =&gt; false
</code></pre>

<p>To not save the associated object, specify :method =&gt; :build in the factory:</p>

<pre><code>factory :post do
  # ...
  association :author, :factory =&gt; :user, :method =&gt; :build
end

# Builds a User, and then builds a Post, but does not save either
post = FactoryGirl.build(:post)
post.new_record?        # =&gt; true
post.author.new_record? # =&gt; true
</code></pre>

<h2>Inheritance</h2>

<p>You can easily create multiple factories for the same class without repeating common attributes by nesting factories:</p>

<pre><code>factory :post do
  title 'A title'

  factory :approved_post do
    approved true
  end
end

approved_post = FactoryGirl.create(:approved_post)
approved_post.title # =&gt; 'A title'
approved_post.approved # =&gt; true
</code></pre>

<p>You can also assign the parent explicitly:</p>

<pre><code>factory :post do
  title 'A title'
end

factory :approved_post, :parent =&gt; :post do
  approved true
end
</code></pre>

<p>As mentioned above, it's good practice to define a basic factory for each class
with only the attributes required to create it. Then, create more specific
factories that inherit from this basic parent. Factory definitions are still
code, so keep them DRY.</p>

<h2>Sequences</h2>

<p>Unique values in a specific format (for example, e-mail addresses) can be
generated using sequences. Sequences are defined by calling sequence in a
definition block, and values in a sequence are generated by calling
FactoryGirl.generate:</p>

<pre><code># Defines a new sequence
FactoryGirl.define do
  sequence :email do |n|
    "person#{n}@example.com"
  end
end

FactoryGirl.generate :email
# =&gt; "person1@example.com"

FactoryGirl.generate :email
# =&gt; "person2@example.com"
</code></pre>

<p>Sequences can be used as attributes:</p>

<pre><code>factory :user do
  email
end
</code></pre>

<p>Or in lazy attributes:</p>

<pre><code>factory :invite do
  invitee { FactoryGirl.generate(:email) }
end
</code></pre>

<p>And it's also possible to define an in-line sequence that is only used in
a particular factory:</p>

<pre><code>factory :user do
  sequence(:email) {|n| "person#{n}@example.com" }
end
</code></pre>

<p>You can also override the initial value:</p>

<pre><code>factory :user do
  sequence(:email, 1000) {|n| "person#{n}@example.com" }
end
</code></pre>

<p>Without a block, the value will increment itself, starting at its initial value:</p>

<pre><code>factory :post do
  sequence(:position)
end
</code></pre>

<h2>Traits</h2>

<p>Traits allow you to group attributes together and then apply them
to any factory.</p>

<pre><code>factory :user, :aliases =&gt; [:author]

factory :story do
  title "My awesome story"
  author

  trait :published do
    published true
  end

  trait :unpublished do
    published false
  end

  trait :week_long_publishing do
    start_at { 1.week.ago }
    end_at   { Time.now }
  end

  trait :month_long_publishing do
    start_at { 1.month.ago }
    end_at   { Time.now }
  end

  factory :week_long_published_story,    :traits =&gt; [:published, :week_long_publishing]
  factory :month_long_published_story,   :traits =&gt; [:published, :month_long_publishing]
  factory :week_long_unpublished_story,  :traits =&gt; [:unpublished, :week_long_publishing]
  factory :month_long_unpublished_story, :traits =&gt; [:unpublished, :month_long_publishing]
end
</code></pre>

<p>Traits can be used as attributes:</p>

<pre><code>factory :week_long_published_story_with_title, :parent =&gt; :story do
  published
  week_long_publishing
  title { "Publishing that was started at {start_at}" }
end
</code></pre>

<p>Traits that define the same attributes won't raise AttributeDefinitionErrors;
the trait that defines the attribute latest gets precedence.</p>

<pre><code>factory :user do
  name "Friendly User"
  login { name }

  trait :male do
    name   "John Doe"
    gender "Male"
    login { "#{name} (M)" }
  end

  trait :female do
    name   "Jane Doe"
    gender "Female"
    login { "#{name} (F)" }
  end

  trait :admin do
    admin true
    login { "admin-#{name}" }
  end

  factory :male_admin,   :traits =&gt; [:male, :admin]   # login will be "admin-John Doe"
  factory :female_admin, :traits =&gt; [:admin, :female] # login will be "Jane Doe (F)"
end
</code></pre>

<p>You can also override individual attributes granted by a trait in subclasses.</p>

<pre><code>factory :user do
  name "Friendly User"
  login { name }

  trait :male do
    name   "John Doe"
    gender "Male"
    login { "#{name} (M)" }
  end

  factory :brandon do
    male
    name "Brandon"
  end
end
</code></pre>

<h2>Callbacks</h2>

<p>factory_girl makes available three callbacks for injecting some code:</p>

<ul>
<li>after_build  - called after a factory is built   (via FactoryGirl.build)</li>
<li>after_create - called after a factory is saved   (via FactoryGirl.create)</li>
<li>after_stub   - called after a factory is stubbed (via FactoryGirl.stub)</li>
</ul><p>Examples:</p>

<pre><code># Define a factory that calls the generate_hashed_password method after it is built
factory :user do
  after_build { |user| generate_hashed_password(user) }
end
</code></pre>

<p>Note that you'll have an instance of the user in the block. This can be useful.</p>

<p>You can also define multiple types of callbacks on the same factory:</p>

<pre><code>factory :user do
  after_build  { |user| do_something_to(user) }
  after_create { |user| do_something_else_to(user) }
end
</code></pre>

<p>Factories can also define any number of the same kind of callback.  These callbacks will be executed in the order they are specified:</p>

<pre><code>factory :user do
  after_create { this_runs_first }
  after_create { then_this }
end
</code></pre>

<p>Calling FactoryGirl.create will invoke both after_build and after_create callbacks.</p>

<p>Also, like standard attributes, child factories will inherit (and can also define) callbacks from their parent factory.</p>

<h2>Modifying factories</h2>

<p>If you're given a set of factories (say, from a gem developer) but want to change them to fit into your application better, you can
modify that factory instead of creating a child factory and adding attributes there.</p>

<p>If a gem were to give you a User factory:</p>

<pre><code>FactoryGirl.define do
  factory :user do
    full_name "John Doe"
    sequence(:username) {|n| "user#{n}" }
    password "password"
  end
end
</code></pre>

<p>Instead of creating a child factory that added additional attributes:</p>

<pre><code>FactoryGirl.define do
  factory :application_user, :parent =&gt; :user do
    full_name     { Faker::Name.name }
    date_of_birth { 21.years.ago }
    gender        "Female"
    health        90
  end
end
</code></pre>

<p>You could modify that factory instead.</p>

<pre><code>FactoryGirl.modify do
  factory :user do
    full_name     { Faker::Name.name }
    date_of_birth { 21.years.ago }
    gender        "Female"
    health        90
  end
end
</code></pre>

<p>When modifying a factory, you can change any of the attributes you want (aside from callbacks).</p>

<p><code>FactoryGirl.modify</code> must be called outside of a <code>FactoryGirl.define</code> block as it operates on factories differently.</p>

<p>A caveat: you can only modify factories (not sequences or traits) and callbacks <em>still compound as they normally would</em>. So, if
the factory you're modifying defines an <code>after_create</code> callback, you defining an <code>after_create</code> won't override it, it'll just get run after the first callback.</p>

<h2>Building or Creating Multiple Records</h2>

<p>Sometimes, you'll want to create or build multiple instances of a factory at once.</p>

<pre><code>built_users   = FactoryGirl.build_list(:user, 25)
created_users = FactoryGirl.create_list(:user, 25)
</code></pre>

<p>These methods will build or create a specific amount of factories and return them as an array.
To set the attributes for each of the factories, you can pass in a hash as you normally would.</p>

<pre><code>twenty_year_olds = FactoryGirl.build_list(:user, 25, :date_of_birth =&gt; 20.years.ago)
</code></pre>

<h2>Cucumber Integration</h2>

<p>factory_girl ships with step definitions that make calling factories from Cucumber easier. To use them, add the following to features/support/env.rb:</p>

<pre><code>require 'factory_girl/step_definitions'
</code></pre>

<h2>Alternate Syntaxes</h2>

<p>Users' tastes for syntax vary dramatically, but most users are looking for a
common feature set. Because of this factory_girl supports "syntax layers" which
provide alternate interfaces. See Factory::Syntax for information about the
various layers available. For example, the Machinist-style syntax is popular:</p>

<pre><code>require 'factory_girl/syntax/blueprint'
require 'factory_girl/syntax/make'
require 'factory_girl/syntax/sham'

Sham.email {|n| "#{n}@example.com" }

User.blueprint do
  name  { 'Billy Bob' }
  email { Sham.email  }
end

User.make(:name =&gt; 'Johnny')
</code></pre></div>
  </div>

          </div>
        </div>
      </div>
    </div>

  </div>

<div class="frame frame-loading" style="display:none;" data-tree-list-url="/thoughtbot/factory_girl/tree-list/6bf74f034a56bf495d75fd667db618d6ec662e25" data-blob-url-prefix="/thoughtbot/factory_girl/blob/6bf74f034a56bf495d75fd667db618d6ec662e25">
  <img src="https://a248.e.akamai.net/assets.github.com/images/modules/ajax/big_spinner_336699.gif" height="32" width="32">
</div>

    </div>

    </div>

    <!-- footer -->
    <div id="footer" >
      
  <div class="upper_footer">
     <div class="site" class="clearfix">

       <!--[if IE]><h4 id="blacktocat_ie">GitHub Links</h4><![endif]-->
       <![if !IE]><h4 id="blacktocat">GitHub Links</h4><![endif]>

       <ul class="footer_nav">
         <h4>GitHub</h4>
         <li><a href="https://github.com/about">About</a></li>
         <li><a href="https://github.com/blog">Blog</a></li>
         <li><a href="https://github.com/features">Features</a></li>
         <li><a href="https://github.com/contact">Contact &amp; Support</a></li>
         <li><a href="https://github.com/training">Training</a></li>
         <li><a href="http://status.github.com/">Site Status</a></li>
       </ul>

       <ul class="footer_nav">
         <h4>Tools</h4>
         <li><a href="http://mac.github.com/">GitHub for Mac</a></li>
         <li><a href="http://mobile.github.com/">Issues for iPhone</a></li>
         <li><a href="https://gist.github.com">Gist: Code Snippets</a></li>
         <li><a href="http://enterprise.github.com/">GitHub Enterprise</a></li>
         <li><a href="http://jobs.github.com/">Job Board</a></li>
       </ul>

       <ul class="footer_nav">
         <h4>Extras</h4>
         <li><a href="http://shop.github.com/">GitHub Shop</a></li>
         <li><a href="http://octodex.github.com/">The Octodex</a></li>
       </ul>

       <ul class="footer_nav">
         <h4>Documentation</h4>
         <li><a href="http://help.github.com/">GitHub Help</a></li>
         <li><a href="http://developer.github.com/">Developer API</a></li>
         <li><a href="http://github.github.com/github-flavored-markdown/">GitHub Flavored Markdown</a></li>
         <li><a href="http://pages.github.com/">GitHub Pages</a></li>
       </ul>

     </div><!-- /.site -->
  </div><!-- /.upper_footer -->

<div class="lower_footer">
  <div class="site" class="clearfix">
    <!--[if IE]><div id="legal_ie"><![endif]-->
    <![if !IE]><div id="legal"><![endif]>
      <ul>
          <li><a href="https://github.com/site/terms">Terms of Service</a></li>
          <li><a href="https://github.com/site/privacy">Privacy</a></li>
          <li><a href="https://github.com/security">Security</a></li>
      </ul>

      <p>&copy; 2011 <span id="_rrt" title="0.07165s from fe4.rs.github.com">GitHub</span> Inc. All rights reserved.</p>
    </div><!-- /#legal or /#legal_ie-->

      <div class="sponsor">
        <a href="http://www.rackspace.com" class="logo">
          <img alt="Dedicated Server" height="36" src="https://a248.e.akamai.net/assets.github.com/images/modules/footer/rackspace_logo.png?v2" width="38" />
        </a>
        Powered by the <a href="http://www.rackspace.com ">Dedicated
        Servers</a> and<br/> <a href="http://www.rackspacecloud.com">Cloud
        Computing</a> of Rackspace Hosting<span>&reg;</span>
      </div>
  </div><!-- /.site -->
</div><!-- /.lower_footer -->

    </div><!-- /#footer -->

    

<div id="keyboard_shortcuts_pane" class="instapaper_ignore readability-extra" style="display:none">
  <h2>Keyboard Shortcuts <small><a href="#" class="js-see-all-keyboard-shortcuts">(see all)</a></small></h2>

  <div class="columns threecols">
    <div class="column first">
      <h3>Site wide shortcuts</h3>
      <dl class="keyboard-mappings">
        <dt>s</dt>
        <dd>Focus site search</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>?</dt>
        <dd>Bring up this help dialog</dd>
      </dl>
    </div><!-- /.column.first -->

    <div class="column middle" style=&#39;display:none&#39;>
      <h3>Commit list</h3>
      <dl class="keyboard-mappings">
        <dt>j</dt>
        <dd>Move selection down</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>k</dt>
        <dd>Move selection up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>c <em>or</em> o <em>or</em> enter</dt>
        <dd>Open commit</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>y</dt>
        <dd>Expand URL to its canonical form</dd>
      </dl>
    </div><!-- /.column.first -->

    <div class="column last" style=&#39;display:none&#39;>
      <h3>Pull request list</h3>
      <dl class="keyboard-mappings">
        <dt>j</dt>
        <dd>Move selection down</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>k</dt>
        <dd>Move selection up</dd>
      </dl>
      <dl class="keyboard-mappings">
        <dt>o <em>or</em> enter</dt>
        <dd>Open issue</dd>
      </dl>
    </div><!-- /.columns.last -->

  </div><!-- /.columns.equacols -->

  <div style=&#39;display:none&#39;>
    <div class="rule"></div>

    <h3>Issues</h3>

    <div class="columns threecols">
      <div class="column first">
        <dl class="keyboard-mappings">
          <dt>j</dt>
          <dd>Move selection down</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>k</dt>
          <dd>Move selection up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>x</dt>
          <dd>Toggle selection</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>o <em>or</em> enter</dt>
          <dd>Open issue</dd>
        </dl>
      </div><!-- /.column.first -->
      <div class="column middle">
        <dl class="keyboard-mappings">
          <dt>I</dt>
          <dd>Mark selection as read</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>U</dt>
          <dd>Mark selection as unread</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>e</dt>
          <dd>Close selection</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>y</dt>
          <dd>Remove selection from view</dd>
        </dl>
      </div><!-- /.column.middle -->
      <div class="column last">
        <dl class="keyboard-mappings">
          <dt>c</dt>
          <dd>Create issue</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>l</dt>
          <dd>Create label</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>i</dt>
          <dd>Back to inbox</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>u</dt>
          <dd>Back to issues</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>/</dt>
          <dd>Focus issues search</dd>
        </dl>
      </div>
    </div>
  </div>

  <div style=&#39;display:none&#39;>
    <div class="rule"></div>

    <h3>Issues Dashboard</h3>

    <div class="columns threecols">
      <div class="column first">
        <dl class="keyboard-mappings">
          <dt>j</dt>
          <dd>Move selection down</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>k</dt>
          <dd>Move selection up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>o <em>or</em> enter</dt>
          <dd>Open issue</dd>
        </dl>
      </div><!-- /.column.first -->
    </div>
  </div>

  <div style=&#39;display:none&#39;>
    <div class="rule"></div>

    <h3>Network Graph</h3>
    <div class="columns equacols">
      <div class="column first">
        <dl class="keyboard-mappings">
          <dt><span class="badmono">←</span> <em>or</em> h</dt>
          <dd>Scroll left</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="badmono">→</span> <em>or</em> l</dt>
          <dd>Scroll right</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="badmono">↑</span> <em>or</em> k</dt>
          <dd>Scroll up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt><span class="badmono">↓</span> <em>or</em> j</dt>
          <dd>Scroll down</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>t</dt>
          <dd>Toggle visibility of head labels</dd>
        </dl>
      </div><!-- /.column.first -->
      <div class="column last">
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">←</span> <em>or</em> shift h</dt>
          <dd>Scroll all the way left</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">→</span> <em>or</em> shift l</dt>
          <dd>Scroll all the way right</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">↑</span> <em>or</em> shift k</dt>
          <dd>Scroll all the way up</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>shift <span class="badmono">↓</span> <em>or</em> shift j</dt>
          <dd>Scroll all the way down</dd>
        </dl>
      </div><!-- /.column.last -->
    </div>
  </div>

  <div >
    <div class="rule"></div>
    <div class="columns threecols">
      <div class="column first" >
        <h3>Source Code Browsing</h3>
        <dl class="keyboard-mappings">
          <dt>t</dt>
          <dd>Activates the file finder</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>l</dt>
          <dd>Jump to line</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>w</dt>
          <dd>Switch branch/tag</dd>
        </dl>
        <dl class="keyboard-mappings">
          <dt>y</dt>
          <dd>Expand URL to its canonical form</dd>
        </dl>
      </div>
    </div>
  </div>
</div>

    <div id="markdown-help" class="instapaper_ignore readability-extra">
  <h2>Markdown Cheat Sheet</h2>

  <div class="cheatsheet-content">

  <div class="mod">
    <div class="col">
      <h3>Format Text</h3>
      <p>Headers</p>
      <pre>
# This is an &lt;h1&gt; tag
## This is an &lt;h2&gt; tag
###### This is an &lt;h6&gt; tag</pre>
     <p>Text styles</p>
     <pre>
*This text will be italic*
_This will also be italic_
**This text will be bold**
__This will also be bold__

*You **can** combine them*
</pre>
    </div>
    <div class="col">
      <h3>Lists</h3>
      <p>Unordered</p>
      <pre>
* Item 1
* Item 2
  * Item 2a
  * Item 2b</pre>
     <p>Ordered</p>
     <pre>
1. Item 1
2. Item 2
3. Item 3
   * Item 3a
   * Item 3b</pre>
    </div>
    <div class="col">
      <h3>Miscellaneous</h3>
      <p>Images</p>
      <pre>
![GitHub Logo](/images/logo.png)
Format: ![Alt Text](url)
</pre>
     <p>Links</p>
     <pre>
http://github.com - automatic!
[GitHub](http://github.com)</pre>
<p>Blockquotes</p>
     <pre>
As Kanye West said:
> We're living the future so
> the present is our past.
</pre>
    </div>
  </div>
  <div class="rule"></div>

  <h3>Code Examples in Markdown</h3>
  <div class="col">
      <p>Syntax highlighting with <a href="http://github.github.com/github-flavored-markdown/" title="GitHub Flavored Markdown" target="_blank">GFM</a></p>
      <pre>
```javascript
function fancyAlert(arg) {
  if(arg) {
    $.facebox({div:'#foo'})
  }
}
```</pre>
    </div>
    <div class="col">
      <p>Or, indent your code 4 spaces</p>
      <pre>
Here is a Python code example
without syntax highlighting:

    def foo:
      if not bar:
        return true</pre>
    </div>
    <div class="col">
      <p>Inline code for comments</p>
      <pre>
I think you should use an
`&lt;addr&gt;` element here instead.</pre>
    </div>
  </div>

  </div>
</div>

    <div class="context-overlay"></div>

    <div class="ajax-error-message">
      <p><span class="icon"></span> Something went wrong with that request. Please try again. <a href="javascript:;" class="ajax-error-dismiss">Dismiss</a></p>
    </div>

    
    
    
  </body>
</html>

