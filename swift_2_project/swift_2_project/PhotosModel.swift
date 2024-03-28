//
//  AppDelegate.swift
//  swift_2_final
//
//  Created by Артур on 24.03.2024.
//  Copyright © 2024 123. All rights reserved.
//

struct PhotosModel: Decodable {
    var response: Photos
}

struct Photos: Decodable {
    var items: [Photo]
}

struct Photo: Decodable {
    var id: Int
    var text: String?
    var sizes: [Sizes]
}

struct Sizes: Codable {
    var url: String
}
