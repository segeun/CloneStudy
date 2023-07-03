//
//  Dance.swift
//  SoundOfMusic
//
//  Created by 최세근 on 2023/07/03.
//

import Foundation


class Dance: Music {
    
    var isGroup: Bool
    var isGroupString: String {
        get {
            if isGroup {
                return "그룹으로 결성됨"
            } else {
                return "솔로가수"
            }
        }
    }
    
    
    init(songName: String, musicTime: String, releaseYear: Int, singer: String, albumCover: String, gender: String, gerne: Gerne, isGroup: Bool) {
        self.isGroup = isGroup
        
        super.init(songName: songName, gerne: [gerne], musicTime: musicTime, releaseYear: releaseYear, singer: singer, albumCover: albumCover, gender: gender)
        
    }
    
    
}
