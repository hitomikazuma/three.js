// by SamuelYAN
// more works //
// https://twitter.com/SamuelAnn0924
// https://www.instagram.com/samuel_yan_1990/

// refer: https://www.youtube.com/c/lewislepton

let mySize

// a shader variable
let theShader

function preload() {
  theShader = new p5.Shader(this.renderer, vert, frag)
}

function setup() {
  mySize = min(windowWidth, windowHeight)
  // shaders require WEBGL mode to work
  // createCanvas(mySize, mySize/16*11, WEBGL);
  createCanvas(mySize, mySize, WEBGL)
  noStroke()
}

function draw() {
  // shader() sets the active shader with our shader
  shader(theShader)

  theShader.setUniform('u_resolution', [width, height])
  theShader.setUniform('u_frame', frameCount / 2.0)
  theShader.setUniform('u_time', frameCount * 0.001)
  theShader.setUniform('u_mouse', [mouseX / 10.0, map(mouseY, 0, height, height, 0) / 10.0])

  // rect gives us some geometry on the screen
  rect(0, 0, width, height)
}

function windowResized() {
  resizeCanvas(windowWidth, windowHeight)
}

function keyPressed() {
  //noLoop();
  saveCanvas('Shaders_002_2022', 'png')
}
