//
//  Service.swift
//  VMD
//
//  Created by AISWARYA M  on 01/08/22.
//

import Foundation

class Service : NSObject{
    
    static let shared = Service()
    
    func fetchPeoples(completion : @escaping ([PeoplesModel]? , Error?) -> ()){
        let urlString = Constants.base_URL + Constants.PathExt.getPeoples
        guard let url = URL(string: urlString) else { return }

        URLSession.shared.dataTask(with: url) { data , resp , err  in
            if let err = err {
                completion(nil,err)
                print("Failed to fetch Peoples:",err)
                return
            }

            guard let data = data else { return }

            do{
                let peoples = try JSONDecoder().decode([PeoplesModel].self, from: data)
                DispatchQueue.main.async {
                    completion(peoples,nil)
                }
            } catch let jsonError {
                print("Failed to decode",jsonError)
            }

        }.resume()
    }
    
    
    func fetchRooms(completion : @escaping ([RoomsModel]? , Error?) -> ()){
        
        let urlString = Constants.base_URL + Constants.PathExt.getRooms
        
        guard let url = URL(string: urlString) else { return }

        URLSession.shared.dataTask(with: url) { data , resp , err  in
            if let err = err {
                completion(nil,err)
                print("Failed to fetch Rooms:",err)
                return
            }

            guard let data = data else { return }

            do{
                let rooms = try JSONDecoder().decode([RoomsModel].self, from: data)
                DispatchQueue.main.async {
                    completion(rooms,nil)
                }
            } catch let jsonError {
                print("Failed to decode",jsonError)
            }

        }.resume()
    }
    
}

