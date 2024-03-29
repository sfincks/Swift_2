//
//  NetworkService.swift
//  swift_2_project
//
//  Created by Артур on 24.03.2024.
//  Copyright © 2024 123. All rights reserved.
//

import Foundation

//protocol NetworkServiceProtocol {
//    func getFriends()
//}

final class NetworkService {//}: NetworkServiceProtocol {
    
//    func getFriends() {
//        self.getFriends()
//    }
    
    
//    private let friendViewController: FriendViewControllerProtocol
    
//    init(friendViewController: FriendViewControllerProtocol) {
//        self.friendViewController = friendViewController
//    }
    
    enum NetworkError: Error {
        case dataError
    }
    
    private let session = URLSession.shared
    
    static var token = ""
    static var userID = ""
    
    func getFriends(completion: @escaping(Result<[Friend], Error>) -> Void) {
        guard let url = URL(string: "https://api.vk.com/method/friends.get?fields=photo_400_orig,online&access_token=\(NetworkService.token)&v=5.131") else {
            return
        }

        session.dataTask(with: url) { (data, _, error) in
            guard let data = data else {
                completion(.failure(NetworkError.dataError))
                return
            }
            if let error = error {
                completion(.failure(error))
                return
            }
            do {
                let friends = try JSONDecoder().decode(FriendsModel.self, from: data)
                completion(.success(friends.response.items))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
    
    func getGroups(completion: @escaping(Result<[Group], Error>) -> Void) {
        guard let url = URL(string: "https://api.vk.com/method/groups.get?access_token=\(NetworkService.token)&fields=description&v=5.131&extended=1") else {
            return
        }

        session.dataTask(with: url) { (data, _, error) in
            guard let data = data else {
                completion(.failure(NetworkError.dataError))
                return
            }
            if let error = error {
                completion(.failure(error))
                return
            }
            do {
                let groups = try JSONDecoder().decode(GroupsModel.self, from: data)
                completion(.success(groups.response.items))
            } catch {
                completion(.failure(NetworkError.dataError))
            }
        }.resume()
    }
    
    func getPhotos(completion: @escaping([Photo]) -> Void) {
        guard let url = URL(string: "https://api.vk.com/method/photos.get?fields=bdate&access_token=\(NetworkService.token)&v=5.131&album_id=profile") else {
            return
        }

        session.dataTask(with: url) { (data, _, error) in
            guard let data = data else {
                return
            }
            do {
                let photos = try JSONDecoder().decode(PhotosModel.self, from: data)
                completion(photos.response.items)
                print(photos)
            } catch {
                print(error)
            }
        }.resume()
    }
    
    func getProfileInfo(completion: @escaping(User?) -> Void) {
        guard let url = URL(string: "https://api.vk.com/method/users.get?fields=photo_400_orig&access_token=\(NetworkService.token)&v=5.131") else {
            return
        }
        session.dataTask(with: url) { (data, _, error) in
            guard let data = data else {
                return
            }
            do {
                let user = try JSONDecoder().decode(UserModel.self, from: data)
                completion(user.response.first)
            } catch {
                print(error)
            }
        }.resume()
    }
}

