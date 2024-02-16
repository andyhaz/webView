//
//  webViewSUI.swift
//  webView
//
//  Created by andyhaz on 2/21/24.
//

import Foundation
import WebKit
import SwiftUI

 #if os(iOS)
 typealias WebViewRepresentable = UIViewRepresentable
 #elseif os(macOS)
 typealias WebViewRepresentable = NSViewRepresentable
 #endif
 
struct WebView: WebViewRepresentable {
    typealias NSViewType = WKWebView
    
    let url: URL
    
    func makeNSView(context: Context) -> WKWebView {
        let conf  = WKWebViewConfiguration()
        conf.defaultWebpagePreferences.allowsContentJavaScript = true
    
        return WKWebView()
    }
    
    func updateNSView(_ nsView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        nsView.load(request)
    }
}

struct webViewSUI: View {
    let urlSting:String
    var body: some View {
        let webPageURL = URL(string: urlSting)!
       // Text("View 1")
        WebView(url: webPageURL)
    }
}
