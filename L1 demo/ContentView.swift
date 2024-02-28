//
//  ContentView.swift
//  L1 demo
//
//  Created by Ashraf Hatia on 24/02/24.
//

import SwiftUI

struct ContentView: View {
    @State var count : Int = 0
    @State private var showAlert = false
    @State private var text: String = ""
    let alertTitle: String = "We need to verify you again."

    var body: some View {

        ZStack{
            Color(.systemMint)
            VStack(alignment: .leading, spacing: 20.0){
                Image("niagara-falls")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                HStack{
                    Text("Niagara Falls")
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                    VStack{
                        HStack{
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName:"star.leadinghalf.filled")
                        }
                        Text("(Reviews 361+)")
                    }
                    .foregroundColor(.orange)
                    .font(.caption)
                }
                Text("Come visit the water falles, It's amazing")
                
                HStack{
                    Button("Get Your tickets: \(text)") {
                        showAlert = true
                    }
                    .alert(
                        Text(alertTitle),
                        isPresented: $showAlert
                    ) {
                        Button("Cancel", role: .cancel) {
                            // Handle the Cancel.
                        }
                        Button("OK") {
                            // Handle the OK.
                        }
                        
                        TextField("enter", text: $text)
                            .textContentType(.name)
                    } message: {
                       Text("Please enter you name.")
                    }
                    .font(.title3)
                    Spacer()
                    Image(systemName: "fork.knife")
                    Image(systemName: "binoculars.fill")
                }
                .foregroundColor(.gray)
                .font(.caption)
            }
            .padding()
            .background(Rectangle()
                .foregroundColor(.white)
                .cornerRadius(15)
                .shadow(radius: 15)
            )
            .padding()
        }
  
    }
}

#Preview {
    ContentView()
}
