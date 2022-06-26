//
//  detailView.swift
//  H4XOR News
//
//  Created by Elahe  Sharifi on 26/06/2022.
//

import SwiftUI

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


