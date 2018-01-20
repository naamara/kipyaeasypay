<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

<?php echo form_open(site_url("admin/fees/dep_update"), array("" => "")) ?>

<div class="row">
  <div class="col-md-12">
    <div class="card sameheight-item items" data-exclude="xs,sm,lg">
      <div class="card-header bordered">
        <div class="header-block">
          <h3 class="title"><?php echo lang('admin fees title'); ?></h3>
        </div>
     </div>
     <div class="card-block">

    <div class="row">
       
       <?php // PayPal?>
        <div class="form-group col-sm-2">
            <label><?php echo lang('admin fees pp'); ?></label>
            </br>
            <input type="checkbox" class="js-switch primary" name="check_pp_dep" value="1" <?php if($this->commission->display->check_pp_dep) echo "checked" ?>/>
        </div>

         <div class="form-group col-sm-3">
            <label><?php echo lang('admin fees fees'); ?> <?php echo lang('admin fees pp'); ?>, %</label>
          <span class="required">*</span>
            <input type="text" class="form-control underlined" id="fee_pp_dep" name="fee_pp_dep" placeholder="50" value="<?php echo $this->commission->display->fee_pp_dep ?>"> 
        </div>
       
        <div class="form-group col-sm-3">
            <label><?php echo lang('admin fees fees'); ?> <?php echo lang('admin fees pp'); ?>, <?php echo $this->currencys->display->base_code; ?></label>
          <span class="required">*</span>
            <input type="text" class="form-control underlined" id="fee_pp_fix_dep" name="fee_pp_fix_dep" placeholder="50" value="<?php echo $this->commission->display->fee_pp_fix_dep ?>"> 
        </div>
       
       <div class="form-group col-sm-4">
            <label><?php echo lang('admin fees acc_pp'); ?></label>
          <span class="required">*</span>
            <input type="text" class="form-control underlined" id="account_pp" name="account_pp" placeholder="mail@gmail.com" value="<?php echo $this->commission->display->account_pp ?>"> 
        </div>
      
        
      
        
    </div>
      
      <div class="row">
       
       <?php // Payeer ?>
        <div class="form-group col-sm-2">
            <label><?php echo lang('admin fees payeer'); ?></label>
            </br>
            <input type="checkbox" class="js-switch primary" name="check_payeer_dep" value="1" <?php if($this->commission->display->check_payeer_dep) echo "checked" ?>/>
        </div>

         <div class="form-group col-sm-3">
            <label><?php echo lang('admin fees fees'); ?> <?php echo lang('admin fees payeer'); ?>, %</label>
          <span class="required">*</span>
            <input type="text" class="form-control underlined" id="fee_payeer_dep" name="fee_payeer_dep" placeholder="50" value="<?php echo $this->commission->display->fee_payeer_dep ?>"> 
        </div>
      
        <div class="form-group col-sm-3">
            <label><?php echo lang('admin fees fees'); ?> <?php echo lang('admin fees payeer'); ?>, <?php echo $this->currencys->display->base_code; ?></label>
          <span class="required">*</span>
            <input type="text" class="form-control underlined" id="fee_pay_fix" name="fee_pay_fix" placeholder="50" value="<?php echo $this->commission->display->fee_pay_fix ?>"> 
        </div>
       
       <div class="form-group col-sm-4">
            <label><?php echo lang('admin fees acc_payeer'); ?></label>
          <span class="required">*</span>
            <input type="text" class="form-control underlined" id="merch_payeer" name="merch_payeer" placeholder="" value="<?php echo $this->commission->display->merch_payeer ?>"> 
        </div>
      
      <div class="form-group col-sm-2">
      </div>
      
      <div class="form-group col-sm-3">
            <label><?php echo lang('admin fees key_payeer'); ?></label>
          <span class="required">*</span>
            <input type="text" class="form-control underlined" id="key_payeer" name="key_payeer" placeholder="" value="<?php echo $this->commission->display->key_payeer ?>"> 
        </div>
      
      <div class="form-group col-sm-7">
            <label><?php echo lang('admin fees crypt_payeer'); ?></label>
          <span class="required">*</span>
            <input type="text" class="form-control underlined" id="crypt_payeer" name="crypt_payeer" placeholder="" value="<?php echo $this->commission->display->crypt_payeer ?>"> 
        </div>
      
      </div>
      
      <div class="row">
      
        <?php // ADV Cash ?>
        <div class="form-group col-sm-2">
            <label><?php echo lang('admin fees adv'); ?></label>
            </br>
            <input type="checkbox" class="js-switch primary" name="check_adv_dep" value="1" <?php if($this->commission->display->check_adv_dep) echo "checked" ?>/>
        </div>

         <div class="form-group col-sm-3">
            <label><?php echo lang('admin fees fees'); ?> <?php echo lang('admin fees adv'); ?>, %</label>
          <span class="required">*</span>
            <input type="text" class="form-control underlined" id="fee_adv_dep" name="fee_adv_dep" placeholder="50" value="<?php echo $this->commission->display->fee_adv_dep ?>"> 
        </div>
    
        <div class="form-group col-sm-3">
            <label><?php echo lang('admin fees fees'); ?> <?php echo lang('admin fees adv'); ?>, <?php echo $this->currencys->display->base_code; ?></label>
          <span class="required">*</span>
            <input type="text" class="form-control underlined" id="fee_adv_fix" name="fee_adv_fix" placeholder="50" value="<?php echo $this->commission->display->fee_adv_fix ?>"> 
        </div>
       
       <div class="form-group col-sm-4">
            <label><?php echo lang('admin fees acc_adv'); ?></label>
          <span class="required">*</span>
            <input type="text" class="form-control underlined" id="account_adv" name="account_adv" placeholder="" value="<?php echo $this->commission->display->account_adv ?>"> 
        </div>
    
      <div class="form-group col-sm-2">
      </div>
      
      <div class="form-group col-sm-3">
            <label><?php echo lang('admin fees sci_name'); ?></label>
          <span class="required">*</span>
            <input type="text" class="form-control underlined" id="name_adv" name="name_adv" placeholder="" value="<?php echo $this->commission->display->name_adv ?>"> 
        </div>
      
      <div class="form-group col-sm-7">
            <label><?php echo lang('admin fees pass_dep'); ?></label>
          <span class="required">*</span>
            <input type="text" class="form-control underlined" id="secret_adv" name="secret_adv" placeholder="" value="<?php echo $this->commission->display->secret_adv ?>"> 
        </div>
    
    </div>
  
    <div class="row">
    
        <?php // Perfect money ?>
        <div class="form-group col-sm-2">
            <label><?php echo lang('admin fees perfect'); ?></label>
            </br>
            <input type="checkbox" class="js-switch primary" name="check_perfect" value="1" <?php if($this->commission->display->check_perfect) echo "checked" ?>/>
        </div>

         <div class="form-group col-sm-3">
            <label><?php echo lang('admin fees fees'); ?> <?php echo lang('admin fees perfect'); ?>, %</label>
          <span class="required">*</span>
            <input type="text" class="form-control underlined" id="fee_perfect" name="fee_perfect" placeholder="50" value="<?php echo $this->commission->display->fee_perfect ?>"> 
        </div>
  
      <div class="form-group col-sm-3">
            <label><?php echo lang('admin fees fees'); ?> <?php echo lang('admin fees perfect'); ?>, <?php echo $this->currencys->display->base_code; ?></label>
          <span class="required">*</span>
            <input type="text" class="form-control underlined" id="fee_perf_fix" name="fee_perf_fix" placeholder="50" value="<?php echo $this->commission->display->fee_perf_fix ?>"> 
        </div>
       
       <div class="form-group col-sm-4">
            <label><?php echo lang('admin fees acc_perfect'); ?></label>
          <span class="required">*</span>
            <input type="text" class="form-control underlined" id="account_perfect" name="account_perfect" placeholder="" value="<?php echo $this->commission->display->account_perfect ?>"> 
        </div>
  
   <div class="form-group col-sm-2">
      </div>
  
      <div class="form-group col-sm-10">
            <label><?php echo lang('admin fees key_perfect'); ?></label>
          <span class="required">*</span>
            <input type="text" class="form-control underlined" id="key_perfect" name="key_perfect" placeholder="" value="<?php echo $this->commission->display->key_perfect ?>"> 
        </div>
  
    </div>

    <div class="row">
  
      <?php // BTC ?>
        <div class="form-group col-sm-2">
            <label><?php echo lang('admin fees btc'); ?> (GAP: <?php echo $limit; ?>)</label>
            </br>
            <input type="checkbox" class="js-switch primary" name="check_btc_dep" value="1" <?php if($this->commission->display->check_btc_dep) echo "checked" ?>/>
        </div>

         <div class="form-group col-sm-3">
            <label><?php echo lang('admin fees fees'); ?> <?php echo lang('admin fees btc'); ?>, %</label>
          <span class="required">*</span>
            <input type="text" class="form-control underlined" id="fee_btc_dep" name="fee_btc_dep" placeholder="50" value="<?php echo $this->commission->display->fee_btc_dep ?>"> 
        </div>

        <div class="form-group col-sm-3">
            <label><?php echo lang('admin fees fees'); ?>, <?php echo $this->currencys->display->base_code; ?></label>
          <span class="required">*</span>
            <input type="text" class="form-control underlined" id="fee_btc_fix" name="fee_btc_fix" placeholder="50" value="<?php echo $this->commission->display->fee_btc_fix ?>"> 
        </div>
       
       <div class="form-group col-sm-4">
            <label>API key</label>
          <span class="required">*</span>
            <input type="text" class="form-control underlined" id="shop_btc" name="shop_btc" placeholder="" value="<?php echo $this->commission->display->shop_btc ?>"> 
        </div>
      <div class="form-group col-sm-2">
      </div>
      <div class="form-group col-sm-6">
            <label>Secret</label>
          <span class="required">*</span>
            <input type="text" class="form-control underlined" id="pass_btc" name="pass_btc" placeholder="" value="<?php echo $this->commission->display->pass_btc ?>"> 
        </div>

      <div class="form-group col-sm-4">
            <label>Xpub Blockchain</label>
          <span class="required">*</span>
            <input type="text" class="form-control underlined" id="xpub" name="xpub" placeholder="" value="<?php echo $this->commission->display->xpub ?>"> 
        </div>
    </div>

    <div class="row">

    <?php // SWIFT ?>
        <div class="form-group col-sm-2">
            <label><?php echo lang('admin fees swift'); ?></label>
            </br>
            <input type="checkbox" class="js-switch primary" name="swift_dep_check" value="1" <?php if($this->commission->display->swift_dep_check) echo "checked" ?>/>
        </div>

         <div class="form-group col-sm-6">
            <label><?php echo lang('admin fees fees'); ?> <?php echo lang('admin fees swift'); ?>, %</label>
          <span class="required">*</span>
            <input type="text" class="form-control underlined" id="fee_swift_dep" name="fee_swift_dep" placeholder="50" value="<?php echo $this->commission->display->fee_swift_dep ?>"> 
        </div>

        <div class="form-group col-sm-4">
            <label><?php echo lang('admin fees fees'); ?> <?php echo lang('admin fees swift'); ?>, <?php echo $this->currencys->display->base_code; ?></label>
          <span class="required">*</span>
            <input type="text" class="form-control underlined" id="fee_swift_fix" name="fee_swift_fix" placeholder="50" value="<?php echo $this->commission->display->fee_swift_fix ?>"> 
        </div>

       <div class="form-group col-sm-2">
      </div>
       <div class="form-group col-sm-10">
            <label><?php echo lang('admin fees swift_desk'); ?></label>
          <span class="required">*</span>
            <textarea class="form-control underlined" name="swift_desc" rows="5" id="swift_desc" value=""><?php echo $this->commission->display->swift_desc ?></textarea>
          <script>
                CKEDITOR.replace( 'swift_desc', { height:['100px'] } );
                CKEDITOR.config.allowedContent = true;
                CKEDITOR.replace('body', {height: 100});
            </script> 
        </div>
      
        
    <?php // MTN ?>
        <div class="form-group col-sm-2">
            <label><?php echo lang('admin fees mtn'); ?></label>
            </br>
            <input type="checkbox" class="js-switch primary" name="mtn_dep_check" value="1" <?php if($this->commission->display->mtn_dep_check) echo "checked" ?>/>
        </div>

         <div class="form-group col-sm-6">
            <label><?php echo lang('admin fees fees'); ?> <?php echo lang('admin fees mtn'); ?>, %</label>
          <span class="required">*</span>
            <input type="text" class="form-control underlined" id="fee_mtn_dep" name="fee_mtn_dep" placeholder="50" value="<?php echo $this->commission->display->fee_mtn_dep ?>"> 
        </div>

        <div class="form-group col-sm-4">
            <label><?php echo lang('admin fees fees'); ?> <?php echo lang('admin fees mtn'); ?>, <?php echo $this->currencys->display->base_code; ?></label>
          <span class="required">*</span>
            <input type="text" class="form-control underlined" id="fee_mtn_fix" name="fee_mtn_fix" placeholder="50" value="<?php echo $this->commission->display->fee_mtn_fix ?>"> 
        </div>

       <div class="form-group col-sm-2">
      </div>
       <div class="form-group col-sm-10">
            <label><?php echo lang('admin fees mtn_desk'); ?></label>
          <span class="required">*</span>
            <textarea class="form-control underlined" name="mtn_desc" rows="5" id="mtn_desc" value=""><?php echo $this->commission->display->mtn_desc ?></textarea>
          <script>
                CKEDITOR.replace( 'mtn_desc', { height:['100px'] } );
                CKEDITOR.config.allowedContent = true;
                CKEDITOR.replace('body', {height: 100});
            </script> 
        </div>
      
    <?php // AIRTEL ?>
        <div class="form-group col-sm-2">
            <label><?php echo lang('admin fees airtel'); ?></label>
            </br>
            <input type="checkbox" class="js-switch primary" name="airtel_dep_check" value="1" <?php if($this->commission->display->airtel_dep_check) echo "checked" ?>/>
        </div>

         <div class="form-group col-sm-6">
            <label><?php echo lang('admin fees fees'); ?> <?php echo lang('admin fees airtel'); ?>, %</label>
          <span class="required">*</span>
            <input type="text" class="form-control underlined" id="fee_airtel_dep" name="fee_airtel_dep" placeholder="50" value="<?php echo $this->commission->display->fee_airtel_dep ?>"> 
        </div>

        <div class="form-group col-sm-4">
            <label><?php echo lang('admin fees fees'); ?> <?php echo lang('admin fees airtel'); ?>, <?php echo $this->currencys->display->base_code; ?></label>
          <span class="required">*</span>
            <input type="text" class="form-control underlined" id="fee_airtel_fix" name="fee_airtel_fix" placeholder="50" value="<?php echo $this->commission->display->fee_airtel_fix ?>"> 
        </div>

       <div class="form-group col-sm-2">
      </div>
       <div class="form-group col-sm-10">
            <label><?php echo lang('admin fees airtel_desk'); ?></label>
          <span class="required">*</span>
            <textarea class="form-control underlined" name="airtel_desc" rows="5" id="airtel_desc" value=""><?php echo $this->commission->display->airtel_desc ?></textarea>
          <script>
                CKEDITOR.replace( 'airtel_desc', { height:['100px'] } );
                CKEDITOR.config.allowedContent = true;
                CKEDITOR.replace('body', {height: 100});
            </script> 
        </div>
      
    <?php // AFRICELL ?>
        <div class="form-group col-sm-2">
            <label><?php echo lang('admin fees africell'); ?></label>
            </br>
            <input type="checkbox" class="js-switch primary" name="africell_dep_check" value="1" <?php if($this->commission->display->africell_dep_check) echo "checked" ?>/>
        </div>

         <div class="form-group col-sm-6">
            <label><?php echo lang('admin fees fees'); ?> <?php echo lang('admin fees africell'); ?>, %</label>
          <span class="required">*</span>
            <input type="text" class="form-control underlined" id="fee_africell_dep" name="fee_africell_dep" placeholder="50" value="<?php echo $this->commission->display->fee_africell_dep ?>"> 
        </div>

        <div class="form-group col-sm-4">
            <label><?php echo lang('admin fees fees'); ?> <?php echo lang('admin fees africell'); ?>, <?php echo $this->currencys->display->base_code; ?></label>
          <span class="required">*</span>
            <input type="text" class="form-control underlined" id="fee_africell_fix" name="fee_africell_fix" placeholder="50" value="<?php echo $this->commission->display->fee_africell_fix ?>"> 
        </div>

       <div class="form-group col-sm-2">
      </div>
       <div class="form-group col-sm-10">
            <label><?php echo lang('admin fees africell_desk'); ?></label>
          <span class="required">*</span>
            <textarea class="form-control underlined" name="africell_desc" rows="5" id="africell_desc" value=""><?php echo $this->commission->display->africell_desc ?></textarea>
          <script>
                CKEDITOR.replace( 'africell_desc', { height:['100px'] } );
                CKEDITOR.config.allowedContent = true;
                CKEDITOR.replace('body', {height: 100});
            </script> 
        </div>
      
    <?php // SMART ?>
        <div class="form-group col-sm-2">
            <label><?php echo lang('admin fees smart'); ?></label>
            </br>
            <input type="checkbox" class="js-switch primary" name="smart_dep_check" value="1" <?php if($this->commission->display->smart_dep_check) echo "checked" ?>/>
        </div>

         <div class="form-group col-sm-6">
            <label><?php echo lang('admin fees fees'); ?> <?php echo lang('admin fees smart'); ?>, %</label>
          <span class="required">*</span>
            <input type="text" class="form-control underlined" id="fee_smart_dep" name="fee_smart_dep" placeholder="50" value="<?php echo $this->commission->display->fee_smart_dep ?>"> 
        </div>

        <div class="form-group col-sm-4">
            <label><?php echo lang('admin fees fees'); ?> <?php echo lang('admin fees smart'); ?>, <?php echo $this->currencys->display->base_code; ?></label>
          <span class="required">*</span>
            <input type="text" class="form-control underlined" id="fee_smart_fix" name="fee_smart_fix" placeholder="50" value="<?php echo $this->commission->display->fee_smart_fix ?>"> 
        </div>

       <div class="form-group col-sm-2">
      </div>
       <div class="form-group col-sm-10">
            <label><?php echo lang('admin fees smart_desk'); ?></label>
          <span class="required">*</span>
            <textarea class="form-control underlined" name="smart_desc" rows="5" id="smart_desc" value=""><?php echo $this->commission->display->smart_desc ?></textarea>
          <script>
                CKEDITOR.replace( 'smart_desc', { height:['100px'] } );
                CKEDITOR.config.allowedContent = true;
                CKEDITOR.replace('body', {height: 100});
            </script> 
        </div>
      
   <?php // VODAFONE ?>
        <div class="form-group col-sm-2">
            <label><?php echo lang('admin fees vodafone'); ?></label>
            </br>
            <input type="checkbox" class="js-switch primary" name="vodafone_dep_check" value="1" <?php if($this->commission->display->vodafone_dep_check) echo "checked" ?>/>
        </div>

         <div class="form-group col-sm-6">
            <label><?php echo lang('admin fees fees'); ?> <?php echo lang('admin fees vodafone'); ?>, %</label>
          <span class="required">*</span>
            <input type="text" class="form-control underlined" id="fee_vodafone_dep" name="fee_vodafone_dep" placeholder="50" value="<?php echo $this->commission->display->fee_vodafone_dep ?>"> 
        </div>

        <div class="form-group col-sm-4">
            <label><?php echo lang('admin fees fees'); ?> <?php echo lang('admin fees vodafone'); ?>, <?php echo $this->currencys->display->base_code; ?></label>
          <span class="required">*</span>
            <input type="text" class="form-control underlined" id="fee_vodafone_fix" name="fee_vodafone_fix" placeholder="50" value="<?php echo $this->commission->display->fee_vodafone_fix ?>"> 
        </div>

       <div class="form-group col-sm-2">
      </div>
       <div class="form-group col-sm-10">
            <label><?php echo lang('admin fees vodafone_desk'); ?></label>
          <span class="required">*</span>
            <textarea class="form-control underlined" name="vodafone_desc" rows="5" id="vodafone_desc" value=""><?php echo $this->commission->display->vodafone_desc ?></textarea>
          <script>
                CKEDITOR.replace( 'vodafone_desc', { height:['100px'] } );
                CKEDITOR.config.allowedContent = true;
                CKEDITOR.replace('body', {height: 100});
            </script> 
        </div>
      
   <?php // SMILE ?>
        <div class="form-group col-sm-2">
            <label><?php echo lang('admin fees smile'); ?></label>
            </br>
            <input type="checkbox" class="js-switch primary" name="smile_dep_check" value="1" <?php if($this->commission->display->smile_dep_check) echo "checked" ?>/>
        </div>

         <div class="form-group col-sm-6">
            <label><?php echo lang('admin fees fees'); ?> <?php echo lang('admin fees smile'); ?>, %</label>
          <span class="required">*</span>
            <input type="text" class="form-control underlined" id="fee_smile_dep" name="fee_smile_dep" placeholder="50" value="<?php echo $this->commission->display->fee_smile_dep ?>"> 
        </div>

        <div class="form-group col-sm-4">
            <label><?php echo lang('admin fees fees'); ?> <?php echo lang('admin fees smile'); ?>, <?php echo $this->currencys->display->base_code; ?></label>
          <span class="required">*</span>
            <input type="text" class="form-control underlined" id="fee_smile_fix" name="fee_smile_fix" placeholder="50" value="<?php echo $this->commission->display->fee_smile_fix ?>"> 
        </div>

       <div class="form-group col-sm-2">
      </div>
       <div class="form-group col-sm-10">
            <label><?php echo lang('admin fees smile_desk'); ?></label>
          <span class="required">*</span>
            <textarea class="form-control underlined" name="smile_desc" rows="5" id="smile_desc" value=""><?php echo $this->commission->display->smile_desc ?></textarea>
          <script>
                CKEDITOR.replace( 'smile_desc', { height:['100px'] } );
                CKEDITOR.config.allowedContent = true;
                CKEDITOR.replace('body', {height: 100});
            </script> 
        </div>
             
      
        
    </div>
      
        
    </div>

     </div>
<div class="card-footer" style="text-align:right"> 
                                             <a class="btn btn-secondary btn-sm" href="<?php echo $cancel_url; ?>"><?php echo lang('core button cancel'); ?></a>
                                                    <button type="submit"  class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-save"></span> <?php echo lang('core button save'); ?></button>
                                        </div>
   </div>
 </div>
</div>


<?php echo form_close(); ?>
