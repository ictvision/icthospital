<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="styleWWW.css">

	<title></title>
	<style type="text/css">
	#invoice-POS{
 /* box-shadow: 0 0 1in -0.25in rgba(0, 0, 0, 0.5);
  padding:2mm;
  margin: 0 auto;
  width: 44mm;
  background: #FFF;*/
  text-align: center;
  
  }
	h1{
  font-size: 1.5em;
  color: #222;
}
h2{font-size: .9em;}
h3{
  font-size: 1.2em;
  font-weight: 300;
  line-height: 2em;
}
p{
  font-size: .9em;
  color: #000;
  line-height: 1.2em;
}
	#top, #mid,#bot{ /* Targets all id with 'col-' */
  border-bottom: 1px solid #EEE;
}
	#top{min-height: 100px;}
#mid{min-height: 80px;} 
#bot{ min-height: 50px;}

#top .logo{
  //float: left;
  height: 75px;
  width: 120px;
  background: url(http://school.ictcore.org/markssheetcontent/school-title.png) no-repeat;
  background-size: 130px 75px;
}
.clientlogo{
  float: left;
  height: 60px;
  width: 60px;
  background: url(http://michaeltruong.ca/images/client.jpg) no-repeat;
  background-size: 60px 60px;
  border-radius: 50px;
}
.info{
  display: block;
  //float:left;
  margin-left: 0;
}
.title{
  float: right;
}
.title p{text-align: right;} 
table{
  width: 100%;
  border-collapse: collapse;

}

td{
  //padding: 5px 0 5px 15px;
  //border: 1px solid #EEE;
   font-size: 1.5em;

}
.tabletitle{
  //padding: 5px;
  font-size: .9em;
  background: #EEE;
}
.service{border-bottom: 1px solid #EEE;}
.item{width: 24mm;}
.itemtext{font-size: .5em;}

#legalcopy{
  margin-top: 5mm;
}
	</style>
</head>
<body>



  <div id="invoice-POS">
    
    <center id="top">
      
      <div class="info"> 
       <h3>
			<?php echo $settings->title ?>
		</h3>
		<h4>
			<?php echo $settings->address ?>
		</h4>
		<h4>
			Tel: <?php echo $settings->phone ?>
		</h4>
      </div><!--End Info-->
<!--                 <img alt="" src="<?php echo $this->settings_model->getSettings()->logo; ?>" width="200" height="100">
 -->
    </center><!--End InvoiceTop-->
    
    <div id="mid">
      <div class="info">
        <h2></h2>
         <p> 
            Patien Name   &nbsp;: <?php  echo $patient;?></br>
            Doctor           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   : <?php  echo $Doctor;?></br>
           
        </p>
       
    </div><!--End Invoice Mid-->
    
    <div id="bot">

					<h1><?php  echo $token;?></h1>
					</div><!--End Table-->

					 

				</div><!--End InvoiceBot-->
  </div><!--End Invoice-->
</div>


<script type="text/javascript">
window.print(); 
   
</script>

</body>
</html>