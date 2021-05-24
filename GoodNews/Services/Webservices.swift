//
//  Webservices.swift
//  GoodNews
//
//  Created by MAC on 01/03/2021.
//

import Foundation

class Webservices {
    func getArticles(url: URL, completion: @escaping ([Articles]?) -> ()) {
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            }else if let data = data {
                let articleList = try? JSONDecoder().decode(ArticlesList.self, from: data)
                if let articleList = articleList {
                    completion(articleList.articles)
                }
                
                print(articleList?.articles )
            }
        }.resume()
    }
}

