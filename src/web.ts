import { WebPlugin } from '@capacitor/core';

import type { ScrollbarHiderPlugin } from './definitions';

export class ScrollbarHiderWeb extends WebPlugin implements ScrollbarHiderPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
