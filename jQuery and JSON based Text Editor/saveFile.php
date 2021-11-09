<?php
/*

 FILE			:saveFile.php
 PROJECT		:PROG2001-20F Web Design and Development
 PRPGRAMMER		:Will Wei& Mu Tong
 FIRST VERSION	:2020-12-10
 DESCRIPTION	:This file contains an php file that
				will receive the JSON object contains file
				name and file content from client. 
				Then it will save the file with the content.
 
*/
	$fileData = json_decode($_GET["data"]);
	$name = $fileData->{'name'};
	$content = $fileData->{'content'};
	$myfile = fopen($name,"w");
	fwrite($myfile,$content);
	fclose($myfile);
	echo "Save success";
?>