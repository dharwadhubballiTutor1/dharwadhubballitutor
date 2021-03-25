<?php 
require "Admin/fpdf182/fpdf.php";

$pdf = new FPDF('P','mm','A4');


         //add new page
         $pdf->AddPage();
         $pdf->SetFont('Arial','B',18);

        //Cell(width , height , text , border , end line , [align] )
        
        $pdf->Cell(130 ,7,'DhawradHubballiTutor',0,0);
        $pdf->Image('Admin/media/logo.png',2,2,-300);
        $pdf->Cell(59 ,7,'Invoice',0,1);//end of line

        //set font to arial, regular, 12pt
        $pdf->SetFont('Arial','',12);

        $pdf->Cell(130 ,7,'JP Nippani Complex,Gandhinagar',0,0);
        $pdf->Cell(59 ,7,'',0,1);//end of line

        $pdf->Cell(130 ,7,'Dharwad,580030',0,0);
        $pdf->Cell(25 ,7,'Date',0,0);
        $pdf->Cell(34 ,7,"".date("Y/m/d")."",0,1);//end of line

        $pdf->Cell(130 ,7,'Phone: +919741237334 ,+918007961759',0,0);
        $pdf->Cell(189 ,10,'',0,1);//end of line

    //billing address
        $pdf->Cell(100 ,5,'Bill to',0,1);//end of line

    //add dummy cell at beginning of each line for indentation
       $pdf->Cell(10 ,5,"",0,0);
       $pdf->Cell(90 ,5,'',0,1);
       $pdf->Cell(10 ,5,'',0,0);
       $pdf->Cell(90 ,5,"",0,1);

       $pdf->Cell(10 ,5,'',0,0);
       $pdf->Cell(90 ,5,"",0,1);

    //make a dummy empty cell as a vertical spacer
      $pdf->Cell(189 ,10,'',0,1);//end of line

      $pdf->SetFont('Arial','B',12);

      $pdf->Cell(105 ,7,'Description',1,0);
      $pdf->Cell(24 ,7,'Total Fees',1,0);
      $pdf->Cell(30 ,7,'Balance',1,0);
      $pdf->Cell(30 ,7,'Paid Amount',1,1);//end of line

      $pdf->SetFont('Arial','',12);

      $pdf->Cell(105 ,7,'Fees paid towards Web Designing and Development  ',1,0);
      $pdf->Cell(24 ,7,'',1,0);
      $pdf->Cell(30 ,7,'',1,0);
      $pdf->Cell(30 ,7,'',1,1,'R');//end of line
      
      $pdf->Cell(129 ,7,'',1,0);
      // $pdf->Cell(24 ,7,'',1,0);
      $pdf->Cell(30 ,7,'Subtotal',1,0);
  
      $pdf->Cell(30 ,7,'',1,1,'R');

         //output the result
        $pdf->Output();

        ?>