//
//  Persistence.swift
//  Any Word
//
//  Created by Алексей Сергейцев on 12/3/21.
//

import CoreData

struct PersistenceController {
    
    static let shared = PersistenceController()
    let container: NSPersistentContainer
    // кусок для отображения предпросмотра, на работу приложения не влияет ->
    static var preview: PersistenceController = {
        let controller = PersistenceController(inMemory: true)

        for _ in 0..<10 {
            let dictAny = Dict(context: controller.container.viewContext)
            dictAny.nameDict = "Example Language 1"
            //                    language.creator = "A. Programmer"
        }

        return controller
    // <- тут заканчивается
    }()

    init(inMemory: Bool = false) {
            // If you didn't name your model Main you'll need
            // to change this name below.
            container = NSPersistentContainer(name: "Any_Word")

            if inMemory {
                container.persistentStoreDescriptions.first?.url = URL(fileURLWithPath: "/dev/null")
            }

            container.loadPersistentStores { description, error in
                if let error = error {
                    fatalError("Error: \(error.localizedDescription)")
                }
            }
        }

    func save() {
        let context = container.viewContext

        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }
    
    public static func fetchRequestDict() -> NSFetchRequest<Dict> {
        return NSFetchRequest<Dict>(entityName: "Dict")
    }
    
    public static func fetchRequestWord() -> NSFetchRequest<WordOther> {
        return NSFetchRequest<WordOther>(entityName: "WordOther")
    }
}
