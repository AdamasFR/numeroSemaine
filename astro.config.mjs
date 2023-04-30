import { defineConfig } from 'astro/config';

// https://astro.build/config
import node from '@astrojs/node';


export default defineConfig({
    site: 'https://semaine.adm.ink',
    output: "server",
    adapter: node({
        mode: 'standalone'
    })
});