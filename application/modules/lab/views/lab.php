
<!--sidebar end-->
<!--main content start-->
<section id="main-content">
    <section class="wrapper site-min-height">
        <!-- page start-->


<?php if(isset($_GET['id'])){ ?>
        <section class="col-md-5 no-print">
            <header class="panel-heading no-print">
                <?php
                if (!empty($lab_single->id))
                    echo lang('edit_lab_report');
                else
                    echo lang('add_lab_report');
                ?>
            </header>
            <div class="no-print">
                <div class="adv-table editable-table ">
                    <div class="clearfix">
                        <style> 
                            .lab{
                                padding-top: 10px;
                                padding-bottom: 20px;
                                border: none;

                            }
                            .pad_bot{
                                padding-bottom: 5px;
                            }  

                            form{
                                background: #ffffff;
                                padding: 20px 0px;
                            }

                            .modal-body form{
                                background: #fff;
                                padding: 21px;
                            }

                            .remove{
                                float: right;
                                margin-top: -45px;
                                margin-right: 42%;
                                margin-bottom: 41px;
                                width: 94px;
                                height: 29px;
                            }

                            .remove1 span{
                                width: 33%;
                                height: 50px !important;
                                padding: 10px

                            }

                            .qfloww {
                                padding: 10px 0px;
                                height: 370px;
                                background: #f1f2f9;
                                overflow: auto;
                            }

                            .remove1 {
                                background: #5A9599;
                                color: #fff;
                                padding: 5px;
                            }


                            .span2{
                                padding: 6px 12px;
                                font-size: 14px;
                                font-weight: 400;
                                line-height: 1;
                                color: #555;
                                text-align: center;
                                background-color: #eee;
                                border: 1px solid #ccc
                            }

                        </style>

                        <form role="form" id="editLabForm" class="clearfix" action="lab/editlabreport" method="post" enctype="multipart/form-data">

                            <div class="col-md-12 payment pad_bot">
                                                <label for="exampleInputEmail1"> Collection Center<?php //echo lang('patient'); ?></label>
                                                <select class="form-control m-bot15 js-example-basic-single " id="centerer" name="center"' required=""> 
                                                    <option value=""><?php echo lang('select'); ?></option>
                                                   <?php foreach ($lab_centers as $center) { ?>

                                                     value="<?php echo set_value('username'); ?>"
                                                         <option value="<?php echo $center->id; ?>" <?php
                                                      
                                                            if ($center->id == $lab_single->lab_center_id) {
                                                                echo 'selected';
                                                            }
                                                      //  }
                                                        ?> ><?php echo $center->name; ?> </option>
                                                            <?php //} ?>
                                                   <?php } ?>
                                                   
                                                </select>
                                            </div>





                            <div class="">
                                <div class="col-md-6 lab pad_bot">
                                    <label for="exampleInputEmail1"><?php echo lang('date'); ?></label>
                                    <input type="text" class="form-control pay_in default-date-picker1" name="date" value='<?php
                                    if (!empty($lab_single->date)) {
                                        echo date('d-m-Y', $lab_single->date);
                                    } else {
                                        echo date('d-m-Y H:i:s');
                                    }
                                    ?>' placeholder="">
                                </div>
                                
                                <div class="col-md-6 lab pad_bot">
                                    <label for="exampleInputEmail1"><?php echo lang('patient'); ?></label>
                                    <select class="form-control m-bot15 js-example-basic-single pos_select" id="pos_select" name="patient" value=''> 
                                        <option value="">Select .....</option>
                                        <option value="add_new" style="color: #41cac0 !important;"><?php echo lang('add_new'); ?></option>
                                        <?php foreach ($patients as $patient) { ?>
                                            <option value="<?php echo $patient->id; ?>" <?php
                                            if (!empty($lab_single->patient)) {
                                                if ($lab_single->patient == $patient->id) {
                                                    echo 'selected';
                                                }
                                            }
                                            ?> ><?php echo $patient->name; ?> </option>
                                                <?php } ?>
                                    </select>
                                </div> 

                                <div class="col-md-8 panel"> 
                                </div>

                                <div class="pos_client">
                                    <div class="col-md-8 lab pad_bot">
                                        <div class="col-md-3 lab_label"> 
                                            <label for="exampleInputEmail1"> <?php echo lang('patient'); ?> <?php echo lang('name'); ?></label>
                                        </div>
                                        <div class="col-md-9"> 
                                            <input type="text" class="form-control pay_in" name="p_name" value='<?php
                                            if (!empty($lab_single->p_name)) {
                                                echo $lab_single->p_name;
                                            }
                                            ?>' placeholder="">
                                        </div>
                                    </div>
                                    <div class="col-md-8 lab pad_bot">
                                        <div class="col-md-3 lab_label"> 
                                            <label for="exampleInputEmail1"> <?php echo lang('patient'); ?> <?php echo lang('email'); ?></label>
                                        </div>
                                        <div class="col-md-9"> 
                                            <input type="text" class="form-control pay_in" name="p_email" value='<?php
                                            if (!empty($lab_single->p_email)) {
                                                echo $lab_single->p_email;
                                            }
                                            ?>' placeholder="">
                                        </div>
                                    </div>
                                    <div class="col-md-8 lab pad_bot">
                                        <div class="col-md-3 lab_label"> 
                                            <label for="exampleInputEmail1"> <?php echo lang('patient'); ?> <?php echo lang('phone'); ?></label>
                                        </div>
                                        <div class="col-md-9"> 
                                            <input type="text" class="form-control pay_in" name="p_phone" value='<?php
                                            if (!empty($lab_single->p_phone)) {
                                                echo $lab_single->p_phone;
                                            }
                                            ?>' placeholder="">
                                        </div>
                                    </div>
                                    <div class="col-md-8 lab pad_bot">
                                        <div class="col-md-3 lab_label"> 
                                            <label for="exampleInputEmail1"> <?php echo lang('patient'); ?> <?php echo lang('age'); ?></label>
                                        </div>
                                        <div class="col-md-9"> 
                                            <input type="text" class="form-control pay_in" name="p_age" value='<?php
                                            if (!empty($lab_single->p_age)) {
                                                echo $lab_single->p_age;
                                            }
                                            ?>' placeholder="">
                                        </div>
                                    </div> 
                                    <div class="col-md-8 lab pad_bot">
                                        <div class="col-md-3 lab_label"> 
                                            <label for="exampleInputEmail1"> <?php echo lang('patient'); ?> <?php echo lang('gender'); ?></label>
                                        </div>
                                        <div class="col-md-9"> 
                                            <select class="form-control m-bot15" name="p_gender" value=''>

                                                <option value="Male" <?php
                                                if (!empty($patient->sex)) {
                                                    if ($patient->sex == 'Male') {
                                                        echo 'selected';
                                                    }
                                                }
                                                ?> > Male </option>   
                                                <option value="Female" <?php
                                                if (!empty($patient->sex)) {
                                                    if ($patient->sex == 'Female') {
                                                        echo 'selected';
                                                    }
                                                }
                                                ?> > Female </option>
                                                <option value="Others" <?php
                                                if (!empty($patient->sex)) {
                                                    if ($patient->sex == 'Others') {
                                                        echo 'selected';
                                                    }
                                                }
                                                ?> > Others </option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6 lab pad_bot">
                                    <label for="exampleInputEmail1"> <?php echo lang('refd_by_doctor'); ?></label> 
                                    <select class="form-control m-bot15 js-example-basic-single add_doctor" id="add_doctor" name="doctor" value=''>  
                                        <option value="">Select .....</option>
                                        <option value="add_new" style="color: #41cac0 !important;"><?php echo lang('add_new'); ?></option>
                                        <?php foreach ($doctors as $doctor) { ?>
                                            <option value="<?php echo $doctor->id; ?>"<?php
                                            if (!empty($lab_single->doctor)) {
                                                if ($lab_single->doctor == $doctor->id) {
                                                    echo 'selected';
                                                }
                                            }
                                            ?>><?php echo $doctor->name; ?> </option>
                                                <?php } ?>
                                    </select>
                                </div>

                               <?php /* <div class="col-md-6 lab pad_bot">
                                    <label for="exampleInputEmail1">
                                        <?php echo lang('template'); ?>
                                    </label>
                                    <select class="form-control m-bot15 js-example-basic-multiple template" id="template" name="template" value='' > 
                                        <option value="">Select .....</option>
                                        <?php foreach ($templates as $template) { ?>
                                            <option value="<?php echo $template->id; ?>"><?php echo $template->name; ?> </option>
                                        <?php } ?>
                                    </select>
                                </div> */ ?>
                                <div class="col-md-6 lab pad_bot">
                                    <label for="exampleInputEmail1">Reporting <?php echo lang('date'); ?></label>
                                    <input type="text" class="form-control pay_in default-date-picker1" name="date" value='<?php
                                    if (!empty($lab_single->date)) {
                                        echo date('d-m-Y', $lab_single->date);
                                    } else {
                                        echo date('d-m-Y H:i:s');
                                    }
                                    ?>' placeholder="">
                                </div>
                                <div class="pos_doctor">
                                    <div class="col-md-8 lab pad_bot">
                                        <div class="col-md-3 lab_label"> 
                                            <label for="exampleInputEmail1"> <?php echo lang('doctor'); ?> <?php echo lang('name'); ?></label>
                                        </div>
                                        <div class="col-md-9"> 
                                            <input type="text" class="form-control pay_in" name="d_name" value='<?php
                                            if (!empty($lab_single->p_name)) {
                                                echo $lab_single->p_name;
                                            }
                                            ?>' placeholder="">
                                        </div>
                                    </div>
                                    <div class="col-md-8 lab pad_bot">
                                        <div class="col-md-3 lab_label"> 
                                            <label for="exampleInputEmail1"> <?php echo lang('doctor'); ?> <?php echo lang('email'); ?></label>
                                        </div>
                                        <div class="col-md-9"> 
                                            <input type="text" class="form-control pay_in" name="d_email" value='<?php
                                            if (!empty($lab_single->p_email)) {
                                                echo $lab_single->p_email;
                                            }
                                            ?>' placeholder="">
                                        </div>
                                    </div>
                                    <div class="col-md-8 lab pad_bot">
                                        <div class="col-md-3 lab_label"> 
                                            <label for="exampleInputEmail1"> <?php echo lang('doctor'); ?> <?php echo lang('phone'); ?></label>
                                        </div>
                                        <div class="col-md-9"> 
                                            <input type="text" class="form-control pay_in" name="d_phone" value='<?php
                                            if (!empty($lab_single->p_phone)) {
                                                echo $lab_single->p_phone;
                                            }
                                            ?>' placeholder="">
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-8 panel">
                                </div>

                                <div class="col-md-6 lab pad_bot">
                                    <label for="exampleInputEmail1">Sample picker's Name <?php //echo lang('date'); ?></label>
                                    <input type="text" class="form-control pay_in " name="picker_name" value='<?php
                                    if (!empty($lab_single->sample_picker_name)) {
                                        echo $lab_single->sample_picker_name;
                                    } else {
                                       // echo date('d-m-Y H:i:s');
                                    }
                                    ?>' placeholder="">
                                </div>
                                <div class="col-md-6 lab pad_bot">
                                    <label for="exampleInputEmail1">Sample Number <?php //echo lang('date'); ?></label>
                                    <input type="text" class="form-control pay_in " name="sample_no" value='<?php
                                    if (!empty($lab_single->sample_number)) {
                                        echo  $lab_single->sample_number;
                                    } else {
                                        //echo date('d-m-Y H:i:s');
                                    }
                                    ?>' placeholder="">
                                </div>


                            </div>



                                






                            <div class="col-md-12 lab pad_bot">
                                <label for="exampleInputEmail1"> <?php echo lang('report'); ?></label>
                                <?php /*<textarea class="ckeditor form-control" id="editor" name="report" value="" rows="10"><?php
                                    if (!empty($setval)) {
                                        echo set_value('report');
                                    }
                                    if (!empty($lab_single->report)) {
                                        echo $lab_single->report;
                                    }
                                    ?>
                                </textarea> */ ?>
                                <table class="table">
                                    
                                <?php 
                                   //echo "<pre>";print_r($temp_date);
                               // if(!empty($report_date)){
                                    $k=0;
                                    foreach($temp_date as $key=>$temp){ 

                                        //echo "<pre>";print_r($temp);
                                        ?>
                                         <thead>

                                        <tr>
                                        <input type="hidden" value = "<?php echo $key; ?>" name="cat[]" size="4" >
                                         <th><h3><?php echo $key; ?> </h3>
                                         <input type="hidden" value = "<?php echo $items->name; ?>" name="name[<?php echo $i; ?>][<?php echo $key ?>]" size="4" >
                                         </th>
                                         </tr>
                                         <tr>
                                         
                                          <th scope="col">Name</th>
                                         
                                          <th scope="col">Normale Value M</th>
                                          <th scope="col">Normale Value F</th>
                                          <th scope="col">Unit</th>
                                          <th scope="col">Result</th>
                                        </tr>
                                  </thead>
                                   <?php  
                                    $i=1;
                                    //echo "<pre>";print_r($temp);
                                    foreach($temp as $items){ 

                                    if($i==1){
                                        ?>
                                        <input type="hidden" value = "<?php echo $items->lab_id; ?>" name="category_id[]" size="4" >

                                        <?php
                                    } 
                                    ?>
                                        <tbody>
                                            <tr>
                                              <?php /* <th scope="row"><?php echo $i; ?></th> */?>
                                              <td><input type="hidden" value = "<?php echo $items->name; ?>" name="name[<?php echo $i; ?>][<?php echo $key ?>]" size="4" ><?php echo $items->name; ?></td>
                                              <td><input type="hidden" value = "<?php echo $items->male_value; ?>" name="male_value[<?php echo $i; ?>][<?php echo $key ?>]" size="4" ><?php echo $items->male_value; ?></td>
                                              <td><input type="hidden" value = "<?php echo $items->female_value; ?>" name="female_value[<?php echo $i; ?>][<?php echo $key ?>]" size="4" ><?php echo $items->female_value; ?></td>
                                              <td><input type="hidden" value = "<?php echo $items->unit; ?>" name="unit[<?php echo $i; ?>][<?php echo $key ?>]" size="4" ><?php echo $items->unit; ?></td>
                                              <td><input type="text" <?php if(!empty($report_date)){ ?> value = "<?php echo $report_date[$k]->result ?>" <?php } ?> name="result[<?php echo $i; ?>][<?php echo $key ?>]" size="4" ></td>
                                            </tr>
                                        </tbody>

                                   <?php
                                    $i++;
                                    $k++;
                                    } 

                                   ?>
                                   <?php } 
                                   //}
                                    /*else{
                                        $i=0;
                                        foreach($report_date as $key=>$var){
       
                                                //echo "<pre>";print_r($data['report_date'][$key+1]->test_cat);
                                               //echo $var->test_cat;
                                               // echo "uii".$data['report_date'][$key+1]."989";
                                              //array_unique($rte['test_cat']);
                                                if($var->test_cat!=$report_date[$key+1]->test_cat){
                                                         //echo "<br>".$var->test_cat."<br>";
                                                        $i  =  0;
                                                        $ct = $var->test_cat;
                                                        ?>
                                                        <thead>

                                                            <tr>
                                                            <input type="hidden" value = "<?php echo $key; ?>" name="cat[]" size="4" >
                                                             <th><h3><?php echo $var->test_cat; ?> </h3>
                                                             <input type="hidden" value = "<?php echo $items->name; ?>" name="name[<?php echo $i; ?>][<?php echo $key ?>]" size="4" >
                                                             </th>
                                                             </tr>
                                                             <tr>
                                                             
                                                              <th scope="col">Name</th>
                                                              <th scope="col">Normale Value M</th>
                                                              <th scope="col">Normale Value F</th>
                                                              <th scope="col">Unit</th>
                                                              <th scope="col">Result</th>
                                                            </tr>
                                                      </thead>
                                                        <?php
                                                }

                                                ?>
                                                

                                                <tbody>
                                            <tr>
                                              <?php ?>
                                              <td><input type="hidden" value = "<?php echo $var->name; ?>" name="name[<?php echo $i; ?>][<?php echo $ct ?>]" size="4" ><?php echo $var->name; ?></td>
                                              <td><input type="hidden" value = "<?php echo $var->m_val; ?>" name="male_value[<?php echo $i; ?>][<?php echo $ct ?>]" size="4" ><?php echo $var->m_val; ?></td>
                                              <td><input type="hidden" value = "<?php echo $var->f_val; ?>" name="female_value[<?php echo $i; ?>][<?php echo $ct ?>]" size="4" ><?php echo $var->f_val; ?></td>
                                              <td><input type="hidden" value = "<?php echo $var->units; ?>" name="unit[<?php echo $i; ?>][<?php echo $ct ?>]" size="4" ><?php echo $var->units; ?></td>
                                              <td><input type="text"   value = "" name="result[<?php echo $i; ?>][<?php echo $ct ?>]" size="4" ></td>
                                            </tr>
                                        </tbody>
                                        <?php
                                            $i++;
                                               // $new = $rte['test_cat'];
                                                //$new = $rte['test_cat'];
                                            }
                                    }*/
                                   ?>
                                   </table>
                                  
                            </div>

                            <input type="hidden" name="redirect" value="<?php
                            if (!empty($lab_single)) {
                                echo 'lab?id=' . $lab_single->id;
                            } else {
                                echo 'lab';
                            }
                            ?>">

                            <input type="hidden" name="id" value='<?php
                            if (!empty($lab_single->id)) {
                                echo $lab_single->id;
                            }
                            ?>'>


                            <div class="col-md-12 lab"> 
                                <button type="submit" name="submit" class="btn btn-info pull-right"><?php echo lang('submit'); ?></button>
                            </div>

                        </form>
                    </div>
                </div>
            </div>



        </section>


<?php } ?>

        <section class="<?php if(isset($_GET['id'])){ ?>col-md-7 <?php }else{ echo 'col-md-12'; } ?>">
            <header class="panel-heading">
                Lab patient List<?php echo lang('lab_patient_report'); ?>
                <div class="col-md-4 no-print pull-right"> 
                    <a href="lab/addLabView">
                        <div class="btn-group pull-right">
                            <button id="" class="btn green btn-xs">
                                <i class="fa fa-plus-circle"></i> <?php echo lang('add_lab_report'); ?>
                            </button>
                        </div>
                    </a>
                </div>
            </header>
            <div class="panel-body">
                <div class="adv-table editable-table ">
                    <div class="space15"></div>
                    <table class="table table-striped table-hover table-bordered" id="editable-sample">
                        <thead>
                            <tr>
                                <th><?php echo lang('report_id'); ?></th>
                                <th><?php echo lang('patient'); ?></th>
                                <th><?php echo lang('contact'); ?>#</th>
                                <th><?php echo lang('status'); ?></th>
                                <th><?php echo lang('date'); ?></th>
                                <th class=""><?php echo lang('options'); ?></th>
                            </tr>
                        </thead>
                        <tbody>

                        <style>

                            .img_url{
                                height:20px;
                                width:20px;
                                background-size: contain; 
                                max-height:20px;
                                border-radius: 100px;
                            }
                            .option_th{
                                width:18%;
                            }

                        </style>

                        </tbody>
                    </table>
                </div>
            </div>
        </section>
        <!-- page end-->
    </section>
</section>
<!--main content end-->
<!--footer start-->



<script src="common/js/codearistos.min.js"></script>
<script>
    $(document).ready(function () {
        $(".flashmessage").delay(3000).fadeOut(100);
    });
</script>


<script>
    $(document).ready(function () {
        var table = $('#editable-sample').DataTable({
            responsive: true,

            "processing": true,
            "serverSide": true,
            "searchable": true,
            "ajax": {
                url: "lab/getLab",
                type: 'POST',
            },
            scroller: {
                loadingIndicator: true
            },

            dom: "<'row'<'col-sm-3'l><'col-sm-5 text-center'B><'col-sm-4'f>>" +
                    "<'row'<'col-sm-12'tr>>" +
                    "<'row'<'col-sm-5'i><'col-sm-7'p>>",
            buttons: [
                'copyHtml5',
                'excelHtml5',
                'csvHtml5',
                'pdfHtml5',
                {
                    extend: 'print',
                    exportOptions: {
                        columns: [0, 1, 2],
                    }
                },
            ],

            aLengthMenu: [
                [10, 25, 50, 100, -1],
                [10, 25, 50, 100, "All"]
            ],
            iDisplayLength: 100,
            "order": [[0, "desc"]],

            "language": {
                "lengthMenu": "_MENU_",
                search: "_INPUT_",
                searchPlaceholder: "Search..."
            }
        });
        table.buttons().container().appendTo('.custom_buttons');
    });
</script>





<script>
    $(document).ready(function () {
        $('.pos_client').hide();
        $(document.body).on('change', '#pos_select', function () {

            var v = $("select.pos_select option:selected").val()
            if (v == 'add_new') {
                $('.pos_client').show();
            } else {
                $('.pos_client').hide();
            }
        });

    });


</script>

<script>
    $(document).ready(function () {
        $('.pos_doctor').hide();
        $(document.body).on('change', '#add_doctor', function () {

            var v = $("select.add_doctor option:selected").val()
            if (v == 'add_new') {
                $('.pos_doctor').show();
            } else {
                $('.pos_doctor').hide();
            }
        });

    });


</script>



<script type="text/javascript">
    $(document).ready(function () {
        $(document.body).on('change', '#template', function () {
            var iid = $("select.template option:selected").val();
            $.ajax({
                url: 'lab/getTemplateByIdByJason?id=' + iid,
                method: 'GET',
                data: '',
                dataType: 'json',
            }).success(function (response) {
                var data = CKEDITOR.instances.editor.getData();
                if (response.template.template != null) {
                    var data1 = data + response.template.template;
                } else {
                    var data1 = data;
                }
                CKEDITOR.instances['editor'].setData(data1)
            });
        });
    });
</script>


