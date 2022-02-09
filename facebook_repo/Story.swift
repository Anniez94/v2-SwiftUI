//
//  Story.swift
//  facebook_repo
//
//  Created by Chiedu  Mokwunye  on 05/02/2022.
//

import Foundation
import SwiftUI

struct Stories: View {
    let stories: [String]
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 3){
                
                ForEach(stories, id: \.self){ name in
                    
                    Image(name)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 140, height: 200, alignment: .center).background(Color.red)
                        .clipped()
                    Spacer()
                }
                
            }.padding()
            
        }
    }
}

