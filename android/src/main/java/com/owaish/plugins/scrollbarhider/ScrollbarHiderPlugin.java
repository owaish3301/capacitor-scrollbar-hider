package com.owaish.plugins.scrollbarhider;

import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "ScrollbarHider")
public class ScrollbarHiderPlugin extends Plugin {

    private ScrollbarHider implementation = new ScrollbarHider();

    @Override
    public void load() {
        // Hide scrollbars when the plugin loads
        implementation.hideScrollbars(getBridge().getWebView());
    }

    @PluginMethod
    public void hideScrollbars(PluginCall call) {
        implementation.hideScrollbars(getBridge().getWebView());
        call.resolve();
    }
}
