import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [vue()],
  resolve: {
    alias: {
      '@': '/app/client/src',
    }
  },
  server: {
    host: '0.0.0.0',
    port: process.env.PORT || 5173,
  }
})
