//
//  TodoListView.swift
//  voiceMemo
//
//  Created by 이정민 on 11/10/23.
//

import SwiftUI

struct TodoListView: View {
    @EnvironmentObject private var pathModel:PathModel
    @EnvironmentObject private var todoListViewModel:TodoListViewModel
    var body: some View {
        ZStack{
            //  투두셀리스트
            VStack{
                if !todoListViewModel.todos.isEmpty{
                    CustomNavigationBar(isDisplayLeftBtn: false,
                                        rightBtnAction: {
                        todoListViewModel.navigationRightBtnTapped()
                    },
                                        rightBtnType: todoListViewModel.navigationBarRightBtnMode)
                }
                else{
                    Spacer()
                        .frame(height:30)
                }
                TitleView()
                    .padding(.top,20)
                
                if todoListViewModel.todos.isEmpty{
                    AAnnouncementView()
                }else{
                    TodoListContentView()
                        .padding(.top,20)
                }
                
            }
            WriteTodoBtnView()
                .padding(.trailing,20)
                .padding(.bottom,50)
        }
        .alert(
            "Todo List a\(todoListViewModel.removeTodosCount)개 삭제하시겠습니까?",
            isPresented: $todoListViewModel.isDisplayRemoveTodoAlert
            
        ){
            Button("삭제",role: .destructive ){
                todoListViewModel.removeBtnTapped()
            }
            Button("취소",role: .cancel){
                
            }
        }
    }
}
//    var titleView: some View{
//        Text("title")
//    }
func titleView() -> some View{
    Text("title")
}


//MARK : - TOdoList 타이틀 뷰
private struct TitleView: View{
    @EnvironmentObject private var todoListViewModle: TodoListViewModel
    
    fileprivate var body : some View{
        HStack{
            if todoListViewModle.todos.isEmpty{
                Text("Todo List를\n 추가해보세요")
            }else{
                Text("TodoList \(todoListViewModle.todos.count)개가\n 있습니다")
            }
            Spacer()
        }
        .font(.system(size: 30,weight: .bold))
        .padding(.leading,20)
    }
}

//MARK: - todolist 안내뷰
private struct AAnnouncementView:View{
    fileprivate var body:some View{
        VStack(spacing:15){
            Spacer()
            Image("pencil") 
                .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
            Text("\"매일 아침 5시 운동하자!\"")
            Text("\"내일 8시 수강 신청하라고 알려줘\"")
            Text("\"1시 반 점심약속 리마인드 해줘\"")
            
            Spacer()
        }
        .font(.system(size:16))
        .foregroundColor(.customGray2)
    }
}
//MARK: - TodoList 컨텐츠 뷰
private struct TodoListContentView:View{
    @EnvironmentObject private var todoListViewModel:TodoListViewModel
    fileprivate var body:some View{
        VStack{
            HStack{
                Text("할일 목록")
                    .font(.system(size: 16,weight: .bold))
                    .padding(.leading,20)
                Spacer()
            }
            ScrollView(.vertical){
                VStack(spacing:0){
                    Rectangle()
                        .fill(Color.customGray0)
                        .frame(height:1)
                    ForEach(todoListViewModel.todos,id:\.self){
                        todo in
                        TodoCellView(todo: todo)
                    }
                }
                
            }
        }
    }
}

//MARK: - todo 셀뷰
private struct TodoCellView:View{
    @EnvironmentObject private var todoListViewModel:TodoListViewModel
    @State private var isRemoveSelected: Bool
    private var todo:Todo
    fileprivate init(
        isRemoveSelected: Bool=false,
        todo: Todo)
    {
        
        _isRemoveSelected = State(initialValue: isRemoveSelected)
        self.todo = todo
    }
    fileprivate var body:some View{
        VStack(spacing:20){
            HStack{
                if !todoListViewModel.isEditTodoMode{
                    Button(action: {todoListViewModel.selectedBoxTapped(todo)}, label: {
                        todo.selected ? Image("selectedBox") : Image("unSelectedBox")
                    }
                    )
                }
                VStack(alignment: .leading,spacing: 5){
                    Text(todo.title)
                        .font(.system(size: 16))
                        .foregroundStyle(todo.selected ? .customIconGray: .customBlack)
                        .strikethrough(todo.selected)
                    
                    Text(todo.convertedDayAndType)
                        .font(.system(size: 16))
                        .foregroundStyle(.customIconGray)
                }
                Spacer()
                
                if todoListViewModel.isEditTodoMode{
                    Button(
                        action:{
                            isRemoveSelected.toggle()
                            todoListViewModel.todoRemoveSelectedboxTapped(todo)
                        },
                        label: {
                            isRemoveSelected ? Image("selectedBox"): Image("unSelectedBox")
                        }
                    )
                }
            }
            .padding(.horizontal,20)
            .padding(.top,10)
            
            Rectangle()
                .fill(Color.customGray0)
                .frame(height:1)
        }
    }
}

//MARK: -todo Write
private struct WriteTodoBtnView:View{
    @EnvironmentObject private var pathModel:PathModel
    
    fileprivate var body: some View{
        VStack{
            Spacer()
            HStack{
                Spacer()
                
                Button(
                    action: {pathModel.paths.append(.todoView)}, label: {
                        Image("WriteBtn")
                    })
            }
        }
    }
}

#Preview {
    TodoListView()
        .environmentObject(PathModel())
        .environmentObject(TodoListViewModel())
}
