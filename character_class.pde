public class Human {
  String name;
  int age;
  int x, y;
  color shirtColor;
  String catchphrase;

  // Arm animation variables (optional for future use)
  int armOffset = 0;
  int armSpeed = 2;

  public Human(String name, int age, int x, int y) {
    this.name = name;
    this.age = age;
    this.x = x;
    this.y = y;
    shirtColor = color(255);
    catchphrase = "I LOVE AHARNISH SOOO MUCH";
  }

  void display() {
    /*// Head
    fill(255);
    ellipse(x, y, 20, 20);

    // Body
    stroke(shirtColor);
    line(x, y + 10, x, y + 40);

    // Arms
    line(x - 10, y + 20, x + 10, y + 20);

    // Legs
    line(x, y + 40, x - 10, y + 60);
    line(x, y + 40, x + 10, y + 60);*/

    
    image(playerImg, x, y, 80, 80);
     
    


  }

void move() {
  if (keyPressed) {
    if (keyCode == LEFT) {
      x -= 5;
    } else if (keyCode == RIGHT) {
      x += 5;
    } else if (keyCode == UP) {
      y -= 5;
    } else if (keyCode == DOWN) {
      y += 5;
    }

    // Left or right wall
    if (x < 10) {
      x = 10;
      speak(catchphrase);
    } else if (x > width - 10) {
      x = width - 10;
      speak(catchphrase);
    }

    // Top or bottom wall
    if (y < 10) {
      y = 10;
      speak(catchphrase);
    } else if (y > height - 200) {
      y = height - 200;
      speak(catchphrase);
    }
  }
}

  void speak(String message) {
    println(name + ": " + message);
  }
}