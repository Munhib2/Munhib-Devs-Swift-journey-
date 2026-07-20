import SwiftUI

struct ContentView: View
{
    @State var count = 0
    var body: some View
    {
        ZStack
        {
            Color.gray
                .ignoresSafeArea()
            VStack (spacing: 30)
            {
                if count == 0
                {
                    Text ("😐")
                        .font(.system(size: 100))
                        .padding(.top, 100)
                }
                else if count == 1
                {
                    Text ("😀")
                        .font(.system(size: 100))
                        .padding(.top, 100)
                }
                else if count == 2
                {
                    Text ("😂")
                        .font(.system(size: 100))
                        .padding(.top, 100)
                }
                else if count == 3
                {
                    Text ("🤣")
                        .font(.system(size: 100))
                        .padding(.top, 100)
                }
                else if count == 4
                {
                    Text ("😭")
                        .font(.system(size: 100))
                        .padding(.top, 100)
                }
                else if count == 5
                {
                    Text ("😩")
                        .font(.system(size: 100))
                        .padding(.top, 100)
                }
                else if count == 6
                {
                    Text ("😣")
                        .font(.system(size: 100))
                        .padding(.top, 100)
                }
                else if count == 7
                {
                    Text ("😤")
                        .font(.system(size: 100))
                        .padding(.top, 100)
                }
                else if count == 8
                {
                    Text ("😡")
                        .font(.system(size: 100))
                        .padding(.top, 100)
                }
                else if count == 9
                {
                    Text ("🤬")
                        .font(.system(size: 100))
                        .padding(.top, 100)
                }
                else if count == 10
                {
                    Text ("😵‍💫")
                        .font(.system(size: 100))
                        .padding(.top, 100)
                }
                Spacer()
                HStack
                {
                    Text ("Taps: ")
                        .bold()
                        .font(.title)
                        .foregroundColor(.white)
                    Text ("\(count)")
                        .font(.title)
                        .bold()
                        .foregroundColor(.white.opacity(0.8))
                }
                Spacer()
                HStack
                {
                    Button (action: {count += 1})
                    {
                        Text ("Tap Me")
                            .padding()
                            .frame(maxWidth: 100)
                            .background(Color.green)
                            .cornerRadius(20)
                            .shadow(color: .green.opacity(0.7), radius: 15, x: 0, y: 0)
                    }.buttonStyle(.plain)
                    .padding(.horizontal, 40)
                    Button (action: {count = 0})
                    {
                        Text ("Reset")
                            .padding()
                            .frame(maxWidth: 100)
                            .background(Color.red)
                            .cornerRadius(20)
                            .shadow(color: .red.opacity(0.7), radius: 15, x: 0, y: 0)
                    }.buttonStyle(.plain)
                    .padding(.horizontal, 40)
                }.padding(.top, 100)
            }
        }
    }
}
#Preview
{
    ContentView()
}
