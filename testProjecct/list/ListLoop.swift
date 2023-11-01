//
//  ListLoop.swift
//  testProjecct
//
//  Created by 이정민 on 10/30/23.
//

import SwiftUI
struct Fruit:Hashable{
    //자료형을 같은이름이 반복이 가능한 hashable을 넣어준다
    let name:String
    let matchFruitName:String
    let price:Int
}
//객체 틀만들듯이 데이터 형태를 만들어준다
struct ListLoop: View {
    var favoriteFruits=[
    Fruit(name: "Apple", matchFruitName: "Banana", price:1000),
    Fruit(name: "Cerry", matchFruitName: "kiwi", price:3000),
    Fruit(name: "kiwi", matchFruitName: "berry", price:4000),
    Fruit(name: "berry", matchFruitName: "Apple", price:5000),
    
    Fruit(name: "banana", matchFruitName: "banana", price:3000),
    Fruit(name: "Apple", matchFruitName: "Banana", price:1000)
    ]
    //만든 데이터 틀형태로 배열안에 세팅해준다
    var body: some View {
       
        
        
       
        NavigationStack {
            //list 를 묶는 Stack
            List {
                ForEach(favoriteFruits,id:\.self){
                    fruit in
                    VStack(alignment: .leading){
                        Text("name:\(fruit.name)")
                        Text("matchFruit:\(fruit.matchFruitName)")
                             Text("price:\(fruit.price)")
                    }
                }
            }  .navigationTitle("Fruit List")
            //리스트 타이틀
        }
      
    }
}

#Preview {
    ListLoop()
}
