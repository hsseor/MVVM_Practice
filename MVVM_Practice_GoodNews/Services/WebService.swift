//
//  WebService.swift
//  MVVM_Practice_GoodNews
//
//  Created by 홍서린 on 2023/03/28.
//

import Foundation

class WebService {
    func getArticles(url: URL, completion: @escaping ([Article]?) -> ()) {

        URLSession.shared.dataTask(with: url) {
            (data, response, error) in
            if let error = error {
                print(error.localizedDescription)
                completion(nil) // if any error occurs, article can be nil
            }
            else if let data = data {
                let articleList = try? JSONDecoder().decode(ArticleList.self, from: data)
                print(articleList)
                if let articleList = articleList {
                    completion(articleList.articles)
                }
                print(articleList?.articles)

            }

        }.resume()

    }
}
