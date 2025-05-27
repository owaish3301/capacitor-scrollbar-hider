import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(ScrollbarHiderPlugin)
public class ScrollbarHiderPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "ScrollbarHiderPlugin"
    public let jsName = "ScrollbarHider"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "hideScrollbars", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = ScrollbarHider()

    public override func load() {
        // Hide scrollbars when the plugin loads
        if let webView = bridge?.webView {
            implementation.hideScrollbars(webView: webView)
        }
    }

    @objc func hideScrollbars(_ call: CAPPluginCall) {
        if let webView = bridge?.webView {
            implementation.hideScrollbars(webView: webView)
        }
        call.resolve()
    }
}
