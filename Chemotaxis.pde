function walk(svg, x, y, generation, limit) {
  var x1 = x, y1 = y;
  var axis = Math.random() > 0.5;
  var delta = Math.random() > 0.5 ? 10 : -10;

  axis ? x += delta : y += delta;

  svg
    .append('line')
    .attr({
      x1: x1,
      y1: y1,
      x2: x,
      y2: y
    });

  if (generation < limit)
    requestAnimationFrame(
      walk.bind(null, svg, x, y, ++generation, limit)
    );
}

walk(d3.select('svg'), 50, 50, 1, 1000);
