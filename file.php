<!DOCTYPE html>
<html>
<head>

</head>
<body>
<form action="upload.php" method="post" enctype="multipart/form-data">
    Select image to upload:
    <input type="file" name="fileToUpload" id="fileToUpload">
    <input type="text" name="aname" id="aname" placeholder="Enter name">
    <input type="text" name="adesc" id="adesc" placeholder="Enter description">
    <input type="submit" value="Upload Image" name="submit">
</form>

</body>
</html>