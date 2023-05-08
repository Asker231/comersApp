//
//  ViewModelStore.swift
//  Tevos-App
//
//  Created by ASKER on 08.05.2023.
//

import Foundation

class ViewModelStore:ObservableObject{
    @Published var likesArray:[CardModel] = []
    @Published var basketArray:[CardModel] = []
    
    
    func AddLike(el:CardModel){
        likesArray.append(el)
    }
    
    func DeleteItem(id:UUID){
       likesArray = likesArray.filter { el in
            el.id != id
        }
    }
    
}
