/**
 * We have our own node-express server therefore we need to use special vite adapter
 * called '@sveltejs/adapter-node'
 *
 * When this adapter is in use we can generate proper production build when calling
 * `npm run build` script.
 *
 * For more info see: https://kit.svelte.dev/docs/adapter-node
 *
 */
// import adapter from '@sveltejs/adapter-auto';
import adapter from '@sveltejs/adapter-node';

/** @type {import('@sveltejs/kit').Config} */
const config = {
	kit: {
		// adapter-auto only supports some environments, see https://kit.svelte.dev/docs/adapter-auto for a list.
		// If your environment is not supported or you settled on a specific environment, switch out the adapter.
		// See https://kit.svelte.dev/docs/adapters for more information about adapters.
		adapter: adapter()
	}
};

export default config;
