//
// ScrumdingerApp.swift
// Scrumdinger
//
//  Created by Aditya Gaba on 15/06/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData

    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
