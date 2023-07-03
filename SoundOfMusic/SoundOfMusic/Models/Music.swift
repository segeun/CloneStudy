//
//  Music.swift
//  SoundOfMusic
//
//  Created by 최세근 on 2023/07/03.
//

import Foundation


class Music: Identifiable {
    var id: UUID = UUID()
    
    var songName: String
    var gerne: [Gerne]
    var musicTime: String
    var releaseYear: Int
    var singer: String
    var albumCover: String
    var gender: String
    
    
    init(songName: String, gerne: [Gerne], musicTime: String, releaseYear: Int, singer: String, albumCover: String, gender: String) {
        self.songName = songName
        self.musicTime = musicTime
        self.releaseYear = releaseYear
        self.singer = singer
        self.albumCover = albumCover
        self.gender = gender
        self.gerne = gerne
    }
    
    
        
}


enum Gerne: String {
    case dance
    case hiphop
    case ballad
    case acustic
}





