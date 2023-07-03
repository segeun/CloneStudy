//
//  Hiphop.swift
//  SoundOfMusic
//
//  Created by 최세근 on 2023/07/03.
//

import Foundation


class Hiphop: Music {
    
    var featuring: Bool
    
    var hiphopGenre: HiphopGerne
    
    var featuringString: String {
        get {
            if featuring {
                return "피쳐링 있음"
            } else {
                return "피쳐링 없음"
            }
        }
    }
    
    init(songName: String, musicTime: String, releaseYear: Int, singer: String, albumCover: String, gender: String, gerne: Gerne, featuring: Bool, hiphopGenre: HiphopGerne) {
        self.featuring = featuring
        self.hiphopGenre = hiphopGenre
            
        
        super.init(songName: songName, gerne: [gerne], musicTime: musicTime, releaseYear: releaseYear, singer: singer, albumCover: albumCover, gender: gender)
    }
    
    
}


enum HiphopGerne {
    case trap
    case bombap
    case singing
}
