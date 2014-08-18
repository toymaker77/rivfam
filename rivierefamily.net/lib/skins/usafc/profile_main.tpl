<div id="mainbox">
<CENTER><h3>Pilot Center</h3>
<p><strong><h3>Welcome back <?php echo $userinfo->firstname; ?>!</h3></strong></p></CENTER>

		
		
		<div class="row">
			<div class="col-lg-3">
				<div class="panel panel-info" id="yourinfo">
					<div class="panel-heading">
						<h3 class="panel-title">Your Info</h3>
					</div>
					<div class="panel-body">
						<ul style="margin-top: 0px;">
							<li><strong>Your Pilot ID: </strong> <?php echo $pilotcode; ?></li>
							<li><strong>Total Flights: </strong><?php echo $userinfo->totalflights?></li>
							<li><strong>Total Hours: </strong><?php echo $userinfo->totalhours; ?></li>	
							<li><a href="<?php echo url('/profile/changepassword'); ?>">Change my Password</a></li>
						</ul>
						
					</div>
				</div>
			</div>
			<div class="col-lg-9">
				<div class="panel panel-info" id="yourstats">
					<div class="panel-heading">
						<h3 class="panel-title">Your Stats</h3>
					</div>
					<div class="panel-body">
						<?php
/*
	Added in 2.0!
*/
$chart_width = '800';
$chart_height = '250';

/* Don't need to change anything below this here */
?>
<div align="center" style="width: 100%;">
	<div align="center" id="months_data"></div>
</div>
<br />
<div align="center" style="width: 100%;">
	<div align="center" id="aircraft_data"></div>
</div>

<script type="text/javascript" src="<?php echo fileurl('/lib/js/ofc/js/swfobject.js')?>"></script>
<script type="text/javascript">
swfobject.embedSWF("<?php echo fileurl('/lib/js/ofc/open-flash-chart.swf');?>", 
	"months_data", "<?php echo $chart_width;?>", "<?php echo $chart_height;?>", 
	"9.0.0", "expressInstall.swf", 
	{"data-file":"<?php echo actionurl('/pilots/statsmonthsdata/'.Auth::$userinfo->pilotid);?>"});
	
	
<?php
$chart_width = '800';
$chart_height = '300';

/* Don't need to change anything below this here */
?>
swfobject.embedSWF("<?php echo fileurl('/lib/js/ofc/open-flash-chart.swf');?>", 
	"aircraft_data", "<?php echo $chart_width;?>", "<?php echo $chart_height;?>", 
	"9.0.0", "expressInstall.swf", 
	{"data-file":"<?php echo actionurl('/pilots/statsaircraftdata/'.Auth::$userinfo->pilotid);?>"});
</script>
						
						
					</div>
				</div>
			</div>
		</div>
		
						
						
						
				
				
				
				
				
				
				
				
				



			