import Foundation
import WebKit

@objc public class ScrollbarHider: NSObject {
    @objc public func hideScrollbars(webView: WKWebView) {
        print("ScrollbarHider: Hiding scrollbars on WKWebView")
        webView.scrollView.showsVerticalScrollIndicator = false
        webView.scrollView.showsHorizontalScrollIndicator = false
    }
}
