//
//  CreditCardView.swift
//  CatalogosApp
//
//  Created by rene on 18/12/24.
//

import SwiftUI

struct CreditCardView: View {
    
    /*
    var nombreParametro : TipoDato
    let
    */
    
    var bank: String
    var number: String /*Int*/
    let name: String = "Rene Soto Lira"
    var color: Color  = Color.blue
    
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
            
            Text(name)
                .lineLimit(1)
            
        }
        .frame(minWidth: 5 , idealWidth: 80, maxWidth: 180)
        .foregroundColor(.white)
        .padding(.all, 16)
        .background(color)
        .cornerRadius(8.0)
        //.padding(.horizontal, 48)
        
    }
    
}


struct CreditCardView_Previews: PreviewProvider {
    static var previews: some View {
        CreditCardView(bank: "Banamex" , number: "1234 5678 9012 3456", color: Color.green)
    }
}
