//
//  ContentView.swift
//  JARVIS
//
//  Created by Aditya Saravana on 1/25/21.
//

import SwiftUI



struct ContentView: View {
    @State var query = ""
    @State var query2: String = ""
    @State var queryLink = ""
    
    func queryLinkCombine () -> String {
        let combinedQuery = "\(query)+\(query2)"
        var fqueryLink = ""
        
        if query2 != "" {
            fqueryLink = "https://duckduckgo.com/?q=\(combinedQuery)&t=h_&ia=web"
        } else {
            
            fqueryLink = "https://duckduckgo.com/?q=\(query)&t=h_&ia=web"
        }
        
        return fqueryLink
    }
    
    
    var body: some View {
        VStack {
            Text("J.A.R.V.I.S.")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Text("Jarvis Acronym Rendering Visual Information Search")
                .multilineTextAlignment(.center)
                .font(.title3)
                .foregroundColor(.gray)
                .padding()
            
            Spacer()
            
            VStack(alignment: .leading) {
                TextField("Enter Query", text: $query)
                TextField("Enter Optional Second Query Keyword", text: $query2)
                Link("Search Query",
                      destination: URL(string: queryLinkCombine())!)
            }
            .padding(.all)
            
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
