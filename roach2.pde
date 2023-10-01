ArrayList<roach> groups;

void setup()
{
  size(800, 600);
  groups = new ArrayList<roach>();
}

void draw()
{
  background(#FFFFFF);
  for(roach g : groups)
  {
    g.run();
  }
}


void mouseClicked()
{
  groups.add(new roach(mouseX, mouseY));
}
