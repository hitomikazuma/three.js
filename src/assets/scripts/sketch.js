import * as THREE from 'three'

let scene, camera, renderer, cube

import img from '../images/texture/minecraft-box.png?url'

/**
 * sketch
 * @param element
 */
export const sketch = (element) => {
  scene = new THREE.Scene()
  camera = new THREE.PerspectiveCamera(60, window.innerWidth / window.innerHeight, 0.1, 1000)
  renderer = new THREE.WebGLRenderer({ antialias: true })
  renderer.setSize(window.innerWidth, window.innerHeight)
  element.appendChild(renderer.domElement)

  const geo = new THREE.BoxGeometry(1, 1, 1)

  const texture = new THREE.TextureLoader().load(img)
  const mat = new THREE.MeshBasicMaterial({
    color: 0xff00000,
    map: texture,
  })

  cube = new THREE.Mesh(geo, mat)
  scene.add(cube)
  camera.position.z = 5

  animate()
  window.addEventListener('resize', onWindowResize)
}

const animate = () => {
  requestAnimationFrame(animate)
  cube.rotation.x += 0.01
  cube.rotation.y += 0.01
  renderer.render(scene, camera)
}

const onWindowResize = () => {
  camera.aspect = window.innerWidth / window.innerHeight
  camera.updateProjectionMatrix()
  renderer.setSize(window.innerWidth, window.innerHeight)
}
