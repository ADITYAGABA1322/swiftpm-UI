//
//  ContentView.swift
//  JavaJunction
//
//  Created by Aditya Gaba on 02/07/23.
//


import SwiftUI
import Lottie

// Lottie View
struct LottieView: UIViewRepresentable {
    var filename: String
    
    func makeUIView(context: UIViewRepresentableContext<LottieView>) -> UIView {
        let view = UIView(frame: .zero)
        let animationView = AnimationView()
        animationView.animation = Animation.named(filename)
        animationView.contentMode = .scaleAspectFill
        animationView.loopMode = .loop
        animationView.play()
        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)
        
        NSLayoutConstraint.activate([
            animationView.topAnchor.constraint(equalTo: view.topAnchor),
            animationView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            animationView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            animationView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<LottieView>) {
    }
}


// 3D View
struct ThreeDButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 50))
            .frame(width: 50, height: 50)
            .foregroundColor(.blue)
            .rotation3DEffect(.degrees(configuration.isPressed ? 45 : 0), axis: (x: 1, y: 0, z: 0)) // Apply 3D rotation effect when pressed
    }
}



// Zoom View
struct ZoomButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: configuration.isPressed ? 55 : 50, weight: .bold)) // Increase font size when pressed
            .foregroundColor(configuration.isPressed ? .black : .blue) // Change text color to black when pressed
            .padding(10)
            .background(
                GeometryReader { geo in
                    Color.clear
                        .overlay(
                            Text("JAVA JUNCTION")
                                .font(.system(size: configuration.isPressed ? 55 : 50, weight: .bold)) // Increase font size when pressed
                                .foregroundColor(.white)
                                .padding(10)
                                .background(
                                    Color.clear
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(Color.white, lineWidth: 4)
                                                .shadow(color: .white, radius: 8, x: 0, y: 4)
                                        )
                                )
                                .mask(
                                    LinearGradient(
                                        gradient: Gradient(colors: [.red, .orange, .yellow, .green, .blue, .purple, .red]),
                                        startPoint: .leading,
                                        endPoint: .trailing
                                    )
                                    .frame(width: geo.size.width, height: geo.size.height)
                                    .mask(
                                        Text("JAVA JUNCTION")
                                            .font(.system(size: configuration.isPressed ? 55 : 50, weight: .bold)) // Increase font size when pressed
                                            .foregroundColor(.blue)
                                            .padding(10)
                                            .overlay(
                                                LinearGradient(
                                                    gradient: Gradient(colors: [.red, .orange, .yellow, .green, .blue, .purple, .red]),
                                                    startPoint: .leading,
                                                    endPoint: .trailing
                                                )
                                                .mask(Text("JAVA JUNCTION").font(.system(size: configuration.isPressed ? 55 : 50, weight: .bold))) // Increase font size when pressed
                                            )
                                            .scaleEffect(configuration.isPressed ? 1.2 : 1.0) // Apply zoom effect when pressed
                                    )
                                )
                        )
                        .border(Color.white, width: 2)
                        .shadow(color: .white, radius: 4, x: 0, y: 2)
                }
            )
            .cornerRadius(10)
    }
}


// Main View
struct ContentView: View {
    let imageNames = [
        "mocha",
        "coffee",
        "java",
        "hi",
        "frappe",
        "mc",
        "chip",
        "buck",
        "starbuck",
        "peppermint",
        "Vanilla",
    ]
    
    @State private var selectedPage = 0
    @State private var quantity = 0
    @State private var isFavorite = false
    @State private var gradientOffset: Double = 0
    @State private var isZoomed = false
    @State private var showSplash = true
    
    private func navigateForward() {
        selectedPage += 1
        if selectedPage >= imageNames.count {
            selectedPage = 0
        }
    }
    
    private func navigateBackward() {
        selectedPage -= 1
        if selectedPage < 0 {
            selectedPage = imageNames.count - 1
        }
    }
    
    private func getTransition(for index: Int) -> AnyTransition {
        if selectedPage == index {
            return .scale(scale: 0.2)
        } else if abs(selectedPage - index) == 1 {
            return .move(edge: .leading)
        } else {
            let transitionTypes: [AnyTransition] = [.slide, .scale(scale: 0.8), .offset(x: 0, y: 100)]
            return transitionTypes.randomElement() ?? .opacity
        }
    }
    
    var body: some View {
        ZStack {
            AngularGradient(gradient: Gradient(colors: [
                .red, .orange, .yellow, .green, .blue, .purple, .red
            ]), center: .center, startAngle: .degrees(gradientOffset), endAngle: .degrees(gradientOffset + 360))
            .animation(Animation.linear(duration: 10).repeatForever(autoreverses: false))
            .edgesIgnoringSafeArea(.all)
            .onAppear {
                gradientOffset = 360
            }
            
            if showSplash {
                LottieView(filename: "78378-coffeebrownpink")
                    .frame(width: 900, height: 900)
                
            } else {
                VStack {
                    Spacer()
                    Button(action: {
                        // Add action here if needed
                    }) {
                        Text("JAVA JUNCTION")
                            .foregroundColor(.black)
                    }
                    .buttonStyle(ZoomButtonStyle())
                    .offset(x: -280, y: 675)
                    
                    Spacer()
                    
                    ZStack {
                        ForEach(0..<imageNames.count) { index in
                            Image(imageNames[index])
                                .resizable()
                                .offset(y: 80)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 960, height: 2220)
                                .cornerRadius(10)
                                .padding()
                                .opacity(selectedPage == index ? 1.0 : 0.0)
                                .offset(x: selectedPage == index ? 0 : (selectedPage > index ? -UIScreen.main.bounds.width : UIScreen.main.bounds.width))
                                .rotation3DEffect(.degrees(selectedPage == index ? 0 : -45), axis: (x: 0, y: 1, z: 0), anchor: .leading)
                                .scaleEffect(selectedPage == index ? 1.0 : 0.6)
                                .animation(.easeInOut(duration: 0.5))
                                .transition(getTransition(for: index))
                                .zIndex(selectedPage == index ? 1 : 0)
                                .gesture(
                                    TapGesture()
                                        .onEnded {
                                            withAnimation {
                                                navigateForward()
                                            }
                                        }
                                )
                            
                        }
                    }
                    .gesture(
                        DragGesture()
                            .onEnded { value in
                                withAnimation {
                                    if value.translation.width < 0 {
                                        navigateForward()
                                    } else if value.translation.width > 0 {
                                        navigateBackward()
                                    }
                                }
                            }
                    )
                    
                    Spacer()
                    
                    HStack {
                        Spacer()
                        
                        Button(action: {
                            navigateBackward()
                        }) {
                            Image(systemName: "arrow.left")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.blue)
                                .cornerRadius(10)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                    
                    Spacer()
                    
                    HStack {
                        Spacer()
                        Button(action: {
                            isFavorite.toggle()
                        }) {
                            Image(systemName: isFavorite ? "heart.fill" : "heart")
                                .resizable()
                                .frame(width: 60, height: 55)
                                .foregroundColor(isFavorite ? .red : .white)
                        }
                    }
                    .padding(.trailing)
                    .offset(x: -10, y: -1725)
                    
                    Spacer()
                    
                    HStack {
                           Button(action: {
                               if quantity > 0 {
                                   quantity -= 1
                               }
                           }) {
                               Image(systemName: "minus.circle")
                                   .resizable()
                                   .frame(width: 50, height: 50)
                                   .foregroundColor(.blue)
                                   .buttonStyle(ThreeDButtonStyle()) // Apply 3D effect to the minus button
                           }

                           Text("\(quantity)")
                               .font(.title)
                               .foregroundColor(.white)
                               .frame(width: 100)
                               .scaleEffect(quantity > 0 ? 1.2 : 1.0) // Apply zoom effect to the quantity text when it's greater than 0

                           Button(action: {
                               quantity += 1
                           }) {
                               Image(systemName: "plus.circle")
                                   .resizable()
                                   .frame(width: 50, height: 50)
                                   .foregroundColor(.blue)
                                   .buttonStyle(ThreeDButtonStyle()) // Apply 3D effect to the plus button
                           }
                        Spacer()
                        
                        Button(action: {
                            // Perform buy action
                        }) {
                            Text("Buy")
                                .font(.title)
                                .frame(width: 100)
                                .padding()
                                .background(Color.green)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .scaleEffect(1.0) // Apply default scale effect to the Buy button
                                .animation(.spring()) // Add animation to the zoom effect
                        }
                    }
                    .padding()
                    .offset(y: -630)
                }
                
                HStack(spacing: 20) {
                                   Button(action: {
                                       // Handle Facebook button tap
                                   }) {
                                       Image("facebook") // Replace "facebook" with the actual name of your Facebook icon image asset
                                           .resizable()
                                           .frame(width: 70, height: 65)
                                   }
                                   
                                   Button(action: {
                                       // Handle Instagram button tap
                                   }) {
                                       Image("instagram") // Replace "instagram" with the actual name of your Instagram icon image asset
                                           .resizable()
                                           .frame(width: 80, height: 80)
                                   }
                                   
                                   Button(action: {
                                       // Handle YouTube button tap
                                   }) {
                                       Image("youtube") // Replace "youtube" with the actual name of your YouTube icon image asset
                                           .resizable()
                                           .frame(width: 80, height: 80)
                                   }
                               }
                               .padding(.top, -607)
                               .offset(x: 250)
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                withAnimation {
                    showSplash = false
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





//#Preview {
//    ContentView()
//        .previewDevice("iPad Pro (12.9-inch) (6th generation)")
//}
