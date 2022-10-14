//
//  ContentView.swift
//  GitHubAPI
//
//  Created by Timmy Lau on 2022-10-14.
//

import SwiftUI

struct ContentView: View {
    
    @State var gitHubInfo  = [GitHubInfo]()
    
    var body: some View {
        
        
        List(gitHubInfo){ item in
            VStack(alignment: .leading) {
            Text("Name: \(item.name)")
                .font(.title)
                .foregroundColor(.blue)
                .padding(.bottom)
            Text("Username: \(item.login)")
                .font(.body)
                .fontWeight(.bold)
            Text("Public Repos: \(item.public_repos)")
                .font(.body)
                .fontWeight(.semibold)
                
                AsyncImage(url: URL(string: item.avatar_url)).frame(width: 300, height: 400, alignment: Alignment.top)
                
                Spacer()
            }
        }

            .padding()
            .onAppear() {
                Api().loadData{
                    (gitHubInfo) in self.gitHubInfo = [gitHubInfo]
                }
            }.navigationTitle("GitHub info list")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
