//
//  ContactCellModel.swift
//  VMD
//
//  Created by Manu Puthoor on 03/08/22.
//

import Foundation

class ContactCellModel: NSObject {
    
    func movetoDetail(_ main: MainVC, index: Int) {
        main.view.endEditing(true)
        let vc = storyBrd.instantiateViewController(withIdentifier: Constants.ViewKeys.peopleVC) as! PeopleDetailVC
        vc.person = main.funcs.filteredpeopleArray[index]
        main.navigationController?.pushViewController(vc, animated: false)
        
    }
    
}
