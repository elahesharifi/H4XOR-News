//
//  PostData.swift
//  H4XOR News
//
//  Created by Elahe  Sharifi on 25/06/2022.
//

import Foundation

struct Result: Decodable {
    let hits: [Post]
}

struct Post:Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
