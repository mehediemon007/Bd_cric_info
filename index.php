<?php

  include 'connect.php';

?>



<!DOCTYPE html>

<html>

<head>


  <meta http-equiv="refresh" content="20">
  <title>Bangladesh Cricket Info</title>
  <link rel="stylesheet" href="style.css" type="text/css"/>

</head>

<body>

<div id="center">

 <header id="header">
  <img src="ProjectPic/web-pic.JPG" title="Bangladesh Cricket Info" alt="Bangladesh Cricket Info" class="icon" height="100" width="200"/>
  <h1>Bangladesh Cricket Info</h1>
  
 
 </header>
 
 
 <section >
        
	<?php 
     $sql = "SELECT * FROM score";
     $result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row =mysqli_fetch_assoc($result)) {
          ?> 
		  
		  <h2>Live Matches</h2>
		  
		  <div>   
		    <a href="live_score.php" style=text-decoration:none><?php  
			   echo $row["Country"]." :".$row["score(Country)"]."  ".$row["over(Country)"]."<br/>";
		       echo $row["Oponent"]." :".$row["score(Opponent)"]." ".$row["over(Opponent)"]."</br>";
			   echo $row["Comment"]."</br>";
			   
			   }
} else {
    echo "0 results";
}
$conn->close();
?>
</a>


        <form action="index.php">
			     <input type="submit" value="Refresh">
			  </form>
	</div>	
		<div id ="nav">	  
			  <ul style="list-style:none">
			  
			  
			  <li><a href="index.php" style="text-decoration:none">Home</a></li> 
			 <li><a href="Series.php" style="text-decoration:none">Series</a></li>
             <!--li><a href="Stat.php"  style="text-decoration:none">Statistics</a></li-->
			 <li><a href="Record.php" style="text-decoration:none">Record</a></li>
             
			  
			  
			  </ul>
			  
		</div> 
			  
        
         <form  action="welcome.php" method="POST" id="section">
          <input type="text" name="name" placeholder="Enter player name">
          <input type="submit" name="submit" value="Search">
</form>

 
 
 
 
 </section>
 
 </div>
 

 </body>
</html>