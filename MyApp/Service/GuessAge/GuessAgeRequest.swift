//
//  GuessAge.swift
//  MyApp
//
//  Created by Luiza Negreiros Naves - LNA on 09/06/21.
//

import Foundation

func getAge(completion: @escaping (GuessAge) -> ()) {
    
    let urlString = Urls.guessAgeUrl
    
    if let url = URL(string: urlString) {
        URLSession.shared.dataTask(with: url) {data, response, error in
            if let data = data {
                do {
                    let json: GuessAge = try JSONDecoder().decode(GuessAge.self, from: data)
                    completion(json)
                }
                catch let error {
                    print(error.localizedDescription)
                }
            }
        }.resume()
    }
}
