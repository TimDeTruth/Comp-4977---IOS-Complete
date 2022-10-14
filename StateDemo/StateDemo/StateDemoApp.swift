//
//  StateDemoApp.swift
//  StateDemo
//
//  Created by Timmy Lau on 2022-10-14.
//

import SwiftUI

@main
struct StateDemoApp: App {
    
    
    @StateObject var aTask = Task(name: "Turn parking lot light", isComplete: false, lastCompleted: nil)
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(aTask)
        }
    }
}
