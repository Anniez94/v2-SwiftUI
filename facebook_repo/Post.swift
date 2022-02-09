//
//  Post.swift
//  facebook_repo
//
//  Created by Chiedu  Mokwunye  on 05/02/2022.
//

import Foundation
import SwiftUI

struct FBPost: View {
    
    @State var isLiked: Bool = false
    let model:FBModel
    
    var body: some View {
        VStack{
            HStack{
                Image(model.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50, alignment: .center)
                    .cornerRadius(25)
                
                VStack{
                    HStack{
                        Text(model.name)
                            .foregroundColor(Color.blue)
                            .font(.system(size: 18, weight: .semibold, design: .default))
                        Spacer()
                    }
                    
                    HStack{
                        Text("12 minutes ago")
                            .foregroundColor(Color(.secondaryLabel))
                        Spacer()
                        
                    }
                    
                }
                
                Spacer()
                
            }
            Spacer()
            
            HStack{
                Text(model.post).font(.system(size: 20 , weight: .regular, design: .default))
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            Spacer()
            
            HStack{
                Button(action: { }, label: {
                    Text("Like")
                })
                
                Spacer()
                
                Button(action: { }, label: {
                    Text("Comment")
                })
                Spacer()
                
                Button(action: { }, label: {
                    Text("Share")
                })
            }.padding(.vertical)
            
        }.padding()
            .background(Color(.systemBackground))
            .cornerRadius(7)
    }
    
}
