<?php
include 'connection.php';
if(isset($_GET['Del']))
{
    $delid=$_GET['Del'];
    $query="delete from posts where id='$delid'";
    $run=mysqli_query($conn,$query);
    if($run)
    {
        header("location:post-view.php");
    }
    else
    {
        echo "<script>window.alert('Unable to Delete')</script>";
    }
}
?>