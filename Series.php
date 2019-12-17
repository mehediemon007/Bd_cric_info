<?php
  include 'connect.php';
  include 'Heading.php';
 
  ?>
  
  <!DOCTYPE html>

<html>

<head>



</head>

<body>


	      <div id="nav">	  
			  <ul style="list-style:none">
			  
			  
			  

             <li><a href="Stat.php"  style="text-decoration:none">Statistics</a></li>

			  
			  
			  </ul>
			  
			  </div>
			  
			
			 	  
 
 
 </body>
 
 </html>

  			  
  
<?php
  $sql = "SELECT * FROM Series ";
 $result = $conn->query($sql);


if ($result->num_rows > 0) {
    // output data of each row
    while($row =mysqli_fetch_assoc($result)) {
			
			echo "Bangladesh"." vs ".$row["Oponent"]."(".$row["Match_number"]." ".$row["Format"].")";?>
			
            <h5>At:</h5><?php echo $row["Date"]."<br/>";?>
			
			<h5>Venue:</h5><?php echo $row["Venue"]."<br/>";?>
			
			<h6>*********</h6>
			
			<?php
			
		
			 
    }
} else {
    echo "0 results";
}
  
$conn->close();
?>

