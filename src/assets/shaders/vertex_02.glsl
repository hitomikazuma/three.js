precision highp float;

attribute vec3 aPosition;
attribute vec2 aTexCoord;
varying vec2 vTexCoord;

uniform mat4 uProjectionMatrix;
uniform mat4 uModelViewMatrix;

mat2 rotate2d(float _angle) {
  return mat2(cos(_angle), sin(_angle), -sin(_angle), cos(_angle));
}

uniform float u_angle;

void main() {
  // 図形の配置（初期設定）
  //  vec4 positionVec4 = vec4(aPosition, 1.0);
  //  vTexCoord = aTexCoord;
  //  gl_Position = uProjectionMatrix * uModelViewMatrix * positionVec4;

  // 図形の拡大
  //  vec3 pos = aPosition;
  //  pos.y *= 2.0;
  //  pos.y -= 0.5;
  //  vec4 positionVec4 = vec4(pos, 1.0);
  //  vTexCoord = aTexCoord;
  //  gl_Position = uProjectionMatrix * uModelViewMatrix * positionVec4;

  // 図形の回転
  //  vec3 pos = aPosition;
  //  pos.xy -= 0.5;
  //  pos.xy = rotate2d(u_angle) * pos.xy;
  //  pos.xy += 0.5;
  //  vec4 positionVec4 = vec4(pos, 1.0);
  //  vTexCoord = aTexCoord;
  //  gl_Position = uProjectionMatrix * uModelViewMatrix * positionVec4;

  // 図形の変形
  vec3 pos = aPosition;
  pos.y += (pos.x < 0.5) ? 0.5 : -0.5;
  vec4 positionVec4 = vec4(pos, 1.0);
  vTexCoord = aTexCoord;
  gl_Position = uProjectionMatrix * uModelViewMatrix * positionVec4;
}
