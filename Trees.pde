void trees() {
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
  elapsedTime++; // Increment the elapsed time counter
  if (elapsedTime >= 180) { // 180 frames equal to 3 seconds at 60 frames per second
    elapsedTime = 0; // Reset the counter
    treeSpeed -= 1; // Increase the speed by -3
  }
}
