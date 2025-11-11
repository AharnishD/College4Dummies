public class Human {
  String name;
  int age;
  int x, y;
  color shirtColor;
  boolean playerLookDir = true;  // true = right, false = left 

  // Arm animation variables (optional for future use)
  int armOffset = 0;
  int armSpeed = 2;

  public Human(String name, int age, int x, int y) {
    this.name = name;
    this.age = age;
    this.x = x;
    this.y = y;
    shirtColor = color(255);
  }

  void displayPlayer() {
    image(playerImg, x, y, 80, 80);
  }

void move() {
  if (keyPressed) {
    if (keyCode == LEFT || key == 'a') {
      playerLookDir = false;
      x -= 5;
    } else if (keyCode == RIGHT || key == 'd') {
      playerLookDir = true;
      x += 5;
    } else if (keyCode == UP || key == 'w') {
      y -= 5;
    } else if (keyCode == DOWN || key == 's') {
      y += 5;
    }

    // Left or right wall
    if (x < 10) {
      x = 10;
    } else if (x > width - 80) {
      x = width - 80;
    }

    // Top or bottom wall
    if (y < 10) {
      y = 10;
    } else if (y > height - 230) {
      y = height - 230;
    }
  }
}

}