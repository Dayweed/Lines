class Line {
 private Point firstPoint;
 private Point secondPoint;
 
 public Line() {}
 public Line(Point firstPoint, Point secondPoint) {
   this.firstPoint = firstPoint;
   this.secondPoint = secondPoint;
 }
 
 public void setLine(Point firstPoint, Point secondPoint) {
   this.firstPoint = firstPoint;
   this.secondPoint = secondPoint;
 }
 
 public Point getFirstPoint() {
   return this.firstPoint;
 }
 
 public Point getSecondPoint() {
   return this.secondPoint;
 }
 
 public void reset() {
   this.firstPoint = null;
   this.secondPoint = null;
 }
}
