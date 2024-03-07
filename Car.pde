class Car {
  private float x;
  private float y;
  private color c;
  private float theSize;
  private int score;


  public Car(float xp, float yp, float size, color c) {
    theSize = size;
    setPosition(xp);
    y = yp;
    this.c = c;
  }

  public void display() {
    float wheelOffset = theSize / 4;
    rectMode(CENTER);

    stroke(0);
    fill(c);
    rect(x, y, theSize, theSize/2);

    fill(0);
    rect(x - wheelOffset, y - wheelOffset, wheelOffset, wheelOffset/2);
    rect(x + wheelOffset, y - wheelOffset, wheelOffset, wheelOffset/2);
    rect(x - wheelOffset, y + wheelOffset, wheelOffset, wheelOffset/2);
    rect(x + wheelOffset, y + wheelOffset, wheelOffset, wheelOffset/2);
    

    textSize(20);
    fill(255); 
    textAlign(CENTER, CENTER);
    text(score, x - theSize / 4, y + theSize / 10);
  }

  public void move() {
    x += random(0, 10);
  }

  public float getPosition() {
    return x + theSize/2;
  }

  public void setPosition(float newPos) {
    x = newPos - theSize/2;
  }
  
    public void increaseScore() {
    score++;
  }
  
}
