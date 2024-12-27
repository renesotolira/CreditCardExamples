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
            }else {
                aumento = 1.0
            }
        }
    }
    
    var body: some View {
        VStack{
            
            
            CreditCardView(bank: "Stori", number: "1234 5678 9101 2134")
                .scaleEffect(aumento)
                .onTapGesture {
                    efectoAumentoTamano()
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
