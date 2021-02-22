//
//  ContentView.swift
//  swiftui-DataPicker
//
//  Created by Grids Jivapong on 22/2/2564 BE.
//

import SwiftUI

struct ContentView: View {
    
    @State private var date = Date()
    
    var body: some View {
        
        VStack {
            
            Form {
                
                VStack {
                    
                    DatePicker("Date", selection: $date, in: ...Date(), displayedComponents: .date)
                    
                    DatePicker("Date", selection: $date, in: Date()..., displayedComponents: .date)
                    
                    DatePicker("DT", selection: $date, in: ...Date())
                    
                    DatePicker("DT", selection: $date, in: Date()...)
                }
                .padding()
            }
            
            DatePicker("Date", selection: $date)
                .datePickerStyle(GraphicalDatePickerStyle())
            
            Spacer()
            
        }
        .padding()
        
        Spacer()

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
