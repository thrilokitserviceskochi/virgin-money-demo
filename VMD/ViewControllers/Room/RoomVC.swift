//
//  RoomVC.swift
//  VMD
//
//  Created by AISWARYA M on 03/08/22.
//

import UIKit

class RoomVC: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    let funcs = RoomVM()
    override func viewDidLoad() {
        super.viewDidLoad()
        funcs.setup(self)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func selectContacts(_ sender: Any) {
        
        let vc = storyBrd.instantiateViewController(withIdentifier: Constants.ViewKeys.mainVC) as! MainVC
        self.navigationController?.pushViewController(vc, animated: false)
        
    }

}
