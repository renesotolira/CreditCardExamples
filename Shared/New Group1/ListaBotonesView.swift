//
//  ListaBotonesView.swift
//  CatalogosApp
//
//  Created by rene on 23/12/24.
//

import SwiftUI

struct ListaBotonesView: View {
    
    @State var aumento: CGFloat = 1.0
    
    func efectoAumentoTamano(){
        withAnimation( .spring(response: 0.5, dampingFraction: 0.5, blendDuration: 0.5)
        ){
            if(aumento == 1.0) {
                aumento = aumento + 0.2
            }else{
                aumento = 1.0
            }
        }
    }
    
    
   /*YO SOY TU PADRE*/
    @State var activado: Bool = true
    @State var tarjetaSeleccionada: Int = -1
    
    var body: some View {
        VStack{
            
            Text("un pequeno acambio")
            
            //Este es mi hijo
            CreditCardView(index:0, bank: "Banamex", number: "1234 5678 9101 2134", isActive: activado, indexLocked: $tarjetaSeleccionada)
                .scaleEffect(aumento)
                .onTapGesture {
                    efectoAumentoTamano()
                }
            
            //Este es mi otro hijo
            CreditCardView(index:1, bank: "Stori2", number: "1234 5678 9101 2132", color: Color.green ,isActive: activado, indexLocked: $tarjetaSeleccionada)
                .scaleEffect(aumento)
                .onTapGesture {
                    efectoAumentoTamano()
                }
            
            CreditCardView(index:2, bank: "Stori2", number: "1234 5678 9101 2132", color: Color.purple ,isActive: activado, indexLocked: $tarjetaSeleccionada)
                .scaleEffect(aumento)
                .onTapGesture {
                    efectoAumentoTamano()
                }
            
            Text("Tarjeta seleccionada \(tarjetaSeleccionada)")
            
            if activado{
                Text("La tarjeta está activada")
            }else{
                Text("La tarjeta está bloqueada")
            }
            
            Button(action:{
                withAnimation(){
                   // activado.toggle()
                    if(tarjetaSeleccionada != -2){
                        //bloquear todas las tarjetas
                        tarjetaSeleccionada = -2
                    }else{
                        //desbloquear todas las tarjetas
                        tarjetaSeleccionada = -1
                    }
                }
            }){
                Text("Cambiar estado tarjetas")
            }
            
            
            ScrollView(.horizontal){
                HStack{
                    BotonesView()
                    BotonesView()
                    BotonesView()
                    BotonesView()
                    BotonesView()
                    BotonesView()
                    BotonesView()
                    BotonesView()
                    BotonesView()
                    
                }
            }
        }
    }
}

struct ListaBotonesView_Previews: PreviewProvider {
    static var previews: some View {
        ListaBotonesView()
    }
}
