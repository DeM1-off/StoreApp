//
//  OnBoardingScreenView.swift
//  StoreApp
//
//  Created by Dmitro Dohryk on 19.05.2023.
//

import SwiftUI

struct OnBoardingScreenView: View {
    var body: some View {
        
        NavigationView{
            
            VStack(spacing: 45){
             
                Spacer()
                Image("img")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding()
                VStack(alignment: .leading,spacing: 10)
                {
                    Text("Order your Favourite Fruits")
                        .fontWeight(.bold)
                        .font(.system(.largeTitle))
                    
                    Text("Eat fresh fruits and try to be healty")
                        .font(.system(.title3))
                        .foregroundColor(.black.opacity(0.7))
                  
                }
                Spacer()
                NavigationLink(destination: HomeScreen())
                {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color("6"))
                        .frame(width: 280,height: 60,alignment: .trailing)
                        .overlay(
                            HStack(spacing: 10){
                                Text("NEXT")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.black)
                            })
               
                    
                }
            
                Spacer()
            }
            .navigationBarTitle("")
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
        }
    }
}

struct OnBoardingScreenView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingScreenView()
    }
}
