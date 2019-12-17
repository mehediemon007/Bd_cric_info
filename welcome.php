 <?php
  require 'connect.php';
  include 'Heading.php';
?>
<!DOCTYPE html>
<html>
<head></head>
<link rel="stylesheet" href="style.css" type="text/css"/>

<?php     
     $player_name=$_POST["name"];
	 
	 $sql = "SELECT * FROM player_detail where Name='$player_name'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row =mysqli_fetch_assoc($result)) {
        ?> <img src="<?php echo $row["image"];?>" height="100" width="100"/>
		
		
	<?php	echo "Name:" . $row["Name"]."<br/>";
        echo " Country: " . $row["Country"]."<br/>";
        echo " Born:" . $row["Born"]. "<br>";
        echo " Birth Place: " . $row["Birth Place"]. "<br>";
        echo " Height: " . $row["Height"]. "<br>";
        echo " Role: " . $row["Role"]. "<br>";
        echo " Batting Style: " . $row["Batting Style"]. "<br>";
        echo " Bowling Style: " . $row["Bowling Style"]. "<br>";
		echo "-----------------------"."<br>";
    }
} else {
    echo "0 results";
	
}
      $sql = "SELECT * FROM test where Name='$player_name'";
          $result = $conn->query($sql);
		  
	if ($result->num_rows > 0) {
    // output data of each row
    while($row =mysqli_fetch_assoc($result)) {
     ?>   	  
			  <table border="1">
<caption>Test</caption>
<tr>

<th>Ranking</th>
<th>Matches</th>
<th>Innings</th>
<th>Runs</th>
<th>Average</th>
<th>Strick Rate</th>
<th>Highest Score</th>
<th>100</th>
<th>50</th>
<th>200</th>
</tr>
<tr>

<td><?php echo $row["Ranking"];?></td>
<td><?php echo $row["Matches"];?></td>
<td><?php echo $row["Innings"];?></td>
<td><?php echo $row["Runs"];?></td>
<td><?php echo $row["Average"];?></td>
<td><?php echo $row["Strick Rate"];?></td>
<td><?php echo $row["Highest Score"];?></td>
<td><?php echo $row["100"];?></td>
<td><?php echo $row["50"];?></td>
<td><?php echo $row["200"];?></td>
</tr>
</table>

<?php
	}
	
	
	}
	
	else {
		echo "0 result"; 
	}

?>
	
</br>
<?php
 $sql = "SELECT * FROM odi where Name='$player_name'";
          $result = $conn->query($sql);
		  
	if ($result->num_rows > 0) {
    // output data of each row
    while($row =mysqli_fetch_assoc($result)) {
        	  
	?>
	
	<table border="1">
<caption>Odi</caption>

<tr>
<th>Ranking</th>
<th>Matches</th>
<th>Innings</th>
<th>Runs</th>
<th>Average</th>
<th>Strick Rate</th>
<th>Highest Score</th>
<th>100</th>
<th>50</th>
<th>200</th>


</tr>

<tr>

<td><?php echo $row["Ranking"];?></td>
<td><?php echo $row["Matches"];?></td>
<td><?php echo $row["Innings"];?></td>
<td><?php echo $row["Runs"];?></td>
<td><?php echo $row["Average"];?></td>
<td><?php echo $row["Strick Rate"];?></td>
<td><?php echo $row["Highest Score"];?></td>
<td><?php echo $row["100"];?></td>
<td><?php echo $row["50"];?></td>
<td><?php echo $row["200"];?></td>

	 </tr>
  </table>	
  <?php
	}
	
	
	}
	
	else {
		echo "0 result"; 
	}

?>

      </br>
	  
	  <?php

$sql = "SELECT * FROM t20 where Name='$player_name'";
          $result = $conn->query($sql);
		  
	if ($result->num_rows > 0) {
    // output data of each row
    while($row =mysqli_fetch_assoc($result)) {
        	  
	?>
	
	
	<table border="1">
<caption>T20</caption>
<tr>
<th>Ranking</th>
<th>Matches</th>
<th>Innings</th>
<th>Runs</th>
<th>Average</th>
<th>Strick Rate</th>
<th>Highest Score</th>
<th>100</th>
<th>50</th>



</tr>

<tr>

<td><?php echo $row["Ranking"];?></td>
<td><?php echo $row["Matches"];?></td>
<td><?php echo $row["Innings"];?></td>
<td><?php echo $row["Runs"];?></td>
<td><?php echo $row["Average"];?></td>
<td><?php echo $row["Strick Rate"];?></td>
<td><?php echo $row["Highest Score"];?></td>
<td><?php echo $row["100"];?></td>
<td><?php echo $row["50"];?></td>

</tr>
</table>

<?php
	}
	
	
	}
	
	else {
		echo "0 result"; 
	}

?>


</br>
<?php

  $sql = "SELECT * FROM odi_bowling where Name='$player_name'";
          $result = $conn->query($sql);
		  
	if ($result->num_rows > 0) {
    // output data of each row
    while($row =mysqli_fetch_assoc($result)) {
		?>
		<table border="1">
<caption>Odi_Bowling</caption>

<tr>

<th>Ranking</th>
<th>Matches</th>
<th>Innings</th>
<th>Bowls</th>
<th>Wicktes</th>
<th>Runs</th>
<th>BBI</th>
<th>Economy</th>
<th>Average</th>
<th>5W</th>
<th>10W</th>

</tr>

<tr>

<td><?php echo $row["Ranking"];?></td>
<td><?php echo $row["Matches"];?></td>
<td><?php echo $row["Innings"];?></td>
<td><?php echo $row["Bowls"];?></td>
<td><?php echo $row["Wickets"]?></td>
<td><?php echo $row["Runs"];?></td>
<td><?php echo $row["BBI"];?></td>
<td><?php echo $row["Economy"];?></td>
<td><?php echo $row["Average"];?></td>
<td><?php echo $row["5W"];?></td>
<td><?php echo $row["10W"];?></td>

</tr>
</table>
		
	<?php
	}
	
	
	}
	
	else {
		echo "0 result"; 
	}

?>	
      
  

<?php


$sql = "SELECT * FROM test_bowling where Name='$player_name'";
          $result = $conn->query($sql);
		  
	if ($result->num_rows > 0) {
    // output data of each row
    while($row =mysqli_fetch_assoc($result)) {
		?>
		<table border="1">
<caption>Test_Bowling</caption>

<tr>

<th>Ranking</th>
<th>Matches</th>
<th>Innings</th>
<th>Bowls</th>
<th>Runs</th>
<th>Wicktes</th>
<th>BBI</th>
<th>Economy</th>
<th>Average</th>
<th>5W</th>
<th>10W</th>

</tr>

<tr>

<td><?php echo $row["Ranking"];?></td>
<td><?php echo $row["Match"];?></td>
<td><?php echo $row["Inn"];?></td>
<td><?php echo $row["Bowls"];?></td>
<td><?php echo $row["Runs"];?></td>
<td><?php echo $row["Wkts"];?></td>
<td><?php echo $row["BBI"];?></td>
<td><?php echo $row["Econ"];?></td>
<td><?php echo $row["Avg"];?></td>
<td><?php echo $row["5W"];?></td>
<td><?php echo $row["10W"];?></td>

<?php
	}
	
	
	}
	
	else {
		echo "0 result"; 
	}

?>

</tr>
</table>
        	  
	


<?php

$sql = "SELECT * FROM t20_bowling where Name='$player_name'";
          $result = $conn->query($sql);
		  
	if ($result->num_rows > 0) {
    // output data of each row
    while($row =mysqli_fetch_assoc($result)) {
		?>
		<table border="1">
<caption>t20_bowling</caption>

<tr>

<th>Ranking</th>
<th>Matches</th>
<th>Innings</th>
<th>Bowls</th>
<th>Wicktes</th>
<th>Runs</th>
<th>BBI</th>
<th>Economy</th>
<th>Average</th>
<th>5W</th>
<th>10W</th>

</tr>

<tr>

<td><?php echo $row["Ranking"];?></td>
<td><?php echo $row["Match"];?></td>
<td><?php echo $row["Inn"];?></td>
<td><?php echo $row["Bowls"];?></td>
<td><?php echo $row["Wkts"];?></td>
<td><?php echo $row["Runs"];?></td>
<td><?php echo $row["BBI"];?></td>
<td><?php echo $row["Econ"];?></td>
<td><?php echo $row["Avg"];?></td>
<td><?php echo $row["5W"];?></td>
<td><?php echo $row["10W"];?></td>



</tr>
</table>

<?php
	}
	
	
	}
	
	else {
		echo "0 result"; 
	}

?>

</html>

<?php

$conn->close();

?>