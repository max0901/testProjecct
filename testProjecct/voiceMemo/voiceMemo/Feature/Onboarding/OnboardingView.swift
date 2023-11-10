//
//  OnboardingView.swift
//  voiceMemo
//
//  Created by 이정민 on 11/8/23.
//

import SwiftUI

struct OnboardingView: View {
    @StateObject private var onboardingViewModel=OnboardingViewModel()
    @StateObject private var pathModel=PathModel()
    @StateObject private var todoListViewModel=TodoListViewModel()
    var body: some View {
            NavigationStack(path: $pathModel.paths){
//            OnboardingContentView(onboardingViewModel:onboardingViewModel)
                TodoListView()
                    .environmentObject(todoListViewModel)
                .navigationDestination(
                    for: PathType.self,
                    destination: {
                        pathType in
                        switch pathType {
                        case .homeView:
                            HomeView()
                                .navigationBarBackButtonHidden()
                            
                        case .todoView:
                          TodoView()
                                .navigationBarBackButtonHidden()
                                .environmentObject(todoListViewModel)
                        case .memoView:
                            MemoView()
                                .navigationBarBackButtonHidden()
                            
                        }
                    })
        }
        .environmentObject(pathModel)
    }
    
    // MARK: - 온보딩ㅓㄴㄹ;ㅣㅏ넝ㄹ;ㅣ 컨텐츠 뷰
    private struct OnboardingContentView:View {
        @ObservedObject private var onboardingViewModel:OnboardingViewModel
        fileprivate init(onboardingViewModel: OnboardingViewModel) {
            self.onboardingViewModel = onboardingViewModel
        }
        fileprivate var body: some View{
            VStack{
                // 온보딩 셀리스트뷰
                OnboardingCellListView(onboardingViewModel: onboardingViewModel)
                Spacer()
                // 시작버튼뷰
                StartBtnView()
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
    
    // MARK: -온보딩 셀리스트 뷰
    private struct OnboardingCellListView:View {
        @ObservedObject private var onboardingViewModel:OnboardingViewModel
        @State private var selectedIndex:Int
        
        fileprivate init(onboardingViewModel: OnboardingViewModel,
                         selectedIndex: Int=0) {
            self.onboardingViewModel = onboardingViewModel
            self.selectedIndex = selectedIndex
        }
        fileprivate var body: some View{
            TabView(selection:$selectedIndex){
                ForEach(Array(onboardingViewModel.onboardingContents.enumerated()),id:\.element){
                    index,onboardingContents in
                    OnboardingCellView(onboardinContent: onboardingContents)
                        .tag(index)
                }
                
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .frame(width: UIScreen.main.bounds.width,height: UIScreen.main.bounds.height/1.5)
            .background(
                selectedIndex % 2 == 0
                ? Color.customSky:Color.customBackgroundGreen
            )
            .clipped()
            
        }
        
    }
    
    //MARK: - 온보딩 셃 뷰
    private struct OnboardingCellView:View{
        private
        var onboardinContent:OnBoardingContent
        fileprivate init(onboardinContent: OnBoardingContent) {
            self.onboardinContent = onboardinContent
        }
        fileprivate var body: some View{
            
            
            VStack{
                Image(onboardinContent.imageFileName)
                    .resizable()
                    .scaledToFit()
                HStack{
                    Spacer()
                    VStack{
                        Spacer()
                            .frame(height: 46)
                        Text(onboardinContent.title)
                            .font(.system(size: 16,weight: .bold))
                        
                        Spacer()
                            .frame(height: 5)
                        
                        
                        Text(onboardinContent.subTilte)
                            .font(.system(size: 16))
                    }
                    Spacer()
                }
                .background(Color.customWhite)
                .cornerRadius(0)
            }
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        }
    }
    // Mark : - 시작하기 버튼뷰
    private struct StartBtnView:View{
        @EnvironmentObject private var pathModel:PathModel
        fileprivate var body:some View{
            Button(
                action: {
                    pathModel.paths.append(.homeView)
            }, label: {
                HStack{
                    Text("시작하기")
                        .font(.system(size: 16,weight: .medium))
                        .foregroundColor(.customGreen)
                    Image("startHome")
                        .renderingMode(.template)
                        .foregroundColor(.customGreen)
                }
            })
            .padding(.bottom,50)
        }
    }}
                    #Preview {
                        OnboardingView()
                    }
