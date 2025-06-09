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
                    Text("Standard uniform includes white shirt (usually a polo shirt), and solid gray/navy bottoms (may be pants or skirt). Gym uniforms may replace tops with navy blue shirts. Bottoms cannot be jeans or leggings.  Shoes may not be open-toed and only sneakers can be worn on gym days. Sweaters may be worn over tops, but preferably should be navy blue and not cover the uniform. All tops (including alternate choices like tunics or abayas) must have the TYWLS logo imprinted or must have a patch or pin with the TYWLS logo. TYWLS shirts belonging to sports teams, the drama club, senior shirts, etc. are also allowed. School appropriate personal clothes are allowed during birthdays (verified by card sign-in).").padding()
                    
                    NavigationLink(destination: UniformFull()){
                        Text("Read Full Policy")
                    }
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                    
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

struct TechPolicy: View{
    var body: some View{
        NavigationView{
        ScrollView{
            Text("Tech Policy").font(.largeTitle)
            Text("Personal devices such as laptops or tablets may be used for schoolwork--cellphones are not allowed in school and must be turned in during entry every morning. School mandated devices such as laptops or tablets are to be used only for educational purposes and are subject to restrictions and revision by staff. If broken, students may have to pay to repair the device. Cases are recommended in order to protect the device. All school mandated devices must be returned every end of the year, and must be returned to school in good condition. It is not allowed for students to create unofficial accounts on social media using the school’s name. If students are discovered doing this, they will be subject to disciplinary measures depending on the severity of the offense.").padding()
            NavigationLink(destination: TechFull()){
                Text("Read Full Policy")
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
            }
        }
    }
}

struct BathroomPolicy: View{
    var body: some View{
        NavigationView{
        ScrollView{
            Text("Bathroom Policy").font(.title)
            Text("When using the restroom, students must first sign-out on the bathroom sheet in their classroom before exiting. They may not take any technology with them and may be asked to leave with a bathroom pass. Only one student may use the restroom at a time per classroom. Students may not use the restroom to smoke or engage in any similar activity. Bathrooms are locked during the first and last 5 minutes of each period--in emergency situations, the cafeteria bathroom may be used with the permission of a school aide. If there are too many students in the bathroom at the same time, students may have to line up outside.").padding()
            NavigationLink(destination: BathroomFull()){
                Text("Read Full Policy")
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
            }
        }
    }
}

struct UniformFull: View {
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    Text("Uniform Policy").font(.largeTitle)
                    Text("\(Text("Why Uniforms?").foregroundColor(.blue)) \(Text("Mission Driven. Sisterhood. Creates cohesion. Reduces the potential for bullying. Fairer dress codes. Removes peer pressure. Reduces distractions. Focus on character. Economically wise.").italic())").bold().padding()
                    Text("\(Text("The Young Women’s Leadership School of Astoria").bold()) is an all-girls college-bound school with a mission to create the next generation of extraordinary women. Ann Rubenstein Tisch as the Founder and President of Young Women's Leadership Network (YWLN), an organization that operates The Young Women's Leadership Schools (TYWLS), a network of all-girls public schools which affords us a full-time counselor through CollegeBound Initiative (CBI), a co-ed college access program has created the TYWLS schools with the expectation that we wear our uniforms with pride and solidarity.").padding()
                    Text("Ann's vision was to provide students growing up in low-income communities with a high-quality college preparatory education modeled upon the finest private schools. We honor the privilege of being a part of a network which affords us a college-bound counselor, college trips, partnerships, after school programs. Our mission at TYWLS Astoria is to encourage community, sisterhood, and respect. Our school uniforms are a part of that mission and all students are required to follow this policy.").padding()
                    Text("Students are required to wear the school uniform each day and P.E. uniform on P.E. days.").bold().italic().padding()
                    Text("Vendors!")
                    Text("a. Lands End - Preferred returning vendor. Free return shipping. Custom sizing upon request,including plus size options, 100% cotton.")
                    Text("b. Old Navy")
                    Text("c. Children’s Place")
                    Text("d. Gap Factory")
                    Text("e. Target")
                    Text("f. French Toast")
                    Text("g. Kohl’s (Sells Lands’ End Apparel)")
                    Text("Flexibilities!")
                    Text("A. Gray bottoms or Navy bottoms (Ex: joggers, chinos, cargos, and dress pants) (Close to school uniform color) from a vendor of your choice [no leggings, jeggings, or jeans]")
                    Text("B. Physical Education Uniform: solid gray/navy sweatpants or solid navy/gray knee length shorts from vendor of your choice (close to school uniform color)")
                    Text("C. Navy blue/gray zippered or crewneck sweatshirt (with or without hood) of your choice (when TYWLS sweatshirt is not available) + TYWLS Swag Sweatshirts (sports, drama, clubs, teams, junto, etc) also acceptable!")
                    Text("D. Iron-on or sew-on TYWLS logo patches (can be purchased for $2 in the main office) to any item above.")
                    Text("E. ***Birthday -FIT***- On the day of your birthday, you get to pick your outfit! School appropriate choices of course! The CAASS machine when you swipe in will confirm with a jingle! For summer babies, you will get a “Birthday Fit date” in June!")
                    Text("Daily Uniform (Wear this on: All non-gym days, field trips, YWLN events):")
                    Text("- White-collared polo shirt with the TYWLS logo, long or short-sleeved")
                    Text("- Solid Gray or Solid Navy pants (flat front or chino) or gray or navy skirt or skort/ logo-ed tunic or abaya (see below)")
                    Text("- Shoes: Students may wear closed-toed flat shoes or sneakers only (No open toed shoes/slides/flip flops/crocs for safety reasons)")
                    Text("- TYWLS Sweater, vest or sweatshirt with school logo")
                    Text("- High socks, tights or leggings worn under skirts/shorts should be blue, gray or white")
                    Text("- Seniors may wear Senior hoodies daily, except to field trips and formal network events")
                    Text("- TYWLS Athletes are encouraged to show school spirit by wearing their jerseys and team sweatshirts on game days")
                    Text("- Modest Uniforms are acceptable in school colors (Grey, navy*) with logos where possible")
                    Text("Physical Education Uniform (Only on PE days)")
                    Text("- TYWLS T-Shirt (navy or gray) or blank on the back, long or short-sleeved (from vendor options above)")
                    Text("- Solid Light gray sweatpants or solid navy/gray knee length athletic shorts")
                    Text("- TYWLS Sweatshirt with TYWLS logo")
                    Text("- Any color sneakers")
                    Text("Friday TYWLS Spirit Day Options")
                    Text("- Students and staff are encouraged to wear TYWLS gear on Fridays only.")
                    Text("What is TYWLS Gear? Tees, hoodies which represent varied clubs, organizations etc. Examples: PSAL sports jerseys, Tech Crew shirts or hoodies, College Bound Shirts, drama club shirts or hoodies.")
                    Text("What NOT to Wear:")
                    Text("Jeans, leggings, jeggings, ripped clothing, personal sweatshirts (grey or navy sweatshirts/crewnecks with logos only) are able to place under their chair in the classroom, and avoid bulky bags and coats.")
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



struct TechFull: View {
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
                    Text("[a payment plan, use of their own personal devices, and/or share written work on paper for onsite learning].")
                    Text("Students will \(Text("not be issued a “loaner” laptop if their laptop is unable to be used").bold()). We do not have the technology capacity to “EXCHANGE laptops” for a different version, or more upgraded model. Please do not send requests.")
                    Text("Students will be responsible for all classwork and homework regardless if it is posted digitally or printed. Students will have to make time to use shared spaces with desktop computers supervised by a staff member (advisory time with permission, lunch with permission, after school or before school with permission).")
                    Text("4. If a student is in need of tech support, please email tech@tywls-astoria.org")
                    
                }
                Button("Contact Us") {
                    openEmailClient()
                }
                
                
            }
            Spacer()
        }
    }
}
 
struct BathroomFull: View{
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
