//
//  PeoplesModel.swift
//  VMD
//
//  Created by AISWARYA M  on 01/08/22.
//

import Foundation

struct PeoplesModel: Codable {
    var createdAt, firstName: String?
    var avatar: String?
    var lastName, email, jobtitle, favouriteColor: String?
    var id: String?
    var data: MeetingModel?
    var to, fromName: String?
}

// MARK: - DataClass
struct MeetingModel: Codable {
    var title, body, id, toID: String?
    var fromID, meetingid: String?

    enum CodingKeys: String, CodingKey {
        case title, body, id
        case toID = "toId"
        case fromID = "fromId"
        case meetingid
    }
}
