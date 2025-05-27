import { WebPlugin } from '@capacitor/core';

import type { ScrollbarHiderPlugin } from './definitions';

export class ScrollbarHiderWeb extends WebPlugin implements ScrollbarHiderPlugin {
  async hideScrollbars(): Promise<void> {
    // On web, scrollbars are already hidden via CSS
    // This is just a no-op for web compatibility
    console.log('ScrollbarHider: Web scrollbars handled via CSS');
  }
}
