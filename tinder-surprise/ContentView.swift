//
//  ContentView.swift
//  tinder-surprise
//
//  Created by Haotian Huang on 28/12/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var shadowColor: Color = .black.opacity(0.1)
    @State private var shadowRadius: CGFloat = 5
    @State private var shadowX: CGFloat = 0
    @State private var shadowY: CGFloat = 0
    
    @State private var iconPadding: CGFloat = 25
    
    @State private var rectY: CGFloat = 480
    
    @State private var rectX: CGFloat = 360




    
    var body: some View {
        
        VStack{
            
            Spacer()
            
            HStack{
                VStack(alignment: .leading){
                    HStack{
                        Text("Location").foregroundColor(.gray).font(.subheadline)
                        Image(systemName: "chevron.down").resizable().scaledToFit().foregroundColor(.pink).frame(width: 10, height: 10)
                    }
             
                    
                    HStack{
                        Image(systemName: "location.fill").foregroundColor(.pink)
                        Text("Toronto,").bold().font(.title2) +
                        Text(" Canada").font(.title2)
                        
                    }
                    
                }
                
                Spacer()
                
                ZStack{
                    Rectangle()
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .frame(width: 30, height: 30)
                    Image(systemName: "magnifyingglass")
                }.shadow(color: shadowColor, radius: shadowRadius, x: shadowX, y: shadowY)

                
                ZStack{
                    Rectangle()
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .frame(width: 30, height: 30)
                    Image(systemName: "bell.badge")
                }.shadow(color: shadowColor, radius: shadowRadius, x: shadowX, y: shadowY)


            }
            .padding(.horizontal, 30)
            
            Spacer()
            
            HStack{
                ZStack{
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(width: 280, height: 45)
                        .cornerRadius(10)
                        .padding(.trailing)
                        .shadow(color: shadowColor, radius: shadowRadius, x: shadowX, y: shadowY)
                    
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        Text("Search Partner")
                            .foregroundColor(.gray)
                        
                    }.padding(.trailing, 110)
                }

                
                ZStack{
                    Rectangle()
                        .foregroundColor(.pink)
                        .frame(width: 45, height: 45)
                        .cornerRadius(10)
                    Image(systemName: "line.3.horizontal.decrease.circle").resizable().scaledToFit().foregroundColor(.white).frame(width: 20, height: 20)
                }
            }
            
            Spacer()
            
            ZStack{
                ZStack{
                    Rectangle()
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        .frame(width: rectX, height: rectY)
                        .shadow(color: shadowColor, radius: shadowRadius, x: shadowX, y: shadowY)
                    
                    VStack{
                        ZStack{
                            
                            Image("liunew")
                                .resizable()
                                .cornerRadius(15)
                                .frame(width: 330, height: 360)
                                .padding(.bottom, 5)
                 


                            
                            VStack(alignment: .leading){
                                ZStack{
                                    Rectangle()
                                        .opacity(0.45)
                                        .cornerRadius(15)
                                        .frame(width: 70, height: 35)
                                        
                                    Text("2.5 Km").bold().font(.system(size: 12)).foregroundColor(.white)
                                }.padding(.leading, 240)
                                    .padding(.top, 10)
                                    
                                    
                      
                                ZStack{
                                    
                                    LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .top, endPoint: .bottom)
                                        .cornerRadius(15)
                                        .opacity(0.45)
                                        .frame(width: 330, height: 70)
                                    
                                    VStack(alignment: .leading){
                                        Text("Simu, 32").bold().font(.title2).foregroundColor(.white)
                                        
                                        Text("Actor, Fun").font(.subheadline).foregroundColor(.white)
                                    }.padding(.trailing, 200)
                       
                                }.padding(.top, 230)
                                
                            }.frame(width: 330, height: 360)

                        }
                        
                        HStack{
                            
                            
                            ZStack{
                                Circle()
                                    .foregroundColor(.pink)
                                    .opacity(0.3)
                                    .frame(width: 60, height: 60)
                                Image(systemName: "multiply")
                                    .resizable()
                                    .foregroundColor(.pink)
                                    .opacity(0.9)
                                    .frame(width: 18, height: 18)
                            }.padding(.horizontal, iconPadding + 10)
                                .padding(.vertical)
                            
                            
                            
                            ZStack{
                                Circle()
                                    .foregroundColor(.pink)
                                    .opacity(0.8)
                                    .frame(width: 60, height: 60)
                                
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .foregroundColor(.white)
                                    .frame(width: 25, height: 22)
                            }.padding(.horizontal, iconPadding + 10)
                                .padding(.vertical)
                            
                            
                            
                            
                        }
                    }
   
                    
                }.zIndex(2)



                
                Rectangle()
                    .foregroundColor(.white)
                    .opacity(0.9)

                    .cornerRadius(15)
                    .frame(width: rectX - 30, height: rectY)
                    .shadow(color: shadowColor, radius: shadowRadius, x: shadowX, y: shadowY)
                    .zIndex(1)
                    .offset(y: 20)
                
                Rectangle()
                    .foregroundColor(.white)
                    .opacity(0.8)
                    .cornerRadius(15)
                    .frame(width: rectX - 60, height: rectY)
                    .shadow(color: shadowColor, radius: shadowRadius, x: shadowX, y: shadowY)
                    .zIndex(0)
                    .offset(y: 37)

            }.padding()
            .padding(.bottom, 30)
            
            Spacer()
            
            HStack{
                Image(systemName: "house")
                    .resizable()
                    .foregroundColor(.pink)
                    .frame(width: 25, height: 23)
                    .padding(.horizontal, iconPadding)
                
                Image(systemName: "heart.fill")
                    .resizable()
                    .foregroundColor(.gray)
                    .frame(width: 25, height: 23)
                    .padding(.horizontal, iconPadding)
                
                Image(systemName: "message.and.waveform.fill")
                    .resizable()
                    .foregroundColor(.gray)
                    .frame(width: 25, height: 23)
                    .padding(.horizontal, iconPadding)
                
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .foregroundColor(.gray)
                    .frame(width: 25, height: 23)
                    .padding(.horizontal, iconPadding)
            }.padding()
            
            Spacer()
        }.background(Color.gray.opacity(0.05).edgesIgnoringSafeArea(.all))

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
