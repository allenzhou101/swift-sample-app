//
//  EnchantedLinkView.swift
//  Descope-Swift-Sample-App
//
//  Created by Descope 2023
//

import SwiftUI

struct EnchantedLinkView: View {
    let verticalPaddingForForm = 40.0
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [.blue, .red]), center: .center, startRadius: 100, endRadius: 470)
            VStack(spacing: CGFloat(verticalPaddingForForm)) {
                Text("Choose which function you would like to test with Enchanted Link")
                    .font(.title)
                    .foregroundColor(Color.white)

                    NavigationLink(destination: EnchantedLinkSignUpView().navigationBarBackButtonHidden(true)) {
                        Text("Sign Up")
                            .padding()
                    }.background(Color.black)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                    
                    NavigationLink(destination: EnchantedLinkSignIn().navigationBarBackButtonHidden(true)) {
                        Text("Sign In")
                            .padding()
                    }.background(Color.black)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)

                NavigationLink(destination: EnchantedLinkSignUpOrIn().navigationBarBackButtonHidden(true)) {
                    Text("Sign Up Or In")
                        .padding()
                }.background(Color.black)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
                
                
                NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true)) {
                    Text("Back to home screen")
                        .padding()
                }
                .background(Color.black)
                .foregroundColor(Color.white)
                .cornerRadius(10)
                
            }.padding(.horizontal, CGFloat(verticalPaddingForForm))
        }
    }
}

struct EnchantedLinkView_Previews: PreviewProvider {
    static var previews: some View {
        EnchantedLinkView()
    }
}
