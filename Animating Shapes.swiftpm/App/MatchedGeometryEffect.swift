//
//  MatchedGeometryEffect.swift
//
//
//  Created by Aditya Gaba on 11/05/23.
//


import SwiftUI

struct MatchedGeometryEffectView: View {
    @State var exchange = false
    
    private func circle() -> some View {
        Circle()
            .fill(.red)
            .frame(width: 44, height: 44)
        
    }
    
    private func rectangle() -> some View {
        Rectangle()
            .fill(.yellow)
            .frame(width: 200, height: 50)

    }

    var body: some View {
        VStack{
            if exchange {
                circle()
                rectangle()
                
            } else {
                rectangle()
                circle()
                
            }
        }
        .padding()
        .onTapGesture {
            withAnimation {
                exchange.toggle()
            }
        }
    }
}

struct MatchedGeometryEffectView_Previews: PreviewProvider {
    static var previews: some View {
       MatchedGeometryEffectView()
    }
}

