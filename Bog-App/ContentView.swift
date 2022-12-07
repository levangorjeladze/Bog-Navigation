//
//  ContentView.swift
//  Bog-App
//
//  Created by Levan Gorjeladze on 05.12.22.
//

import SwiftUI

struct ContentView: View {
    @State var selectedIndex = 0
    
    let icons =
    [
        "house.circle.fill",
        "square.3.layers.3d.top.filled",
        "larisign.circle.fill",
        "creditcard.circle.fill",
        "person.circle.fill"
    ]
    //Navigation Section
    var body: some View {
        VStack {
            //Content
            ZStack{
                switch selectedIndex {
                case 0:
                    NavigationView {
                        VStack{
                            Text("First Screen")
                                .font(.title)
                        }
                        .frame(maxWidth: .infinity,maxHeight: .infinity)
                        .background(RadialGradient(gradient: Gradient(colors: [Color.red, Color.yellow]), center: .topLeading, startRadius: 5, endRadius: 900))
                        .edgesIgnoringSafeArea(.all)
                        .navigationTitle("Home Screen")
                    }
                case 1:
                    NavigationView {
                        VStack{
                            Text("Second Screen")
                            .font(.title)
                        }
                        .frame(maxWidth: .infinity,maxHeight: .infinity)
                        .background(RadialGradient(gradient: Gradient(colors: [Color.red, Color.yellow]), center: .topLeading, startRadius: 5, endRadius: 900))
                        .edgesIgnoringSafeArea(.all)
                        .navigationTitle("Product")
                    }
                case 2:
                    NavigationView {
                        VStack{
                            Text("Third Screen")
                            .font(.title)
                        }
                        .frame(maxWidth: .infinity,maxHeight: .infinity)
                        .background(RadialGradient(gradient: Gradient(colors: [Color.red, Color.yellow]), center: .topLeading, startRadius: 5, endRadius: 900))
                        .edgesIgnoringSafeArea(.all)
                        .navigationTitle("Pay")
                    }
                case 3 :
                    NavigationView {
                        VStack{
                            Text("Fourth  Screen")
                            .font(.title)
                        }
                        .frame(maxWidth: .infinity,maxHeight: .infinity)
                        .background(RadialGradient(gradient: Gradient(colors: [Color.red, Color.yellow]), center: .topLeading, startRadius: 5, endRadius: 900))
                        .edgesIgnoringSafeArea(.all)
                        .navigationTitle("Cards")
                    }
                default:
                    NavigationView {
                        VStack{
                            Text("First Screen")
                            .font(.title)
                        }
                        .frame(maxWidth: .infinity,maxHeight: .infinity)
                        .background(RadialGradient(gradient: Gradient(colors: [Color.red, Color.yellow]), center: .topLeading, startRadius: 5, endRadius: 900))
                        .edgesIgnoringSafeArea(.all)
                        .navigationTitle("Account")
                    }
                }
            }
            //to go down my tab icons
            Spacer()
            //icon preporties
            Divider()
            HStack{
                ForEach(0..<5, id: \.self){ number in
                    Spacer()
                    Button(action: {
                        self.selectedIndex = number
                    },label: {
                        if number == 2 {
                            Image(systemName: icons[number])
                                .font(.system(
                                    size:35,
                                    weight: .regular,
                                    design: .default))
                                .foregroundColor(.white)
                                .frame(width: 60 , height: 60)
                                .background(Color.blue)
                                .cornerRadius(30)
                        }
                        else
                        {
                            Image(systemName: icons[number])
                                .font(.system(size:35,
                                              weight: .regular,
                                              design: .default))
                                .foregroundColor(selectedIndex == number ? .blue : Color(UIColor.lightGray))
                        }
                    })
                    Spacer()
                }
            }
        }
        .background(.foreground)
        // .foregroundColor(.orange)
        //.ignoresSafeArea()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
