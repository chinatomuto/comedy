//
//  ContentView.swift
//  comedy
//
//  Created by nato on 14/04/2022.
//

import SwiftUI

struct ContentView: View {
    
    //@State private var results = [Results]()
    
    var comedyManager = ComedyManager()
    
    var body: some View {
        ZStack {
            Color(red: 0.90, green: 0.49, blue: 0.13)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Label("COMEDY STRIP", systemImage: "book.fill")
                    .font(.body)
                Spacer()

                Text("\(comedyManager.value.joke)")
                    .font(.headline)

                Spacer()

                Button (action: {
                    comedyManager.fetchData()
                }) {
                    Text("Joke")
                        
                        .fontWeight(.bold)
                        .font(.title)
                        .padding()
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .padding(10)
                        .border(Color.purple, width: 5)
                        .cornerRadius(40)
                    
                }
               
                
            }
            
            

        }
        
        .onAppear {
            self.comedyManager.fetchData()
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

