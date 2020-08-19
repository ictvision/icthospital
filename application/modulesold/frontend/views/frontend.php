


<?php
$settings = $this->frontend_model->getSettings();
$title = explode(' ', $settings->title);
?>

<!DOCTYPE html>
<html lang="en" <?php if ($this->db->get('settings')->row()->language == 'arabic') { ?> dir="rtl" <?php } ?>>
    <head>
        <base href="<?php echo base_url(); ?>">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="Mosaddek">
        <meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
        <link rel="shortcut icon" href="img/favicon.png">

        <title><?php echo $settings->title; ?></title>

        <!-- Bootstrap core CSS -->
        <link href="front/css/bootstrap.min.css" rel="stylesheet">
        <link href="front/css/theme.css" rel="stylesheet">
        <link href="front/css/bootstrap-reset.css" rel="stylesheet">
        <!--external css-->
        <link href="front/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        <link rel="stylesheet" href="common/assets/bootstrap-datepicker/css/datepicker.css" />
        <link rel="stylesheet" type="text/css" href="common/assets/bootstrap-timepicker/compiled/timepicker.css">
        <link rel="stylesheet" href="front/css/flexslider.css"/>
        <link href="front/assets/bxslider/jquery.bxslider.css" rel="stylesheet" />
        <link href="front/assets/fancybox/source/jquery.fancybox.css" rel="stylesheet" />

        <link rel="stylesheet" href="front/assets/revolution_slider/css/rs-style.css" media="screen">
        <link rel="stylesheet" href="front/assets/revolution_slider/rs-plugin/css/settings.css" media="screen">

        <!-- Custom styles for this template -->
        <link href="front/css/style.css" rel="stylesheet">
        <link href="front/css/style-responsive.css" rel="stylesheet" />

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
        <!--[if lt IE 9]>
          <script src="js/html5shiv.js"></script>
          <script src="js/respond.min.js"></script>
        <![endif]-->

        <style>

            .pad_bot{
                margin-bottom: 20px;
            }

            .modal-body{
                background: #009988;
                color: #fff;
                padding: 23px;
            }

            .appointment{
                padding: 0px 95px;
            }

            .panel{
                background: none;
            }

            label{
                width: 100%;
                line-height: 25px;
                font-size: 14px;
                font-weight: 400;
                text-transform: uppercase;
                font-family: 'Fjalla One', sans-serif;
            }

            .btn-info{
                line-height: 25px;
                font-size: 14px;
                font-weight: 400;
                text-transform: uppercase;
                font-family: 'Fjalla One', sans-serif;
            }

            .flashmessage{
                text-align: center;
                color: green;
                margin: 10px;
                font-size: 23px;
                font-weight: 500;
            }

        </style>


    </head>

    <body>
        <!--header start-->
        <header class="header-frontend">
            <div class="navbar navbar-default navbar-static-top">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="fa fa-bars"></span>
                        </button>
                        <a class="navbar-brand" href="frontend"><?php echo $title[0]; ?><span><?php echo $title[1]; ?></span></a>
                    </div>
                    <div class="navbar-collapse collapse ">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="frontend#">Home</a></li>
                            <li><a href="frontend#service">Service</a></li>                      
                            <li><a href="frontend#doctors">Doctors</a></li>
                            <li><a href="frontend#appointment">Appointment Booking</a></li>
                            <li><a href="frontend#contact">Contact</a></li>

                        </ul>
                    </div>
                </div>
            </div>
        </header>
        <!--header end--> 






        <!-- revolution slider start -->
        <div class="fullwidthbanner-container main-slider">
            <div class="fullwidthabnner">
                <ul id="revolutionul" style="display:none;">
                    <!-- 1st slide -->

                    <style>


                        .slide_item_left{
                            top: 0px !important;
                            left: 0px !important;
                            background-size: contain !important;



                            position: absolute;
                            top: 0;
                            left: 0;
                            right: 0;
                            bottom: 0;
                            background-image: url("path/to/img");
                            background-repeat: no-repeat;
                            background-size: contain;


                        }

                        .slide_item_left img{
                            background-size: cover !important;
                        }


                    </style> 


                    <?php
                    foreach ($slides as $slide) {
                        if ($slide->status == 'Active') {
                            ?>

                            <li data-transition="fade" data-slotamount="8" data-masterspeed="700" data-delay="5000" data-thumb="">
                                <div class="caption lfl slide_item_left"
                                     data-x="10"
                                     data-y="70"
                                     data-speed="400"
                                     data-start="0"
                                     data-easing="easeOutBack">
                                    <img src="<?php echo $slide->img_url; ?>" alt="Image 1">
                                </div>
                                <div class="caption lfr slide_title"
                                     data-x="670"
                                     data-y="120"
                                     data-speed="400"
                                     data-start="0"
                                     data-easing="easeOutExpo">
                                         <?php echo $slide->text1; ?>
                                </div>

                                <div class="caption lfr slide_subtitle dark-text"
                                     data-x="670"
                                     data-y="190"
                                     data-speed="400"
                                     data-start="500"
                                     data-easing="easeOutExpo">
                                         <?php echo $slide->text2; ?>
                                </div>
                                <div class="caption lfr slide_desc"
                                     data-x="680"
                                     data-y="260"
                                     data-speed="400"
                                     data-start="500"
                                     data-easing="easeOutExpo">
                                         <?php echo $slide->text3; ?>
                                </div>
                            </li>

                            <?php
                        }
                    }
                    ?>

                    <!-- 2nd slide  -->




                </ul>
                <div class="tp-bannertimer tp-top"></div>
            </div>
        </div>
        <!-- revolution slider end -->

        <!--container start-->
        <div class="container">
            <div class="row">
                <!--feature start-->
                <div class="text-center feature-head">
                    <h1><?php echo $settings->title; ?></h1>
                    <p><?php echo $settings->block_1_text_under_title; ?></p>
                </div>
                <?php
                $message = $this->session->flashdata('feedback');
                if (!empty($message)) {
                    ?>
                    <div class="flashmessage col-md-12"> <?php echo $message; ?></div>

                <?php } ?>
                <div class="col-lg-4 col-sm-4">
                    <section>
                        <div class="f-box">
                            <i class=" fa fa-phone"></i>
                            <h2>Emergency: <?php echo $settings->emergency; ?> </h2>
                        </div>
                        <p class="f-text"></p>
                    </section>
                </div>
                <div class="col-lg-4 col-sm-4">
                    <section>
                        <div class="f-box active">

                            <a id="appointment" class="btn btn-danger purchase-btn" target="_blank"> <i class=" fa fa-calendar-o"></i> Appointment Booking now</a>
                        </div>

                    </section>
                </div>
                <div class="col-lg-4 col-sm-4">
                    <section>
                        <div class="f-box">
                            <i class="fa fa-heart-o"></i>
                            <h2>24/7 Support</h2>
                        </div>
                    </section>
                </div>


                

                <!--feature end-->
            </div>




            <div class="row appointment" style="display: none;">


                <!-- Add Appointment Modal-->

                <div class="modal-body">
                    <form role="form" action="frontend/addNew" class="clearfix" method="post">
                        <div class="col-md-6">
                            <div class="col-md-12 panel">
                                <div class="col-md-3 payment_label"> 
                                    <label for="exampleInputEmail1"> <?php echo lang('patient'); ?></label>
                                </div>
                                <div class="col-md-9"> 
                                    <select class="form-control m-bot15 js-example-basic-single pos_select" id="pos_select" name="patient" value=''> 
                                        <option value=" ">Select .....</option>
                                        <option value="patient_id" style="color: #41cac0 !important;"><?php echo lang('patient_id'); ?></option>
                                        <option value="add_new" style="color: #41cac0 !important;"><?php echo lang('add_new'); ?></option>
                                    </select>
                                </div>
                            </div>

                            <div class="pos_client_id clearfix">

                                <div class="col-md-12 payment pad_bot pull-right">
                                    <div class="col-md-3 payment_label"> 
                                        <label for="exampleInputEmail1"> <?php echo lang('patient'); ?> <?php echo lang('id'); ?></label>
                                    </div>
                                    <div class="col-md-9"> 
                                        <input type="text" class="form-control pay_in" name="patient_id" placeholder="">
                                    </div>
                                </div>

                            </div>

                            <div class="pos_client clearfix">
                                <div class="col-md-12 payment pad_bot pull-right">
                                    <div class="col-md-3 payment_label"> 
                                        <label for="exampleInputEmail1"> <?php echo lang('patient'); ?> <?php echo lang('name'); ?></label>
                                    </div>
                                    <div class="col-md-9"> 
                                        <input type="text" class="form-control pay_in" name="p_name" value='' placeholder="">
                                    </div>
                                </div>
                                <div class="col-md-12 payment pad_bot pull-right">
                                    <div class="col-md-3 payment_label"> 
                                        <label for="exampleInputEmail1"> <?php echo lang('patient'); ?> <?php echo lang('email'); ?></label>
                                    </div>
                                    <div class="col-md-9"> 
                                        <input type="text" class="form-control pay_in" name="p_email" value='' placeholder="">
                                    </div>
                                </div>
                                <div class="col-md-12 payment pad_bot pull-right">
                                    <div class="col-md-3 payment_label"> 
                                        <label for="exampleInputEmail1"> <?php echo lang('patient'); ?> <?php echo lang('phone'); ?></label>
                                    </div>
                                    <div class="col-md-9"> 
                                        <input type="text" class="form-control pay_in" name="p_phone" value='' placeholder="">
                                    </div>
                                </div>
                                <div class="col-md-12 payment pad_bot pull-right">
                                    <div class="col-md-3 payment_label"> 
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

                        </div>

                        <div class="col-md-6">

                            <div class="col-md-12 panel">
                                <div class="col-md-3 payment_label"> 
                                    <label for="exampleInputEmail1">  <?php echo lang('doctor'); ?></label>
                                </div>
                                <div class="col-md-9"> 
                                    <select class="form-control m-bot15 js-example-basic-single" id="adoctors" name="doctor" value=''>  
                                        <option value="">Select .....</option>
                                        <?php foreach ($doctors as $doctor) { ?>
                                            <option value="<?php echo $doctor->id; ?>"<?php
                                            if (!empty($payment->doctor)) {
                                                if ($payment->doctor == $doctor->id) {
                                                    echo 'selected';
                                                }
                                            }
                                            ?>><?php echo $doctor->name; ?> </option>
                                                <?php } ?>
                                    </select>
                                </div>
                            </div>


                            <div class="col-md-12 panel">
                                <div class="col-md-3 payment_label"> 
                                    <label for="exampleInputEmail1"> <?php echo lang('date'); ?></label>
                                </div>
                                <div class="col-md-9"> 
                                    <input type="text" class="form-control default-date-picker" readonly="" id="date" name="date" id="exampleInputEmail1" value='' placeholder="">
                                </div>
                            </div>




                            <div class="col-md-12 panel">
                                <div class="col-md-3 payment_label"> 
                                    <label class=""><?php echo lang('available_slots'); ?></label>
                                </div>
                                <div class="col-md-9"> 
                                    <select class="form-control m-bot15" name="time_slot" id="aslots" value=''> 

                                    </select>
                                </div>
                            </div>



                            <div class="col-md-12 panel">
                                <div class="col-md-3 payment_label"> 
                                    <label for="exampleInputEmail1"> <?php echo lang('remarks'); ?></label>
                                </div>
                                <div class="col-md-9"> 
                                    <input type="text" class="form-control" name="remarks" id="exampleInputEmail1" value='' placeholder="">
                                </div>
                            </div>

                        </div>

                        <input type="hidden" name="request" value=''>

                        <button type="submit" name="submit" class="btn btn-info"> <?php echo lang('submit'); ?></button>
                    </form>
                </div>
            </div>
        </div>



        <div class="gray-box mbot50" id="service">
            <div class="container">
                <div class="row">
                    <div class="row">
                        <div class="text-center feature-head">
                            <h1> Our Services </h1>
                            <p><?php echo $settings->service_block__text_under_title; ?></p>
                        </div>
                        <?php foreach ($services as $service) { ?>

                            <div class="col-lg-6 col-sm-6">
                                <div class="content">
                                    <h3 class="title"><?php echo $service->title; ?></h3>
                                    <p><?php echo $service->description; ?></p>
                                </div>
                            </div>  

                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="container" id="doctors">
        <div class="row">
            <div class="text-center feature-head">
                <h1> Specialized Doctors </h1>
                <p><?php echo $settings->doctor_block__text_under_title; ?></p>
            </div>
            <?php foreach ($featureds as $featured) { ?>
                <div class="col-lg-4">
                    <div class="person text-center">
                        <img src="<?php echo $featured->img_url; ?>" alt="">
                    </div>
                    <div class="person-info text-center">
                        <h4>
                            <a href="javascript:;"><?php echo $featured->name; ?></a>
                        </h4>
                        <p class="text-muted"> <?php echo $featured->profile; ?> </p>

                        <p><?php echo $featured->description; ?></p>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>




    <!--container end-->

    <!--footer start-->
    <footer class="footer" id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-sm-3">
                    <h1>contact info</h1>
                    <address>
                        <p>Address: <?php echo $settings->address; ?></p>

                        <p>Phone : <?php echo $settings->phone; ?></p>
                        <p>Email : <a href="javascript:;"><?php echo $settings->email; ?></a></p>
                    </address>
                </div>
                <div class="col-lg-5 col-sm-5">
                    <h1>latest tweet</h1>
                    <div class="tweet-box">
                        <i class="fa fa-twitter"></i>
                        <em>Please follow <a href="javascript:;">@nettus</a> for all future updates of us! <a href="javascript:;">twitter.com/vectorlab</a></em>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-3 col-lg-offset-1">
                    <h1>stay connected</h1>
                    <ul class="social-link-footer list-unstyled">
                        <li><a href="<?php echo $settings->facebook_id; ?>"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="<?php echo $settings->google_id; ?>"><i class="fa fa-google-plus"></i></a></li>
                        <li><a href="<?php echo $settings->twitter_id; ?>"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="<?php echo $settings->skype_id; ?>"><i class="fa fa-skype"></i></a></li>
                        <li><a href="<?php echo $settings->youtube_id; ?>"><i class="fa fa-youtube"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
    <!--footer end-->








    <!-- js placed at the end of the document so the pages load faster -->
    <script src="front/js/jquery.js"></script>
    <script src="front/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="front/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="front/js/hover-dropdown.js"></script>
    <script defer src="front/js/jquery.flexslider.js"></script>
    <script type="text/javascript" src="common/assets/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
    <script type="text/javascript" src="common/assets/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
    <script type="text/javascript" src="front/assets/bxslider/jquery.bxslider.js"></script>

    <script type="text/javascript" src="front/js/jquery.parallax-1.1.3.js"></script>

    <script src="front/js/jquery.easing.min.js"></script>
    <script src="front/js/link-hover.js"></script>

    <script src="front/assets/fancybox/source/jquery.fancybox.pack.js"></script>

    <script type="text/javascript" src="front/assets/revolution_slider/rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
    <script type="text/javascript" src="front/assets/revolution_slider/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>

    <!--common script for all pages-->
    <script src="front/js/common-scripts.js"></script>

    <script src="front/js/revulation-slide.js"></script>


    <script>
        $('.default-date-picker').datepicker({
            format: 'dd-mm-yyyy',
            autoclose: true
        });


        $('#date').on('changeDate', function () {
            $('#date').datepicker('hide');
        });

        $('#date1').on('changeDate', function () {
            $('#date1').datepicker('hide');
        });


    </script>

    <script>
        $(document).ready(function () {
            $('.timepicker-default').timepicker({defaultTime: 'value'});

        });
    </script>

    <script>

        RevSlide.initRevolutionSlider();
        $(window).load(function () {
            $('[data-zlname = reverse-effect]').mateHover({
                position: 'y-reverse',
                overlayStyle: 'rolling',
                overlayBg: '#fff',
                overlayOpacity: 0.7,
                overlayEasing: 'easeOutCirc',
                rollingPosition: 'top',
                popupEasing: 'easeOutBack',
                popup2Easing: 'easeOutBack'
            });
        });
        $(window).load(function () {
            $('.flexslider').flexslider({
                animation: "slide",
                start: function (slider) {
                    $('body').removeClass('loading');
                }
            });
        });
        //    fancybox
        jQuery(".fancybox").fancybox();
        $(function () {
            $('a[href*=#]:not([href=#])').click(function () {
                if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
                    var target = $(this.hash);
                    target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                    if (target.length) {
                        $('html,body').animate({
                            scrollTop: target.offset().top
                        }, 1000);
                        return false;
                    }
                }
            });
        });
    </script>


    <script>
        $(document).ready(function () {
            $('.pos_client').hide();
            $('.pos_client_id').hide();
            $(document.body).on('change', '#pos_select', function () {

                var v = $("select.pos_select option:selected").val()
                if (v == 'add_new') {
                    $('.pos_client').show();
                    $('.pos_client_id').hide();
                } else if (v == 'patient_id') {
                    $('.pos_client_id').show();
                    $('.pos_client').hide();
                } else {
                    $('.pos_client_id').hide();
                    $('.pos_client').hide();

                }
            });
        });


    </script>


    <script>
        $(document).ready(function () {
            $('.appointment').hide();
            $(document.body).on('click', '#appointment', function () {

                if ($('.appointment').is(":hidden")) {
                    $('.appointment').show();
                } else {
                    $('.appointment').hide();

                }
            });
        });


    </script>






    <script type="text/javascript">
        $(document).ready(function () {
            $("#adoctors").change(function () {
                // Get the record's ID via attribute  
                var id = $('#appointment_id').val();
                var date = $('#date').val();
                var doctorr = $('#adoctors').val();
                $('#aslots').find('option').remove();
                // $('#default').trigger("reset");
                $.ajax({
                    url: 'schedule/getAvailableSlotByDoctorByDateByJason?date=' + date + '&doctor=' + doctorr,
                    method: 'GET',
                    data: '',
                    dataType: 'json',
                }).success(function (response) {
                    var slots = response.aslots;
                    $.each(slots, function (key, value) {
                        $('#aslots').append($('<option>').text(value).val(value)).end();
                    });
                    //   $("#default-step-1 .button-next").trigger("click");
                    if ($('#aslots').has('option').length == 0) {                    //if it is blank. 
                        $('#aslots').append($('<option>').text('No Further Time Slots').val('Not Selected')).end();
                    }
                    // Populate the form fields with the data returned from server
                    //  $('#default').find('[name="staff"]').val(response.appointment.staff).end()
                });
            });

        });

        $(document).ready(function () {
            var id = $('#appointment_id').val();
            var date = $('#date').val();
            var doctorr = $('#adoctors').val();
            $('#aslots').find('option').remove();
            // $('#default').trigger("reset");
            $.ajax({
                url: 'schedule/getAvailableSlotByDoctorByDateByJason?date=' + date + '&doctor=' + doctorr,
                method: 'GET',
                data: '',
                dataType: 'json',
            }).success(function (response) {
                var slots = response.aslots;
                $.each(slots, function (key, value) {
                    $('#aslots').append($('<option>').text(value).val(value)).end();
                });

                $("#aslots").val(response.current_value)
                        .find("option[value=" + response.current_value + "]").attr('selected', true);

                //   $("#default-step-1 .button-next").trigger("click");
                if ($('#aslots').has('option').length == 0) {                    //if it is blank. 
                    $('#aslots').append($('<option>').text('No Further Time Slots').val('Not Selected')).end();
                }
                // Populate the form fields with the data returned from server
                //  $('#default').find('[name="staff"]').val(response.appointment.staff).end()
            });

        });




        $(document).ready(function () {
            $('#date').datepicker({
                format: "dd-mm-yyyy",
                autoclose: true,
            })
                    //Listen for the change even on the input
                    .change(dateChanged)
                    .on('changeDate', dateChanged);
        });

        function dateChanged() {
            // Get the record's ID via attribute  
            var id = $('#appointment_id').val();
            var date = $('#date').val();
            var doctorr = $('#adoctors').val();
            $('#aslots').find('option').remove();
            // $('#default').trigger("reset");
            $.ajax({
                url: 'schedule/getAvailableSlotByDoctorByDateByJason?date=' + date + '&doctor=' + doctorr,
                method: 'GET',
                data: '',
                dataType: 'json',
            }).success(function (response) {
                var slots = response.aslots;
                $.each(slots, function (key, value) {
                    $('#aslots').append($('<option>').text(value).val(value)).end();
                });
                //   $("#default-step-1 .button-next").trigger("click");
                if ($('#aslots').has('option').length == 0) {                    //if it is blank. 
                    $('#aslots').append($('<option>').text('No Further Time Slots').val('Not Selected')).end();
                }


                // Populate the form fields with the data returned from server
                //  $('#default').find('[name="staff"]').val(response.appointment.staff).end()
            });

        }

    </script>

    <script>

         $(document).ready(function () {
            $('.caption img').removeAttr('style');

            var windowH = $(window).width();
            $('.caption img').css('width', (windowH) + 'px');
            $('.caption img').css('height', '500px');

        });

    </script>

</body>
</html>




