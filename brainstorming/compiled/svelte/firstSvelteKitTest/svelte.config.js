import adapter from '@sveltejs/adapter-static';
import { vitePreprocess } from '@sveltejs/vite-plugin-svelte';

/** @type {import('@sveltejs/kit').Config} */
const config = {
	// Consult https://kit.svelte.dev/docs/integrations#preprocessors
	// for more information about preprocessors
	preprocess: vitePreprocess(),
	// Not sure what the difference is to use bas at this level or at kit->paths Both seam to wotk though
	// base: '/brainstorming/compiled/svelte/firstSvelteKitTest',
	kit: {
		// adapter-auto only supports some environments, see https://kit.svelte.dev/docs/adapter-auto for a list.
		// If your environment is not supported, or you settled on a specific environment, switch out the adapter.
		// See https://kit.svelte.dev/docs/adapters for more information about adapters.
		adapter: adapter({
			// default options are shown. On some platforms
			// these options are set automatically — see below
			pages: 'build',
			assets: 'build',
			fallback: undefined,
			precompress: false,
			strict: true,
		}),
		paths: {
			base: '/brainstorming/compiled/svelte/firstSvelteKitTest',
		},
		
		// Normally this is _app but that does not play well with jekyll since all underscored filr/dirs are seen as source file that are excluded
		appDir: 'app',
	}
};

export default config;
