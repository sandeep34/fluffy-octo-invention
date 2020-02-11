//
//  ContentView.swift
//  WeSplit
//
//  Created by Sandeep Tomar on 14/01/20.
//  Copyright © 2020 Sandeep Tomar. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State private var checkAmount = ""
    @State private var numberOfPeople = 2
    @State private var tipprecentage = [10, 15, 20, 25, 0]
    var totalPerPerson: Double {
       let peopleCount = Double(numberOfPeople + 2)
       let tipSelection = 15.0
       let orderAmount = Double(checkAmount) ?? 0

       let tipValue = orderAmount / 100 * tipSelection
       let grandTotal = orderAmount + tipValue
       let amountPerPerson = grandTotal / peopleCount

       return amountPerPerson
    }
    
    var body: some View {
        NavigationView {

            VStack(alignment: .center, spacing: 20) {
                NavigationLink(destination: GuessTheFlag()) {
                    Text("Show Detail View")
                }.navigationBarTitle("Navigation")
                
                NavigationLink(destination: WebViewControl()) {
                    Text("Project 4")
                }.navigationBarTitle("Navigation")
                
                NavigationLink(destination: ViewsAndModifiers()) {
                    Text("ViewsAndModifiers")
                }.navigationBarTitle("ViewsAndModifiers.")
                
            }
            
//            Form {
//                Section {
//                    TextField("Amout", text: $checkAmount)
//                }.keyboardType(UIKeyboardType.decimalPad)
//                Section(header: Text("How much tip do you want to leave?")) {
//                    Picker("Tip Precentage", selection: $tipprecentage) {
//                        ForEach(1 ..< tipprecentage.count) {
//                            Text("\(self.tipprecentage[$0])%")
//                        }
//                    }.pickerStyle(SegmentedPickerStyle())
//                }
//                Section {
//                    Picker("Number of peopele", selection: $numberOfPeople) {
//                           ForEach(2 ..< 100) {
//                               Text("\($0) peope")
//                        }
//                    }
//                }
//
//                Section {
//                    Text("$\(totalPerPerson)")
//                }
//            }.navigationBarTitle("We Split")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
