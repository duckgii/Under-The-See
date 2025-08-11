//
//  ContentView.swift
//  diving_v3 watch Watch App
//
//  Created by 신영기 on 8/9/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
//                HStack {
//                    Image(systemName: "globe")
//                        .imageScale(.small)
//                        .foregroundStyle(.tint)
//                    Text("2:31")
//                }
//                    .frame(height: geometry.size.height * 0.1) // 전체 높이의 20%
//                Spacer()
                Image("DivingMotion")
                    .resizable()
                    .scaledToFit()
                    .frame(height: geometry.size.height * 0.4) // 전체 높이의 40%
                Spacer()
                HStack (spacing: geometry.size.width * 0.12){
                    (
                        Text("52")
                            .font(.caption)
                        + Text("m")
                            .font(.footnote)
                    )
                    .padding()
                    .background(
                        Circle()
                            .fill(Color.gray)
                    )
                    Text("5:00")
                        .padding()
                        .background(
                            Capsule()
                                .fill(Color.gray)
                        )
                    Text("25°C")
                        .padding()
                        .background(
                            Circle()
                                .fill(Color.gray)
                        )
                }
                .frame(height: geometry.size.height * 0.2) // 전체 높이의 20%
                Spacer()
                VStack{
                    Text("Dive Time  32:22")
                    Text("Depth        18.6m")
                }
                .frame(height: geometry.size.height * 0.3) // 전체 높이의 20%
                .padding(.horizontal, geometry.size.width * 0.1)
                .padding(.vertical, geometry.size.height * 0.01)
                .background(
                    Capsule()
                        .fill(Color.gray)
                )
                
            }
            .frame(width: geometry.size.width, height: geometry.size.height, alignment: .top)
//            .ignoresSafeArea(edges: .top)
        }
    }
}

#Preview {
    ContentView()
}
