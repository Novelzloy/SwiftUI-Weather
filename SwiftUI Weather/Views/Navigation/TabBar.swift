//
//  TabBar.swift
//  SwiftUI Weather
//
//  Created by Роман on 07.07.2022.
//

import SwiftUI

struct TabBar: View {
    var action: () -> Void
    
    var body: some View {
        ZStack{
            //MARK: - Arc shape
            Arc()
                .fill(Color.tabBarBackground)
                .frame(height: 80)
                .overlay {
                    Arc()
                        .stroke(Color.tabBarBorder, lineWidth: 0.5)
                }
            //MARK: - Tab Items
            HStack {
                //MARK: - Expend button
                Button {
                    action()
                } label: {
                    Image(systemName: "mappin.and.ellipse")
                        .frame(width: 44, height: 44, alignment: .center)
                }
                
                Spacer()
                
                NavigationLink {
                    
                } label: {
                    Image(systemName: "list.star")
                        .frame(width: 44, height: 44)
                }


            }
            .font(.title2)
            .foregroundColor(.white)
            .padding(EdgeInsets(top: 20,
                                leading: 32,
                                bottom: 24,
                                trailing: 32))
        }
        .frame(maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar(action: { })
            .preferredColorScheme(.dark)
    }
}
