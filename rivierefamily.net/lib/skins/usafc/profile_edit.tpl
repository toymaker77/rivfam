<h3>Edit Profile</h3>
<form action="<?php echo url('/profile');?>" method="post" enctype="multipart/form-data">
<dl>
	
	<dt>Email Address</dt>
	<dd><input type="text" name="email" value="<?php echo $userinfo->email;?>" />
		<?php
			if(isset($email_error) && $email_error == true)
				echo '<p class="error">Please enter your email address</p>';
		?>
	</dd>
	
	
	
	<?php
	if($customfields)
	{
		foreach($customfields as $field)
		{
			echo '<dt>'.$field->title.'</dt>
				  <dd>';
			
			if($field->type == 'dropdown')
			{
				$field_values = SettingsData::GetField($field->fieldid);				
				$values = explode(',', $field_values->value);
				
				
				echo "<select name=\"{$field->fieldname}\">";
			
				if(is_array($values))
				{						
					foreach($values as $val)
					{
						$val = trim($val);
						
						if($val == $field->value)
							$sel = " selected ";
						else
							$sel = '';
						
						echo "<option value=\"{$val}\" {$sel}>{$val}</option>";
					}
				}
				
				echo '</select>';
			}
			elseif($field->type == 'textarea')
			{
				echo '<textarea class="customfield_textarea"></textarea>';
			}
			else
			{
				echo '<input type="text" name="'.$field->fieldname.'" value="'.$field->value.'" />';
			}
			
			echo '</dd>';
		}
	}
	?>
	
	
	<dd><input type="hidden" name="action" value="saveprofile" />
		<input type="submit" name="submit" value="Save Changes" /></dd>
</dl>
</form>