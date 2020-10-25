//
//  ToDoItemView.swift
//  CoreDataToDo
//
//  Created by Shabaaz Adams on 10/09/2020.
//  Copyright © 2020 Shabaaz Adams. All rights reserved.
//

import SwiftUI

struct ToDoItemView: View {
    var title:String = ""
    var createdAt:String = ""
    
    var body: some View{
        HStack{
            VStack(alignment: .leading){
                Text(title)
                    .font(.headline)
                Text(createdAt)
                    .font(.caption)
                
            }
        }
    }
}


struct ToDoItemView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoItemView(title: "My great to do", createdAt: "today")
    }
}
