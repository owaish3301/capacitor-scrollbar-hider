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
        CAPPluginMethod(name: "echo", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = ScrollbarHider()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }
}
