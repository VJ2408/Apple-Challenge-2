

import SwiftUI
struct HomeView: View {
    let daysInMonth = 31
    let streakDays: Set<Int> = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    @State private var progress = 0.3
    var body: some View {
        VStack{
            ZStack {
                Circle()
                    .stroke(
                        Color.pink.opacity(0.5),
                        lineWidth: 20
                    )
                Circle()
                    .trim(from: 0, to: progress)
                    .stroke(
                        Color.pink,
                        style: StrokeStyle(
                            lineWidth: 20,
                            lineCap: .round
                        )
                    )
                    .rotationEffect(.degrees(-90))
                    .animation(.easeOut, value: progress)
                VStack{
                    Text("XP")
                        .bold()
                        .font(.system(size: 30))
                    Text(" 10000")
                        .font(.system(size: 20))
                    Text("/30000")
                        .font(.system(size: 20))
                        
                }
            }
            .padding(30 )
            VStack {
                HStack {
                    ForEach(["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"], id: \.self) { day in
                        Text(day)
                            .frame(maxWidth: .infinity)
                    }
                }
                let columns = Array(repeating: GridItem(.flexible(), spacing: 10), count: 7)
                LazyVGrid(columns: columns, spacing: 10) {
                    ForEach(1...daysInMonth, id: \.self) { day in
                        Text("\(day)")
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .background(streakDays.contains(day) ? Color.blue : Color.clear)
                            .foregroundColor(streakDays.contains(day) ? Color.white : Color.black)
                            .clipShape(RoundedRectangle(cornerRadius: 30))
                            .padding(8)
                    }
                }
                .padding()
            }
            .padding(22)
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}


#Preview {
    HomeView()
}
