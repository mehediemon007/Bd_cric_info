<?php
  include 'connect.php';
  include 'Heading.php';
  $sql = "SELECT * FROM score_details";
$result = $conn->query($sql);

 if ($result->num_rows > 0) {
    // output data of each row
    while($row =mysqli_fetch_assoc($result)) {
		?>
		
		<table border="0">
	 <tr>
	 <th>Player_Name</th>
	 <th>Run</th>
	 <th>Ball</th>
	 <th>Strick_Rate</th>
	
	 </tr>
	 
	 <tr>
	 <td><?php echo $row["Batsman_strick"];?></td>
	 <td><?php echo $row["Run_bs"];?></td>
	 <td><?php echo $row["Ball_bs"];?></td>
	 <?php $Run_bs=$row["Run_bs"];
     $Ball_bs=$row["Ball_bs"];?>
	  
	 <td><?php echo  number_format(($Run_bs/$Ball_bs),2);?></td>
	
	 </tr>
	 
	 <tr>
	 <td><?php echo $row["Batsman_nonstrick"];?></td>
	 <td><?php echo $row["Run_bns"];?></td>
	 <td><?php echo $row["Ball_bns"];?></td>
	 <?php $Run_bns=$row["Run_bns"];
       $Ball_bns=$row["Ball_bns"];?>
	   
    <td><?php echo  number_format(($Run_bns/$Ball_bns),2);?></td>
	 
	 
	 </tr>
	 
	 </table>
	 
	 
	 <table border="0">
	 <tr>
	 <th>Bowler_Name</th>
	 <th>Over</th>
	 <th>Run</th>
	 <th>Wickets</th>
	 </tr>
	 
	 <tr>
	 
	 <td><?php echo $row["Bowler"];?></td>
	 <td><?php echo $row["Over"];?></td>
	 <td><?php echo $row["Run_bo"];?></td>
	 <td><?php echo $row["Wicket"];?></td>
	 
	 </tr>
	 
	 </table>

	<?php	
	}
 }
 
  else {
    echo "0 results";
	
}
$conn->close();
 
  
  
?>