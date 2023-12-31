//
//  ContentView.swift
//  demoCalculator(6.29)
//
//  Created by 최세근 on 2023/06/29.
//

import SwiftUI

enum CalcButton: String {
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case zero = "0"
    case add = "+"
    case subtract = "-"
    case divide = "/"
    case multiply = "*"
    case equal = "="
    case allClear = "AC"
    case decimal = "."
    case percent = "%"
    case negative = "-/+"
    
    var buttonColor: Color {
        switch self {
        case .add, .subtract, .multiply, .divide, .equal:
            return .orange
        case .allClear, .negative, .percent:
            return Color(.lightGray)
        default:
            return Color(UIColor(red: 55/255.0, green: 55/255.0, blue: 55/255.0, alpha: 1))
        }
        
    }
}

enum Operation {
    case add, subtract, multiply, divide, none
}


struct ContentView: View {
    
    @State var resultString = "0"
    @State var runningNumber = 0
    @State var currentOperation: Operation = .none
    
    let buttons: [[CalcButton]] = [
        [.allClear, .negative, .percent, .divide],
        [.seven, .eight, .nine, .multiply],
        [.four, .five, .six, .subtract],
        [.one, .two, .three, .add],
        [.zero, .decimal, .equal]
        
    ]
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Text(resultString)
                        .bold()
                        .font(.custom("GmarketSansLight", size: 60))
                        .foregroundColor(.white)
                }
                .padding()
                
                ForEach(buttons, id: \.self) { row in
                    HStack(spacing: 12) {
                        ForEach(row, id: \.self) { item in
                            Button {
                                self.didTap(button: item)
                            } label: {
                                Text(item.rawValue)
                                    .font(.system(size: 32))
                                    .frame(width: self.buttonWidth(item: item), height: self.buttonHeight())
                                    .background(item.buttonColor)
                                    .foregroundColor(.white)
                                    .cornerRadius(self.buttonWidth(item: item) / 2)
                            }
                            
                        }
                    }
                    .padding(.bottom, 3)
                }
            }
        }
    }
    
    
    func didTap(button: CalcButton) {
        switch button {
        case .add, .subtract, .multiply, .divide, .equal:
            if button == .add {
                self.currentOperation = .add
                runningNumber = Int(resultString) ?? 0
                
            } else if button == .subtract {
                self.currentOperation = .subtract
                self.runningNumber = Int(self.resultString) ?? 0
                
            } else if button == .multiply {
                self.currentOperation = .multiply
                self.runningNumber = Int(self.resultString) ?? 0
                
                
            } else if button == .divide {
                self.currentOperation = .divide
                self.runningNumber = Int(self.resultString) ?? 0
                
            } else if button == .equal {
                let runningValue = self.runningNumber
                let currentValue = Int(self.resultString) ?? 0
                switch self .currentOperation {
                case .add: self.resultString = "\(runningValue + currentValue)"
                case .subtract: self.resultString = "\(runningValue - currentValue)"
                case .multiply: self.resultString = "\(runningValue * currentValue)"
                case .divide: self.resultString = "\(runningValue / currentValue)"
                case .none:
                    break
                }
            }
            if button != .equal {
                self.resultString = "0"
            }
        case .allClear:
            self.resultString = "0"
        case .decimal, .negative, .percent:
            break
        default:
            let number = button.rawValue
            if self.resultString == "0" {
                resultString = number
            } else {
                self.resultString = "\(self.resultString) \(number)"
            }
        }
    }
    
    
    func buttonWidth(item: CalcButton) -> CGFloat {
        if item == .zero {
            return ((UIScreen.main.bounds.width - (4*12)) / 4) * 2
        }
        return (UIScreen.main.bounds.width - (5*12)) / 4
    }
    func buttonHeight() -> CGFloat {
        return (UIScreen.main.bounds.width - (5*12)) / 4
    }
}

func imComein() {
    Text("안녕하세요 잘 놀다 갑니다")
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
