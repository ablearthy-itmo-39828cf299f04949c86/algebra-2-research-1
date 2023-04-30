size(7cm);

import graph;

int maxN = 15;

real F1(real x) {
  return 2 * x;
}

real F2(real x) {
  real result = 0;
  bool sign = true;
  for (int n = 1; n <= maxN; ++n) {
    if (sign) {
      result += sin(n * x) / n;
    } else {
      result -= sin(n * x) / n;
    }
    sign = !sign;
  }
  return 4 * result;
}

draw(graph(F1, -pi, pi, n = 50), red);
draw(graph(F2, -pi, pi, n = 500), paleblue);

xaxis("$x$",
  xmin=-pi - 0.5,
  xmax=+pi + 0.5,
  Arrow);

yaxis("$y$",
  ymin=-2 * pi - 0.5,
  ymax=2 * pi + 0.5,
  Arrow);
