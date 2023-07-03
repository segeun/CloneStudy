//
//  Ballad.swift
//  SoundOfMusic
//
//  Created by 최세근 on 2023/07/03.
//

import Foundation


class Ballad: Music {
    
    var isAlcohol: Bool
    
    var isAlcoholString: String {
        get {
            if isAlcohol {
                return "술이 들어간 노래"
            } else {
                return "일반 노래"
            }
        }
    }
    
     init(songName: String, musicTime: String, releaseYear: Int, singer: String, albumCover: String, gender: String, gerne: Gerne, isAlcohol: Bool) {
         self.isAlcohol = isAlcohol
         
         super.init(songName: songName, gerne: [gerne], musicTime: musicTime, releaseYear: releaseYear, singer: singer, albumCover: albumCover, gender: gender)
    }
    
}
