import SwiftUI
struct ContentView: View
{
    @State var currentBalance = 100
    var body: some View
    {
        ZStack
        {
            Color.black.opacity(0.9)
                .ignoresSafeArea()
            VStack (spacing: 20)
            {
                Spacer()
                HStack
                {
                    Text ("Status:")
                        .foregroundColor(.white)
                    if currentBalance >= 100
                    {
                        Text ("Rich Mode 💰")
                            .foregroundColor(.white)
                    }
                    else if currentBalance >= 30 && currentBalance <= 90
                    {
                        Text ("Safe 🟢")
                            .foregroundColor(.white)
                    }
                    else if currentBalance <= 30 && currentBalance > 0
                    {
                        Text ("Low Balance ⚠️")
                            .foregroundColor(.white)
                    }
                    else if currentBalance == 0
                    {
                        Text ("Empty")
                            .foregroundColor(.white)
                    }
                }
                Spacer()
                HStack
                {
                    Text ("Current Balance:")
                        .foregroundColor(.white)
                        .font(.title)
                        .bold()
                    Text ("$\(currentBalance)")
                        .foregroundColor(.white)
                        .font(.title)
                        .bold()
                }.padding(.top, 70)
                Spacer()
                if currentBalance < 1
                {
                    Text ("Alert: Low Balance")
                        .bold()
                        .font(.title)
                        .foregroundColor(.red)
                    Spacer()
                }
                Spacer()
                HStack (spacing: 30)
                {
                    Button (action: { currentBalance += 20})
                    {
                        Text ("Earn $20")
                            .bold()
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: 100)
                            .background(Color.green)
                            .cornerRadius(20)
                            .shadow(color: .green.opacity(0.7), radius: 15, x: 0, y: 0)
                    }.buttonStyle(.plain)
                    Button (action:
                    {
                        if currentBalance >= 30
                        {
                            currentBalance -= 30
                        }
                    })
                    {
                        Text ("Spend $30")
                            .bold()
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: 100)
                            .background(Color.red)
                            .cornerRadius(20)
                            .shadow(color: .red.opacity(0.7), radius: 15, x: 0, y: 0)
                    }.buttonStyle(.plain)
                    Button (action: { currentBalance = 100})
                    {
                        Text ("Reset Wallet")
                            .bold()
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: 100)
                            .background(Color.gray)
                            .cornerRadius(20)
                            .shadow(color: .gray.opacity(0.7), radius: 15, x: 0, y: 0)
                    }.buttonStyle(.plain)
                }
            }
        }
    }
}
#Preview
{
    ContentView()
}
