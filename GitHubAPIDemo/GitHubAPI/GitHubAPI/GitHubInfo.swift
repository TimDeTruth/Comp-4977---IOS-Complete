//
//  GitHubInfo.swift
//  GitHubAPI
//
//  Created by Timmy Lau on 2022-10-14.
//




import Foundation

struct GitHubInfo: Identifiable, Codable{
    var login: String
    var id: Int
    var avatar_url: String
    var name: String
    var public_repos: Int

}



