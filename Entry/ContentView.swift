//
//  ContentView.swift
//  Entry
//
//  Created by Connor Huffman on 8/5/20.
//  Copyright © 2020 Connor Huffman. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State var items = [Item]()
    @State var showCreateListPopover = false

    var body: some View {
        //1. Embed your View into a Navigation View
        NavigationView {
            List(items) { item in
                Text(item.name)
            }
            //2. Add a Title for your Navigation Bar
            .navigationBarTitle(Text("Entry"), displayMode: .inline)
            //.3 Add the Bar Items
            .navigationBarItems(leading:
                Button(action: {self.addList()}) {
                    Image(systemName: "person.crop.circle")
                }, trailing:
                Button(action: {print("HI")}) {
                    Image(systemName: "square.and.pencil")
                }
            )
        }
    }

    func addList() {
        
    }
}

struct Item: Identifiable {
    var id: Int
    var name: String
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
