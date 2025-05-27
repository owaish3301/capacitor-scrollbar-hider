export interface ScrollbarHiderPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
