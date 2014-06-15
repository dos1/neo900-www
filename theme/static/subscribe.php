<?php
include("mysql_connect.inc.php");

mysql_query("SET NAMES utf8");
mysql_query("SET CHARACTER SET utf8_polish_ci");

mysql_select_db("neo900");

if (!$_POST['neo900-mail']) die('Error: incomplete data.');

$row = mysql_query("SELECT * FROM neo900_subscription WHERE mail='".mysql_real_escape_string($_POST['neo900-mail'])."'") or die("Unexpected database read error. Please try again later.");

if (mysql_num_rows($row)) {
  die('This e-mail is already registered.');
}

mysql_query("INSERT INTO neo900_subscription SET mail='".mysql_real_escape_string($_POST['neo900-mail'])."'") or die("Unexpected database storage error. Please try again later.");
echo('Your e-mail has been registered. Thank you!');

mail($_POST['neo900-mail'], 'Neo900 newsletter registration', "Hello!\n\nThis e-mail address has just been used for registration to the newsletter on the Neo900 website.\n\nIf that's what you just did, ignore this message. If you haven't requested anything like that, reply to this mail and say so - you'll be unregistered.\n\nThank you for your support!\n\nNeo900 team\nhttp://neo900.org/", "From: Neo900 <newsletter@neo900.org>");

?>
