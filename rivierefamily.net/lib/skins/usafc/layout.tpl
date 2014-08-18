<!DOCTYPE html>
<html lang="en">
  <head>
  <?php Template::Show('forum_style.tpl'); ?>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title><?php echo $page_title ?></title>
    <link rel="shortcut icon" href="<?php echo SITE_URL?>/favicon.ico" />

    <?php            
        Template::Show('core_htmlhead.tpl');
        //echo $page_htmlhead;
        ?>

    <!-- Bootstrap core CSS -->
    <link href="<?php echo SITE_URL?>/lib/css/bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Add custom CSS here -->
    <link href="<?php echo SITE_URL?>/lib/css/bootstrap/css/sb-admin.css" rel="stylesheet">
    <link rel="stylesheet" href="<?php echo SITE_URL?>/lib/css/bootstrap/font-awesome/css/font-awesome.min.css">
    <!-- Page Specific CSS -->
    <link rel="stylesheet" href="http://cdn.oesmith.co.uk/morris-0.4.3.min.css">
  </head>

  <body>

    <div id="wrapper">

      <?php
			/*	You can modify this template into a table or something, by default
				it's list elements inside of a UL. Here's a link with some info:
				
				http://articles.sitepoint.com/article/css-anthology-tips-tricks-4/2
			 */
			Template::Show('core_navigation.tpl');
			?>

      <div id="page-wrapper">

        <?php if(Auth::LoggedIn() == false){ ?>
        
        <div class="container">
        <?php
        /** This puts the content of the current module in the template */
        echo $page_content;
        ?>
        </div><!-- /.container -->      
        
        <?php }else{$pilotid = PilotData::GetPilotCode(Auth::$userinfo->code, Auth::$userinfo->pilotid); ?>

    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span2">                              
          <?php include ("pilotnav.php"); ?>          
        </div><!--/.span2 -->
        <?php include ("pilotnav2.php"); ?>
        </div>
        <!--/span-->                
        <div class="span10">
          <div class="container">
        <?php
        /** This puts the content of the current module in the template */
        echo $page_content;
        ?>
        </div><!-- /.container -->
        <?php } ?>

      </div><!-- /#page-wrapper -->

    </div><!-- /#wrapper -->

    <!-- JavaScript -->
    <script src="<?php echo SITE_URL?>/lib/css/bootstrap/js/jquery-1.10.2.js"></script>
    <script src="<?php echo SITE_URL?>/lib/css/bootstrap/js/bootstrap.js"></script>

    <!-- Page Specific Plugins -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
    <script src="http://cdn.oesmith.co.uk/morris-0.4.3.min.js"></script>
    <script src="<?php echo SITE_URL?>/lib/css/bootstrap/js/morris/chart-data-morris.js"></script>
    <script src="<?php echo SITE_URL?>/lib/css/bootstrap/js/tablesorter/jquery.tablesorter.js"></script>
    <script src="<?php echo SITE_URL?>/lib/css/bootstrap/js/tablesorter/tables.js"></script>

  </body>
</html>
