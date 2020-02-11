
//
//  File.swift
//  WeSplit
//
//  Created by Sandeep Tomar on 18/01/20.
//  Copyright © 2020 Sandeep Tomar. All rights reserved.
//

import SwiftUI

struct GuessTheFlag: View {
   
    var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"]
    var correctAnswer = Int.random(in: 0...2)
    
    
    init() {
        UITableView.appearance().separatorStyle = .none
    }
    var body: some View {
        
        Form {
//        VStack {
//            Text("Tap the flag of")
//            Text(countries[correctAnswer])
//
//        }
        
//        ForEach(0 ..< 11) { number in
//            Button(action: {
//                print("Tap here")
//              }) {
//                  Image(self.countries[number])
//                      .renderingMode(.original)
//              }
//
//        }
            ForEach(0 ..< 10) { number in
                HStack {
                    Text("Usage Date")
                    Text("12/04/2020").frame(maxWidth: .infinity, alignment: .trailing)
                }

                HStack {
                    Text("Usage Amount")
                    Text("$129").frame(maxWidth: .infinity, alignment: .trailing)
                }
                VStack(alignment: .center, spacing: 10) {
                   Divider()
                }
            }
            
            
      }
    }
}


/*
@State private var showingAlert = false
 Button("Show Alert"){
     self.showingAlert = true
      
 }.alert(isPresented: $showingAlert) {
     Alert(title: Text("Hello SwiftUI!"), message: Text("This is some detail message"), dismissButton: .default(Text("OK")))
 }

 // Below things are to create button
 Form {
 Button("Tap Me") {
     print("You tap me here")
 }
 
 Button(action: {
     print("Edit button was tapped")
 }) {
     HStack(spacing: 10) {
         Image(systemName: "pencil")
         Text("Edit")
     }
 }
 }
 
 /// How to Use stack in swift UI.
 ZStack {

     Color.red.edgesIgnoringSafeArea(.all)
     Text("Hey there").background(Color.green)
    // LinearGradient(gradient: Gradient(colors: [.black, .red]), startPoint: .top, endPoint: .bottom)
   // RadialGradient(gradient: Gradient(colors: [.red, .white]), center: .center, startRadius: 20, endRadius: 200)
    // AngularGradient(gradient: Gradient(colors: [.black,.white, .green, .red, .blue, .yellow]), center: .center)
 }*/
