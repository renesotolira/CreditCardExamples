//
//  ContentView.swift
//  Shared
//
//  Created by rene on 12/12/24.
//

import SwiftUI

struct ContentView: View {
    
    
    
    var body: some View {
        GeometryReader{ geometria in
            //geometria nombre de la varibale que utiliza los valores y funciones de la clase GeometryReader
           
            
            ZStack{
                
                Color.gray//.ignoresSafeArea()
                
                VStack{
                    SaludosView()
                    
                    SaludosView()
                        .padding()
                        .background(Color.purple)
                        .padding()
                        .frame(width: geometria.size.width, height: (geometria.size.height) - 30)
                        .background(Color.green)
                        
                        .onDisappear(){
                            /*
                             cuando la vista ya no se ve puede ser
                             1- cierra la app
                             2- se va a otra app
                             3- pasa a otra pantalla
                             */
                        }
                }
            }
            .onAppear(){
                print("Ancho actual es \(geometria.size.width)")
                print("height actual es \(geometria.size.height)")
            }
        }
        
        
        /*
         
         Text("Hola Mundo Pablito clavo un clavito en la calva de un calvtio y no sed que mas sigue ")
         .font(.largeTitle)
         .italic()
         //.frame(width: 100, height: 100)
         .foregroundColor(.white)
         .padding(18)
         .background(Color.red)
         .padding()
         .background(Color.green)
         .padding(.leading , 60)
         .background(Color.blue)
         .cornerRadius(25)
         .shadow(color: .purple, radius: 30 )
         .lineLimit(3) //cantidad
         .truncationMode(.tail)*/
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
