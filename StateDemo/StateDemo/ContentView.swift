//
//  ContentView.swift
//  StateDemo
//
//  Created by Timmy Lau on 2022-10-14.
//

import SwiftUI

struct ContentView: View {
//    @StateObject private var theTask = Task(name: "Check all windows", isComplete: false, lastCompleted: nil)
    
    @EnvironmentObject var aTask: Task
    
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: aTask.isComplete ? "checkmark.square" : "square")
                Text(aTask.name)
            }
            ControlPanel(theTask: self.aTask)
        }.padding()
    }
}
struct ControlPanel: View {
    
//    binding you can have boolean, if you have an OBJECT you NEED ObservaedObjedt
//    @Binding var isComplete: Bool
    
    @ObservedObject var theTask: Task
    
    var body: some View {
        if !theTask.isComplete {
            Button(action: {
                theTask.isComplete = true
            }) {
                Text("Mark Complete")
            }.padding(.top)
        } else {
            Button(action: {
                theTask.isComplete = false
            }) {
                Text("Reset")
            }.padding(.top)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let task = Task(name: "Shake the door", isComplete: false, lastCompleted: nil)
        ContentView().environmentObject(task)
    }
}
