private class Point {
  private int xPosition;
  private int yPosition;
  
  public Point() {}
  public Point(int xPosition, int yPosition) {
    this.xPosition = xPosition;
    this.yPosition = yPosition;
  }
  
  public void setPoint(int xPosition, int yPosition) {
    this.xPosition = xPosition;
    this.yPosition = yPosition;
  }
  
  public int getXPosition() {
    return xPosition;
  }
  
  public int getYPosition() {
    return yPosition;
  }
}
