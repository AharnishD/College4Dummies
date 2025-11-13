void dormBed(){
    int bedX = (width - (width / 6)); // start bed 1/6 of screen width away from right edge
    int bedY = 0; // start bed at top edge of screen
    int bedHeight = (2 * height) / 6; // wanted length of bed to be 1/3 of height
    int bedWidth = width / 6;  // wanted width of bed to be 1/5 of screen
    int bedY2 = height - bedHeight -130; // 130 is static for the UI Bar at bottom of the screen. 
    
// Top Right Bed
    // white sheets
    rectMode(CORNER);
    fill(255);
    noStroke();
    rect(bedX, bedY, bedWidth, bedHeight, 5); 

    //comforter on bed detail
    fill(#9DD8DB); // light blue aqua
    stroke(#466B6C); // darker blue color to add border but not disolve into black background
    strokeWeight(2);
    rect(bedX, bedY + bedHeight/6, bedWidth, bedHeight - bedHeight/6, 5); 
    fill(#89BABC);
    rect(bedX, bedY + bedHeight/6, bedWidth, bedHeight/12); // folded over portion of comforter
   
    //Pillows      
    fill(255);
    stroke(0);
    strokeWeight(2);
    rect(bedX, bedY, bedWidth/2, bedHeight/6, 15);
    rect(width - bedWidth/2, bedY, bedWidth/2, bedHeight/6, 15);
 
// Bottom Right Bed
  // white sheets
    fill(255);
    noStroke();
    rect(bedX, bedY2, bedWidth, bedHeight,5);
    
  // comforter on bed detail 
    fill(#9DD8DB); // light blue aqua
    stroke(#466B6C); // darker blue color to add border but not disolve into black background
    strokeWeight(2);
    rect(bedX, bedY2, bedWidth, bedHeight - bedHeight/6, 5);
    fill(#89BABC);
    rect(bedX, bedY2 + (bedHeight - bedHeight/4), bedWidth, bedHeight/12); // folded over portion of comforter bed height divided by 4 to get 3/12 distance start position

  //Pillows 
    fill(255);
    stroke(0);
    strokeWeight(2);
    rect(bedX, bedY2 + (bedHeight - bedHeight/6), bedWidth/2, bedHeight/6, 15);
    rect(width - bedWidth/2, bedY2 + (bedHeight - bedHeight/6), bedWidth/2, bedHeight/6, 15);

}

void dormDesk(){
    int deskWidth = width/6;  // setting desk width to 1/6 of screen width
    int deskHeight = height/9; // wanted height of desk to be 1/3 of length of bed
    int deskX = width/2 - deskWidth/2; // set desk starting position so desk is centered with screen
    int deskY = 0; // top desk starts at top edge
    int deskY2 = height- deskHeight- 130; //bottom desk starts at height of desk above UI bar

  //Desks
    stroke(#957627); // lighter brown border for desks
    strokeWeight(2); // stroke weight of 2 for bolder contrast
    fill(#6A541D); // brownish color for wooden desk look
    rect(deskX, deskY, deskWidth, deskHeight); // top desk
    rect(deskX, deskY2, deskWidth, deskHeight); // bottom desk

    //Paper on desk
    fill(255);
    strokeWeight(1);
    stroke(80);
     
      //top desk
    rect(deskX + deskWidth/10, deskY + deskHeight/10, deskWidth/6, deskHeight/2); // bottom paper set to 1/6 width of desk, and 1/2 desk height, start 1/10 desk width from left edge
    rect((deskX + deskWidth/10)+5, (deskY + deskHeight/10) +3, deskWidth/6, deskHeight/2); // stack another piece on top and move right 5 pixels and down 3 pixels
    rect((deskX + deskWidth/10)+10, (deskY + deskHeight/10) +6, deskWidth/6, deskHeight/2); // repeat indentation
      
      //bottom desk    
    rect(deskX + deskWidth*.7, deskY2 + deskHeight/10, deskWidth/6, deskHeight/2);// bottom paper set to 1/6 width of desk, and 1/2 desk height, start 7/10 desk width from left edge
    rect((deskX + deskWidth*.7)+5, (deskY2 + deskHeight/10) +3, deskWidth/6, deskHeight/2); // stack anoter piece on top and move right 5 pixels and down 3 pixels
    rect((deskX + deskWidth*.7)+10, (deskY2 + deskHeight/10) +6, deskWidth/6, deskHeight/2); // repeat indentation
}
