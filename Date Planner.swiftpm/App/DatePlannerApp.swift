/*
 DatePlannerApp.swift
 Data Planner
 
 
 Created by Aditya Gaba on 5/04/23.
*/
import SwiftUI

@main
struct DatePlannerApp: App {
    @StateObject private var eventData = EventData()

    var body: some Scene {
        WindowGroup {
            NavigationView {
                EventList()
                Text("Select an Event")
                    .foregroundStyle(.secondary)
            }
            .environmentObject(eventData)

        }
    }
}
