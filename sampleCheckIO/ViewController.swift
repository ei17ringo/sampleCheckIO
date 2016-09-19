//
//  ViewController.swift
//  sampleCheckIO
//
//  Created by Eriko Ichinohe on 2016/09/19.
//  Copyright © 2016年 Eriko Ichinohe. All rights reserved.
//

import UIKit
import Realm


class ViewController: UIViewController {

    let realmDB = RealmUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func tapSave(_ sender: UIButton) {
        save()
    }
    
    @IBAction func tapRead(_ sender: UIButton) {
        find()
    }
    
    /**
     保存処理
     */
    func save() {
        do {
            let user = RealmUser()
            user.id = "1"
            user.name = "Takatomo Okitsu"
            user.createdAt = NSDate().timeIntervalSince1970
        
            let realm = RLMRealm.default()
            realm.beginWriteTransaction()
            realm.add(user as! RLMObject)
            try realm.commitWriteTransaction() //終了

        } catch {
            
        }
    }
    
    func find() {
        // 全件取得
        let users = RealmUser.allObjects()
        
//        // Predicateを使ったフェッチ
//        let users = User.objectsWhere("name == Takatomo Okitsu")
//        
//        // プレースホルダー
//        let users = User.objectsWhere("name CONTAINS %@", "okitsu")
        
        
        // ユーザオブジェクト(RLMObject)へのアクセスの仕方
        for user in users {
            
            var usereach = user as! RealmUser
            print("user.name: \(usereach.name)")
        }
    
    
    }
    
}

