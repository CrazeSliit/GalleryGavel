<?php

    $servername = "localhost";
    $username = "root";
    $password = "";
    $database = "gallerygavel"; 

    $conn = mysqli_connect($servername, $username, $password, $database);

  
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }

   
    $sql_delete_last_bid = "DELETE FROM bidd ORDER BY bidamount DESC LIMIT 1";

    if (mysqli_query($conn, $sql_delete_last_bid)) {
        echo "<script>alert('Last bid amount deleted'); window.location.href='auction_login.php'; </script>";
    } else {
        echo "Error deleting last bid amount: " . mysqli_error($conn);
    }

    mysqli_close($conn);
?>
