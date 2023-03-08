//
//  ArticleViewModel.swift
//  NewsAppWithRxSwift
//
//  Created by Mehmet Can Şimşek on 8.03.2023.
//

import Foundation
import RxSwift
import RxCocoa


struct ArticleListViewModel {
    let articlesVM: [ArticleViewModel]
}

extension ArticleListViewModel {
    init(article: [Article]) {
        self.articlesVM = article.compactMap(ArticleViewModel.init)
    }
}

extension ArticleListViewModel {
    func articleAt(_ index: Int) -> ArticleViewModel {
        return self.articlesVM[index]
    }
}

struct ArticleViewModel {
    let article: Article
    
    init(article: Article) {
        self.article = article
    }
}

extension ArticleViewModel {
    var title: Observable<String> {
        return Observable<String>.just(article.title)
    }
    
    var description: Observable<String> {
        return Observable<String>.just(article.description ?? "")
    }
}
