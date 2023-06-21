//
//  Expenses.swift
//  iExpense
//
//  Created by Dr Cpt Blackbeard on 6/21/23.
//

import Foundation

// A class to store an array of all Expense Items
class Expenses: ObservableObject {
    @Published var items = [ExpenseItem]()
}
