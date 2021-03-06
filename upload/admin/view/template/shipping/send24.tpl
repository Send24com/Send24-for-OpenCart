<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-send24" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>

      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-send24" class="form-horizontal">
        
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
            <div class="col-sm-10">
              <select name="send24_status" id="input-status" class="form-control">
                <?php if ($send24_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>


          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-key"><span data-toggle="tooltip" title="<?php echo $help_consumer_key; ?>"><?php echo $entry_consumer_key; ?></span></label>
            <div class="col-sm-10">
              <input type="text" name="send24_consumer_key" value="<?php echo $send24_consumer_key; ?>" placeholder="<?php echo $entry_consumer_key; ?>" id="input-key" class="form-control" />
              <?php if ($error_consumer_key) { ?>
              <div class="text-danger"><?php echo $error_consumer_key; ?></div>
              <?php } ?>
            </div>
          </div>      

          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-key"><span data-toggle="tooltip" title="<?php echo $help_consumer_secret; ?>"><?php echo $entry_consumer_secret; ?></span></label>
            <div class="col-sm-10">
              <input type="text" name="send24_consumer_secret" value="<?php echo $send24_consumer_secret; ?>" placeholder="<?php echo $entry_consumer_secret; ?>" id="input-key" class="form-control" />
              <?php if ($error_consumer_secret) { ?>
              <div class="text-danger"><?php echo $error_consumer_secret; ?></div>
              <?php } ?>
            </div>
          </div>

          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-start-time"><span data-toggle="tooltip" title="<?php echo $help_start_time; ?>"><?php echo $entry_start_time; ?></span></label>
            <div class="col-sm-10">
              <select name="send24_start_time" id="input-start-time" class="form-control">
                <?php 
                  foreach ($options_time as $value) {
                    echo '<option value="'.$value['id_option'].'"';
                    if($send24_start_time == $value['id_option']) {echo 'selected="selected"'; }
                    echo '>'.$value['name'].'</option>';
                  }
                 ?>
              </select>
            </div>
          </div>  

          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-stop-time"><span data-toggle="tooltip" title="<?php echo $help_stop_time; ?>"><?php echo $entry_stop_time; ?></span></label>
            <div class="col-sm-10">
              <select name="send24_stop_time" id="input-stop-time" class="form-control">
                <?php 
                  foreach ($options_time as $value) {
                    echo '<option value="'.$value['id_option'].'"';
                    if($send24_stop_time == $value['id_option']) {echo 'selected="selected"'; }
                    echo '>'.$value['name'].'</option>';
                  }
                 ?>
              </select>
            </div>
          </div>
                    
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-sort-order"><?php echo $entry_sort_order; ?></label>
            <div class="col-sm-10">
              <input type="text" name="send24_sort_order" value="<?php echo $send24_sort_order; ?>" placeholder="<?php echo $entry_sort_order; ?>" id="input-sort-order" class="form-control" />
            </div>
          </div>

        </form>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>