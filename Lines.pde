import java.util.Arrays;
import java.util.List;

Point firstPoint;
Point secondPoint;
List<Line> finnishedLines = new ArrayList<Line>();
boolean firstClick = true;

void setup() {
  fullScreen();
  background(255);
  frameRate(300);
}

void draw() {
  background(255);
  for(Line finnishedLine:finnishedLines) {
    line(finnishedLine.getFirstPoint().getXPosition(), finnishedLine.getFirstPoint().getYPosition(), 
      finnishedLine.getSecondPoint().getXPosition(), finnishedLine.getSecondPoint().getYPosition());
  }
  if(secondPoint != null) {
    stroke(0);
    line(firstPoint.getXPosition(), firstPoint.getYPosition(), secondPoint.getXPosition(), secondPoint.getYPosition());
    finnishedLines.add(new Line(firstPoint, secondPoint));
  }
  else if(firstPoint != null){
    line(firstPoint.getXPosition(), firstPoint.getYPosition(), mouseX, mouseY);
  }
}

void mouseReleased() {
  if(firstClick) {
    firstPoint = new Point(mouseX, mouseY);
    secondPoint = null;
  }
  else {
    secondPoint = new Point(mouseX, mouseY);
  }
  firstClick = !firstClick;
}
