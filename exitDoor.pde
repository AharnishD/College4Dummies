void exitDoor(){
    float   doorX = 20;
    float   doorY = 20;
    float   doorW = width/14;
    float   doorH = height/6;
    
    //Door 
    strokeWeight(4);
    stroke(#8E5106);          // dark brown
    fill(#A76C22);            //  lighter brown
    rect(doorX, doorY, doorW, doorH);
    
    //Door Detail
    rect(doorX+ doorW * 0.1, doorY + doorH * 0.08, doorW/3, doorH/3);       // Upper Left door detail
    rect(doorX+ doorW * 0.1, doorY + doorH * 0.58, doorW/3, doorH * 0.38); // Upper Right door detail
    rect(doorX+ doorW *.6, doorY + doorH * 0.08, doorW/3, doorH/3);         // Bottom Left door detail
    rect(doorX+ doorW *.6, doorY + doorH * 0.58, doorW/3, doorH * 0.38);   // Bottom Right door detail
    fill(255);
    textAlign(CENTER);
    textSize(24);
    text("EXIT", doorX + doorW/2, doorY + doorH * 0.55);
    
    //Handle
    strokeWeight(1);
    stroke(#B7B2AC);  // darker gray
    fill(#D6D5D4);    // light gray
    circle(doorX + doorW * 0.9, doorY + doorH/2, 10);
}
