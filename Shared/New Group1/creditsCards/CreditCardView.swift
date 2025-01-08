//
//  CreditCardView.swift
//  CatalogosApp
//
//  Created by rene on 18/12/24.
//

import SwiftUI

struct CreditCardViewNeo: View {
    
    /*
    var nombreParametro : TipoDato
    let
    */
    var index: Int //0 , 1
    var bank: String
    var number: String /*Int*/
    let name: String = "Rene Soto Lira"
    var color: Color  = Color.blue
    @State var isActive: Bool //= true
   // @State var selectedCard: Bool = false
    @Binding var indexLocked: Int //-1 , tarjeta1 -> 1 , tarjeta 2 ->  1
   // @Binding var blockAll: Bool
    
    /*propiedad computada*/
    var rotacion: Double{
        index == indexLocked || indexLocked == -2 ? 180 : 0
    }
   
    /*con función*/
    func colorear() -> Color{
        return index == indexLocked || indexLocked == -2 ? Color.gray : color
    }
    
    var body: some View {
        
        VStack(spacing: 12){
            HStack{
                
                ZStack{
                    Circle()
                    .frame(width: 24, height: 24).foregroundColor(Color.yellow)
                    
                    Circle()
                        .frame(width: 24, height: 24)
                        .foregroundColor(Color.blue)
                        .offset(x: 12)
                        .overlay(
                            RoundedRectangle(cornerRadius: 24)
                                .stroke(Color.white)
                                .offset(x: 12)
                        )
                    
                }
                
                Spacer()
                Text(bank)
            }
            
            Text( number )
            
            ZStack{
                Text(name)
                    .lineLimit(1)
                
                HStack(){
                    Spacer()
                    Button( action: {
                        withAnimation(){
                            if(isActive){
                                //decirle cual esta bloqueado
                                indexLocked = index
                            }else{
                                //reportar nadie bloqueado siempre y cuando no esten todas bloqueadas.
                                if(indexLocked != -2){
                                indexLocked = -1
                                }
                            }
                           
                            
                        }
                    } ){
                        Image(systemName: "lock")
                    }
                }//aqui cierra el hstrack
            }//aqui cierra el zstack
        }
        .frame(minWidth: 5 , idealWidth: 80, maxWidth: 180)
        .foregroundColor(.white)
        .padding(.all, 16)
        .background( colorear())//operador ternario
        .cornerRadius(8.0)
        //.rotation3DEffect(.degrees(45), axis: (x: 180, y: 1, z: 360))
        
        .rotationEffect( .degrees( rotacion) )
        
        
        .onChange(of: indexLocked, perform: { value in
            //cada vez que cambi la variable indexLocked que viene del padre revisarla
           if(indexLocked == index || indexLocked == -2 ){
            //soy el seleccionado asi que me bloqueo
                self.isActive = false
           }else{
            //no soy seleccionado pero no soy la ocion de bloqueo generarl entonces me activo
                self.isActive = true
           }
            
        })
 
        
    }
    
}


struct CreditCardViewNeo_Previews: PreviewProvider {
    static var previews: some View {
        CreditCardViewNeo(index: 0, bank: "Banamex" , number: "1234 5678 9012 3456", color: Color.green, isActive: true, indexLocked: .constant(0) )
    }
}
