//
//  ArticleListViewModel.swift
//  MVVM_Practice_GoodNews
//
//  Created by 홍서린 on 2023/03/28.
//
//ViewModel에서는 tableView가 기본적으로 필요로 하는 numberOfRowsInSection에 리턴해줄 함수와 cellForRowAt에 넣어줄 함수, 그리고 numberOfSection까지 정의

import Foundation

struct ArticleListViewModel {
    let articles: [Article]
}

extension ArticleListViewModel {
    var numberOfSections: Int {
        return 1
    }

    func numberOfRowsInSection(_ section: Int) -> Int {
        return self.articles.count
    }

    func articleAtIndex(_ index: Int) -> ArticleViewModel {
        let article = self.articles[index]
        return ArticleViewModel(article)
    }
}

struct ArticleViewModel {
    private let article: Article
}

extension ArticleViewModel {
    init(_ article: Article) {
        self.article = article
    }
}

extension ArticleViewModel {
    var title: String? {
        return self.article.title
    }
    var description: String? {
        return self.article.description
    }
}
