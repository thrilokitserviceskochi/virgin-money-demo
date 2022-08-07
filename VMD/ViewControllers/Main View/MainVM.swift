//
//  MainVM.swift
//  VMD
//
//  Created by AISWARYA M  on 01/08/22.
//

import Foundation
import UIKit

class MainVM : NSObject{
    
    var peopleArray : [PeoplesModel] = []
    var filteredpeopleArray = [PeoplesModel]()
    
    func setup(_ main : MainVC){
        main.tblView.delegate = main
        main.tblView.dataSource = main
        main.tblView.register(UINib(nibName: "ContactCellTableViewCell", bundle: nil), forCellReuseIdentifier: "ContactCellTableViewCell")
        main.searchBar.delegate = main
        self.fetchCollegues(main)
    }
    
    func fetchCollegues(_ main : MainVC) {
        Service.shared.fetchPeoples {[weak self] (peoples, err) in
            if let err = err {
                print("Failed to fetch courses:", err)
                return
            }
            self?.peopleArray = peoples ?? []
            self?.filteredpeopleArray = self?.peopleArray ?? []
            DispatchQueue.main.async {
            main.tblView.reloadData()
            }
        }
    }
    
    
    func callDetailVC(_ main : MainVC, peopleDetail : PeoplesModel){
        let vc = storyBrd.instantiateViewController(withIdentifier: Constants.ViewKeys.peopleVC) as! PeopleDetailVC
        vc.person = peopleDetail
        main.navigationController?.pushViewController(vc, animated: false)
    }
}
