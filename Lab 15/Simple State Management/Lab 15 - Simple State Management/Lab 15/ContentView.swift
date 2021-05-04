//
//  ContentView.swift
//  Lab 15 - Simple State Management
//
//  Created by Marta Kalinowska on 5/3/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var counter: Int = 0
    
    
    var body: some View {
        VStack {
        Text("Your counter is now at:")
        Text(String(counter))
            .font(.largeTitle)
            
            HStack {
                Button(action: {
                    self.counter += 1
                }, label: {
                    Text("Add")
                })
                .padding(20)
                
                Button(action: {
                    self.counter -= 1
                }, label: {
                    Text("Subtract")
                })
                .padding(20)
            }
        }
    }
}
