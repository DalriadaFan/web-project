<?php
$connect = mysqli_connect("localhost", "root", "", "animelist") or die($connect);
$animename = $_POST["name"];
$animename = mysqli_real_escape_string($connect, $animename);
if(isset($animename)){
	$tquery = "SELECT * FROM animes WHERE name LIKE '%{$animename}%'";
	$result = mysqli_query($connect, $tquery);

	if (!$result) {
	    printf("Error: %s\n", mysqli_error($connect));
	    exit();
	}
}
?>

<html>
<head>
<style type="text/css">
.card {
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
    transition: 0.3s;
    width: 180px;
    border-radius: 5px;
    float:left;
    margin:5px;
}

.card:hover {
    box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

img {
    border-radius: 5px 5px 0 0;
    height: 150px;
}

.container {
    padding: 2px 16px;
}

</style>
<script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>
  </script>


</head>

<body>
<form method="post">
<input type="text" id="name" name="name">
<button id="search">Search</button>
</form>
<?php
	while($nice = mysqli_fetch_array($result)){
	?>
	<div class="card">
  <img src="images/<?php echo $nice["image"]?>" alt="Avatar" style="width:100%;length:auto">
  <div class="container">
    <h4><b><?php echo $nice["name"]?></b></h4>    
  </div>
</div>
<?php } ?>
	
<body>
</html>