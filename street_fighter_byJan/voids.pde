void dibuixaBarres () {

  noFill();
  stroke(255, 255, 255);
  rect(barraX-150, barraY, 350, 30);
  fill(255, 255, 0);
  barraAmpleRyu = barraAmpleTotalRyu*(vidarestantRyu/vidatotalRyu);
  rect(barraX-150, barraY+1, barraAmpleRyu+260, 29);

  noFill();
  stroke(255, 255, 255);
  rect(barraX+400, barraY ,350, 30);
  fill(255, 255, 0);
  barraAmpleKen = barraAmpleTotalKen*(vidarestantKen/vidatotalKen);
  rect(barraX+400, barraY+1, barraAmpleKen+250, 29);
}