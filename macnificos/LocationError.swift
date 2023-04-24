//
//  LocationError.swift
//  macnificos
//
//  Created by CEDAM30 on 24/04/23.
//

import SwiftUI


struct LocationError: View {
    var body: some View {
        ZStack (alignment: Alignment(horizontal: .leading, vertical: .bottom)) {
            Image(uiImage: #imageLiteral(resourceName: "9_Location Error"))
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            VStack (alignment: .leading, spacing: 30) {
                Text("Hang on a sec...")
                    .foregroundColor(.white)
                    .font(.title)
                    .foregroundColor(.white)
                
                Text("It seems you are in the middle of \nthe ocean.")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .opacity(0.7)
                
                Button(action: {
                    
                }) {
                    Text("Refresh".uppercased())
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        .padding(.vertical)
                        .padding(.horizontal, 30)
                        .background(Capsule().foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))))
                }
            }
            .padding(.horizontal, 70)
            .padding(.bottom, UIScreen.main.bounds.height * 0.1)
        }
    }
}

struct LocationError_Previews: PreviewProvider {
    static var previews: some View {
        LocationError()
    }
}
