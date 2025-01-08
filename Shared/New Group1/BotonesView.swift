//
//  BotonesView.swift
//  CatalogosApp
//
//  Created by rene on 23/12/24.
//

import SwiftUI

///BotonesView por cada clic aumentara el numero y el saludo cambiara de HolaMundo a Adios @State var contador es Entero

struct BotonesView: View {
    
    @State var contador: Int = 0
    @State var saludo: String = "Hola Mundo"
    @State var cambio: Bool = false
    
    func contadorConSaludo(){
        //codigo
        contador = contador + 1
        
        if cambio {
            saludo = "Adios"
        }else{
            saludo = "Hola Mundo"
        }
       
        cambio.toggle()
        
        if contador > 10 {
            contador = 0
        }else if contador == 5{
            saludo = "Que onda bro"
        }else if (6 ... 8).contains(contador){
            saludo = "entre 6 y 8"
        }
        else if (2 ..< 4).contains(contador){
            saludo = "ni idea"
        }
        
        switch contador {
            case 4:
                saludo = "En el switch"
            break
        
        default:
            break
        }
    }
    
    //aqui pura interfaz
    var body: some View {
        VStack{
        
            Text( " \(contador) " )
            
            Text( saludo )
              
            Image(systemName: "airplaine")
        
            Button( action: {
               contadorConSaludo()
            } ) {
                //contenido
                HStack{
                    Text("Haz clic aquí")
                    Image(systemName: "plus")
                }
                
            }
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(15)
            //diseño del boton
            
            
            
        }
    }
    //aqui terminar pura interfaz
}

struct BotonesView_Previews: PreviewProvider {
    static var previews: some View {
        BotonesView()
    }
}
