<?php

   function custom_error($errorno,$errorstr)
   {
       echo "<b>Error:<b/>  [$errorno]  $errorstr<br/>";
	   echo "Error has been notified";
	   error_log("Error: [$errorno] $errorstr",1,"mehediemon7@gmail.com","From: hasan15-6741@diu.edu.bd");
	  // die();
   
   }
   
   set_error_handler("custom_error",E_USER_WARNING);
   
    $test=2;
	if($test>=1)
	{
		trigger_error("Test value must be below 1",E_USER_WARNING);
	}
	
	echo "------------------------------------------------------------<br/>";
	
	function checknum($number)
	{
		if($number>1){
			throw new Exception("Number must be below 1");
		}
		return true;
	}
	
	try{
	checknum(2);
	echo "Number is below 1";
	
     }
	 
	 catch(Exception $e)
	 {
		 echo "Message:". $e->getMessage();
	 }
	





?>