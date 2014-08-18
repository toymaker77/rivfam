<?php
/*	Test registration functionality
 */

//$test->addTestCase(new RegistrationTester);

class RegistrationTester extends UnitTestCase  
{
	
	public $pilotid;
	public $pilot_data;
	
	function __construct() 
	{
		parent::__construct();
		//$this->UnitTestCase('Registration Testing');
	}
	
	function testRegisterUser()
	{
		$firstname = 'Nabeel';
		$lastname = 'Shahzad';
		$email = 'unittest@email.com';
		$code = 'VMS';
		$location = 'US';
		$hub = 'KJFK';
		$password = 'TEST';
		
		$data = RegistrationData::AddUser($firstname, $lastname, $email, $code, $location, $hub, $password);
		$this->pilotid = DB::$insert_id;
		
		# See if it was written
		$this->pilot_data = PilotData::GetPilotData($this->pilotid);
		$this->assertTrue($this->pilot_data);
		
		echo '<br />';
		unset($data);
	}
	
	function testEditUserData()
	{
		# Check a save profile
		$save = PilotData::SaveProfile($this->pilotid, 'unittest2@email.com', 'PK', '', '', true);
		$this->assertEqual(0, DB::errno());
		#unset($save);
		
		# Verify if data was written, and if it differs
		$changeset1 = PilotData::GetPilotData($this->pilotid);
		$this->assertNotEqual($changeset1, $this->pilot_data);
		$this->assertNotEqual($changeset1->retired, $this->pilot_data->retired);
		
		unset($data);
		
		# Change it back
		$save = PilotData::SaveProfile($this->pilotid, 'unittest@email.com', 'US', '', '', false);
		$this->assertTrue($save, DB::error(), 'Reverting user data');
		unset($save);
		
		# And verify once more		
		$changeset2 = PilotData::GetPilotData($this->pilotid);
		$this->assertNotEqual($changeset1, $changeset2);
		$this->assertNotEqual($changeset1->retired, $changeset2->retired);
		
		unset($changeset1);
		unset($changeset2);
		echo '<br />';
	}
	
	function testDeleteUser()
	{		
		$result = PilotData::DeletePilot($this->pilotid);
		$this->assertTrue($result, 'Deleting pilot');
		
		# Verify deletion
		
		$data = PilotData::GetPilotData($this->pilotid);
		$this->assertFalse($data, "Pilot still exists");
		
		# Last test, add a line break
		echo "<br />";
	}
}
