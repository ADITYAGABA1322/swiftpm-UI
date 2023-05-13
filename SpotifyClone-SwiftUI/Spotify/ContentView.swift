//
//  ContentView.swift
//  Spotify
//
//  Created by Aditya Gaba on 10/05/23.
//  Copyright © 2023 xyz. All rights reserved.
//

import SwiftUI
import Lottie


struct ContentView: View {
    @State private var showSplash = true
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            if showSplash {
                LottieView(filename: "spotify-launch")
                    .frame(width: 300, height: 300)
                
            } else {
                NavigationView {
                                 // Your existing view code goes here
                                 VStack() {
                                     Spacer()
                                     Image("primary_logo")
                                         .resizable().scaledToFit()
                                         .frame(width: 800.0, height: 80.0)
                                         .padding(.top, 200)
                                        
                                     Spacer()
                                     
                                     Text("Millions of songs.")
                                         .font(.largeTitle).fontWeight(.bold)
                                         .foregroundColor(.white)
                                         .padding(.top, 0)
                                     Text("Free on Spotify.")
                                         .font(.largeTitle).fontWeight(.bold)
                                         .foregroundColor(.white)
                                         .padding(.top, 0)
                                     Spacer()
                                     
                                     VStack(alignment: .center, spacing: 15) {
                                         
                                         Button(action: {}) {
                                             Text("Sign up free")
                                                 .fontWeight(.heavy)
                                                 .frame(minWidth: 0, maxWidth: .infinity)
                                             
                                                 .foregroundColor(.black)
                                                 .padding(20)
                                                 .font(.headline)
                                                 .foregroundColor(.white)
                                                 .background(Color("app_green_color"))
                                                 .cornerRadius(.infinity)
                                         }
                                         .padding([.leading, .trailing], 30)
                                         
                                         Button(action: {}) {
                                             Image("icon_phone")
                                                 .resizable()
                                                 .frame(width: 30, height: 30)
                                                 .padding(EdgeInsets(top: 10, leading: 25, bottom: 10, trailing: 0))
                                             Text("Continue with phone number")
                                                 .multilineTextAlignment(.center)
                                                 .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                                             
                                                 .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 40))
                                                 .font(.headline)
                                                 .foregroundColor(.white)
                                         }
                                         .background(RoundedRectangle(cornerRadius: .infinity).stroke(Color.gray, lineWidth: 0.5))
                                         .padding([.leading, .trailing], 30)
                                         
                                         Button(action: {}) {
                                             Image("logo_google")
                                                 .resizable()
                                                 .frame(width: 30, height: 30) // set the size you want
                                                 .padding(EdgeInsets(top: 10, leading: 25, bottom: 10, trailing: -100))

                                             Text("Continue with Google")
                                                 .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                                                 .padding(20)
                                                 .font(.headline)
                                                 .foregroundColor(.white)
                                                 .animation(.spring())
                                         }
                                         .background(RoundedRectangle(cornerRadius: .infinity).stroke(Color.gray, lineWidth: 0.5))
                                         .padding([.leading, .trailing], 30)
                                       
                                         
                                         Button(action: {}) {
                                             Image("logo_fb")
                                                 .resizable()
                                                 .frame(width: 30, height: 30) // set the size you want
                                                 .padding(EdgeInsets(top: 10, leading: 25, bottom: 10, trailing: -100))

                                             Text("Continue with Facebook")
                                             
                                                 .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                                                 .padding(20)
                                                 .font(.headline)
                                                 .foregroundColor(.white)
                                         }
                                         .background(RoundedRectangle(cornerRadius: .infinity).stroke(Color.gray, lineWidth: 0.5))
                                         .padding([.leading, .trailing], 30)
                                         
                                         Button(action: {}) {
                                             Image("logo_apple")
                                                 .resizable()
                                                 .frame(width: 30, height: 30)
                                                 .padding(EdgeInsets(top: 10, leading: 25, bottom: 10, trailing: -100))
                                             Text("Continue with Apple")
                                                 .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                                                 .padding(20)
                                                 .font(.headline)
                                                 .foregroundColor(.white)
                                                 .animation(.spring())
                                         }
                                         .background(RoundedRectangle(cornerRadius: .infinity).stroke(Color.gray, lineWidth: 0.5))
                                         .padding([.leading, .trailing], 30)
                                         
                                   
                                         
                                         NavigationLink(destination: LoginView()) {
                                       
                                             Text("Log in")
                                                 .padding(10)
                                                 .font(.headline)
                                                 .foregroundColor(.white)

                                         }
                                     }
                                     Spacer()
                                 }
                                 .background(Color.black)
                                 .edgesIgnoringSafeArea(.all)
                             }
                             .transition(.opacity)
                             .animation(.easeInOut(duration: 0.5))
            }
        }
        .onAppear {
            // Simulate a delay before hiding the splash screen
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                withAnimation {
                    showSplash = false
                }
            }
        }
    }
}


// Lottie View

struct LottieView: UIViewRepresentable {
    var filename: String
    
    func makeUIView(context: UIViewRepresentableContext<LottieView>) -> UIView {
        let view = UIView(frame: .zero)
        let animationView = LottieAnimationView()
        animationView.animation = Animation.named(filename)
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)
        NSLayoutConstraint.activate([
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor),
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor)
        ])
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<LottieView>) {
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

