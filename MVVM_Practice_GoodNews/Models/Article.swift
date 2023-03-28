//
//  Article.swift
//  MVVM_Practice_GoodNews
//
//  Created by 홍서린 on 2023/03/28.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String?
    let description: String?
}
