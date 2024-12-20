//
//  Tarea02.swift
//  CatalogosApp
//
//  Created by rene on 17/12/24.
//

import SwiftUI

struct Tarea02: View {
    var body: some View {
        ZStack{
            Color.orange.ignoresSafeArea()
            
        VStack{
            
            HStack(spacing: 18){
                VStack(spacing: 32){
                    VistaIzquierda()
                    VistaIzquierda()
                    VistaIzquierda()
                    VistaIzquierda()
                    VistaIzquierda()
                }
                
                VStack(spacing: 32){
                    VistaDerecha()
                    VistaDerecha()
                    VistaDerecha()
                }
                
            }
            
            
        }
        }
    }
}

struct Tarea02_Previews: PreviewProvider {
    static var previews: some View {
        Tarea02()
    }
}


struct VistaIzquierda: View {
    var body: some View {
        Text("Izquierdo")
            .padding()
            .background(Color.blue)
            .foregroundColor(Color.white)
            .shadow(color: Color.black, radius: 18 )
    }
}

struct VistaDerecha: View {
    var body: some View {
        Text("Derecho")
            .padding(.top, 20)
            .background(Color.black)
            .foregroundColor(Color.white)
            .shadow(color: Color.green, radius: 10 )
    }
}
