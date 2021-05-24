//
//  Articles.swift
//  GoodNews
//
//  Created by MAC on 01/03/2021.
//

import Foundation

struct ArticlesList: Decodable {
    let articles: [Articles]?
}

struct Articles: Decodable {
    let title: String?
    let description: String?
}
