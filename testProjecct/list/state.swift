//
//  SwiftUIView.swift
//  testProjecct
//
//  Created by 이정민 on 10/31/23.
//

import SwiftUI
//데이터의 상태를 나타내는 state
//struct이기에 필요한 기능
//state에 $를 붙이면 binding
//두state가 연결된다고 생각하면 됨
//추가는 append 제거는 remove
struct Fruit1:Hashable{
  
    let name:String
    let matchFruitName:String
    let price:Int
}

struct state: View {
   @State var favoriteFruits=[
    Fruit(name: "Apple", matchFruitName: "Banana", price:1000),
    Fruit(name: "Cerry", matchFruitName: "kiwi", price:3000),
    Fruit(name: "kiwi", matchFruitName: "berry", price:4000),
    Fruit(name: "berry", matchFruitName: "Apple", price:5000),
    
    Fruit(name: "banana", matchFruitName: "banana", price:3000),
    Fruit(name: "Apple", matchFruitName: "Banana", price:1000)
    ]
    
    //state 만드는법
    @State var fruitName:String=""
    
    var body: some View {
       
        
        
       
        NavigationStack {
            //list 를 묶는 Stack
            VStack{
                HStack{
                    TextField("insert fruit name", text:$fruitName)
                    //textField == input태그 안에 변경되는 text를 추가될 과일이름 으로 바꾼다
                    //바뀐 text가 state값이므로 배열도 state로 바꾸어주어야한다
                    Button(action: {
                        favoriteFruits.append(Fruit(name: fruitName, matchFruitName:"banana", price: 10000))
                    }
                           , label: {
                        Text("insert")
                            .padding()
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    })
                }.padding()
                List {
                    ForEach(favoriteFruits,id:\.self){
                        fruit in
                        VStack(alignment: .leading){
                           
                            Text("name:\(fruit.name)")
                            Text("matchFruit:\(fruit.matchFruitName)")
                            Text("price:\(fruit.price)")
                        }
                    }.onDelete{indexSet in
                        //foreach반복문에서 각 제거 버튼을 만들고싶을떄 .onDelete를 이용하며
                        //기본으로 구현해주는 제거버튼 왼쪽으로 스와이프하면 제거된다
                        favoriteFruits.remove(atOffsets: indexSet)
                        
                        //배열에 index를받아 제거한다
                        
                    }
                }  .navigationTitle("Fruit List")
                //리스트 타이틀
            }
        }
      
    }
}

#Preview {
    state()
}
