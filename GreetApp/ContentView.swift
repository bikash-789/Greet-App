//
//  ContentView.swift
//  GreetApp
//
//  Created by Bikash Chauhan on 19/05/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var greet = "Hello!"
    func getLocalTime() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH"
        return dateFormatter.string(from: Date())
    }
    var body: some View {
        
        VStack{
            
            Text(greet + " 👋🏻")
                .foregroundColor(.white)
                .padding(.all, 12)
                .background(.blue)
                .cornerRadius(20.0)
            
            Text("Bikash Chauhan! 😃")
                .foregroundColor(.white)
                .padding(.all, 12)
                .background(.blue)
                .cornerRadius(20.0)
            
            
            Button(action: {
                let t = Int(getLocalTime())
                if let tim = t, tim <= 12{
                    greet = "Good Morning!"
                }
                else if let tim = t, tim >= 12 && tim <= 16 {
                    greet = "Good Afternoon"
                }
                else {
                    greet = "Good Evening!"
                }
            })
            {
                Text("Greet")
            }
            .padding(.all, 12)
            .foregroundColor(.white)
            .background(.green)
            .cornerRadius(12)
            .scenePadding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

