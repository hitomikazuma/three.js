precision highp float;

varying vec2 vTexCoord;
uniform float u_time;
const float pi = 3.1415926535;

void main() {
  // 色を描画
  //  vec3 color = vec3(0.0, 0.0, 1.0);
  //  gl_FragColor = vec4(color, 1.0);

  // 発光したような描画
  //  vec2 b = vTexCoord * 2.0 - 1.0;
  //  vec3 col = vec3(pow(1.0 - abs(b.y), 8.0) * 2.0);
  //  col *= vec3(0.2, 0.5, 0.9);
  //  gl_FragColor = vec4(col, 1.0);

  // 発光したような描画を動かす
  vec2 b = vTexCoord * 2.0 - 1.0;
  b.y += sin(pi / 10.0 * u_time);
  vec3 col = vec3(pow(1.0 - abs(b.y), 8.0) * 2.0);
  col *= vec3(0.2, 0.5, 0.3);
  gl_FragColor = vec4(col, 1.0);
}
