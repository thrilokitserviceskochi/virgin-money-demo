//
//  ContactCellTableViewCell.swift
//  VMD
//
//  Created by AISWARYA M  on 01/08/22.
//

import UIKit
import SDWebImage

class ContactCellTableViewCell: UITableViewCell {

    @IBOutlet weak var btnSelect: UIButton!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var lblName: UILabel!
    
    weak var main: MainVC?
    let funcs = ContactCellModel()
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setup(people : PeoplesModel){
        lblName.text = (people.firstName ?? "" ) + " " + (people.lastName ?? "")
        lblEmail.text = people.email ?? "-"
        profileImage.sd_setImage(with: URL(string: people.avatar ?? "") , placeholderImage: #imageLiteral(resourceName: "profile"))
        
        profileImage.layer.cornerRadius = 30
        profileImage.layer.borderWidth = 1
        profileImage.layer.borderColor = UIColor(red: 201/255.0, green: 1/255.0, blue: 11/255.0, alpha: 1).cgColor
    }
    
    @IBAction func selectPerson(_ sender: UIButton) {
        guard let main = self.main else {return}
        funcs.movetoDetail(main, index: sender.tag)
    }
       
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
