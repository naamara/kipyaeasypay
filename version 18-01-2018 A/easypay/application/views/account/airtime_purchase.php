<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

<div class="row">
  <div class="col-md-6">
    <h4 class="title"><?php echo lang('users title form_airtime'); ?></h4>
  </div>
</div>


    <div class="panel panel-default">
      <div class="panel-body">
        <?php echo form_open(site_url("account/start_airtime_purchase/"), array("" => "")) ?>
        <div class="row">
          <div class="col-md-12">
            <div class="form-group">
              <label><?php echo lang('receiver number'); ?></label>
              <input type="number" class="form-control" name="receiver_number" onkeyup="this.value = this.value.replace (/^\.|[^\d\.]/g, '')" placeholder="256788558138">
            </div>
          </div>
          <div class="col-md-12">
            <div class="form-group">
              <label><?php echo lang('users withdrawal amount'); ?></label>
              <input type="text" class="form-control" name="amount" onkeyup="this.value = this.value.replace (/^\.|[^\d\.]/g, '')" placeholder="UGX">
            </div>
          </div>
          <div class="col-md-12">
            <div class="plan-card-group">
            <div class="row">
			
              <?php if($this->commission->display->mtn_check) : ?>
              <?php // Mobile Money ?>
			  
              <div class="col-md-4 col-xs-6">
                <div class="radio-card">
                  <div class="fee"><?php echo $this->commission->display->mtn_fee ?>%</div>
                  <input type="radio" class="planes-radio" name="method" value="10" id="10"/>
                  <label for="10" id="10">
                    <span class="card-title"><img class="img-responsive" src="<?php echo base_url();?>themes/private/img/pay/mtn.png" alt=""></span>
                  </label>
                </div>
              </div>
              <?php endif; ?>
              <?php if($this->commission->display->airtel_check) : ?>
              <?php // Airtel Money ?>
              <div class="col-md-4 col-xs-6">
                <div class="radio-card">
                  <div class="fee"><?php echo $this->commission->display->airtel_fee ?>%</div>
                  <input type="radio" class="planes-radio" name="method" value="11" id="11"/>
                  <label for="11" id="11">
                    <span class="card-title"><!-- <div style = "color: red; text-align: center;">Airtel Money </div> --><img class="img-responsive" src="<?php echo base_url();?>themes/private/img/pay/airtel.png" alt=""> </span>
                  </label>
                </div>
              </div>
              <?php endif; ?>
              <?php if($this->commission->display->africell_check) : ?>
              <?php // Africell Money ?>
              <div class="col-md-4 col-xs-6">
                <div class="radio-card">
                  <div class="fee"><?php echo $this->commission->display->africell_fee ?>%</div>
                  <input type="radio" class="planes-radio" name="method" value="12" id="12"/>
                  <label for="12" id="12">
                    <span class="card-title"><img class="img-responsive" src="<?php echo base_url();?>themes/private/img/pay/africell.png" alt=""> </span>
                  </label>
                </div>
              </div>
              <?php endif; ?>
              <?php if($this->commission->display->smart_check) : ?>
              <?php // Smart Money ?>
              <div class="col-md-4 col-xs-6">
                <div class="radio-card">
                  <div class="fee"><?php echo $this->commission->display->smart_fee ?>%</div>
                  <input type="radio" class="planes-radio" name="method" value="13" id="13"/>
                  <label for="13" id="13">
                    <span class="card-title"><img class="img-responsive" src="<?php echo base_url();?>themes/private/img/pay/smart.jpg" alt=""></span>
                  </label>
                </div>
              </div>
              <?php endif; ?>
              <?php if($this->commission->display->vodafone_check) : ?>
              <?php // Vodafone Money ?>
              <div class="col-md-4 col-xs-6">
                <div class="radio-card">
                  <div class="fee"><?php echo $this->commission->display->vodafone_fee ?>%</div>
                  <input type="radio" class="planes-radio" name="method" value="14" id="14"/>
                  <label for="14" id="14">
                    <span class="card-title"><img class="img-responsive" src="<?php echo base_url();?>themes/private/img/pay/vodafone.png" alt=""> </span>
                  </label>
                </div>
              </div>
              <?php endif; ?>
              <?php if($this->commission->display->smile_check) : ?>
              <?php // Smile Money ?>
              <div class="col-md-4 col-xs-6">
                <div class="radio-card">
                  <div class="fee"><?php echo $this->commission->display->smile_fee ?>%</div>
                  <input type="radio" class="planes-radio" name="method" value="15" id="15"/>
                  <label for="12" id="12">
                    <span class="card-title"><img class="img-responsive" src="<?php echo base_url();?>themes/private/img/pay/smile.png" alt=""> </span>
                  </label>
                </div>
              </div>
              <?php endif; ?>              <div class="col-md-12">
                <div class="pull-right">
                  <button type="submit" class="btn btn-primary">
                    <?php echo lang('users airtime purchase'); ?>
                  </button>
                </div>
              </div>
            </div>
            </div>
          </div>
        </div>
        <?php echo form_close(); ?>  
      </div>
    </div>
					
