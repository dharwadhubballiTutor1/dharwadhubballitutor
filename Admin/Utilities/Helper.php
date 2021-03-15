<?php
   class Helper{
     public static function fileupload($filetoupload)
     {
      $target_dir = "../Admin/uploads/";
      $target_file = $target_dir . basename($filetoupload["name"]);
      $uploadOk = 1;
      $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
      // Check if image file is a actual image or fake image
      // echo pathinfo($filetoupload['name'], PATHINFO_EXTENSION). "<br/>" ;
        $check = getimagesize($filetoupload["tmp_name"]);        
        if($check !== false) {
           echo "File is an image - " . $check["mime"] . ".";
          $uploadOk = 1;
        }  else if ($filetoupload['type'] == "application/pdf" || pathinfo($filetoupload['name'], PATHINFO_EXTENSION) == "docx") {
          $source_file = $filetoupload['tmp_name'];
          $target_file = "../Admin/uploads/resume/".$filetoupload['name'];

        if(file_exists($filetoupload['name'],$target_dir)) {
           unlink($filetoupload['name'],$target_dir);
         //Place it into your "uploads" folder mow using the move_uploaded_file() function
        } 
      }
        if ($uploadOk == 0) {
           echo "Sorry, your file was not uploaded.";
      
        } else {
          if (move_uploaded_file($filetoupload["tmp_name"], $target_file)) {
             echo "The file ". htmlspecialchars( basename( $filetoupload["name"])). " has been uploaded.";
          } else {
             echo "Sorry, there was an error uploading your file." ;
          }
        }
      }
     }
   
?>