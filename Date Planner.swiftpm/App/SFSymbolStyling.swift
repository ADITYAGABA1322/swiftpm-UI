/*
 SFSymbolStyling.swift
 Data Planner
 
 
 Created by Aditya Gaba on 5/04/23.
*/
import SwiftUI

struct SFSymbolStyling: ViewModifier {
    func body(content: Content) -> some View {
        content
            .imageScale(.large)
            .symbolRenderingMode(.monochrome)
    }
}

extension View {
    func sfSymbolStyling() -> some View {
        modifier(SFSymbolStyling())
    }
}
