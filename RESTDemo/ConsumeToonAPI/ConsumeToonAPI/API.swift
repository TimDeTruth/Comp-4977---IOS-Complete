//
//  Api.swift
//  ConsumeToonAPI
//
//  Created by Timmy Lau on 2022-10-14.
//

import Foundation
class Api : ObservableObject{
    
    @Published var toons = [Toon]()//an array of Toon characters
    
    func loadData(completion:@escaping ([Toon]) -> ()) {
        guard let url = URL(string: "https://apipool.azurewebsites.net/api/toons") else { //guard means to try to go to URL, else 
            print("Invalid url...")
            return
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            let toons = try! JSONDecoder().decode([Toon].self, from: data!)//we are expecting JSON to come through
            print(toons)
            DispatchQueue.main.async {
                completion(toons)
            }
        }.resume()
    }
}
