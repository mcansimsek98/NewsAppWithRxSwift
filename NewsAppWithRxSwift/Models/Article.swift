//
//  Article.swift
//  NewsAppWithRxSwift
//
//  Created by Mehmet Can Şimşek on 8.03.2023.
//

import Foundation

struct ArticleResponse: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title : String
    let description: String?
}
