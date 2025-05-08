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
                VStack {
                  Image(systemName: "document.on.clipboard")
                        .padding()
                  Text("Forum")
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
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
                        Text("Tech")
                    }
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                }
                NavigationLink(destination: BathroomPolicy()) {
                            VStack {
                                Image(systemName: "toilet").padding()
                                Text("Bathroom")
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
                    Text("\(Text("All students must purchase a cover").bold()) for the laptop in order to avoid damage to it in the event that it falls or someone hits it. Having a computer cover is \(Text("MANDATORY").underline()). If the student is in financial need, please contact the guidance counselor, and be prepared to bring proof of low income.").padding()
                    Text("Below please find the recommended laptop covers:")
                    Text("- If you have the new mac laptop, below is the case we recommend you all to buy: http://tinyurl.com/yxgjrerq")
                    Text("- If you have the older mac laptop, below is the case we recommend you all to buy: http://tinyurl.com/y2z4lase")
                    Text("- If you have a MacBook Air, below is the case we recommend: http://tinyurl.com/y4q6hqc6")
                    Text("3. If a student damages the laptop (keys missing, broken or cracked screens, bent laptops, water or any liquid damage etc.) for which [they have] signed a contract, that student will be responsible for the cost of the replacement and/or for the repair of the  laptop. For example, the most common issues are broken screens, if a student cracks or breaks the screen, it will cost $506. If families are unable to pay for broken laptops, the school will work out:")
                }
                Button("Contact Us") {
                    openEmailClient()
                }
                NavigationLink(destination: PolicySummary()){
                    
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

struct BathroomPolicy: View{
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    Text("Bathroom Policy").font(.largeTitle)
                    //insert image of chart here
                    Text("Updates + Expectations:").bold().padding()
                    Text("\(Text("Trust Building Approach").italic())-We are starting the year with a trust building approach. Do the right thing when no one is looking– ”integrity”")
                    Text("Provisional based on patterns of student safety behaviors—If we have patterns of egregious incidents in the school bathrooms, we will return to monitored supervision of each bathroom by period with a sign in and out method and school aide supervision. Examples include but are not limited to: Damaging of property, drug use, filming/inappropriate media use, etc.)").padding()
                    Text("Bathroom Use").bold()
                    Text("No bathroom access first 5 mins and last 5 mins of each period. No access during transition times.").padding()
                    Text("For emergencies during either transition or first 5 mins, last 5 mins - please come to the main office, and a school aide will open the cafe bathroom.").padding()
                    Text("Afterschool programming: second floor only open for students and third floor for Girls Inc participants.").padding()
                    Text("Students \(Text("must use the sign-in log from classrooms").bold()). Students should not exit room without signing out (even if teacher is distracted).").padding()
                    Text("Students must carry \(Text("laminated ROOM PASS").bold()) while out of room.").padding()
                    Text("Only one student at a time is permitted out of class at once.").padding()
                    Text("No cell phones/laptops are permitted in bathrooms, photos or other indiscretions").padding()
                    Text("No group converging. Students may be asked to line up and wait if student numbers are in excess in the bathroom.").padding()
                    Text("No smoking/vaping/drug use is permitted on any school premises including bathrooms. Disciplinary action will be taken if students are found to be participating in illicit actions.").padding()
                    Text("*All of the above is subject to change based on need, patterns and determination by the School Safety Team.").italic().padding()
                    Button("Contact Us") {
                        openEmailClient()
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

struct PolicySummary: View{
    var body: some View{
        NavigationView{
        ScrollView{
                
            }
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
    Policies()
}
