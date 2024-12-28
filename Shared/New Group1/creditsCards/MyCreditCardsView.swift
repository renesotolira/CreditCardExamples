//
//  MyCreditCardsView.swift
//  CatalogosApp
//
//  Created by rene on 18/12/24.
//

import SwiftUI

struct MyCreditCardsView: View {
    var body: some View {
        VStack{
           
            CreditCardView(bank: "Banamex", number: "1111 1111 1111 1111")
            
            CreditCardView(bank: "NU", number: "2222 2222 2222 2222", color: Color.purple)
            
            CreditCardView(bank: "Stori", number: "3333 3333 3333 3333", color: Color.green)
                .offset(y: -50)
                
            CreditCardView(bank: "Santader", number: "4444 4444 4444 4444", color: Color.red)
                .offset(y: -110)
            
            CreditCardView(bank: "Banorte", number: "5555 5555 5555 5555", color: Color.black)
                .offset(y: -160)
            
        }
    }
}

struct MyCreditCardsView_Previews: PreviewProvider {
    static var previews: some View {
        MyCreditCardsView()
    }
}
