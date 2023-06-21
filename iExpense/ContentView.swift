//
//  ContentView.swift
//  iExpense
//
//  Created by Dr Cpt Blackbeard on 6/21/23.
//

import SwiftUI

struct ContentView: View {
    // Watch the @Published properties in Expenses class for changes
    @StateObject var expenses = Expenses()
    
    var body: some View {
        NavigationView {
            List {
                // .items is a property on the expenses class
                // the id options are dictated by the expenseitem struct's properties
                // overall we want to 'identify each expense, uniquely, by its name'
                ForEach(expenses.items, id: \.name) { item in
                    Text(item.name)
                }
            }
            .navigationTitle("iExpense")
            .toolbar {
                Button {
                    let expense = ExpenseItem(name: "Dinner", type: "Business", amount: 10)
                    expenses.items.append(expense)
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
    
    // IndexSet is a swift type that represents a collection of unique integer values
    // This function take an IndexSet as input represeting a set o indices and uses those
    // indices to remove corresponding elements from the 'items' collection of the 'expenses' object
    func removeItems(at offsets: IndexSet) {
        expenses.items.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
