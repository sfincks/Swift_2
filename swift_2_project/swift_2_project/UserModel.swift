//
//  UserModel.swift
//  swift_2_project
//
//  Created by Артур on 28.03.2024.
//

struct UserModel: Decodable {
    var response: [User]
}

struct User: Decodable {
    var firstName: String?
    var lastName: String?
    var photo: String?
    
    enum CodingKeys: String, CodingKey {
        case firstName = "first_name"
        case lastName = "last_name"
        case photo = "photo_400_orig"
    }
}
