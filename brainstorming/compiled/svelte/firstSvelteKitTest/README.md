# create-svelte

Everything you need to build a Svelte project, powered by [`create-svelte`](https://github.com/sveltejs/kit/tree/main/packages/create-svelte).

## Creating a project

If you're seeing this, you've probably already done this step. Congrats!

```bash
# create a new project in the current directory
npm create svelte@latest

# create a new project in my-app
npm create svelte@latest my-app
```

## Developing

Once you've created a project and installed dependencies with `npm install` (or `pnpm install` or `yarn`), start a development server:

```bash
npm run dev

# or start the server and open the app in a new browser tab
npm run dev -- --open
```

## Building

To create a production version of your app:

```bash
npm run build
```

You can preview the production build with `npm run preview`.

> To deploy your app, you may need to install an [adapter](https://kit.svelte.dev/docs/adapters) for your target environment.

Installed static adapter since my initial concern is to be able to build stuff that is hosted as static site. No other server architecture should be needed.

```bash 
npm install @sveltejs/adapter-static
```
and then just changed 
```js
import adapter from '@sveltejs/adapter-auto';
```
to
```js
import adapter from '@sveltejs/adapter-static';
```
in svelte.config.js


Interesting read about this topic: https://khromov.se/the-missing-guide-to-understanding-adapter-static-in-sveltekit/

When runing npm run build the output dir is created. Defualt is `build` 
A sub-dir for the code is `_app`
That will not play nice with jekyll since all underscore_prefixed file and dirs are exluded

This can be fixed by adding in svelte.config.js the param.
```js
kit: {
		// Normally this is _app but that does not play well with jekyll since all underscored filr/dirs are seen as source file that are excluded
		appDir: 'app',
	}
```

Also as is described here https://kit.svelte.dev/docs/configuration#paths
when the sveltkit app does not live in the root of a url the `base` param need to set in `svelte.config.js` it is a sibling of kit not child.
And then everywhere an url is build it need to be imported (`import { assets, base, resolveRoute } from '$app/paths';`) 

and then used `<a href="{base}/your-page">Link</a>`








