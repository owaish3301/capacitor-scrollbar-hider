import { registerPlugin } from '@capacitor/core';

import type { ScrollbarHiderPlugin } from './definitions';

const ScrollbarHider = registerPlugin<ScrollbarHiderPlugin>('ScrollbarHider', {
  web: () => import('./web').then((m) => new m.ScrollbarHiderWeb()),
});

export * from './definitions';
export { ScrollbarHider };
