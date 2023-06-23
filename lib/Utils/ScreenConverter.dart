const double WIDTH_FIGMA = 360;
const double HEIGHT_FIGMA = 640;

double convertHeigth(double height, double screenHeight){
  double percent = height / HEIGHT_FIGMA;
  return screenHeight * percent;
}

double convertWidth(double width, double screenWidth){
  double percent = width / WIDTH_FIGMA;
  return screenWidth * percent;
}