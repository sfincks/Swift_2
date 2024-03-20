//
//  NetworkService.swift
//  Sem3
//
//  Created by sfincks on 19.03.2024.
//

import Foundation

final class NetworkService{
    
    private let session = URLSession.shared
    
    func getData() {
        let url = URL(string: "https://kudago.com/public-api/v1.2/;ocations/?lang=ru&fields=timezone,name,curency,coords")
        
        session.dataTask(with: url!) {(data,_,error) in
            guard let data = data else{
                return
            }
            do {
                let towns = try JSONDecoder().decode([Town].self, from:data)
                print(towns)
            }catch{
                print(error)
            }
        }.resume()
    }
    
}
