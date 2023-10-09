//
//  ContentView.swift
//  musicalInstrument
//
//  Created by Miyuki Kikuchi on 07/10/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var sound = Sound()
    
    var body: some View {
        NavigationView {
            ZStack{
                
                    Image("4")
                        .resizable()
                        .ignoresSafeArea()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                VStack{
                    Spacer()
                    Text("Welcome to our band!")
                        .bold()
                        .font(.largeTitle)
                    Spacer()
                    
                    HStack {
                    
                        Spacer()
                        Button {
                            print("Hi")
                            sound.playDrum()
                        }label: {
                            Image("1")
                                .resizable()
                                .frame(width: 200, height: 200)
                        }
                        Button {
                            print("Hi")
                            sound.playPiano()
                        }label: {
                            Image("2")
                                .resizable()
                                .frame(width: 220, height: 220)
                        }
                        Spacer()
                        
                       
                        
                    }
                    Button {
                        print("Hi")
                        sound.playPiano()
                    }label: {
                        Image("3")
                            .resizable()
                            .frame(width: 200, height: 200)
                    }
                    Button {
                        print("Pause")
                        sound.pauseDrum()
                        sound.pausePiano()
                    } label: {
                        Image(systemName: "pause.circle")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    //Spacer()
                    Text("Let's have fun!")
                        
                        .bold()
                        .font(.largeTitle)
                    Spacer()
                }
            }
            
        }
    
    }
}

#Preview {
    ContentView()
}
