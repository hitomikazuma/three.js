precision highp float;

varying vec2 vTexCoord;

uniform vec3 u_color0;
uniform vec3 u_color1;

void main() {
  vec2 b = vTexCoord;
  vec3 c0 = u_color0 / 255.0;
  vec3 c1 = u_color1 / 255.0;

  vec3 col = (c0 * (b.x + b.y) / 2.0) + (c1 * (2.0 - b.x - b.y) / 2.0);
  vec4 gColor = vec4(col, 1.0);

  gl_FragColor = gColor;
}
