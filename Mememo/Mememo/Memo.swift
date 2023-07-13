//
//  Memo.swift
//  Mememo
//
//  Created by 최세근 on 2023/07/12.
//

import Foundation
import SwiftUI


struct Memo: Identifiable {
    var id: UUID = UUID()
    var text: String
    var color: Color
    var created: Date
    
    var createdString: String {
        get {
            let dateFormatter: DateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy-MM-dd"
            
            
            return dateFormatter.string(from: created)
        }
    }
    
}

class MemoStore: ObservableObject { 
    
    @Published var memos: [Memo] = [
        Memo(text: "하위", color: .yellow ,created: Date()),
        Memo(text: "하위2", color: .brown ,created: Date()),
//        Memo(text: "하위3", color: .blue ,created: Date())
    ]
    
    func addMemo(_ text: String, color: Color) {
        let memo: Memo = Memo(text: text, color: color, created: Date())
        
// append 하는 순간 배열의 끝에 메모가 추가된다.
//      memos.append(memo)
        
// 맨 위에 메모를 추가 하는 방법
//      memos = [memo] + memos
        memos.insert(memo, at: 0)
        
        
    }
    
    func removeMemo(_ targetMemo: Memo) {
        print("\(targetMemo.id)를 삭제합니다.")
        
        
        var index: Int = 0
        
        for tempMemo in memos {
            print("\(tempMemo)와 비교중입니다.")
            
            if tempMemo.id == targetMemo.id {
                print("\(tempMemo.id)를 발견!")
                
                memos.remove(at: index)
                
                
                break
            }
            
            index += 1
        }
    }
}








