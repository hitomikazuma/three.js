precision highp float;
uniform vec2 resolution;

const float freq = 20.0;

void main() {
  // 色を描画
  //  float r = 0.8;
  //  float g = gl_FragCoord.x / resolution.x;
  //  float b = gl_FragCoord.y / resolution.y;
  //  gl_FragColor = vec4(r, g, b, 1.0);

  // 色を描画
  //  float r = 1.0;
  //  float g = gl_FragCoord.x / resolution.x;
  //  float b = gl_FragCoord.y / resolution.y;
  //  float a = 1.0;
  //  gl_FragColor = vec4(r, g, b, a);

  // 指定座標だけ色を描画
  //  vec3 color = vec3(0.0);
  //  if (gl_FragCoord.x < resolution.x / 10.0) {
  //    color.g = 1.0;
  //  }
  //  if (gl_FragCoord.y < resolution.y / 10.0) {
  //    color.b = 1.0;
  //  }
  //  gl_FragColor = vec4(color, 1.0);

  // 発光したような描画
  vec3 color;
  //  vec2 c = (gl_FragCoord.xy * 2.0 - resolution.xy) / min(resolution.x, resolution.y);
  vec2 c = gl_FragCoord.xy / resolution;
  c = c * 2.0 - 1.0;
  color += vec3(pow(1.0 - abs(c.y), 64.0) * 2.0);
  color *= vec3(0.2, 0.5, 0.9);
  gl_FragColor = vec4(color, 1.0);
}
