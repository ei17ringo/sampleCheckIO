//
//  RealmSwift.swift
//  sampleCheckIO
//
//  Created by Eriko Ichinohe on 2016/09/19.
//  Copyright © 2016年 Eriko Ichinohe. All rights reserved.
//

import Foundation

import Realm

class RealmUser:RLMObject {
    dynamic var id = ""
    dynamic var name = ""
    dynamic var createdAt:Double = 0
    
}
