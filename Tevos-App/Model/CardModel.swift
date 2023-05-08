//
//  CardModel.swift
//  Tevos-App
//
//  Created by ASKER on 08.05.2023.
//

import SwiftUI

struct CardModel:Identifiable,Hashable{
    
    let id = UUID()
    let descr:String
    let price:Int
    let img:String?
}
