<?php

 include 'connect.php';
 include 'Heading.php';
 ?>
 
 
 
 
 <?php
 $sql = "SELECT * FROM Series ";
 $result = $conn->query($sql);
 

if ($result->num_rows > 0) {
    // output data of each row
    while($row =mysqli_fetch_assoc($result)) {
			
		
			$oponent=$row["Oponent"];
            
			
			 
    }
} else {
    echo "0 results";

}


$sql = "SELECT * FROM Series ";
 $result = $conn->query($sql);
 

if ($result->num_rows > 0) {
    // output data of each row
    while($row =mysqli_fetch_assoc($result)) {
			
		
			$format=$row["Format"];
            
			
			 
    }
} else {
    echo "0 results";
}
  
?>

<?php

if($format=='odi'){
	
	?>

<table border="1">
 <caption>Highest Score  In ODI</caption>
 <tr>
 
 <th>Score</th>
 <th>Year</th>
 <th>Result</th>
 
 
 </tr>


<?php
  $sql="SELECT * FROM top_score_odi WHERE Oponent='$oponent' and Format='$format'";
   $result=$conn->query($sql);


 if ($result->num_rows > 0) {
    // output data of each row
    while($row =mysqli_fetch_assoc($result)) {
	
		
		echo "<tr><td>".$row["Highest score"]."</td><td>".$row["year(highest)"]."</td><td>".$row["result(highest)"]."</td></tr>";
		echo "           ";
	}
 }
		else {
    echo "0 results";
	
		}
		
		?>

		
		
		</table>
		
		
		<table border="1">
		<caption>Lowest Score In ODI</caption>
        <tr>
 
        <th>Score</th>
        <th>Year</th>
         <th>Result</th>
 
         </tr>
		<?php 
		 $sql="SELECT * FROM top_score_odi WHERE Oponent='$oponent' and Format='$format'";
   $result=$conn->query($sql);


 if ($result->num_rows > 0) {
    // output data of each row
    while($row =mysqli_fetch_assoc($result)) {
			
		 
		echo "<tr><td>".$row["Lowest score"]."</td><td>".$row["year(lowest)"]."</td><td>".$row["result(lowest)"]."</td></tr>";
		echo "           ";
	}
 }
		
		else {
    echo "0 results";
	
}?>
		
		</table>
		
		
		<table border="1">
		<caption>Individual  Best Batting(ODI)</caption>
        <tr>
        <th>Name</th>
        <th>Batsman Score</th>
 
         </tr>
		
		
		
		
		<?php
  
  
  $sql="SELECT * FROM top_scorer_odi WHERE Oponent='$oponent' and Format='$format'";
   $result=$conn->query($sql);


 if ($result->num_rows > 0) {
    // output data of each row
    while($row =mysqli_fetch_assoc($result)) {
			
		
		echo "<tr><td>".$row["Name(batsman)"]."</td><td>".
        $row["Runs"]."</td></tr>";
		echo "           ";
   
		
		
		
		
            
			
			 
    }
} else {
    echo "0 results";
	
}?>


      </table>
		
		
		<table border="1">
		<caption>Individual Best Bowling(ODI)</caption>
        <tr>
        <th>Name</th>
        <th>Bowling Figure</th>
 
         </tr>
		
		
		
		
		<?php
  
  
  $sql="SELECT * FROM top_scorer_odi WHERE Oponent='$oponent' and Format='$format'";
   $result=$conn->query($sql);


 if ($result->num_rows > 0) {
    // output data of each row
    while($row =mysqli_fetch_assoc($result)) {
			
		
		
		
		echo "<tr><td>".$row["Name(bowler)"]."</td><td>"
        .$row["Wickets"]."</td></tr>";
		echo "           ";
       
    }
 }
 else {
    echo "0 results";
	
}
}?>

</table>

    
  <?php
  
    if($format=='test'){



  ?>

<table border="1">
 <caption>Highest Score  In Test</caption>
 <tr>
 
 <th>Score</th>
 <th>Year</th>
 <th>Result</th>
 
 
 </tr>


<?php
  $sql="SELECT * FROM top_score_test WHERE Oponent='$oponent' and Format='$format'";
   $result=$conn->query($sql);


 if ($result->num_rows > 0) {
    // output data of each row
    while($row =mysqli_fetch_assoc($result)) {
	
		
		echo "<tr><td>".$row["Highest score"]."</td><td>".$row["year(highest)"]."</td><td>".$row["result(highest)"]."</td></tr>";
		echo "           ";
	}
 }
		else {
    echo "0 results";
	
		}
		
		?>

		
		
		</table>
		
		
		<table border="1">
		<caption>Lowest Score In Test</caption>
        <tr>
 
        <th>Score</th>
        <th>Year</th>
         <th>Result</th>
 
         </tr>
		<?php 
		 $sql="SELECT * FROM top_score_test WHERE Oponent='$oponent' and Format='$format'";
   $result=$conn->query($sql);


 if ($result->num_rows > 0) {
    // output data of each row
    while($row =mysqli_fetch_assoc($result)) {
			
		 
		echo "<tr><td>".$row["Lowest score"]."</td><td>".$row["year(lowest)"]."</td><td>".$row["result(lowest)"]."</td></tr>";
		echo "           ";
	}
 }
		
		else {
    echo "0 results";
	
}?>
		
		</table>
		
		
		<table border="1">
		<caption>Individual  Best Batting(test)</caption>
        <tr>
        <th>Name</th>
        <th>Batsman Score</th>
 
         </tr>
		
		
		
		
		<?php
  
  
  $sql="SELECT * FROM top_scorer_test WHERE Oponent='$oponent' and Format='$format'";
   $result=$conn->query($sql);


 if ($result->num_rows > 0) {
    // output data of each row
    while($row =mysqli_fetch_assoc($result)) {
			
		
		echo "<tr><td>".$row["Name(batsman)"]."</td><td>".
        $row["Runs"]."</td></tr>";
		echo "           ";
   
		
		
		
		
            
			
			 
    }
} else {
    echo "0 results";
	
}?>


      </table>
		
		
		<table border="1">
		<caption>Individual Best Bowling(Test)</caption>
        <tr>
        <th>Name</th>
        <th>Bowling Figure</th>
 
         </tr>
		
		
		
		
		<?php
  
  
  $sql="SELECT * FROM top_scorer_test WHERE Oponent='$oponent' and Format='$format'";
   $result=$conn->query($sql);


 if ($result->num_rows > 0) {
    // output data of each row
    while($row =mysqli_fetch_assoc($result)) {
			
		
		
		
		echo "<tr><td>".$row["Name(bowler)"]."</td><td>"
        .$row["Wickets"]."</td></tr>";
		echo "           ";
       
    }
 }
 else {
    echo "0 results";
	
}

	}?>
</table>

    <?php
  
    if($format=='t20'){



  ?>

<table border="1">
 <caption>Highest Score  In T20</caption>
 <tr>
 
 <th>Score</th>
 <th>Year</th>
 <th>Result</th>
 
 
 </tr>


<?php
  $sql="SELECT * FROM top_score_t20 WHERE Oponent='$oponent' and Format='$format'";
   $result=$conn->query($sql);


 if ($result->num_rows > 0) {
    // output data of each row
    while($row =mysqli_fetch_assoc($result)) {
	
		
		echo "<tr><td>".$row["Highest score"]."</td><td>".$row["year(highest)"]."</td><td>".$row["result(highest)"]."</td></tr>";
		echo "           ";
	}
 }
		else {
    echo "0 results";
	
		}
		
		?>

		
		
		</table>
		
		
		<table border="1">
		<caption>Lowest Score In T20</caption>
        <tr>
 
        <th>Score</th>
        <th>Year</th>
         <th>Result</th>
 
         </tr>
		<?php 
		 $sql="SELECT * FROM top_score_t20 WHERE Oponent='$oponent' and Format='$format'";
   $result=$conn->query($sql);


 if ($result->num_rows > 0) {
    // output data of each row
    while($row =mysqli_fetch_assoc($result)) {
			
		 
		echo "<tr><td>".$row["Lowest score"]."</td><td>".$row["year(lowest)"]."</td><td>".$row["result(lowest)"]."</td></tr>";
		echo "           ";
	}
 }
		
		else {
    echo "0 results";
	
}?>
		
		</table>
		
		
		<table border="1">
		<caption>Individual  Best Batting(T20)</caption>
        <tr>
        <th>Name</th>
        <th>Batsman Score</th>
 
         </tr>
		
		
		
		
		<?php
  
  
  $sql="SELECT * FROM top_scorer_t20 WHERE Oponent='$oponent' and Format='$format'";
   $result=$conn->query($sql);


 if ($result->num_rows > 0) {
    // output data of each row
    while($row =mysqli_fetch_assoc($result)) {
			
		
		echo "<tr><td>".$row["Name(batsman)"]."</td><td>".
        $row["Runs"]."</td></tr>";
		echo "           ";
   
		
		
		
		
            
			
			 
    }
} else {
    echo "0 results";
	
}?>


      </table>
		
		
		<table border="1">
		<caption>Individual Best Bowling(T20)</caption>
        <tr>
        <th>Name</th>
        <th>Bowling Figure</th>
 
         </tr>
		
		
		
		
		<?php
  
  
  $sql="SELECT * FROM top_scorer_t20 WHERE Oponent='$oponent' and Format='$format'";
   $result=$conn->query($sql);


 if ($result->num_rows > 0) {
    // output data of each row
    while($row =mysqli_fetch_assoc($result)) {
			
		
		
		
		echo "<tr><td>".$row["Name(bowler)"]."</td><td>"
        .$row["Wickets"]."</td></tr>";
		echo "           ";
       
    }
 }
 else {
    echo "0 results";
	
}

	}?>
</table>

    
  
  
  
 



  
 


<?php
  
 


$conn->close();

?>