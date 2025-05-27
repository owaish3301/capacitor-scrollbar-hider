package com.owaish.plugins.scrollbarhider;

import android.util.Log;
import android.webkit.WebView;

public class ScrollbarHider {

    public void hideScrollbars(WebView webView) {
        Log.i("ScrollbarHider", "Hiding scrollbars on WebView");
        if (webView != null) {
            webView.setVerticalScrollBarEnabled(false);
            webView.setHorizontalScrollBarEnabled(false);
        }
    }
}
