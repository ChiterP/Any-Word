//
//  Dict+CoreDataProperties.swift
//  Any Word
//
//  Created by Алексей Сергейцев on 4/29/22.
//
//

import Foundation
import CoreData


extension DictAny {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<DictAny> {
        return NSFetchRequest<DictAny>(entityName: "DictAny")
    }

    @NSManaged public var nameDict: String?
    @NSManaged public var relationship: Lesson?

}

extension DictAny : Identifiable {

}
