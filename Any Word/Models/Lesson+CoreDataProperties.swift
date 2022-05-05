//
//  Lesson+CoreDataProperties.swift
//  Any Word
//
//  Created by Алексей Сергейцев on 4/29/22.
//
//

import Foundation
import CoreData


extension Lesson {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Lesson> {
        return NSFetchRequest<Lesson>(entityName: "Lesson")
    }

    @NSManaged public var lsTheme: NSObject?
    @NSManaged public var nameDict: String?

}

extension Lesson : Identifiable {

}
