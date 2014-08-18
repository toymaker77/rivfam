<?php
/**
 * phpVMS - Virtual Airline Administration Software
 * Copyright (c) 2008 Nabeel Shahzad
 * For more information, visit www.phpvms.net
 *	Forums: http://www.phpvms.net/forum
 *	Documentation: http://www.phpvms.net/docs
 *
 * phpVMS is licenced under the following license:
 *   Creative Commons Attribution Non-commercial Share Alike (by-nc-sa)
 *   View license.txt in the root, or visit http://creativecommons.org/licenses/by-nc-sa/3.0/
 *
 * @author Nabeel Shahzad
 * @copyright Copyright (c) 2008, Nabeel Shahzad
 * @link http://www.phpvms.net
 */
 
class Login extends CodonModule
{
	public function __construct()
	{
		parent::__construct();
	}
	
	public function index()
	{
		$this->login();
	}
	
	public function login($redir='')
	{
		if(Auth::LoggedIn() == true)
		{
			$this->render('login_already.tpl');
			return;
		}
		
		$this->set('redir', $redir);
	
		if(isset($this->post->action) && $this->post->action == 'login')
		{
			$this->ProcessLogin();
		}
		else
		{
			$this->render('login_form.tpl');
		}
	}
	
	public function logout()
	{
		Auth::LogOut();
		$this->set('redir', SITE_URL);
		$this->render('login_complete.tpl');
	}
	
	public function forgotpassword()
	{
		if($this->post->action == 'resetpass')
		{
			$this->ResetPassword();
			return;
		}
		
		$this->render('login_forgotpassword.tpl');
	}
	
	public function ResetPassword()
	{
		$email = $this->post->email;
		
		if(!$email)
		{
			return false;
		}
		else
		{
			$pilotdata = PilotData::GetPilotByEmail($email);
			
			if(!$pilotdata)
			{
				$this->render('login_notfound.tpl');
				return;
			}
			
			$newpw = substr(md5(date('mdYhs')), 0, 6);
			
			RegistrationData::ChangePassword($pilotdata->pilotid, $newpw);
						
			$this->set('firstname', $pilotdata->firstname);
			$this->set('lastname', $pilotdata->lastname);
			$this->set('newpw', $newpw);
			
			$message = Template::GetTemplate('email_lostpassword.tpl', true);
			
			Util::SendEmail($pilotdata->email, 'Password Reset', $message);
			
			$this->render('login_passwordreset.tpl');
		}
	}
	
	public function ProcessLogin()
	{
		$email = $this->post->email;
		$password = $this->post->password;
			
		if($email == '' || $password == '')
		{
			$this->set('message', 'You must fill out both your username and password');
			$this->render('login_form.tpl');
			return false;
		}

		if(!Auth::ProcessLogin($email, $password))
		{
			$this->set('message', Auth::$error_message);
			$this->render('login_form.tpl');
			return false;
		}
		else
		{
			if(Auth::$userinfo->confirmed == PILOT_PENDING)
			{
				$this->render('login_unconfirmed.tpl');
				Auth::LogOut();
				
				// show error
			}
			elseif(Auth::$userinfo->confirmed == PILOT_REJECTED)
			{
				$this->render('login_rejected.tpl');
				Auth::LogOut();
			}
			else
			{
				$pilotid = Auth::$userinfo->pilotid;
				$session_id = Auth::$session_id;
				
				# If they choose to be "remembered", then assign a cookie
				if($this->post->remember == 'on')
				{
					$cookie = "{$session_id}|{$pilotid}|{$_SERVER['REMOTE_ADDR']}";
					$res = setrawcookie(VMS_AUTH_COOKIE, $cookie, time() + Config::Get('SESSION_LOGIN_TIME'), '/');
				}
				
				PilotData::UpdateLogin($pilotid);
				
				#$this->set('redir', SITE_URL . '/' . $this->post->redir);
				#$this->render('login_complete.tpl');
				
				CodonEvent::Dispatch('login_success', 'Login');
				
				$this->post->redir = str_replace('index.php/', '', $this->post->redir);
				header('Location: '.url('/'.$this->post->redir));
			}
			
			return;
		}
	}
}