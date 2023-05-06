//
//  ContentView.swift
//  OnBoardSwiftUI - Netflix
//

//MARK:  Created by Aditya Gaba on 01/05/23.


import SwiftUI

struct ContentView: View {
@State var splashScreen = true

var body: some View {
    ZStack {
        if splashScreen {
            SplashScreen()
        } else {
            MainView()
        }
    }
    .onAppear {
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            splashScreen = false
        }
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MainView: View {
@State var selectedPage = 0


var body: some View {
    ZStack {
        Color.black.edgesIgnoringSafeArea(.all)
        
        if selectedPage == 0 {
            Image("screen")
                .resizable()
                .opacity(0.8)
                .edgesIgnoringSafeArea(.all)
            
            Image("gradient")
                .resizable()
                .edgesIgnoringSafeArea(.all)
        }
        
        VStack {
            TabView(selection: $selectedPage) {
                ForEach(testData.indices, id: \.self) { index in
                    CardView(card: testData[index])
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            .offset(y: 20)
            
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 380, height: 60)
                .foregroundColor(Color("buttonbg"))
                .padding(10)
                .overlay(
                    Text("GET STARTED")
                        .fontWeight(.regular)
                        .font(.system(size: 25))
                        .foregroundColor(.white)
                        .shadow(color: .gray, radius: 1, x: 1, y: 1)
                )
        }
        
        if selectedPage == 0 || selectedPage == 1 || selectedPage == 2 || selectedPage == 3 {
            TopNav()
                .offset(y: -395)
                .padding()
        }
    }
}
}

struct SplashScreen: View {
    var body: some View {
    ZStack {
    Color.black.edgesIgnoringSafeArea(.all)
    LottieView(filename: "netflix")
        }
    }
}

struct TopNav: View {
    var body: some View {
        HStack {
            Image("netflixlogo")
                .resizable()
                .frame(width: 110, height: 62)
            
            Spacer()
            
            Text("Privacy")
                .font(.headline)
                .fontWeight(.regular)
                .foregroundColor(.white)
                
            
            Spacer().frame(width : 5)
            
            Text("SIGN IN")
                .font(.headline)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
        }
        
    }

}


