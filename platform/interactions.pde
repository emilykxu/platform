void keyReleased() {
  if (key == 'S' || key == 's') skey = false;
  if (key == 'W' || key == 'w' )wkey = false;
  if (key == 'A' || key == 'a') akey = false;
  if (key == 'D' || key == 'd') dkey = false;
  if (key == 'Q' || key == 'q') qkey = false;
  if (key == 'E' || key == 'e') ekey = false;
  if (key == ' ') spacekey = false;
  if (keyCode == DOWN) downkey = false;
  if (keyCode == UP) upkey = false;
  if (keyCode == LEFT) leftkey = false;
  if (keyCode == RIGHT) rightkey = false;
}
