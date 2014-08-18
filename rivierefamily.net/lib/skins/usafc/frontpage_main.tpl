<div id="mainbox">


	
	
	
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="alert alert-danger" id="newsfront">
				    <div class="panel-body">
						<?php

							// Show the News module, call the function ShowNewsFront
							//	This is in the modules/Frontpage folder
	
							MainController::Run('News', 'ShowNewsFront', 5);
						?>
					</div>
				</div>
			</div>			
			
			
		</div>
		<div class="row">
			
			<div class="col-lg-3">
				<div class="panel panel-info" id="recentreports">
				    <div class="panel-heading">
                        <h3 class="panel-title">Recent Reports</h3>
                    </div>
                     <div class="panel-body">
                        <?php MainController::Run('PIREPS', 'RecentFrontPage', 5); ?>
					</div>
				</div>
			</div>	
			<div class="col-lg-3">
				<div class="panel panel-info" id="NewestPilots">
                    <div class="panel-heading">
                        <h3 class="panel-title">Newest Pilots</h3>
                    </div>
					<div class="panel-body">
						<?php MainController::Run('Pilots', 'RecentFrontPage', 5); ?>
					</div>
				</div>
			</div>
		</div>
	</div>