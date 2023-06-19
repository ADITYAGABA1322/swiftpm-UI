//
//  ContentView.swift
//  Calculator
//
//  Created by Aditya Gaba on 17/06/23.
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



// Main Content View
struct ContentView: View {
    @State private var displayText = "0"
    @State private var isPerformingCalculation = false
    @State private var currentOperation: CalculatorButton?
    @State private var previousNumber: Double = 0
    @State private var showSplash = true
    
    let buttons: [[CalculatorButton]] = [
        [.clear, .plusMinus, .percent, .divide],
        [.digit(7), .digit(8), .digit(9), .multiply],
        [.digit(4), .digit(5), .digit(6), .subtract],
        [.digit(1), .digit(2), .digit(3), .add],
        [.digit(0), .decimal, .equal]
    ]
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            if showSplash {
                LottieView(filename: "calculator")
                    .frame(width: 300, height: 300)
                
            } else {
              
                    
                    
                    
                    VStack(spacing: 12) {
                        HStack {
                            Spacer()
                            Text(displayText)
                                .font(.system(size: 64))
                                .foregroundColor(.white)
                        }
                        .padding()
                        
                        ForEach(buttons, id: \.self) { row in
                            HStack(spacing: 12) {
                                ForEach(row, id: \.self) { button in
                                    CalculatorButtonView(button: button, displayText: $displayText, currentOperation: $currentOperation, previousNumber: $previousNumber, isPerformingCalculation: $isPerformingCalculation)
                                }
                            }
                            .padding(.bottom, 8)
                        }
                    }
                    .background(Color.black.edgesIgnoringSafeArea(.all))
                    
             
                .transition(.opacity)
                .animation(.easeInOut(duration: 0.5), value: showSplash)
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
    





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
