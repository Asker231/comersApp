//
//  SomeView.swift
//  Tevos-App
//
//  Created by ASKER on 07.05.2023.
//

import SwiftUI

struct Catalog: View {
    @EnvironmentObject var store:ViewModelStore
    @State var arrayCard:[CardModel] = [
        CardModel(descr: "$1199Abbie leather 2 seat sofa", price: 21400, img:"Abbie"),
        CardModel(descr: "Alvie 2 seat sofa", price: 1400, img:"Alvie"),
        CardModel(descr: "Apartment reversible chaise lounge", price: 400, img:"Butler"),

    ]
    var body: some View {
        NavigationView{

                ScrollView(showsIndicators: false) {
                    ForEach(arrayCard) { card in
                        VStack(alignment: .leading){
                            Image(card.img!)
                                .resizable()
                            HStack{
                                Text("\(card.descr)")
                                Text("\(card.price)")
                                Button {
                                    withAnimation(.spring()){
                                        store.AddLike(el: CardModel(descr: card.descr, price: card.price,img: card.img ))
                                    }
                                } label: {
                                    ZStack{
                                        VStack{
                                            Image(systemName: "heart")
                                                .resizable()
                                                .frame(width: 25,height: 25)
                                            
                                            
                                        }
                                    }
                                }
                            }
                        }.frame(width: 350,height:250)
                            .padding(4)
                            .background(.white)
                            .cornerRadius(20)
                    }
                }.padding(40)
                .frame(maxWidth: .infinity,maxHeight: .infinity)
                .background(LinearGradient(colors: [.blue,.cyan,Color("bg")], startPoint: .topLeading, endPoint: .bottomTrailing))
            // .ignoresSafeArea()
                .navigationTitle("Catalog")
                .navigationBarHidden(true)
            
        }
    }
}

