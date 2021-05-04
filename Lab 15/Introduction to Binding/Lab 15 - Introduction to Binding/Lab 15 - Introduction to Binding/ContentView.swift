//
//  ContentView.swift
//  Lab 15 - Introduction to Binding
//
//  Created by Marta Kalinowska on 5/3/21.
//

import SwiftUI

struct ContentView: View {
   
    @State var firstName = ""
    
    private func buttonPressed() {
        print(firstName)
    }
        
    var body: some View {

        VStack {
            Text(firstName)
            
            TextField($firstName, placeholder: Text("Enter name"))
                .padding(12)
            
            Button(action: buttonPressed) {
                Text("Press me!")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
