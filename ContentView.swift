//
//  ContentView.swift
//  TYWLS Book
//
//  Created by Begum Nashida on 3/13/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            HStack{
                NavigationLink(destination: Policies()) {
                    VStack {
                        Image(systemName: "document.on.clipboard")
                            .imageScale(.large)
                            .foregroundStyle(.tint)
                        Text("Policies")
                    }
                    .padding()
                }
            }
            Spacer()
        }
    }
}

struct Policies: View{
    var body: some View{
        NavigationView{
            HStack{
                NavigationLink(destination: UniformPolicy()) {
                    VStack {
                        Image(systemName: "tshirt")
                            .imageScale(.large)
                            .foregroundStyle(.tint)
                        Text("Uniform")
                    }
                    .padding()
                }
                NavigationLink(destination: TechPolicy()) {
                    VStack {
                        Image(systemName: "laptopcomputer")
                            .imageScale(.large)
                            .foregroundStyle(.tint)
                        
                        Text("Technology")
                    }
                    .padding()
                }
            }
            Spacer()
        }
    }
}

struct UniformPolicy: View {
    var body: some View {
        NavigationView{
            HStack{
                VStack {
                Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("Hello")
                }
                .padding()
                VStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("Hello,e!")
                }
                .padding()
            }
            Spacer()
        }
    }
}

struct TechPolicy: View {
    var body: some View {
        NavigationView{
            HStack{
                VStack {
                   Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("Hola")
                }
                .padding()
                VStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("Bonjour")
                }
                .padding()
            }
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
