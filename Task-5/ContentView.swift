import SwiftUI

struct ContentView: View
{
    @State var fuel = 0
    @State var isOxygen = false
    @State var temperature = 0
    @State var status = "ALL SYSTEMS STANDBY"
    var body: some View
    {
        ZStack
        {
            Color.black
                .ignoresSafeArea()
            VStack (spacing: 20)
            {
                VStack
                {
                    Text ("SYSTEM CHECK")
                        .foregroundColor(.gray)
                        .font(.caption)
                    Text ("\(status)")
                        .font(.title3)
                        .foregroundColor(.white)
                        .bold()
                }
                Spacer()
                HStack (spacing: 40)
                {
                    VStack (alignment: .leading, spacing: 5)
                    {
                        Text ("FUEL")
                            .font(.caption)
                            .foregroundColor(.gray)
                        Text ("\(fuel)%")
                            .font(.title3)
                            .bold()
                            .foregroundColor(.white)
                    }
                    Spacer()
                    VStack (alignment: .center, spacing: 5)
                    {
                        Text ("OXYGEN")
                            .font(.caption)
                            .foregroundColor(.gray)
                        isOxygen ? Text ("ON 🟢").font(.title3).bold().foregroundColor(.white) : Text ("OFF 🔴").font(.title3).bold().foregroundColor(.white)
                    }
                    Spacer()
                    VStack (alignment: .trailing, spacing: 5)
                    {
                        Text ("TEMP")
                            .font(.caption)
                            .foregroundColor(.gray)
                        Text ("\(temperature)°")
                            .font(.title3)
                            .bold()
                            .foregroundColor(.white)
                    }
                }.padding(.horizontal, 20)
                Spacer()
                HStack (spacing: 50)
                {
                    Button (action: {
                        fuel = 100
                        status = "PRE-FLIGHT IN PROGRESS"
                    })
                    {
                        Text ("Refuel")
                            .padding()
                            .foregroundColor(.white)
                            .frame(width: 140)
                            .background(Color.blue)
                            .cornerRadius(15)
                            .shadow(color: .blue.opacity(0.7), radius: 10, x: 0, y: 0)
                    }.buttonStyle(.plain)
                    Button (action: {
                        isOxygen.toggle()
                        status = "PRE-FLIGHT IN PROGRESS"
                    })
                    {
                        Text ("Toggle 02")
                            .padding()
                            .foregroundColor(.white)
                            .frame(width: 140)
                            .background(Color.green)
                            .cornerRadius(15)
                            .shadow(color: .green.opacity(0.7), radius: 10, x: 0, y: 0)
                    }.buttonStyle(.plain)
                }
                HStack (spacing: 50)
                {
                    Button (action: {
                        temperature = 300
                        status = "PRE-FLIGHT IN PROGRESS"
                    })
                    {
                        Text ("Heat Engines")
                            .padding()
                            .foregroundColor(.white)
                            .frame(width: 140)
                            .background(Color.orange)
                            .cornerRadius(15)
                            .shadow(color: .orange.opacity(0.7), radius: 10, x: 0, y: 0)
                    }.buttonStyle(.plain)
                    Button (action: {
                        if fuel == 100 && isOxygen == true && temperature == 300
                        {
                            status = "MISSION LAUNCHED 🚀"
                        }
                        else
                        {
                            status = "MISSION ABORTED ⛔️"
                        }
                    })
                    {
                        Text ("Launch")
                            .padding()
                            .foregroundColor(.white)
                            .frame(width: 140)
                            .background(Color.red)
                            .cornerRadius(15)
                            .shadow(color: .red.opacity(0.7), radius: 10, x: 0, y: 0)
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
