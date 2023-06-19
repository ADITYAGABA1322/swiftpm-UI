//
//  HelloView.swift
//  WeekndPlaylist
//
//  Created by Aditya Gaba on 16/06/23.
//


import SwiftUI


struct HelloView: View {
    

    var body: some View {

        GeometryReader{
            let safeArea = $0.safeAreaInsets
            let size  = $0.size
            BannerView(safeArea: safeArea , size: size)
                .ignoresSafeArea(.container , edges: .top  )
            
        }
        .preferredColorScheme(.dark)
       
    }
        

    
}




struct HelloView_Previews: PreviewProvider {
    static var previews: some View {
        HelloView()
    }
}




