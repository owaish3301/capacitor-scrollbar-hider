# capacitor-scrollbar-hider

A Capacitor plugin that hides scrollbars in native WebViews for a cleaner, more native mobile experience.

## Purpose

This plugin addresses the issue where visible scrollbars in Capacitor apps make them feel less native. It implements the solution from [Capacitor GitHub issue #5469](https://github.com/ionic-team/capacitor/issues/5469).

## Install

```bash
npm install capacitor-scrollbar-hider
npx cap sync
```

## Usage

The plugin automatically hides scrollbars when it loads, but you can also call it manually:

```typescript
import { ScrollbarHider } from 'capacitor-scrollbar-hider';

// Hide scrollbars (optional - happens automatically)
await ScrollbarHider.hideScrollbars();
```

## Implementation Details

### Web Platform
- Scrollbars should be hidden via CSS in your web app
- The web plugin is a no-op that logs for debugging

### Android Platform
- Uses native WebView methods to disable scrollbars:
  - `setVerticalScrollBarEnabled(false)`
  - `setHorizontalScrollBarEnabled(false)`
- Automatically triggered when the plugin loads

### iOS Platform
- Uses WKWebView's scrollView properties:
  - `showsVerticalScrollIndicator = false`
  - `showsHorizontalScrollIndicator = false`
- Automatically triggered when the plugin loads

## Benefits

✅ **Permanent Solution**: Committed to git, survives Capacitor updates  
✅ **Cross-Platform**: Works on web, iOS, and Android  
✅ **Automatic**: No manual configuration needed  
✅ **Native Feel**: Completely hides scrollbars while preserving functionality

## API

<docgen-index>

* [`hideScrollbars()`](#hidescrollbars)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### hideScrollbars()

```typescript
hideScrollbars() => Promise<void>
```

Hide scrollbars on the native WebView

--------------------

</docgen-api>
