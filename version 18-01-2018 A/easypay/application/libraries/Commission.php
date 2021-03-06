<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 

class Commission
{

	var $display=array();

	public function __construct() 
	{
		$CI =& get_instance();
		$site = $CI->db->select("card_check, card_fee, pp_check, pp_fee, btc_check, btc_fee, adv_check, adv_fee, wm_check, wm_fee, payeer_check, payeer_fee, qiwi_check, qiwi_fee, perfect_check, perfect_fee, swift_check, swift_fee, mtn_check, mtn_fee,airtel_check, airtel_fee, africell_check, africell_fee, smart_check, smart_fee, vodafone_check, vodafone_fee, smile_check, smile_fee, check_pp_dep, fee_pp_dep, account_pp, check_payeer_dep, fee_payeer_dep, merch_payeer, key_payeer, crypt_payeer, check_adv_dep, fee_adv_dep, account_adv, name_adv, secret_adv, check_perfect, fee_perfect, account_perfect, key_perfect, check_btc_dep, fee_btc_dep, shop_btc, pass_btc, swift_dep_check, fee_swift_dep, swift_desc, mtn_dep_check, fee_mtn_dep, mtn_desc, airtel_dep_check, fee_airtel_dep, airtel_desc, africell_dep_check, fee_africell_dep, africell_desc, smart_dep_check, fee_smart_dep, smart_desc, vodafone_dep_check, fee_vodafone_dep, vodafone_desc, smile_dep_check, fee_smile_dep, smile_desc, check_pp_sci, fee_pp_sci, account_pp_sci, check_payeer_sci, fee_payeer_sci, merch_payeer_sci, key_payeer_sci, crypt_payeer_sci, check_adv_sci, fee_adv_sci, account_adv_sci, name_adv_sci, secret_adv_sci, check_perfect_sci, fee_perfect_sci, account_perfect_sci, key_perfect_sci, check_btc_sci, fee_btc_sci, shop_btc_sci, pass_btc_sci, swift_sci_check, fee_swift_sci, swift_desc_sci, mtn_sci_check, fee_mtn_sci, mtn_desc_sci, airtel_sci_check, fee_airtel_sci, airtel_desc_sci, africell_sci_check, fee_africell_sci, africell_desc_sci, smart_sci_check, fee_smart_sci, smart_desc_sci, vodafone_sci_check, fee_vodafone_sci, vodafone_desc_sci, smile_sci_check, fee_smile_sci, smile_desc_sci, ux_check, fee_ux, xpub, sci_xpub, fee_pp_fix_dep, fee_pay_fix, fee_adv_fix, fee_perf_fix, fee_btc_fix, fee_swift_fix, sci_pp_fee_fix, sci_pay_fee_fix, sci_adv_fix, sci_per_fee_fix, sci_btc_fee_fix, sci_swift_fee_fix, sci_mtn_fee_fix, sci_airtel_fee_fix, sci_africell_fee_fix, sci_smart_fee_fix, sci_vodafone_fee_fix, sci_smile_fee_fix, ux_fee_fix")
		->where("ID", 1)
		->get("fees");
		
		if($site->num_rows() == 0) {
			$CI->template->error(
				"You are missing the site settings database row."
			);
		} else {
			$this->display = $site->row();
		}
	}

}

?>