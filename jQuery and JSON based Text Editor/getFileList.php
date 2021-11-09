<?php
/*

 FILE			:getFileList.html
 PROJECT		:PROG2001-20F Web Design and Development
 PRPGRAMMER		:Will Wei& Mu Tong
 FIRST VERSION	:2020-12-10
 DESCRIPTION	:This file contains an php file that will
				get all the files in myFiles folder and
				translate the name to be buttons.
 
*/
foreach (glob("myFiles/*.*") as $filename){
	echo "<button onclick=\"showFileContent('".$filename."')\">".$filename."</button>";
	}							
?>
