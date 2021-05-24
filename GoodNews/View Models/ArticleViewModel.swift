//
//  ArticleViewModel.swift
//  GoodNews
//
//  Created by MAC on 04/04/2021.
//

import Foundation

struct ArticleListViewModel {
    let articles : [Articles]
}

extension ArticleListViewModel {
    var numberOfSections : Int {
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
    private let article: Articles
}

extension ArticleViewModel{
    init(_ article: Articles) {
        self.article = article
    }
}

extension ArticleViewModel{
    var title : String {
        return article.title ?? ""
    }
    
    var description : String {
        return article.description ?? ""
    }
}
