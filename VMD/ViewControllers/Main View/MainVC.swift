//
//  MainVC.swift
//  VMD
//
//  Created by AISWARYA M  on 01/08/22.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tblView: UITableView!
    @IBOutlet weak var searchHeight: NSLayoutConstraint!
    let funcs = MainVM()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        funcs.setup(self)
    }
    
    @IBAction func selectContacts(_ sender: Any) {

    }
    
    @IBAction func selectOccupiedRooms(_ sender: Any) {
        let vc = storyBrd.instantiateViewController(withIdentifier: Constants.ViewKeys.roomVC) as! RoomVC
        self.navigationController?.pushViewController(vc, animated: false)
    }
    
    @IBAction func tapGesture(_ sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
    
}


