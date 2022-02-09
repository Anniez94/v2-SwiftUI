//
//  ContentView.swift
//  facebook_repo
//
//  Created by Chiedu  Mokwunye  on 02/02/2022.
//

import SwiftUI

struct FBModel: Hashable {
    
    let name: String
    let post: String
    let imageName: String
}

struct ContentView: View {
    @Binding var text: String
    
    let facebookBlue = UIColor(red:23/255.0,
                               green: 120/255.0,
                               blue: 242/255.0,
                               alpha:1
    )
    let stories = ["sds", "sds2", "sds", "sds2"]
    
    let posts: [FBModel] = [
        FBModel(name: "Mark Zuckerberg", post: "Hey guys I made this cool website called the facebook to see if I'm cool or not", imageName: "sds"),
        FBModel(name: "Jeff Bezos", post: "I made this cool website called amazon to see if I'm cool or not", imageName: "sds"),
        FBModel(name: "Steven Spielberg", post: "Hey guys I made this cool website called the facebook to see if I'm cool or not", imageName: "sds")
    ]
    
    var body: some View {
        VStack{
            
            HStack{
                Text("facebook")
                    .font(.system(size: 48, weight: .bold, design: .default))
                    .foregroundColor(Color(facebookBlue))
                
                Spacer()
                
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                    .foregroundColor(Color(.secondaryLabel))
            }
            .padding()
            
            TextField("Search...", text: $text)
                .padding(7)
                .background(Color(.systemGray5))
                .cornerRadius(13)
                .padding(.horizontal, 15)
            
            ZStack{
                Color(.secondarySystemBackground)
                ScrollView(.vertical, showsIndicators: false){
                    VStack{
                        Stories(stories: stories)
                        
                        ForEach(posts, id: \.self){ model in
                            FBPost(model: model)
                        }
                        
                    }
                }
            }
            
            Spacer()
        }
        
        
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(text: .constant(""))
    }
}
