//
//  ToDoItem.swift
//  CoreDataToDo
//
//  Created by Shabaaz Adams on 10/09/2020.
//  Copyright © 2020 Shabaaz Adams. All rights reserved.
//

import Foundation
import CoreData


public class ToDoItem:NSManagedObject, Identifiable{
    @NSManaged public var createdAt:Date?
    @NSManaged public var title:String?
}



extension ToDoItem{
    static func getAllToDoItems() -> NSFetchRequest<ToDoItem> {
        let request:NSFetchRequest<ToDoItem> = ToDoItem.fetchRequest() as! NSFetchRequest<ToDoItem>
        
        let sortDescriptor = NSSortDescriptor(key: "createdAt", ascending: true)
        
        request.sortDescriptors = [sortDescriptor]
        
        return request
        
    }
}
