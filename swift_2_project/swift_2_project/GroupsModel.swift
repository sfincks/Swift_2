//
//  GroupsModel.swift
//  swift_2_project
//
//  Created by Артур on 24.03.2024.
//  Copyright © 2024 123. All rights reserved.
//

struct GroupsModel: Decodable {
    var response: Groups
}

struct Groups: Decodable {
    var items: [Group]
}

struct Group: Codable {
    var id: Int
    var name: String?
    var photo: String?
    var description: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case photo = "photo_50"
        case description
    }
}
