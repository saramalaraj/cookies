//
//  ContentView.swift
//  eleos
//
//  Created by sara alaraj on 24/06/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var counter = 0
    @State var message = ""
    var body: some View {
        
        ZStack{
            Color.brown
            VStack {
                Text("\(counter) Cookies eaten 🍪")
                    .font(.title)
                Button{
                    
                    self.counter += 1
                    if(counter >= 40){
                        message = "oh no 😰"
                        
                    }
                    else if(counter > 30){
                        message = "What are you doing?🫢"
                    }
                    else if(counter >= 20) {
                        message = "Dont eat too much cookies 😕"}
                } label:{
                    Text("button")
                        .padding()
                }
                .padding()
                .background(.white)
                .foregroundColor(.brown)
                .cornerRadius(10)
                .shadow(color: .white, radius:
                            5, x: 4.0, y: -5.0)
                
                Text(message)
                    .padding()
            }
        }
    }
}
    
                
struct ContentView_Previews: PreviewProvider {
                    static var previews: some View {
                        ContentView()
                    }
                }
