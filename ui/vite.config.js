import { sveltekit } from '@sveltejs/kit/vite';
import { defineConfig } from 'vite';

export default defineConfig({
<<<<<<< Updated upstream:ui/vite.config.js
	plugins: [sveltekit()]
=======
	plugins: [sveltekit()],
	server: {
		host: true,
		port: 9000
	}
>>>>>>> Stashed changes:frontend-server/vite.config.js
});
