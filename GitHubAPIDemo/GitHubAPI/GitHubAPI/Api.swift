//
//  Api.swift
//  GitHubAPI
//
//  Created by Timmy Lau on 2022-10-14.
//

import Foundation
class Api : ObservableObject{
    
    @Published var gitHubInfo = [GitHubInfo]()
    
    func loadData(completion:@escaping (GitHubInfo) -> ()) {
        guard let url = URL(string: "https://api.github.com/users/TimDeTruth") else {
            print("Invalid url...")
            return
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            let gitHubInfo = try! JSONDecoder().decode(GitHubInfo.self, from: data!)
            print(gitHubInfo)
            
            DispatchQueue.main.async {
                completion(gitHubInfo)
            }
        }.resume()
    }
}
