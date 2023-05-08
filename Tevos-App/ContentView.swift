//
//  ContentView.swift
//  Tevos-App
//
//  Created by ASKER on 07.05.2023.
//

import SwiftUI

struct ContentView: View {
    @State var selected = 3
    @StateObject var store = ViewModelStore()
    
    
    init(){
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        NavigationView{
            ZStack(alignment: .bottom){
                
                TabView(selection: $selected) {
                    HomeView()
                        .tag(1)
                    LikesView()
                        .environmentObject(store)
                        .tag(2)
                    Catalog()
                        .environmentObject(store)
                        .tag(3)
                    OutView()
                        .tag(4)
              
                }
               
                HStack{
    //MARK: - First button
                    Spacer()
                    Button {
                        withAnimation(.spring()){
                            self.selected = 1
                        }
                    } label: {
                        ZStack{
                            VStack{
                                Rectangle()
                                    .frame(width: 40,height: 5)
                                    .foregroundColor( selected == 1 ? .blue : .clear )
                                    .offset(y:selected == 1 ? -5:0)
                                Image(systemName: "house")
                                    .resizable()
                                    .frame(width: 25,height: 25)
                                    .foregroundColor( selected == 1 ? .cyan : .gray )
                            }
                        }
                    }

                    
                    Spacer()
    //MARK: - Next button
                    ZStack{
                        VStack{
                            Text("\(store.likesArray.count)")
                                .foregroundColor(.white)
                               
                        }
                        .background(.cyan)
                        .offset(x:10,y:-10)
                        Button {
                            withAnimation(.spring()){
                                self.selected = 2
                            }
                        } label: {
                            ZStack{
                                VStack{
                                    Rectangle()
                                        .frame(width: 40,height: 5)
                                        .foregroundColor( selected == 2 ? .blue : .clear )
                                        .offset(y:selected == 2 ? -5:0)
                                    Image(systemName: "heart")
                                        .resizable()
                                        .frame(width: 25,height: 25)
                                        .foregroundColor( selected == 2 ? .cyan : .gray )
                                }
                            }
                        }
                    }
                    Spacer()
    //MARK: - Second btn
                    Button {
                        withAnimation(.spring()){
                            self.selected = 3
                        }
                    } label: {
                        ZStack{
                            VStack{
                                Rectangle()
                                    .frame(width: 40,height: 5)
                                    .foregroundColor( selected == 3 ? .blue : .clear )
                                    .offset(y:selected == 3 ? -5:0)
                                Image(systemName: "basket")
                                    .resizable()
                                    .frame(width: 25,height: 25)
                                    .foregroundColor( selected == 3 ? .cyan : .gray )
                            }
                        }
                    }
                    Spacer()
    //MARK: - Out button
                    Button {
                        withAnimation(.spring()){
                            self.selected = 4
                        }
                    } label: {
                        ZStack{
                            VStack{
                                Rectangle()
                                    .frame(width: 40,height: 5)
                                    .foregroundColor( selected == 4 ? .blue : .clear )
                                    .offset(y:selected == 4 ? -5:0)
                                Image(systemName: "rectangle.portrait.and.arrow.right")
                                    .resizable()
                                    .frame(width: 25,height: 25)
                                    .foregroundColor( selected == 4 ? .cyan : .gray )
                            }
                        }
                    }
                    Spacer()
                    
                }.frame(maxWidth:380)
                   // .padding(.vertical,20)
                    .padding()
                    .background(.white)
                   // .cornerRadius(20)
                    //.offset(y:-40)
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(.blue)
        .ignoresSafeArea()
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}






