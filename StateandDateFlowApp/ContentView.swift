//
//  ContentView.swift
//  StateandDateFlowApp
//
//  Created by mac on 10/26/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var user: UserManager
    @StateObject private var timer = TimeCounter()
    
    var body: some View {
        VStack {
            Text("Hi \(user.name)")
                .font(.largeTitle)
                .offset(x: 0, y: 100)
            Text("\(timer.counter)")
                .font(.title)
                .padding(.top, 100)
            Spacer()
            ButtonView(timer: timer, color: .red)
            Spacer()
            //ButtonView(timer: name, color: .blue, name: "LogOut")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
