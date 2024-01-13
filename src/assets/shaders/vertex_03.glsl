precision highp float;

attribute vec3 aPosition;
attribute vec2 aTexCoord;

varying vec2 vTexCoord;

uniform mat4 uProjectionMatrix;
uniform mat4 uModelViewMatrix;

void main() {
  vec4 positionVec4 = vec4(aPosition, 1.0);
  vTexCoord = aTexCoord;
  gl_Position = uProjectionMatrix * uModelViewMatrix * positionVec4;
}
