//
//  ContentView.swift
//  Mememo
//
//  Created by 최세근 on 2023/07/12.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var memoStore: MemoStore = MemoStore()
    
    @State var isSheetShowing: Bool = false
    
    @State var memoText: String = ""
    
    @State var memoColor: Color = .blue
    
    let colors: [Color] = [.blue, .cyan, .purple, .yellow, .indigo]
    
    var body: some View {
        NavigationStack {
            List(memoStore.memos) { memo in
                HStack {
                    VStack(alignment: .leading) {
                        Text("\(memo.text)")
                            .font(.title)
                        
                        Text("\(memo.createdString)")
                            .font(.title)
                            .padding(.top)
                        
                    }
                    
                    Spacer()
                    
                }
                .padding()
                .foregroundColor(.white)
                .background(memo.color)
                .shadow(radius: 5)
                .padding()
                .contextMenu {
                    Button {
                        memoStore.removeMemo(memo)
                    } label: {
                        Image(systemName: "trash.slash")
                        Text("삭제")
                    }
                    
                }
                .listStyle(.plain)
                .navigationTitle("메모장")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("추가") {
                            // 창을 새로 띄울 때마다 새로운 빈 메모장이 보임
                            memoText = ""
                            
                            isSheetShowing = true
                        }
                    }
                }
                .sheet(isPresented: $isSheetShowing) {
                    VStack {
                        HStack {
                            Button("취소") {
                                memoText = ""
                                isSheetShowing = false
                            }
                            Spacer()
                            
                            Button("완료") {
                                memoStore.addMemo(memoText, color: memoColor)
                                
                                isSheetShowing = false
                            }
                            .disabled(memoText.isEmpty)
                        }
                        HStack {
                            ForEach(colors, id: \.self) { color in
                                Button {
                                    memoColor = color
                                } label: {
                                    HStack {
                                        Spacer()
                                        
                                        if color == memoColor {
                                            Image(systemName: "checkmark.circle.fill")
                                        }
                                        
                                        Spacer()
                                    }
                                    .padding()
                                    .frame(height: 50)
                                    .background(color)
                                    .foregroundColor(.white)
                                    
                                }
                            }
                        }
                        
                        
                        Divider()
                            .padding()
                        
                        
                        TextField("메모를 입력하세요", text: $memoText, axis: .vertical)
                            .padding()
                            .foregroundColor(.white)
                            .background(memoColor)
                            .shadow(radius: 5)
                        // color 와 memoColor가 같으면 shadow를 8을 준다.
                        
                        Spacer()
                    }
                    .padding()
                    
                }
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
