import { defineConfig } from 'vite'
import { resolve } from 'path'
import glsl from 'vite-plugin-glsl'

export default defineConfig(({ mode }) => {
  console.log(mode)
  return {
    root: resolve(__dirname, 'src'),
    build: {
      outDir: resolve(__dirname, 'dist'),
      rollupOptions: {
        input: {
          index: resolve(__dirname, 'src/index.html'),
        },
      },
    },
    plugins: [glsl()],
  }
})
