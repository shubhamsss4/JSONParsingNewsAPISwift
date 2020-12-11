//
//  NewsFeed.swift
//  JSONParsingNewsAPI
//
//  Created by Shah, Shubham on 11/12/20.
//

import Foundation

struct NewsFeed: Codable {
    var status: String = ""
    var totalResults:Int = 0
    var articles:[Article]?
}
