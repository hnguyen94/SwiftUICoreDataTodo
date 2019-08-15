//
//  ContentView.swift
//  SwiftUICoreDataToDo
//
//  Created by Hoang Nguyen on 15.08.19.
//  Copyright © 2019 Hoang Nguyen. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(fetchRequest: ToDoItem.allToDoItems()) var toDoItems: FetchedResults<ToDoItem>

    @State private var newToDoItem = ""

    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Whats next?")) {
                    HStack {
                        TextField("New Item", text: $newToDoItem)
                        Button(action: {

                        }) {
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(.green)
                                .imageScale(.large)
                        }
                    }
                }.font(.headline)
            }
        }
        .navigationBarTitle(Text("My List"))
        .navigationBarItems(trailing: EditButton())

    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
