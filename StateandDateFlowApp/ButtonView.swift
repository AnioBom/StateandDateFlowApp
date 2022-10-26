//
//  ButtonView.swift
//  StateandDateFlowApp
//
//  Created by mac on 10/26/22.
//

import SwiftUI

struct ButtonView: View {
    @ObservedObject var timer: TimeCounter
    
    let color: Color
    //let name: String
    
    var body: some View {
        Button(action: { timer.startTimer()}) {
            Text(timer.buttonTitle)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(color)
        .cornerRadius(20)
        .overlay {
            RoundedRectangle(cornerRadius: 20).stroke(Color.black, lineWidth: 4)
        }
    }
}
/*
struct ColorAndTitle: ViewModifier {
    let color: Color
    let name: String
    
    func body(content: Content) -> some View {
        content
            .background(color)
        Text(name)
    }
}
 */

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(timer: TimeCounter(), color: .red)
    }
}
