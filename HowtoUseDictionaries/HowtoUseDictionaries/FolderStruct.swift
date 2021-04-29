//
//  FolderStruct.swift
//  HowtoUseDictionaries
//
//  Created by Shaggy Bremnath on 2021-04-19.
//

import Foundation


class Folder: ObservableObject {
    @Published var id : Int = 0
    @Published var name : String = ""
    @Published var contents : [Int : Folder]? = [:]
    
    init(id : Int, name: String, contents : [Int:Folder]? = [:]) {
        self.id = id
        self.name = name
        self.contents = contents
    }
    
    func editName(name : String){
        self.name = name
    }
    
}
