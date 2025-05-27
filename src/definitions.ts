export interface ScrollbarHiderPlugin {
  /**
   * Hide scrollbars on the native WebView
   */
  hideScrollbars(): Promise<void>;
}
