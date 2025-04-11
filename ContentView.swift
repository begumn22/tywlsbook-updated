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
                    Text("\(Text("Why Uniforms?").foregroundColor(.blue)) \(Text("Mission Driven. Sisterhood. Creates cohesion. Reduces the potential for bullying. Fairer dress codes. Removes peer pressure. Reduces distractions. Focus on character. Economically wise.").italic())").bold().padding()
                    Text("\(Text("The Young Women’s Leadership School of Astoria").bold()) is an all-girls college-bound school with a mission to create the next generation of extraordinary women. Ann Rubenstein Tisch as the Founder and President of Young Women's Leadership Network (YWLN), an organization that operates The Young Women's Leadership Schools (TYWLS), a network of all-girls public schools which affords us a full-time counselor through CollegeBound Initiative (CBI), a co-ed college access program has created the TYWLS schools with the expectation that we wear our uniforms with pride and solidarity.").padding()
                    Text("Ann's vision was to provide students growing up in low-income communities with a high-quality college preparatory education modeled upon the finest private schools. We honor the privilege of being a part of a network which affords us a college-bound counselor, college trips, partnerships, after school programs. Our mission at TYWLS Astoria is to encourage community, sisterhood, and respect. Our school uniforms are a part of that mission and all students are required to follow this policy.").padding()
                    Text("Students are required to wear the school uniform each day and P.E. uniform on P.E. days.").bold().italic().padding()
                    Text("").padding()
                    Button("Contact Us") {
                        openEmailClient()
                    }
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
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
                    Text("Student Technology Policy").font(.largeTitle)
                    Text("2023-2024").font(.title)
                    Text("We are a very unique school in that all of our students are one to one with Apple laptops!").bold()
                    Text("With that comes a lot of responsibility.").padding()
                    Text("TYWLS Astoria’s expectations and school technology policy is as follows:").bold().italic()
                    Text("1. \(Text("Laptops (& any technology-assigned equipment) \(Text("MUST ONLY be used for school or academic use").underline())").bold()) both in school and at home. Students cannot use their school laptops for social media, YouTube, watching movies, Google Hangout etc. If a student is found to be misusing this privilege, consequences can vary depending on the nature of misuse (see below).").padding()
                    Text("2. Students are responsible to keep the laptops clean and to keep liquids away from it at all times, as they have signed the contract accepting that responsibility. Students are expected to take care of the laptop, and keep track of it at all times. Students are \(Text("NOT allowed to loan or give their laptops to other students or siblings.").italic().underline()) For example, if a student asks another student to use their laptop, this is absolutely NOT allowed.").padding()
                }
                Button("Contact Us") {
                    openEmailClient()
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                
            }
            Spacer()
        }
    }
}

func openEmailClient() {
        let email = "support@example.com"
        let subject = "Regarding Policy "
        let body = "Hi, this is my opinion on policy xyz..."
        let urlString = "mailto:\(email)?subject=\(subject)&body=\(body)"

        if let url = URL(string: urlString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? "") {
            UIApplication.shared.open(url)
        }
    }
#Preview {
    ContentView()
}
