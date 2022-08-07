//
//  RoomVM.swift
//  VMD
//
//  Created by AISWARYA M on 03/08/22.
//

import Foundation

class RoomVM : NSObject{
    
    var roomsArray : [RoomsModel] = []
    
    func setup(_ main : RoomVC){
        main.collectionView.delegate = main
        main.collectionView.dataSource = main
        self.fetchRooms(main)
    }
    
    func fetchRooms(_ main : RoomVC) {
        Service.shared.fetchRooms {[weak self] (rooms, err) in
            if let err = err {
                print("Failed to fetch courses:", err)
                return
            }
            self?.roomsArray = rooms ?? []
            //self?.filteredroomsArray = self?.roomsArray ?? []
            DispatchQueue.main.async {
                main.collectionView.reloadData()
            }
        }
    }
    
}
