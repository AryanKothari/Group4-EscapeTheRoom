String input="";

int screen = 0;
color Color = 175;
String password = "";
boolean answerRes;
int background = 0;
boolean showResults = false;

void setup() {
  fullScreen();

  smooth();
}  

void draw() {
  background(background);
  switch(screen) {
    case(0):
    textSize(100);
    textAlign(CENTER);
    fill(255);
    text("GROUP 4: SAVE THE BABY", width/2, height/3.5);
    rectMode(CENTER);
    fill(Color);
    rect(width/2-30, 550, 300, 80);
    textSize(45);
    fill(0);
    text("Click to Play", width/2-30, 560);
    textSize(15); 
    fill(255, 0, 0);
    textAlign(CENTER);
    text("Listen carefully: there is a baby locked in the box next to you and you, the police, must find the missing key. There are letters scattered around the room and your mission is to find them all.", 720, 310);
    text(" Once you do, they will spell out the location of the missing key and you can save the baby. But be prepared! To find the location of a letter, you must answer the questions correctly", 720, 340);
    text(" – and all within the time limit! Once you click the button, the hunt begins!", 720, 370);
    if (mouseX > width/2.6 && mouseX < width/1.7 && mouseY > height/2.2 && mouseY < height/1.5) {
      Color = 255;
      if (mousePressed) {
        screen = 1;
      }
    } else {
      Color = 175;
    }
    break;

    case(1):
    question("#1 Solve for the outputs of the following: ((((A AND B) XOR C) NOR(A OR C)) or !A)    **write your answer with spaces between (ex: 10110110)**");
    if (mousePressed && mouseX > 1000 && mouseX < 1200 && mouseY > 350 && mouseY < 450) {
      answerRes = checkAnswer(input, "00001111");
    }

    if (showResults) {
      if (answerRes == true) {
        textSize(15);
        fill(0, 255, 0);
        text("ANSWER RIGHT. LOCATION OF CLUE: Cupboard near the drum set", 600, 450);
        rectMode(CENTER);
        fill(255, 255, 255);
        rect(600, 600, 300, 100);
        fill(0, 255, 0);
        text("click ENTER for next question", 600, 600);
        if (keyPressed) {
          if (key == ENTER) {
            screen = 2;
            input = "";
            showResults = false;
          }
        }
      } else if (answerRes == false) {
        textSize(15);
        fill(255, 0, 0);
        text("ANSWER WRONG. PLEASE TRY AGAIN", 600, 450);
      }
    }
    break;
    case(2):
    question("#2 A change to the base sequence of what gene causes sickle-cell anemia?");
    if (mousePressed && mouseX > 1000 && mouseX < 1200 && mouseY > 350 && mouseY < 450) {
      answerRes = checkAnswer(input, "hemoglobin");
    }

    if (showResults) {
      if (answerRes == true) {
        textSize(15);
        fill(0, 255, 0);
        text("ANSWER RIGHT. LOCATION OF CLUE: Under the clock", 600, 450);
        rectMode(CENTER);
        fill(255, 255, 255);
        rect(600, 600, 300, 100);
        fill(0, 255, 0);
        text("click ENTER for next question", 600, 600);
        if (keyPressed) {
          if (key == ENTER) {
            screen = 3;
            input = "";
            showResults = false;
          }
        }
      } else if (answerRes == false) {
        textSize(15);
        fill(255, 0, 0);
        text("ANSWER WRONG. PLEASE TRY AGAIN", 600, 450);
      }
    }
    break;
    case(3):
    question("#3 Question 3 has a diagram. Check the sheet on top of the piano and answer the q in scientific notation (3.4*10^-9)");
    if (mousePressed && mouseX > 1000 && mouseX < 1200 && mouseY > 350 && mouseY < 450) {
      answerRes = checkAnswer(input, "2.5*10^-6");
    }

    if (showResults) {
      if (answerRes == true) {
        textSize(15);
        fill(0, 255, 0);
        text("ANSWER RIGHT. LOCATION OF CLUE: Under the piano seat", 600, 450);
        rectMode(CENTER);
        fill(255, 255, 255);
        rect(600, 600, 300, 100);
        fill(0, 255, 0);
        text("click ENTER for next question", 600, 600);
        if (keyPressed) {
          if (key == ENTER) {
            screen = 4;
            input = "";
            showResults = false;
          }
        }
      } else if (answerRes == false) {
        textSize(15);
        fill(255, 0, 0);
        text("ANSWER WRONG. PLEASE TRY AGAIN", 600, 450);
      }
    } 
    break;
    case(4):
    question("#4 Find question on Mr. Williamsons Desk. Write with 2 sig figs. (ie 5.3, 6.9, etc)");
    if (mousePressed && mouseX > 1000 && mouseX < 1200 && mouseY > 350 && mouseY < 450) {
      answerRes = checkAnswer(input, "7.8");
    }

    if (showResults) {
      if (answerRes == true) {
        textSize(15);
        fill(0, 255, 0);
        text("ANSWER RIGHT. LOCATION OF CLUE: Bookcase near backdoor", 600, 450);
        rectMode(CENTER);
        fill(255, 255, 255);
        rect(600, 600, 300, 100);
        fill(0, 255, 0);
        text("click ENTER for next question", 600, 600);
        if (keyPressed) {
          if (key == ENTER) {
            screen = 5;
            input = "";
            showResults = false;
          }
        }
      } else if (answerRes == false) {
        textSize(15);
        fill(255, 0, 0);
        text("ANSWER WRONG. PLEASE TRY AGAIN", 600, 450);
      }
    } 
    break;
    case(5):
    question("#5 State the hydrogen silicon bond angle");
    if (mousePressed && mouseX > 1000 && mouseX < 1200 && mouseY > 350 && mouseY < 450) {
      answerRes = checkAnswer(input, "109.5");
    }

    if (showResults) {
      if (answerRes == true) {
        textSize(15);
        fill(0, 255, 0);
        text("ANSWER RIGHT. LOCATION OF CLUE: Black Drawer labeled give us hope 177-202", 600, 450);
        rectMode(CENTER);
        fill(255, 255, 255);
        rect(600, 600, 300, 100);
        fill(0, 255, 0);
        text("click ENTER for next question", 600, 600);
        if (keyPressed) {
          if (key == ENTER) {
            screen = 6;
            input = "";
            showResults = false;
          }
        }
      } else if (answerRes == false) {
        textSize(15);
        fill(255, 0, 0);
        text("ANSWER WRONG. PLEASE TRY AGAIN", 600, 450);
      }
    } 
    break;
    case(6):
    question("#6 State the physics concept behind why observers from a far distance cannot resolve two images of a headlight");
    if (mousePressed && mouseX > 1000 && mouseX < 1200 && mouseY > 350 && mouseY < 450) {
      answerRes = checkAnswer(input, "diffraction");
    }

    if (showResults) {
      if (answerRes == true) {
        textSize(15);
        fill(0, 255, 0);
        text("ANSWER RIGHT. LOCATION OF CLUE: Above Black AC Thing", 600, 450);
        rectMode(CENTER);
        fill(255, 255, 255);
        rect(600, 600, 300, 100);
        fill(0, 255, 0);
        text("click ENTER for next question", 600, 600);
        if (keyPressed) {
          if (key == ENTER) {
            screen = 7;
            input = "";
            showResults = false;
          }
        }
      } else if (answerRes == false) {
        textSize(15);
        fill(255, 0, 0);
        text("ANSWER WRONG. PLEASE TRY AGAIN", 600, 450);
      }
    } 
    break;
    case(7):
    question("#7 Name the bone present in what we know as the knee");
    if (mousePressed && mouseX > 1000 && mouseX < 1200 && mouseY > 350 && mouseY < 450) {
      answerRes = checkAnswer(input, "patella");
    }

    if (showResults) {
      if (answerRes == true) {
        textSize(15);
        fill(0, 255, 0);
        text("ANSWER RIGHT. LOCATION OF CLUE: Under staircase near piano", 600, 450);
        rectMode(CENTER);
        fill(255, 255, 255);
        rect(600, 600, 300, 100);
        fill(0, 255, 0);
        text("click ENTER for next question", 600, 600);
        if (keyPressed) {
          if (key == ENTER) {
            screen = 8;
            input = "";
            showResults = false;
          }
        }
      } else if (answerRes == false) {
        textSize(15);
        fill(255, 0, 0);
        text("ANSWER WRONG. PLEASE TRY AGAIN", 600, 450);
      }
    } 
    break;
    case(8):
    textSize(40);
    fill(255, 0, 0);
    text("DONE. CONGRATS", 600, 450);
    break;
  }
}

public void question(String text) {
  textSize(20);
  textAlign(CENTER);
  fill(255);
  text(text, width/2, height/3.5);

  rectMode(CENTER);
  fill(0, 0, 255);
  rect(1100, 400, 100, 30);
  textSize(15);
  fill(255);
  text("CLICK", 1100, 405);
  text(input, 600, 405);
  text("Type your answer here:", 600, 380);
}


public boolean checkAnswer(String input, String answer) {
  showResults = true;
  if (input.equals(answer)) {
    return true;
  } else {
    return false;
  }
}












void keyPressed() {
  if (key==BACKSPACE) {

    if (input.length()>0) {
      println("worked");
      input=input.substring(0, input.length()-1);
    }
  } else if (key!=CODED) {
    input=input+key;
  }
}
