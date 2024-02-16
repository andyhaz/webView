//
//  ContentView.swift
//  webView
//
//  Created by andyhaz on 2/16/24.
//

import SwiftUI
import WebKit



struct View2: View {
    var body: some View {
        Text("View 2")
    }
}

struct ContentView: View {
    var body: some View {
        
        
        
        TabView{
            webViewSUI(urlSting: "http://gamerocketstudio.com/")
                .tabItem {
                    Text("WebPage")
                }
            View2()
                .tabItem {
                    Text("view 2")
                }
        }
    }
}

#Preview {
    ContentView()
}
