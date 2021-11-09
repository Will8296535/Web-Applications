<?php
/*--

 FILE			:openFile.html
 PROJECT		:PROG2001-20F Web Design and Development
 PRPGRAMMER		:Will Wei& Mu Tong
 FIRST VERSION	:2020-12-10
 DESCRIPTION	:This file contains an php file that will
				receive a filename from client. Then it will
				read the file and print the content.
 
*/
	$fileName = $_GET["fileName"];
	$myfile = fopen($fileName,"r") or die ("Unable to open file!");
	if(filesize($fileName)==0)
	{
		$content="";
	}
	else
	{
		$content = fread($myfile,filesize($fileName));
	}
	echo $content;
	fclose($myfile);
?>