//
//  DetailView.swift
//  ToDoList
//
//  Created by Omar on 05/06/2023.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.dismiss) private var dismiss
    
    var passedNumber: Int
    
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundColor(.red)
            
            Text("SwiftUI MultiScreen First App\nPassed Number is \(passedNumber)")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            Button("Get Back!") {
                dismiss()
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
//        .navigationBarBackButtonHidden()
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(passedNumber: 25)
    }
}
