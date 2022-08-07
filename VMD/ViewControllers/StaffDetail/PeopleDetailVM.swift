//
//  PeopleDetailVM.swift
//  VMD
//
//  Created by AISWARYA M on 03/08/22.
//

import Foundation
import SDWebImage

class PeopleDetailVM : NSObject {
    
    func setup(_ main : PeopleDetailVC){
        main.lblTitle.text = (main.person.firstName ?? "") + " " + (main.person.lastName ?? "")
        main.profile.sd_setImage(with: URL(string: main.person.avatar ?? "") , placeholderImage: #imageLiteral(resourceName: "profile"))
        
        main.lblName.text = (main.person.firstName ?? "") + " " + (main.person.lastName ?? "")
        main.lblJobTitle.text = main.person.jobtitle ?? ""
        main.lblEmail.text = main.person.email ?? ""
        main.favColor.text = main.person.favouriteColor ?? ""
        //main.favColorView.layer.backgroundColor = UIColor
        //
        //UIColor(hexFromString: main.person.favouriteColor ?? "")
    }
    
//    func hexStringToUIColor (hex:String) -> UIColor {
//        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
//
//        if (cString.hasPrefix("#")) {
//            cString.remove(at: cString.startIndex)
//        }
//
//        if ((cString.count) != 6) {
//            return UIColor.gray
//        }
//
//        var rgbValue:UInt32 = 0
//        Scanner(string: cString).scanHexInt32(&rgbValue)
//
//        return UIColor(
//            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
//            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
//            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
//            alpha: CGFloat(1.0)
//        )
//    }
}
