//
//  CreditCardView.swift
//  CatalogosApp
//
//  Created by Efren Reyes on 26/12/24.
//

import SwiftUI

struct CreditCardView: View {
    var index : Int
    var bank : String
    var number : String
    var name : String = "Efren Reyes"
    var color : Color = Color.blue
    @State var isActive : Bool
    @State var selectedCard : Bool = false
    @Binding var indexLocked : Int
    
    
    func lockButtonIsPressed(){
        if(index == indexLocked){
            //ya estoy bloqueado entonces me desbloqueo.
            indexLocked = -1
        }else{ //me debo bloquear
            indexLocked = index
        }
    }
    
    func setCreditColor() -> Color {
        if( indexLocked == -2 || index == indexLocked){
            /*si yo soy el bloqueado mi color es gris
            ó si esta la opcion bloquear todas las tarjetas que es -2 , tambien soy gris*/
            return Color.gray
        }
        else{
            return color
        }
    }
    
    /*esto es una propiedad computada
     ejecuta operaciones o reasignacion de valores antes de entrar a la vista previa.
     */
    var rotacion: Angle {
        indexLocked == -2 || index == indexLocked ? .degrees(180) : .degrees(0)
    }
    
    
    
    var body: some View {
        VStack(spacing: 12){
            
            HStack{
                ZStack{
                    Circle().frame(width: 24, height: 24).foregroundColor(.yellow)
                    
                    Circle().frame(width: 24, height: 24).foregroundColor(.orange).offset(x:17)
                        .overlay(
                            RoundedRectangle(cornerRadius: 24)
                                .stroke(Color.white)
                                .offset(x:17)
                        )
                        
                    }
                
            Spacer()
            Text(bank)
                
                }
            Text(number)
            
            ZStack{
                
                Text(name).lineLimit(1)
                HStack{
                    Spacer()
                    Button(action:{
                        withAnimation(){
                            
                            lockButtonIsPressed()
                            
                        }
                    }){
                        
                        Image(systemName: "lock")
                    }
                }
            }
            
        }
        .frame(maxWidth:180)
        .foregroundColor(.white)
        .padding(.all, 16)
        .background( setCreditColor() )
        .cornerRadius(8.0)
        .rotationEffect( rotacion )
        
    }
}

struct CreditCardView_Previews: PreviewProvider {
    static var previews: some View {
        CreditCardView(index: 0, bank:"Banamex", number: "1234 5678 9012 3456", isActive: true, indexLocked: .constant(0))
    }
}
