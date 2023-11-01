//
//  mainsetting.swift
//  testProjecct
//
//  Created by 이정민 on 10/31/23.
//

import SwiftUI
struct Setting:Hashable{
    let img:String
    let imgColor:Color
    let foreColor:Color = .white
    let title:String
}
struct mainsetting: View {
    let data:[[Setting]]=[
        [Setting(img:"hourglass",imgColor:.purple,title:"스크린 타임")],
        [
            Setting(img:"gear",imgColor:.gray,title:"일반"),
            Setting(img:"accessibility",imgColor:.blue,title:"손쉬운 사용"),
            Setting(img:"hand.raised.fill",imgColor:.blue,title:"개인정보 보호 및 보안"),
            
        ],
        [Setting(img:"key.fill",imgColor:.gray,title:"암호")],
        [
            Setting(img:"safari.fill",imgColor:.blue,title:"Safari"),
            Setting(img:"newspaper.fill",imgColor:.blue,title:"News"),
            
            
        ],
      
    ]
    var settingList1=[
        Setting(img:"gear",imgColor:.gray,title:"일반"),
        Setting(img: "accessibility", imgColor:.blue, title: "News"),
        Setting(img:"map.circle.fill", imgColor: .blue, title:"번역"),
        Setting(img:"map.circle.fill", imgColor: .blue, title:"단축어"),
        
    ]
    var settingList2=[
        Setting(img:"safari",imgColor:.blue,title:"Safari"),
        Setting(img: "newspaper", imgColor:.blue, title: "News"),
        Setting(img:"newspaper", imgColor: .blue, title:"개인정보 보호 및 보안")
    ]
    
    var body: some View {
        NavigationStack{
            List{
                
                //user첫번째 칸
                Section{
                    HStack{
                        Image(systemName: "person.circle.fill")
                            .resizable()
                        
                            .scaledToFit()
                            .frame(width: 50)
                            .foregroundColor(.gray)
                        VStack(alignment:.leading) {
                            Text("IPhone에 로그인")
                                .fontWeight(.thin)
                                .foregroundColor(Color.blue)
                            Text("icloud,AppStore를 설정")
                        }
                        .padding(.leading)
                        
                    }
                }
              
                    ForEach(data, id:\.self){setting in
                        Section{
                        ForEach(setting,id:\.self){
                            settingList in
                            Label{
                                Text(settingList.title)
                                
                            }
                        icon:{
                            Image(systemName: settingList.img)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20 , height: 20)
                                .padding(.all ,7)
                                .background(settingList.imgColor)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                        }
                        
                    }
                        
                }
                    
//                    //스크린타임칸
//                    VStack{
//                        HStack{
//                            
//                            Image(systemName: "hourglass")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 20 , height: 20)
//                                .padding(.all ,7)
//                                .background(.purple)
//                                .foregroundColor(.white)
//                                .cornerRadius(10)                
//                            Text("스크린 타임")
//                                .padding(.leading)
//                        }
//                    }
//                    //일반,손쉬운,개인정보
//                    VStack(alignment:.leading){
//                        ForEach(settingList1,id:\.self){
//                            setting in
//                            HStack{
//                                Image(systemName:"\(setting.img)")
//                                
//                                    .resizable()
//                                    .scaledToFit()
//                                    .frame(width: 30)
//                                    .foregroundColor((setting.imgColor))
//                                Text("\(setting.title)")
//                                    .padding(.leading)
//                            }
//                        }
//                    }
//                    //암호
//                    HStack{
//                        Image(systemName: "key.viewfinder")
//                            .resizable()
//                            .scaledToFit()
//                            .frame(width: 30)
//                        Text("암호")
//                            .padding(.leading)
//                    }
//                    //safari,news ,번역...
//                    VStack(alignment:.leading){
//                        ForEach(settingList2,id:\.self){
//                            setting in
//                            HStack{
//                                Image(systemName:"\(setting.img)")
//                                    .resizable()
//                                    .scaledToFit()
//                                    .frame(width: 30)
//                                    .foregroundColor((setting.imgColor))
//                                
//                                Text("\(setting.title)")
//                                    .padding(.leading)
//                            }
//                        }
//                    }
                    
                } .navigationTitle("설정")
            }
        }
    }
#Preview {
    mainsetting()
}
