//
//  detailView.swift
//  H4XOR News
//
//  Created by Elahe  Sharifi on 26/06/2022.
//

import SwiftUI
import WebKit

struct detailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct detailView_Previews: PreviewProvider {
    static var previews: some View {
        detailView(url: "https://google.com")
    }
}

struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString){
            let request = URLRequest(url: url)
            uiView.load(request)
        }
        }
    }
}
