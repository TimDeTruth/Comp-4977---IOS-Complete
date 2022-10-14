//
//  Task.swift
//  StateDemo
//
//  Created by Timmy Lau on 2022-10-14.
//

import Foundation

class Task: ObservableObject {
    internal init(name: String, isComplete: Bool, lastCompleted: Date? = nil) {
        self.name = name
        self.isComplete = isComplete
        self.lastCompleted = lastCompleted
    }
    let name: String
    @Published var isComplete: Bool
    var lastCompleted: Date?
}
