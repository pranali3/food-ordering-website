<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="registration/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>

<?php
$first_name = $_POST["first_name"];
$last_name = $_POST["last_name"];
$user_name = $_POST["user_name"];
$password = $_POST["password"];
$email =$_POST["email"];
$res_address = $_POST["res_address"];
$phone_no = $_POST["phone_no"];
$balance = $_POST["balance"];


$conn = mysql_connect("localhost" , "root" ,"");

if(!$conn)
{
echo "error in connection";
echo "</br>";
}
else
{
echo " connection established";
echo "</br>";
}



mysql_select_db("cafe", $conn);

$sql = "insert into registered values('$first_name' ,'$last_name', '$user_name','$password ','$email','$res_address','$phone_no','$balance') ";


if(mysql_query($sql))
{
echo "row inserted";
echo "</br>";
}
else
{
echo "error in insertion";
echo "</br>";
}


$query = "select * from registered";
$result = mysql_query($query);

if(mysql_num_rows($result)>0)
{
while($row = mysql_fetch_assoc($result))
{
echo "name - " . $row["user_name"];
echo "pass - " . $row["user_pass"];
echo "</br>";

}
}
else
{
echo "0 rows return";
}



mysql_close();

?>

</body>
</html>
