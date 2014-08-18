<div id="mainbox">
<h3>Pilot Center</h3>
<div class="indent">
<p><strong><h3>Welcome back <?php echo $userinfo->firstname; ?>!</h3></strong></p>

<div="row">

</div>


<table>
<tr>
	<td valign="top" align="center">
		<img src="<?php echo PilotData::getPilotAvatar($pilotcode); ?>" />
		<br /><br />
		
	</td>
	<td valign="top">
		<ul style="margin-top: 0px;">
			<li><strong>Your Pilot ID: </strong> <?php echo $pilotcode; ?></li>
			<?php
			if($report)
			{ ?>
			
			<?php
			}
			?>
			
			<li><strong>Total Flights: </strong><?php echo $userinfo->totalflights?></li>
			<li><strong>Total Hours: </strong><?php echo $userinfo->totalhours; ?></li>
			<li><strong>Total Transfer Hours: </strong><?php echo $userinfo->transferhours?></li>
			
		
			
		</ul>

	</td>
</tr>
</table>
	<table>
	<tr>
	<td valign="top" nowrap>
		<p>
			<strong>Profile Options</strong>
			<ul>
				<li><a href="<?php echo url('/profile/editprofile'); ?>">Edit My Profile, Email and Avatar</a></li>
				<li><a href="<?php echo url('/profile/changepassword'); ?>">Change my Password</a></li>
				<li><a href="<?php echo url('/profile/badge'); ?>">View my Badge</a></li>
				<li><a href="<?php echo url('/profile/stats'); ?>">My Stats</a></li>
				<li><a href="<?php echo url('/downloads'); ?>">View Downloads</a></li>
			</ul>
		</p>
		<p>
			<strong>Flight Operations</strong>
			<ul>
				<li><a href="<?php echo url('/pireps/mine');?>">View my PIREPs</a></li>
				<li><a href="<?php echo url('/pireps/routesmap');?>">View a map of all my flights</a></li>
				<li><a href="<?php echo url('/schedules/view');?>">View Flight Schedules</a></li>
				<li><a href="<?php echo url('/schedules/bids');?>">View my flight bids</a></li>		
				
			</ul>	
		</p>
		<p>
			<strong>My Awards</strong><br />
			<?php
			if(!$allawards)
			{
				echo 'No awards yet';
			}
			else
			{	
			
				/* To show the image:
					<img src="<?php echo $award->image?>" alt="<?php echo $award->descrip?>" />
				*/
							
			?>
			<ul>
				<?php foreach($allawards as $award){ ?>
				<li><?php echo $award->name ?></li>
				<?php } ?>
				
				
			</ul>	
			<?php
			}
			?>
		</p>
		
	</td>
	<td valign="top">
		
	</td>
	</tr></table>
</div>
</div>
<br />