//
//  ShowDogAPI.swift
//  MyApp
//
//  Created by Luiza Negreiros Naves - LNA on 09/06/21.
//

import Foundation

func getHack(completion: @escaping (HackOnePerson) -> ()) {
    
    let urlString = Urls.hackUrl
    
    if let url = URL(string: urlString) {
        URLSession.shared.dataTask(with: url) {data, response, error in
            if let data = data {
                do {
                    let json: HackOnePerson = try JSONDecoder().decode(HackOnePerson.self, from: data)
                    completion(json)
                 
                }
                catch let error {
                    print(error.localizedDescription)
                }
            }
        }.resume()
    }
}

