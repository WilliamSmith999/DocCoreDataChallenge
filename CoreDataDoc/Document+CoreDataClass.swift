//
//  Document+CoreDataClass.swift
//  CoreDataDoc
//
//  Created by William Smith on 9/21/18.
//  Copyright © 2018 William Smith. All rights reserved.
//
//

import UIKit
import CoreData

@objc(Document)
public class Document: NSManagedObject {
    var date: Date?{
        get{
            return rawDate as Date?
        }
        set{
            rawDate = newValue as NSDate?
        }
    }
    
    convenience init?(name: String?, date: Date?, content: String) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        guard let managedContext = appDelegate?.persistentContainer.viewContext else {
            return nil
        }
        self.init(entity: Document.entity(), insertInto: managedContext)
            self.content = content
            self.date = date
            self.name = name
        
    }
}
