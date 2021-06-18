//
//  ShowDogRequest.swift
//  MyApp
//
//  Created by Luiza Negreiros Naves - LNA on 10/06/21.
//

import Foundation

func getShowDog(completion: @escaping (ShowDog)-> ()) {
    
    let urlString = Urls.showDogUrl
    
    if let url = URL(string: urlString) {
        URLSession.shared.dataTask(with: url) {data, response, error in
            if let data = data {
                do {
                    let json: ShowDog = try JSONDecoder().decode(ShowDog.self, from: data)
                    completion(json)
                }
                catch let error {
                    print(error.localizedDescription)
                }
            }
        }.resume()
    }
}
