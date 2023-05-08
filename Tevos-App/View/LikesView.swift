//
//  SettingPersonView.swift
//  Tevos-App
//
//  Created by ASKER on 07.05.2023.
//

import SwiftUI

struct LikesView: View {
    @EnvironmentObject var store:ViewModelStore
    
    var body: some View {
        ScrollView{
            ForEach(store.likesArray) { value in
                VStack{
                    Image(value.img!)
                        .resizable()
                    
                    HStack{
                        Text("\(value.descr)")
                        Spacer()
                        Text("\(value.price)")
                    }
                    HStack{
                        Spacer()
                        Button(action: {
                            store.DeleteItem(id: value.id)
                        }, label: {
                            Image(systemName: "minus.circle")
                                .resizable()
                                .frame(width: 20,height: 20)
                                .foregroundColor(.red)
                        })
                    }
                    .padding()
                }.frame(maxWidth: 280,maxHeight:200)
                    .background(.white)
            }
        }.frame(maxWidth: .infinity,maxHeight: .infinity)
            .background(.blue)
    }
}

