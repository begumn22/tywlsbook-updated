//
//  ContentView.swift
//  TYWLS Book
//
//  Created by Begum Nashida on 3/13/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        NavigationStack{
//            Form{
//                Section{
//                    Text("Hello, World!")
//                }
//            }
//        }
        NavigationView{
            HStack{
                NavigationLink(destination: Policies()) {
                    VStack {
                        NavigationLink(destination: Policies()) {
                                VStack {
                                    Image(systemName: "document.on.clipboard")
                                        .padding()
                                    Text("Policies")
                                }
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                            }
                    }
                    .padding()
                }
            }
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
                                    .padding()
                                Text("Uniform")
                                }
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        }
                .padding()
                
                NavigationLink(destination: TechPolicy()) {
                            VStack {
                                Image(systemName: "laptopcomputer").padding()
                                Text("Technology")
                                }
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        }
                    .padding()
                }
                
            }
        }
    }



struct UniformPolicy: View {
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    Text("Uniform Policy").font(.largeTitle)
                    Text("2023-24").font(.title)
                    Spacer()
                    Text("\(Text("Why Uniforms?").foregroundColor(.blue)) \(Text("Mission Driven. Sisterhood. Creates cohesion. Reduces the potential for bullying. Fairer dress codes. Removes peer pressure. Reduces distractions. Focus on character. Economically wise.").italic())")
                    Spacer()
                    Text("\(Text("The Young Women’s Leadership School of Astoria").bold()) is an all-girls college-bound school with a mission to create the next generation of extraordinary women. Ann Rubenstein Tisch as the Founder and President of Young Women's Leadership Network (YWLN), an organization that operates The Young Women's Leadership Schools (TYWLS), a network of all-girls public schools which affords us a full-time counselor through CollegeBound Initiative (CBI), a co-ed college access program has created the TYWLS schools with the expectation that we wear our uniforms with pride and solidarity.")
                    Spacer()
                    Text("Ann's vision was to provide students growing up in low-income communities with a high-quality college preparatory education modeled upon the finest private schools. We honor the privilege of being a part of a network which affords us a college-bound counselor, college trips, partnerships, after school programs. Our mission at TYWLS Astoria is to encourage community, sisterhood, and respect. Our school uniforms are a part of that mission and all students are required to follow this policy.")
                }
            }
            Spacer()
        }
    }
}

struct TechPolicy: View {
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    Text("Hello!").font(.largeTitle)
                    Text("Year").font(.title)
                }
            }
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
