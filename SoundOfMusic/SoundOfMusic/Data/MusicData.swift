//
//  MusicData.swift
//  SoundOfMusic
//
//  Created by 최세근 on 2023/07/03.
//

import Foundation


let redFlavor: Dance = Dance(songName: "Red Flavor(빨간맛)", musicTime: "03:11", releaseYear: 2017, singer: "Red Velvet(레드벨벳)", albumCover: "https://image.bugsm.co.kr/album/images/500/201072/20107250.jpg", gender: "걸그룹", gerne: .dance, isGroup: true)

let HypeBoy: Dance = Dance(songName: "Hype Boy", musicTime: "02:59", releaseYear: 2022, singer: "뉴진스", albumCover: "https://image.bugsm.co.kr/album/images/1000/40780/4078016.jpg", gender: "여성", gerne: .dance, isGroup: true)


let iAm: Dance = Dance(songName: "I Am", musicTime: "03:04", releaseYear: 2023, singer: "IVE", albumCover: "https://image.bugsm.co.kr/album/images/1000/40849/4084947.jpg", gender: "여성", gerne: .dance, isGroup: true)


let theTimeGoesOn: Hiphop = Hiphop(songName: "The Time Gose On", musicTime: "05:22", releaseYear: 2015, singer: "BewhY", albumCover: "https://image.bugsm.co.kr/album/images/500/4886/488699.jpg", gender: "남성", gerne: .hiphop, featuring: false, hiphopGenre: .bombap)

let TimeTravel: Hiphop = Hiphop(songName: "Time Travel", musicTime: "04:01", releaseYear: 2016, singer: "빈지노", albumCover: "https://t2.genius.com/unsafe/252x252/https%3A%2F%2Fimages.genius.com%2F622920b6621c971959b9819b99c8b48f.600x600x1.jpg", gender: "남성", gerne: .hiphop, featuring: false, hiphopGenre: .singing)

let hogu: Hiphop = Hiphop(songName: "호구", musicTime: "03:51", releaseYear: 2015, singer: "기리보이", albumCover: "https://image.bugsm.co.kr/album/images/1000/200151/20015131.jpg", gender: "남성", gerne: .hiphop, featuring: true, hiphopGenre: .singing)


let Hello: Ballad = Ballad(songName: "Hello", musicTime: "04:11", releaseYear: 2011, singer: "허각", albumCover: "https://image.bugsm.co.kr/album/images/500/2994/299496.jpg", gender: "남성", gerne: .ballad, isAlcohol: false)


let present: Ballad = Ballad(songName: "선물", musicTime: "04:22", releaseYear: 2017, singer: "멜로망스", albumCover: "https://cdnimg.melon.co.kr/cm/album/images/100/78/176/10078176_1000.jpg?fc3fe8c6bd74c16bce7ffd971a930ffa/melon/quality/80/optimize", gender: "남성", gerne: .ballad, isAlcohol: false)


let heaven: Ballad = Ballad(songName: "Heaven", musicTime: "04:39", releaseYear: 2002, singer: "김현성", albumCover: "https://image.bugsm.co.kr/album/images/1000/136/13611.jpg", gender: "남성", gerne: .ballad, isAlcohol: false)






let Musics: [Music] = [HypeBoy, redFlavor, iAm]

let Dances: [Dance] = [HypeBoy, redFlavor, iAm]
let Hiphops: [Hiphop] = [theTimeGoesOn, TimeTravel, hogu]
let Ballads: [Ballad] = [Hello, present, heaven]
