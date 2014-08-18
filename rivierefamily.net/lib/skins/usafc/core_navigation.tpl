<!-- Sidebar -->
      <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="<?php echo SITE_URL?>" title="HOME"><img src="<?php echo SITE_URL?>/lib/skins/usafc/images/logos/rfnet.png" style="height: 30px;" alt="" /></a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
          <ul class="nav navbar-nav side-nav">
          <?php
            if(!Auth::LoggedIn())
            {
    // Show these if they haven't logged in yet
            ?>
            	<li class="active"><a href="<?php echo url('/login'); ?>"><i class="fa fa-power-off"></i> Login</a></li>
            	<li><a href="<?php echo url('/registration'); ?>"><i class="fa fa-user"></i> Register</a></li>                
          <?php
            }
            else
            {
	// Show these items only if they are logged in
            ?>          
            <li class="active"><a href="<?php echo url('/profile'); ?>"><i class="fa fa-dashboard"></i> Pilot Center</a></li>
            <li><a href="<?php echo url('/acars') ?>""><i class="fa fa-table"></i> Live Map</a></li>
			<li><a href="<?php echo url('/pilots'); ?>"><i class="fa fa-bar-chart-o"></i> Pilots Roster</a></li>
			<?php
            }
            ?>
            
            
            
          </ul>

          <ul class="nav navbar-nav navbar-right navbar-user">
            <li class="dropdown user-dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i"></i> 
              <img align="center" class="avatar pull-left img-roundedavatar" height="30px" width="30px" src="<?php echo PilotData::getPilotAvatar(Auth::$userinfo->pilotid);?>" />&nbsp<?php echo 'Hello '.PilotData::GetPilotCode(Auth::$userinfo->code, Auth::$userinfo->pilotid); ?> - <?php echo Auth::$userinfo->firstname;?><b class="caret"></b></a>
              
              <ul class="dropdown-menu">
                <li><a href="<?php echo SITE_URL.'/index.php/profile/view/'.Auth::$userinfo->pilotid; ?>"><i class="fa fa-user"></i> View Public Profile</a></li>
                <li><a href="<?php echo url('/profile'); ?>"><i class="fa fa-user"></i> Home Profile</a></li>
                <li><a href="<?php echo url('/profile/editprofile'); ?>"><i class="fa fa-gear"></i> Settings</a></li>
                <li class="divider"></li>                
                <?php echo $MODULE_NAV_INC;?>
                <?php
                if(Auth::LoggedIn())
                {
                	if(PilotGroups::group_has_perm(Auth::$usergroups, ACCESS_ADMIN))
                	{
                		echo '<li><a href="'.fileurl('/admin').'" target="_blank">Admin Center</a></li>';
                	}
                ?>             
                
                <li><a href="<?php echo url('/logout'); ?>"><i class="fa fa-power-off"></i> Log Out</a></li>
                <?php
                }
                ?>
              </ul>
            </li>
          </ul>
        </div><!-- /.navbar-collapse -->
      </nav>