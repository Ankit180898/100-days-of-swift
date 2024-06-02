import SwiftUI

//view composition i.e created another smaller view
struct DisplayText : View{
    var text:String
    var font:Font
    var foregroundColor:Color?
    var body: some View{
        Text(text)
            .font(font)
            .foregroundColor(foregroundColor ?? .primary)
        
    }
}

struct HomeView: View {
    @State private var scoreTitle = ""
    @State private var showingScore = false
    @State private var score = 0
    @State private var countries = ["Estonia", "France", "Germany", "Ireland"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)

    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                RadialGradient(stops: [
                    .init(color: .blue, location: 0.3),
                    .init(color: .black, location: 0.3)
                ], center: .top, startRadius: 200, endRadius: 700)
                .ignoresSafeArea()

                VStack {
                    Spacer()
                    DisplayText(text: "Guess the Flag", font: .largeTitle.bold(), foregroundColor: .white)
        

                    VStack(spacing: 15) {
                        VStack {
                            DisplayText(text: "Tap the flag of", font: .subheadline.weight(.heavy), foregroundColor: .secondary)
                            DisplayText(text: countries[correctAnswer], font: .largeTitle.weight(.semibold))
            
                        }

                        ForEach(0..<3) { number in
                            Button {
                                showTapped(number)
                            } label: {
                                Image(countries[number])
                                    .frame(width: geo.size.width * 0.5, height: geo.size.height * 0.15)
                                    .clipShape(Capsule())
                                    .shadow(radius: 5)
                            }
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 20)
                    .background(.ultraThinMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 20))

                    Spacer()
                    Spacer()
                    DisplayText(text: "Score: \(score)", font: .title.bold(),foregroundColor: .white)
        

                    Spacer()
                }
                .padding()
            }
            .alert(scoreTitle, isPresented: $showingScore) {
                Button("Continue", action: askQues)
            } message: {
                Text("Your score is \(score)")
            }
        }
    }

    func showTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
        } else {
            scoreTitle = "Incorrect"
        }
        showingScore = true
    }

    func askQues() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}

#Preview {
    HomeView()
}
