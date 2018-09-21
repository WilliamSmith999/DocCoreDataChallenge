//
//  Document+CoreDataProperties.swift
//  CoreDataDoc
//
//  Created by William Smith on 9/21/18.
//  Copyright © 2018 William Smith. All rights reserved.
//
//

import Foundation
import CoreData


extension Document {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Document> {
        return NSFetchRequest<Document>(entityName: "Document")
    }

    @NSManaged public var name: String?
    @NSManaged public var content: String?
    @NSManaged public var size: Double
    @NSManaged public var rawDate: NSDate?

}
