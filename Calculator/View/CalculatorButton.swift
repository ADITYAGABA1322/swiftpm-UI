//
//  CalculatorButton.swift
//  Calculator
//
//  Created by Aditya Gaba on 17/06/23.
//


import SwiftUI
enum CalculatorButton: Hashable, CaseIterable {
    case digit(Int)
    case clear
    case plusMinus
    case percent
    case divide
    case multiply
    case subtract
    case add
    case decimal
    case equal
    
    
     static var allCases: [CalculatorButton] {
         return [
             .digit(0), .digit(1), .digit(2), .digit(3), .digit(4),
             .digit(5), .digit(6), .digit(7), .digit(8), .digit(9),
             .clear, .plusMinus, .percent,
             .divide, .multiply, .subtract, .add,
             .decimal, .equal
         ]
     }
    
    var title: String {
        switch self {
        case .digit(let value):
            return String(value)
        case .clear:
            return "AC"
        case .plusMinus:
            return "+/-"
        case .percent:
            return "%"
        case .divide:
            return "÷"
        case .multiply:
            return "×"
        case .subtract:
            return "-"
        case .add:
            return "+"
        case .decimal:
            return "."
        case .equal:
            return "="
        }
    }
    var isSelected: Bool {
           switch self {
           case .divide, .multiply, .subtract, .add:
               return true
           default:
               return false
           }
       }
    var backgroundColor: Color {
        switch self {
        case .digit(_), .clear, .plusMinus, .percent:
            return Color(.darkGray)
        default:
            return Color(.orange)
        }
    }
    
    var foregroundColor: Color {
        return .white
    }
}


struct CalculatorButtonView: View {
    let button: CalculatorButton
    @Binding var displayText: String
    @Binding var currentOperation: CalculatorButton?
    @Binding var previousNumber: Double
    @Binding var isPerformingCalculation: Bool
    @State private var isSelected = false
    @State private var isAnimating = false
    
   
    
    var body: some View {
        Button(action: {
            // Handle button tap
            self.handleButtonTap()
        }) {
            
            Group {
                            if case .digit(let value) = button {
                                let digit = String(value)
                                Text(digit)
                                    .font(Font.system(size: 32, weight: .bold))
                                    .frame(width: buttonWidth(), height: buttonHeight())
                                    .background(buttonBackgroundColor)
                                    .foregroundColor(buttonForegroundColor)
                                    .cornerRadius(buttonWidth() / 2)
                                  //  .overlay(buttonOverlay)
                                    .scaleEffect(isSelected ? 0.95 : 1.0)
                                    //.offset(y: value == 0 ? 0 : 0)
                            } else {
                                Text(button.title)
                                    .font(Font.system(size: 32, weight: .bold))
                                    .frame(width: buttonWidth(), height: buttonHeight())
                                    .background(buttonBackgroundColor)
                                    .foregroundColor(buttonForegroundColor)
                                    .cornerRadius(buttonWidth() / 2)
                                  //  .overlay(buttonOverlay)
                                    .scaleEffect(isSelected ? 0.95 : 1.0)
                                
                            }
                        }
                
        }
        .onTapGesture {
            isSelected = true // Set isSelected to true when the button is tapped
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                isSelected = false // Reset isSelected to false after a short delay
            }
        }
        .offset(y:90)
    }
    
//    private func gridLayout() -> [GridItem] {
//        let spacing: CGFloat = 100 // Adjust the spacing between buttons
//        let columns: [GridItem] = Array(repeating: .init(.flexible(), spacing: spacing), count: 8)
//        return columns
//    }
    
    
    private func buttonWidth() -> CGFloat {
        let screenWidth = UIScreen.main.bounds.width
        let regularButtonWidth = (screenWidth - 5 * 12) / 4
        return button == .digit(0) ? regularButtonWidth + 100 : regularButtonWidth
    }


    private func buttonHeight() -> CGFloat {
        let screenWidth = UIScreen.main.bounds.width
        let regularButtonWidth = (screenWidth - 5 * 12) / 4
        let regularButtonHeight = regularButtonWidth - 10
        return button == .digit(0) ? regularButtonHeight   : regularButtonHeight
    }
   

    
    private var buttonBackgroundColor: Color {
        switch button {
        case .digit(_), .decimal:
            return Color(.darkGray)
        case .clear, .plusMinus, .percent:
            return Color(.lightGray)
        case .divide, .multiply, .subtract, .add:
            return button.isSelected ? Color(.orange) : Color(.white)
        case .equal:
            return Color(.orange)
        }
    }


    
    private var buttonForegroundColor: Color {
        switch button {
        case .clear, .plusMinus, .percent:
            return Color(.black)
        default:
            return Color(.white)
        }
    }
    
//    private var buttonOverlay: some View {
//        if button.isSelected {
//            return AnyView(
//                RoundedRectangle(cornerRadius: buttonWidth() / 2)
//                    .stroke(Color(.white), lineWidth: 2)
//            )
//        } else {
//            return AnyView(EmptyView())
//        }
//    }
    
    private func handleButtonTap() {
        switch button {
        case .clear:
            displayText = "0"
            isPerformingCalculation = false
            previousNumber = 0
            currentOperation = nil
            
        case .plusMinus:
            if var number = Double(displayText) {
                number *= -1
                displayText = formatNumber(number)
            }
            
        case .percent:
            if var number = Double(displayText) {
                number /= 100
                displayText = formatNumber(number)
            }
            
        case .divide, .multiply, .subtract, .add:
            if let number = Double(displayText) {
                if isPerformingCalculation {
                    performCalculation()
                }
                isPerformingCalculation = true
                previousNumber = number
                currentOperation = button
                displayText = "0"
            }
            
        case .equal:
            performCalculation()
            
        case .decimal:
            if !displayText.contains(".") {
                displayText += "."
            }
            
        case .digit(let value):
            if displayText == "0" || isPerformingCalculation {
                displayText = String(value)
                isPerformingCalculation = false
            } else {
                displayText += String(value)
            }
        }
    }

    private func performCalculation() {
        if let operation = currentOperation, let currentNumber = Double(displayText) {
            var result: Double
            switch operation {
            case .divide:
                result = previousNumber / currentNumber
            case .multiply:
                result = previousNumber * currentNumber
            case .subtract:
                result = previousNumber - currentNumber
            case .add:
                result = previousNumber + currentNumber
            default:
                result = currentNumber
            }
            displayText = formatNumber(result)
            previousNumber = result
            currentOperation = nil
        }
    }

    
    private func formatNumber(_ number: Double) -> String {
        let formatter = NumberFormatter()
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 6
        formatter.numberStyle = .decimal
        return formatter.string(from: NSNumber(value: number)) ?? ""
    }
}

struct CalculatorButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorButtonView(button: .digit(1), displayText: .constant("1"), currentOperation: .constant(nil), previousNumber: .constant(0), isPerformingCalculation: .constant(false))
    }
}
