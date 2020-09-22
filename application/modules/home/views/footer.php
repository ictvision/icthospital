<footer class="site-footer">
    <div class="text-center">
        20<?php echo date('y'); ?> &copy; <?php echo $this->db->get('settings')->row()->system_vendor; ?> by ICT VISION.
        <a href="<?php echo current_full_url() . '#'; ?>" class="go-top">
            <i class="fa fa-angle-up"></i>
        </a>
    </div>
</footer>
<!--footer end-->
</section>
 <script src="common/lib/jquery/jquery.min.js"></script>
  <script src="common/lib/bootstrap/js/bootstrap.min.js"></script>

<!-- <script src="common/assets/js/jquery.js"></script>
<script src="common/assets/js/jquery-1.8.3.min.js"></script>
<script src="common/assets/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="common/lib/jquery.dcjqaccordion.2.7.js"></script> -->
  <script class="include" type="text/javascript" src="common/lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="common/lib/jquery.scrollTo.min.js"></script>
  <script src="common/lib/jquery.nicescroll.js" type="text/javascript"></script>
  <script src="common/lib/jquery.sparkline.js"></script>
  <!--common script for all pages-->
  <script src="common/lib/common-scripts.js"></script>
  <script type="text/javascript" src="common/lib/gritter/js/jquery.gritter.js"></script>
  <script type="text/javascript" src="common/lib/gritter-conf.js"></script>
  <!--script for this page-->
  <script src="common/lib/sparkline-chart.js"></script>
  <script src="common/lib/zabuto_calendar.js"></script>
  <script type="text/javascript" src="common/assets/jquery-multi-select/js/jquery.multi-select.js"></script>
<script type="text/javascript" src="common/assets/jquery-multi-select/js/jquery.quicksearch.js"></script>
  <script type="text/javascript" src="common/lib/DataTables/datatables.min.js"></script>
  
<script type="text/javascript" language="javascript" src="common/lib/advanced-datatable/js/jquery.dataTables.js"></script>
  <script type="text/javascript" src="common/lib/advanced-datatable/js/DT_bootstrap.js"></script>
 <script type="text/javascript" src="common/assets/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="common/assets/bootstrap-wysihtml5/bootstrap-wysihtml5.js"></script>
<script src="common/js/advanced-form-components.js"></script>
s
  <script type="text/javascript">


    $(document).ready(function() {
      var unique_id = $.gritter.add({
        // (string | mandatory) the heading of the notification
        title: 'Welcome to Dashio!',
        // (string | mandatory) the text inside the notification
        text: 'Hover me to enable the Close Button. You can hide the left sidebar clicking on the button next to the logo.',
        // (string | optional) the image to display on the left
        image: 'img/ui-sam.jpg',
        // (bool | optional) if you want it to fade out on its own or just sit there
        sticky: false,
        // (int | optional) the time you want it to be alive for before fading out
        time: 8000,
        // (string | optional) the class name you want to apply to that specific message
        class_name: 'my-sticky-class'
      });

      return false;
    });
  </script>
  <script type="application/javascript">
    $(document).ready(function() {
      $("#date-popover").popover({
        html: true,
        trigger: "manual"
      });
      $("#date-popover").hide();
      $("#date-popover").click(function(e) {
        $(this).hide();
      });

      $("#my-calendar").zabuto_calendar({
        action: function() {
          return myDateFunction(this.id, false);
        },
        action_nav: function() {
          return myNavFunction(this.id);
        },
        ajax: {
          url: "show_data.php?action=1",
          modal: true
        },
        legend: [{
            type: "text",
            label: "Special event",
            badge: "00"
          },
          {
            type: "block",
            label: "Regular event",
          }
        ]
      });
    });

    function myNavFunction(id) {
      $("#date-popover").hide();
      var nav = $("#" + id).data("navigation");
      var to = $("#" + id).data("to");
      console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
    }
  </script>




<?php
$language = $this->db->get('settings')->row()->language;

if ($language == 'english') {
    $lang = 'en';
} elseif ($language == 'spanish') {
    $lang = 'es';
} elseif ($language == 'french') {
    $lang = 'fr';
} elseif ($language == 'portuguese') {
    $lang = 'pt';
} elseif ($language == 'arabic') {
    $lang = 'ar';
} elseif ($language == 'italian') {
    $lang = 'it';
}
?>



<script src='common/assets/fullcalendar/locale/<?php echo $lang; ?>.js'></script>



<style>

</style>
<script>
    $('.multi-select').multiSelect({
        selectableHeader: "<input type='text' class='search-input' autocomplete='off' placeholder=' search...'>",
        selectionHeader: "<input type='text' class='search-input' autocomplete='off' placeholder=''>",
        afterInit: function (ms) {
            var that = this,
                    $selectableSearch = that.$selectableUl.prev(),
                    $selectionSearch = that.$selectionUl.prev(),
                    selectableSearchString = '#' + that.$container.attr('id') + ' .ms-elem-selectable:not(.ms-selected)',
                    selectionSearchString = '#' + that.$container.attr('id') + ' .ms-elem-selection.ms-selected';

            that.qs1 = $selectableSearch.quicksearch(selectableSearchString)
                    .on('keydown', function (e) {
                        if (e.which === 40) {
                            that.$selectableUl.focus();
                            return false;
                        }
                    });

            that.qs2 = $selectionSearch.quicksearch(selectionSearchString)
                    .on('keydown', function (e) {
                        if (e.which == 40) {
                            that.$selectionUl.focus();
                            return false;
                        }
                    });
        },
        afterSelect: function () {
            this.qs1.cache();
            this.qs2.cache();
        },
        afterDeselect: function () {
            this.qs1.cache();
            this.qs2.cache();
        }
    });
</script>

<script>
    $('#my_multi_select3').multiSelect()
</script>

<script>
    $('.default-date-picker').datepicker({
        format: 'dd-mm-yyyy',
        autoclose: true
    });

     $('.default-date-picker1').datetimepicker({

            minView: 2,
            format: 'dd-mm-yyyy HH:ii p',
            startDate: new Date,
            autoclose: true,
     });


    $('#date').on('changeDate', function () {
        $('#date').datepicker('hide');
    });

    $('#date1').on('changeDate', function () {
        $('#date1').datepicker('hide');
    });


</script>


<script type="text/javascript">

    $(document).ready(function () {
        $('#calendar').fullCalendar({
            lang: 'en',
            events: 'appointment/getAppointmentByJason',
            header:
                    {
                        left: 'prev,next today',
                        center: 'title',
                        right: 'month,agendaWeek,agendaDay',
                    },
            /*    timeFormat: {// for event elements
             'month': 'h:mm TT A {h:mm TT}', // default
             'week': 'h:mm TT A {h:mm TT}', // default
             'day': 'h:mm TT A {h:mm TT}'  // default
             },
             
             */
         /*   timeFormat: 'h(:mm) A',
            eventRender: function (event, element) {
                element.find('.fc-time').html(element.find('.fc-time').text());
                element.find('.fc-title').html(element.find('.fc-title').text());

            },
            slotDuration: '00:5:00',
            businessHours: false,
            slotEventOverlap: false,
            editable: false,
            selectable: false,
            lazyFetching: true,
            minTime: "6:00:00",
            maxTime: "24:00:00",
            defaultView: 'month',
            allDayDefault: false,
            displayEventEnd: true,
            timezone: false,

        });
    });

</script>










<script>
    $(document).ready(function () {
        $('.timepicker-default').timepicker({defaultTime: 'value'});

    });
</script>

<script type="text/javascript" src="common/assets/select2/js/select2.min.js"></script>


<script type="text/javascript">

    $(document).ready(function () {
        $(".js-example-basic-single").select2();

        $(".js-example-basic-multiple").select2();
    });

</script>




<script type="text/javascript">

    $(document).ready(function () {
        var windowH = $(window).height();
        var wrapperH = $('#container').height();
        if (windowH > wrapperH) {
            $('#sidebar').css('height', (windowH) + 'px');
        } else {
            $('#sidebar').css('height', (wrapperH) + 'px');
        }
        var windowSize = window.innerWidth;
        if (windowSize < 768) {
            $('#sidebar').removeAttr('style');
        }
    });
    function onElementHeightChange(elm, callback) {
        var lastHeight = elm.clientHeight, newHeight;
        (function run() {
            newHeight = elm.clientHeight;
            if (lastHeight != newHeight)
                callback();
            lastHeight = newHeight;
            if (elm.onElementHeightChangeTimer)
                clearTimeout(elm.onElementHeightChangeTimer);
            elm.onElementHeightChangeTimer = setTimeout(run, 200);
        })();
    }



    
     onElementHeightChange(document.body, function () {
     var windowH = $(window).height();
     var wrapperH = $('#container').height();
     if (windowH > wrapperH) {
     $('#sidebar').css('height', (windowH) + 'px');
     } else {
     $('#sidebar').css('height', (wrapperH) + 'px');
     }
     
     var windowSize = $(window).width();
     if (windowSize < 768) {
     $('#sidebar').removeAttr('style');
     }
     });
     
     





    $(window).resize(function () {

        if (width == GetWidth()) {
            return;
        }

        width = GetWidth();

        if (width < 600) {
            $('#sidebar').hide();
        } else {
            $('#sidebar').show();
        }

    });


</script>




<script>
    CKEDITOR.replace("description",
            {
                height: 400
            });
</script>











</body>
</html>
