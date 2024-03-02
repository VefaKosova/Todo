//
//  AddView.swift
//  Todo
//
//  Created by Vefa Kosova on 2.03.2024.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText: String = ""
    
    var body: some View {
        ScrollView {
            VStack(spacing: 15) {
                TextField("Type something here...", text: $textFieldText)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray5))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.horizontal, 16)
                
                Button(action: {
                    
                }, label: {
                    Text("Save".uppercased())
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 360, height: 44)
                        .background(Color(.systemBlue))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                })
            }
        }
        .navigationTitle("Add an Item ✎")
    }
}

#Preview {
    NavigationStack {
        AddView()
    }
}
