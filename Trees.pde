void trees() {
  if (gameOver == false) {
    for (int i = 0; i < treeA.length; i++) {
      fill(150, 100, 0);
      rect(treeA[i], treeB[i], d/4, p[i]);
      treeA[i] += treeSpeed;

      if (treeA[i] < -100) {
        treeA[i] = width;
        p[i] = random(d*3, d*3/2);
      }
    }
    for (int i = 0; i < treeA.length; i++) {
      treeA[i] += treeSpeed;

      if (treeA[i] < -100) {
        treeA[i] = width;
      }
    }
    elapsedTime++;
    if (elapsedTime == 120) {
      treeSpeed = -2;
    }
    if (elapsedTime >= 480) {
      treeSpeed -= 0.5;
      elapsedTime = 180;
    }
  } else {
    noLoop();
  }
}
