int x = 26; //<>// //<>// //<>//
int y = 300;
float startTime = 0;
int yVel = 200;
int xVel = 300;
int value = 50;

void setup() {
  size(1024, 768);
  startTime = millis();
}

void draw() {

  float elapsedTime = (millis() - startTime) / 1000.0f;
  startTime = millis();
  clear();
  update(elapsedTime);
  if (keyPressed) {
    if (key == BACKSPACE) {
      float elapsedTimeUp = (millis() - startTime) * 1000.0f;
      startTime = millis();
      clear();
      update(elapsedTimeUp);
      circle(x, y, value);
    } 
    
  } else {
    circle(x, y, value);
  }
  
  if( key == CODED){
    if( keyCode == UP){
      float elapsedSpeed = (millis() - startTime) * 1000.0f;
      startTime = millis();
      clear();
      update(elapsedSpeed);
      circle(x, y, value);
  }
}
}

void updateUp(float elapsedTimeUp) {
  x -= xVel * elapsedTimeUp;
  y -= yVel * elapsedTimeUp;
  if (x < 25 || x > 999) {
    xVel = -xVel;
    if (x < 25) {
      x = 25;
    } else if (x > 999) {
      x = 999;
    }
  }
  if (y < 25 || y > 743) {
    yVel = -yVel;
    if (y < 25) {
      y = 25;
    } else if (y > 743) {
      y = 743;
    }
  }
}

void updateSpeed(float elapsedTimeSpeed) {
  x += xVel * elapsedTimeSpeed;
  y += yVel * elapsedTimeSpeed;
  if (x < 25 || x > 999) {
    xVel = -xVel;
    if (x < 25) {
      x = 25;
    } else if (x > 999) {
      x = 999;
    }
  }
  if (y < 25 || y > 743) {
    yVel = -yVel;
    if (y < 25) {
      y = 25;
    } else if (y > 743) {
      y = 743;
    }
  }
}

void update(float elapsedTime) {
  x += xVel * elapsedTime;
  y += yVel * elapsedTime;
  if (x < 25 || x > 999) {
    xVel = -xVel;
    if (x < 25) {
      x = 25;
    } else if (x > 999) {
      x = 999;
    }
  }
  if (y < 25 || y > 743) {
    yVel = -yVel;
    if (y < 25) {
      y = 25;
    } else if (y > 743) {
      y = 743;
    }
  }
}
