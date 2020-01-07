//
//  Follower.swift
//  GithubFollowers
//
//  Created by Exrhan Selmani on 02/01/2020.
//  Copyright © 2020 Exrhan Selmani. All rights reserved.
//

import Foundation

struct Follower: Codable, Hashable {
    var login: String
    var avatarUrl: String
    
    // This function has to be implemented when there are properties that aren't hashable (like String).
//    func hash(into hasher: inout Hasher) {
//        hasher.combine(login)
//    }
}
