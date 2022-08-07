//
//  PeopleDetailVC.swift
//  VMD
//
//  Created by AISWARYA M  on 01/08/22.
//

import UIKit

class PeopleDetailVC: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var profile: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblEmail: UILabel!
    
    @IBOutlet weak var lblJobTitle: UILabel!
    
    @IBOutlet weak var favColor: UILabel!
    

    
    let funcs = PeopleDetailVM()
    var person = PeoplesModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        funcs.setup(self)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
}
