//
//  ContentView.swift
//  Card Game 1
//
//  Created by Bastian Zepeda Ramirez on 27-06-23.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "back"
    @State var cpuCard = "back"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
             
                Image("logo")
                Spacer()
                
                HStack {
                    
                    Spacer()

                    Image(playerCard)
                    
                    Spacer()

                    Image(cpuCard)

                    Spacer()

                }
                Spacer()

                Button {
                    deal()
                } label: {
                    Image("button")
                }
                
                Spacer()
                
                HStack {
                    
                    Spacer()
                    VStack {
                        Text("Player")
                        Text(String(playerScore))
                    }
                    Spacer()
                    
                    VStack {
                        Text("CPU")
                        Text(String(cpuScore))
                    }
                    Spacer()
                    
                }
                .font(.title)
                Spacer()

            }
            
        }
    }
    
    func deal() {
        var card1 = Int.random(in: 2...14)
        var card2 = Int.random(in: 2...14)
        
        playerCard = "card" + String(card1)
        cpuCard = "card" + String(card2)
        
        if card1 > card2 {
            playerScore += 1
        }
        else if card2 > card1 {
            cpuScore += 1
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
