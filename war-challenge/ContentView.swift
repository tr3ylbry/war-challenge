//
//  ContentView.swift
//  war-challenge
//
//  Created by Harry L. Bryant III on 8/23/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    // TODO:
    // Add button to switch between War game and slotsUI
    // Build Slots UI
    // Visit the video to look at what the slots UI looks like
    
    var body: some View {
        ZStack {
            Image("background")
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
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
                
                Button(action: {
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    if (playerRand > cpuRand) {
                        playerScore += 1
                    } else if (cpuRand > playerRand) {
                        cpuScore += 1
                    }
                }, label: {
                    Image("dealbutton")
                })
                
                // Add Reset Button
                
                Spacer()
                
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    
                    Spacer()
                }
                Spacer()
                
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
