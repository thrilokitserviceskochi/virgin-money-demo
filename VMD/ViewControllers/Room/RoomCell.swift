//
//  RoomCell.swift
//  VMD
//
//  Created by AISWARYA M on 03/08/22.
//

import UIKit

class RoomCell: UICollectionViewCell {
    
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var roomID: UILabel!
    @IBOutlet weak var maxOccupancy: UILabel!
    
    func setContent(room : RoomsModel){
        self.roomID.text = room.id
        if let max = room.maxOccupancy as? Int{
            self.maxOccupancy.text = "\(max)"
        }
        if room.isOccupied ?? false {
            self.bgView.layer.backgroundColor = UIColor.appTransparentColor.cgColor
            self.bgView.layer.borderWidth = 1
            self.bgView.layer.borderColor =  UIColor.appTransparentColor.cgColor
        }else{
            self.bgView.layer.backgroundColor = UIColor.white.cgColor
            self.bgView.layer.borderWidth = 1
            self.bgView.layer.borderColor =  UIColor.appColor.cgColor
        }
        self.bgView.layer.cornerRadius = 8
    }
    
}
