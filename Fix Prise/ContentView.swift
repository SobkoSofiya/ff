//
//  ContentView.swift
//  Fix Prise
//
//  Created by Sofi on 09.02.2021.
//

import SwiftUI


struct bottomM:View {
    @State var item = 1
    var body: some View{
        TabView(selection:$item){
            m().tabItem { VStack{
                Image("h")
                Text("Главная").font(.custom("", size: 10))
            } }
            c().tabItem { VStack{
                Image("m")
                Text("Каталог").font(.custom("", size: 10))
            } }
            p().tabItem { VStack{
                Image("pin")
                Text("Магазины").font(.custom("", size: 10))
            } }
            ContentView().tabItem { VStack{
                Image("p")
                Text("Профиль").font(.custom("", size: 10))
            } }
        }
    }
}

struct ContentView: View {
    @State var pass = ""
    @State var nam = ""
    var body: some View {
        ZStack{
            VStack(spacing:0){
                ZStack(alignment:.bottom){
                    Color("gren")
                    HStack{
                        Image("a").resizable().frame(width: 20, height: 20, alignment: .center).padding()
                        Spacer()
                    }
                    Text("Вход в личный кабинет").foregroundColor(.white).font(.custom("", size: 18)).padding()
                }.frame(width: UIScreen.main.bounds.width, height: 120, alignment: .center)
                VStack(spacing:50){
                    VStack(spacing:20){
                    TextField("Номер телефона", text: $nam).frame(width: UIScreen.main.bounds.width-30, height: 1, alignment: .center)
                        Rectangle().frame(width: UIScreen.main.bounds.width-30, height: 1, alignment: .center).foregroundColor(.gray).opacity(0.2)
                    }
                    VStack(spacing:20){
                        HStack(spacing:0){
                    TextField("Пароль", text: $pass).frame(width: UIScreen.main.bounds.width-50, height: 1, alignment: .center)
                            Image("e").resizable().frame(width: 20, height: 20, alignment: .center)
                        }
                        Rectangle().frame(width: UIScreen.main.bounds.width-30, height: 1, alignment: .center).foregroundColor(.gray).opacity(0.2).offset( y: -10)
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 20).frame(width: 320, height: 80, alignment: .center).foregroundColor(Color("gren"))
                        Text("Войти").foregroundColor(.white).font(.custom("", size: 20))
                   }
                    Text("Забыли пароль?").foregroundColor(Color("bu")).font(.custom("", size: 18)).offset( y: -20)
                    
                }.offset( y: 40)
                Spacer()
                
                
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct m:View {
    var body: some View{
        ZStack{
       Text("")
        }
    }
}
struct c:View {
    var body: some View{
        ZStack{
       Text("")
        }
    }
}

struct p:View {
    var body: some View{
        ZStack{
       Text("")
        }
    }
}
