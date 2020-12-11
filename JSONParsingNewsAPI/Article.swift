//
//  Article.swift
//  JSONParsingNewsAPI
//
//  Created by Shah, Shubham on 11/12/20.
//

import Foundation

struct Article: Codable {
    var author: String?
    var title: String?
    var description: String?
    var url: String?
    var urlToImage: String?
    var publishedAt: String?
    var content: String? 
}
