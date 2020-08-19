<?php (defined('BASEPATH')) OR exit('No direct script access allowed'); ?>

<section id="main-content">
    <section class="wrapper site-min-height  ">
        <section class="panel">
            <div class="panel-body col-md-4">

                <style>
                    .panel-primary>.panel-heading {
                        padding: 10px;
                    }

                    .panel-body {
                        background: #f1f2f7;
                    }
                </style>

                <section class="content">
                    <div class="">
                        <div class="panel panel-primary">
                            <header class="panel-heading">
                                Membership Setting<?php echo lang('membership'); ?>
                            </header>

                            <form role="form" class="clearfix pos form1"  id="editSaleForm" action="settings/addmembership" method="post" enctype="multipart/form-data">
                                <div class="col-md-12 pos_top pos_body" style="margin-top: 33px;">
                                    <div class="col-md-12">  

                                        <div class="form-group col-md-12">
                                <label for="exampleInputname">Membership Name<?php echo lang('membership_name'); ?></label>
                                <input type="text" class="form-control" name="m_name" id="exampleInputname" value='<?php
                                if (!empty($setting_membership->membership_name)) {
                                    echo $setting_membership->membership_name;
                                }
                                ?>' placeholder="Membership Name">
                            </div>
                            <div class="form-group col-md-12">
                                <label for="exampleInputprince">Membership Price<?php echo lang('Membership_price'); ?></label>
                                <input type="text" class="form-control" name="membership_price" id="exampleInputprince" value='<?php
                                if (!empty($setting_membership->membership_price)) {
                                    echo $setting_membership->membership_price;
                                }
                                ?>' placeholder="Membership Price">
                            </div>

                            <div class="form-group col-md-12">
                                <label for="exampleInputduration">Membership Discount<?php echo lang('membership_discount'); ?></label>
                                <input type="text" class="form-control" name="membership_discount" id="exampleInputduration" value='<?php
                                if (!empty($setting_membership->discount)) {
                                    echo $setting_membership->discount;
                                }
                                ?>' placeholder="Discount In Percentage">
                            </div>
                            <div class="form-group col-md-12">
                                <label for="exampleInputduration">Expiry Duration<?php echo lang('expiry_d'); ?></label>
                                <input type="text" class="form-control" name="expiry_d" id="exampleInputduration" value='<?php
                                if (!empty($setting_membership->expiry)) {
                                    echo $setting_membership->expiry;
                                }
                                ?>' placeholder="Duration In Month">
                            </div>


                                        <input type="hidden" name="id" value='<?php
                                        if (!empty($setting_membership->id)) {
                                            echo $setting_membership->id;
                                        }
                                        ?>'>

                                        <div class="form-group col-md-12"> 
                                            <button type="submit" name="submit" class="btn green"> <?php echo lang('submit'); ?></button>
                                        </div>





                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </section>



            </div>

            <div class="panel-body col-md-8">

                <style>
                    .panel-primary>.panel-heading {
                        padding: 10px;
                    }

                    .panel-body {
                        background: #f1f2f7;
                    }
                </style>

                <section class="content">
                    <div class="">
                        <div class="panel panel-primary">
                            <header class="panel-heading">
                                Memberships<?php echo lang('membership'); ?>
                            </header>

                   <div class="space15"></div>
                    <table class="table table-striped table-hover table-bordered" id="editable-sample">
                        <thead>
                            <tr>
                                <th><?php echo lang('name'); ?></th>                        
                                <th><?php echo lang('price'); ?></th>
                                <th><?php echo lang('discount'); ?></th>
                                <th>Expiry<?php echo lang('expiry'); ?></th>
                                
                                <th class="no-print"><?php echo lang('options'); ?></th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php 
                        //echo "<pre>";print_r($setting_memberships);
                        foreach($setting_memberships as $membership){ ?>

                        <tr>
                            <td><?php echo $membership->membership_name; ?></td>                        
                            <td><?php echo $membership->membership_price; ?></td>
                            <td><?php echo $membership->discount; ?></td>
                            <td><?php echo $membership->expiry; ?></td>
                            <td>
                                <a type="button" href="settings/membership?id=<?php echo $membership->id; ?>" class="btn editbutton" title="<?php  echo lang('edit'); ?>" ><i class="fa fa-edit"> </i><?php echo lang('edit');?></a><?php  echo ' ';  ?>
                                <a class="btn delete_button" onclick="return confirm('Are you sure you want to delete this item?');" title="<?php echo lang('delete') ?>" href="settings/delete_membership?id=<?php echo $membership->id; ?>" ><i class="fa fa-trash-o"></i> <?php echo  lang('delete');?></a>
                            </td>
                        </tr>

                        <?php } ?>




                        </tbody>
                    </table>
                </div>
                        </div>
                    
                </section>



            </div>
        </section>
        <!-- page end-->
    </section>
</section>

