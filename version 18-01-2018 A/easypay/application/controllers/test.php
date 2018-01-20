							$method=lang('users withdrawal airtel');
							$com=$this->commission->display->airtel_fee;

								$percent = $com/"100";
								$fee = $amount*$percent;
								$sum = $fee+$amount;

								$total = $user[$currency]-$sum;
										
							// Check wallet
							if ($user[$currency]<$sum) {

								$this->session->set_flashdata('error', lang('users error wallet'));
								redirect(site_url("account/mobile_withdrawal"));

							}

							elseif ($user[$currency]>=$sum) {

										// update wallet
										$this->users_model->update_wallet_transfer($user['username'],
											array(
												$currency => $total,
											)
										);

										$transactions = $this->transactions_model->add_transaction(array(
											"type" 				=> "2",
											"sum"  				=> $sum,
											"fee"    			=> $fee,
											"amount" 			=> $amount,
											"currency"			=> "UGX",
											"status" 			=> "1",
											"sender" 			=> $user['username'],
											"receiver" 			=> "system",
											"time"          	=> date('Y-m-d H:i:s'),
											"user_comment"  	=> $method.' '.$receiver_contact.'',
											"admin_comment" 	=> "none"
											)
										);

										$withdrawals = $this->withdraws_model->add_withdraws(array(
											"mobile_sp" 		=> $method,
											"client" 			=> $user['id'],
											"mobile_number" 	=> $receiver_contact,
											"type" 				=> "2",
											"sum"  				=> $sum,
											"fee"    			=> $fee,
											"amount" 			=> $amount,
											"currency"			=> "UGX",
											"status" 			=> "2",
											"sender" 			=> $user['username'],
											"receiver" 			=> "system",
											"time"          	=> date('Y-m-d H:i:s'),
											"user_comment"  	=> $method.' '.$receiver_contact.'',
											"admin_comment" 	=> "none",
											"message" 			=> $message
											)
										);

										// set content data
										$content_data = array(
											'user'              => $user,
											'percent'     		=> $percent
										);
										
										// Sending email exchange

										$email_template = $this->emailtemplate_model->get_email_template(3);

										// variables to replace
										if ($currency=="debit_extra6") {
											$mail_cyr = $this->currencys->display->extra6_code;
										} 

										$link = site_url('account/history/');
										$site_name = $this->settings->site_name;
										$mail_sum = round($sum, 2);

										$rawstring = $email_template['message'];

										 // what will we replace
										$placeholders = array('[SITE_NAME]', '[URL_HISTORY]', '[SUM]', '[CYR]');

										$vals_1 = array($site_name, $link, $mail_sum, $mail_cyr);

										//replace
										$str_1 = str_replace($placeholders, $vals_1, $rawstring);

										$this -> email -> from($this->settings->site_email, $this->settings->site_name);
										$this->email->to(
											array($user['email'])
										);

										$this -> email -> subject($email_template['title']);

										$this -> email -> message($str_1);

										$this->email->send();
										
										$sms_template = $this->smstemplate_model->get_sms_template(13);
										
										if($sms_template['enable']) {
											
											$rawstring = $sms_template['message'];

											 // what will we replace
											$placeholders = array('[SUM]', '[CYR]');

											$vals_1 = array($mail_sum, $mail_cyr);

											//replace
											$str_1 = str_replace($placeholders, $vals_1, $rawstring);
											
											// Twilio user number
											$to = '+'.$user['phone'];
											// Your Account SID and Auth Token from twilio.com/console
											$sid = $this->settings->twilio_sid;
											$token = $this->settings->twilio_token;
											$client = new Twilio\Rest\Client($sid, $token);

											// Use the client to do fun stuff like send text messages!
											$client->messages->create(
											// the number you'd like to send the message to
											$to = '+'.$receiver_contact,
											array(
												// A Twilio phone number you purchased at twilio.com/console
												'from' => '+'.$this->settings->twilio_number,
												// the body of the text message you'd like to send
												'body' => "You have been sent a sum of shs ".$amount
												)
											);

										}
									$this->session->set_flashdata('message', lang('users transfer success'));
									redirect(site_url("account/history"));

							}
