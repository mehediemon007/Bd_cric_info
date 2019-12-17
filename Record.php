<?php
 include 'connect.php';
 include 'Heading.php';
 ?>
 
 <table border="1">
<caption>ODI TOP BATSMAN</caption>
<tr>
<th>Name</th>
<th>Score</th>
<th>Year</th>
<th>Opponent</th>
</tr>
<?php 
 $sql = "SELECT *FROM top_batsman_odi";
 $result = $conn->query($sql);
 
 
  
 
 if($result->num_rows > 0 ){
	 
	 while ($row=mysqli_fetch_assoc($result)){
		 
		echo "<tr><td>".$row["Name"]."</td><td>"
		.$row["Score"]."</td><td>"
		 .$row["Year"]."</td><td>"
		 .$row["Against"]."</td></tr>";
	 }
	 
 }
 else
    {
		 echo "0 result";
	}
	
	echo "</br>";
	
	?>
	</table>
	
	<table border="1">
<caption>ODI TOP BOWLER</caption>
<tr>
<th>Name</th>
<th>Score</th>
<th>Year</th>
<th>Opponent</th>
</tr>
<?php	
	
	$sql = "SELECT *FROM top_bowler_odi";
    $result = $conn->query($sql);
 
 
  
 
 if($result->num_rows > 0 ){
	 
	 while ($row=mysqli_fetch_assoc($result)){
		 
		 echo "<tr><td>".$row["Name"]."</td><td>"
		.$row["Score"]."</td><td>"
		 .$row["Year"]."</td><td>"
		 .$row["Against"]."</td></tr>";
	 }
	 
 }
 else
    {
		echo "0 result";
	}
	
	echo "</br>";
	?>
	
	<table border="1">
<caption>TEST TOP BATSMAN</caption>
<tr>
<th>Name</th>
<th>Score</th>
<th>Year</th>
<th>Opponent</th>
</tr>
<?php
	
	$sql = "SELECT *FROM top_batsman_test";
 $result = $conn->query($sql);
 
 
  
 
 if($result->num_rows > 0 ){
	 
	 while ($row=mysqli_fetch_assoc($result)){
		 
		 echo "<tr><td>".$row["Name"]."</td><td>"
		.$row["Score"]."</td><td>"
		 .$row["Year"]."</td><td>"
		 .$row["Against"]."</td></tr>";
	 }
	 
 }
 else
    {
		 echo "0 result";
	}
	
	echo "</br>";
	?>
	
	<table border="1">
<caption>TEST TOP BOWLER</caption>
<tr>
<th>Name</th>
<th>Score</th>
<th>Year</th>
<th>Opponent</th>
</tr>
<?php
	
	$sql = "SELECT *FROM top_bowler_test";
 $result = $conn->query($sql);
 
 
  
 
 if($result->num_rows > 0 ){
	 
	 while ($row=mysqli_fetch_assoc($result)){
		 
		  echo "<tr><td>".$row["Name"]."</td><td>"
		.$row["Score"]."</td><td>"
		 .$row["Year"]."</td><td>"
		 .$row["Against"]."</td></tr>";
	 }
	 
 }
 else
    {
		 echo "0 result";
	}
	
	echo "</br>";
	
	?>
	

	
	
	
	
	<table border="1">
<caption>T20 TOP BATSMAN</caption>
<tr>
<th>Name</th>
<th>Score</th>
<th>Year</th>
<th>Opponent</th>
</tr>
<?php	
	$sql = "SELECT *FROM top_batsman_t20";
 $result = $conn->query($sql);
 
 
  
 
 if($result->num_rows > 0 ){
	 
	 while ($row=mysqli_fetch_assoc($result)){
		 
		  
		 echo "<tr><td>".$row["Name"]."</td><td>"
		.$row["Score"]."</td><td>"
		 .$row["Year"]."</td><td>"
		 .$row["Against"]."</td></tr>";
	 }
	 
 }
 else
    {
		 echo "0 result";
	}
	echo "       ";
	?>
	
	<table border="1">
<caption>T20 TOP BOWLER</caption>
<tr>
<th>Name</th>
<th>Score</th>
<th>Year</th>
<th>Opponent</th>
</tr>

	
	
<?php	
	$sql = "SELECT *FROM top_bowler_t20";
 $result = $conn->query($sql);
 
 
  
 
 if($result->num_rows > 0 ){
	 
	 while ($row=mysqli_fetch_assoc($result)){
		 
		 

 echo "<tr><td>".$row["Name"]."</td><td>"
		.$row["Score"]."</td><td>"
		 .$row["Year"]."</td><td>"
		 .$row["Against"]."</td></tr>";
	 }
	 
 }
 else
    {
		 echo "0 result";
	}
   echo"</br>";
	
	
	
	$conn->close();

?>