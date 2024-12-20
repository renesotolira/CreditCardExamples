//
//  LoginView.swift
//  CatalogosApp
//
//  Created by rene on 19/12/24.
//

import SwiftUI

struct LoginView: View {
    
   
    
    let gradiente =  LinearGradient(
        
        gradient: Gradient(
            colors: [Color.red, Color.blue, Color.yellow, Color.purple]
        ),
        
        startPoint: .topLeading,
        
        endPoint: .bottomTrailing
    )
    
    
    var body: some View {
        ZStack{
            
            Image("loginScreen")
                .resizable()
                .ignoresSafeArea()
                .overlay(
                        Text("Developed by Pemex")
                        .foregroundColor(.white)
                       .frame(maxWidth: .infinity)
                        .background(Color.black)
                            .opacity(0.7)
                    , alignment: .bottom
                )
         //aqui acaba la imagen
            VStack{
                Text("Usuario")
                Text("Contraseña")
                
                Text("Iniciar sesión")
                    .foregroundColor(.white)
                    .padding(.horizontal)
                    .padding(.vertical, 6)
                    .background(Color.green)
                    .cornerRadius(15)
                
                Text("Olvide mi contraseña")
                    .background(gradiente)
                
                
                
            }
            .frame(width: 180)
            .padding()
            .background(Color.white)
            .opacity(0.9)
            
            
        }//fin del Zstack
           
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
