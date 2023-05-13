//
// AnimatingShapesApp.swift
//
//
//  Created by Aditya Gaba on 09/05/23.
//

import SwiftUI

@main
struct AnimatingShapesApp: App {
    @State var selection: Topic? = nil
    
    var body: some Scene {
        WindowGroup {
            NavigationSplitView {
                TopicList(contentSource: TopicData.homeContent)
            } detail: {
                Text("Please select a destination")
            }
        }
    }
}
