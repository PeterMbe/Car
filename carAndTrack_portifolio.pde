Car[] carArray = new Car[5];
RaceTrack track;
boolean raceOver = false;
Car Car1;
Car Car2;
Car Car3;
Car Car4;
Car Car5;

void setup() {
  size(1000, 600);
  track = new RaceTrack();
  Car1 = new Car(track.getStartPosition(), 100, 60, color(random(0,255), random(0,255),random(0,255) ));
  Car2 = new Car(track.getStartPosition(), 200, 60, color(random(0,255), random(0,255),random(0,255) ));
  Car3 = new Car(track.getStartPosition(), 300, 60, color(random(0,255), random(0,255),random(0,255) ));
  Car4 = new Car(track.getStartPosition(), 400, 60, color(random(0,255), random(0,255),random(0,255) ));
  Car5 = new Car(track.getStartPosition(), 500, 60, color(random(0,255), random(0,255),random(0,255) ));
  
  carArray[0] = Car1;
  carArray[1] = Car2;
  carArray[2] = Car3;
  carArray[3] = Car4;
  carArray[4] = Car5;
  
  track = new RaceTrack();
  raceOver = false;
}

void draw() {
  background(70);
  track.display();
  
  for (int i = 0; i < 5; i++) {
    carArray[i].display();
    if (raceOver) {
      carArray[i].move();
      if (carArray[i].getPosition() > track.getFinishPosition()) {
        raceOver = false;
        carArray[i].increaseScore();
      }
    }
  }
}

void keyPressed() {
  if (key == 's' || key == 'S') {
    raceOver = true;
    for (int i = 0; i < 5; i++) {
      carArray[i].setPosition(100); // Reset car positions
    }
  }
}
