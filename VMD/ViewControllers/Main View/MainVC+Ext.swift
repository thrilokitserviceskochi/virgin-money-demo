//
//  MainVC+Ext.swift
//  VMD
//
//  Created by AISWARYA M on 02/08/22.
//

import Foundation
import UIKit

extension MainVC : UITableViewDelegate , UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return funcs.filteredpeopleArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.ViewKeys.contactCell, for: indexPath) as! ContactCellTableViewCell
        let dict = funcs.filteredpeopleArray[indexPath.row]
        cell.main = self
        cell.btnSelect.tag = indexPath.row
        cell.setup(people: dict)
        return cell
    }
    
    
}

extension MainVC : UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText == ""{
            funcs.filteredpeopleArray = funcs.peopleArray
        }else{
            funcs.filteredpeopleArray =  funcs.filteredpeopleArray.filter{ (people: PeoplesModel) -> Bool in
                guard let loc = people.firstName else {return false}
                return loc.lowercased().contains(searchText.lowercased())
            }
            
        }
        tblView.reloadData()
    }
}
