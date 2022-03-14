//
//  ContentView.swift
//  ContadorPasosWatch WatchKit Extension
//
//  Created by Carlos Sanchez on 08-03-22.
//

import SwiftUI
import PasosModule

struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        VStack {
            Image(systemName: "figure.walk")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.red)
                .frame(width: 60, height: 40)
                Text("Pasos Hoy")
                .font(.system(size:30,weight: .bold,design: .rounded))
            Text(viewModel.allMySteps)
                .font(.system(size:40,weight: .bold,design: .rounded))
        }
        .padding(12)
        .overlay(
        RoundedRectangle(cornerRadius: 8)
            .stroke(style: StrokeStyle(lineWidth: 3, dash: [5]))
        )
        .task {
            viewModel.requestAccesstoHealthData()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
