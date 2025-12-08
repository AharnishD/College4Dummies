//Human class (player)
public class Human {
  //instance variables
  String name;
  int age;
  int x, y;
  color shirtColor;
  boolean playerLookDir = true;  // true = right, false = left 


  //constructor
  public Human(String name, int age, int x, int y) {
    this.name = name;
    this.age = age;
    this.x = x;
    this.y = y;
    shirtColor = color(255);
  }

  //loads the image of the player from "Assets" folder
  void displayPlayer() {
    image(playerImg, x, y, 80, 80);
  }


//moves the player up,down, and side-to-side
  void move() {
    if (keyPressed) {
      if (keyCode == LEFT || key == 'a') {
        playerLookDir = false;
        x -= 10;
      } else if (keyCode == RIGHT || key == 'd') {
        playerLookDir = true;
        x += 10;
      } else if (keyCode == UP || key == 'w') {
        y -= 10;
      } else if (keyCode == DOWN || key == 's') {
        y += 10;
      }

    //ensure the player doesn't go out of bounds
    // Left or right wall
      if (x < 50) {
        x = 50;
      } else if (x > width - 100) {
        x = width - 100;
      }

    // Top or bottom wall
      if (y < 50) {
        y = 50;
      } else if (y > height - 260) {
        y = height - 260;
      }

      if(currentScene == "library" || currentScene == "RAC" || currentScene == "dorm" || currentScene == "commons" 
      || currentScene == "classLocation" || currentScene == "uniCenter" || currentScene == "engineering" || currentScene == "wellness" 
      || currentScene == "trueGrits" || currentScene == "campus"){
        if (keyCode == LEFT || key == 'a') {
          playerLookDir = false;
          x -= 50;
        } else if (keyCode == RIGHT || key == 'd') {
          playerLookDir = true;
          x += 50;
        } else if (keyCode == UP || key == 'w') {
          y -= 50;
        } else if (keyCode == DOWN || key == 's') {
          y += 50;
        }
      }
    }
  }
}