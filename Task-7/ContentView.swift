import SwiftUI

struct car: Identifiable
{
    let id = UUID()
    let name: String
    let price: Int
    let description: String
}
struct ContentView: View
{
    let cars = [
        car (name: "Defender 130 V8", price: 130000, description: "The ultimate luxury overland beast. Packed with a supercharged V8 engine, 8-seats of pure comfort, and unstoppable off-road capability. Ready to conquer any terrain in style."),
        car (name: "Porsche Panamera", price: 247550, description: "The perfect fusion of racetrack DNA and executive luxury. 700+ horsepower of blistering hybrid performance, cutting-edge tech, and a cockpit designed for pure speed enthusiasts."),
        car (name: "Rolls Royce Phantom 8", price: 510000, description: "The absolute pinnacle of automotive luxury. Experience unmatched road presence, a world-class 'Magic Carpet Ride' suspension, and a bespoke cabin crafted for royalty."),
        car (name: "Honda Civic X", price: 19000, description: "The modern legend of the streets. Bold fastback design, aggressive turbo performance, and incredible reliability. The perfect daily driver with a sporty heart.")
    ]
    var body: some View
    {
        NavigationStack
        {
            List (cars)
            {car in
                NavigationLink(destination: CarDetailView(selectedCar: car))
                {
                    HStack
                    {
                        Text (car.name)
                        Spacer()
                        Text ("\(car.price)")
                            .foregroundColor(.green)
                            .bold()
                    }
                }.navigationTitle("Munhib's Showroom")
            }
        }
    }
}

struct CarDetailView: View
{
    let selectedCar: car
    
    var body: some View
    {
        ZStack
        {
            GeometryReader { geometry in
                Image(selectedCar.name)
                    .resizable()
                    .scaledToFill()
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .clipped()
            }
            .ignoresSafeArea()
            
            Color.black.opacity(0.35)
                .ignoresSafeArea()
            
            VStack(spacing: 0)
            {
                Text("Car Specifications")
                    .font(.subheadline)
                    .foregroundColor(.white.opacity(0.8))
                    .bold()
                    .padding()
                
                Divider()
                    .background(Color.white.opacity(0.3))
                    .padding(.vertical, 10)
                    .padding(.horizontal, 50)
                
                VStack(spacing: 10)
                {
                    Text(selectedCar.name)
                        .font(.system(size: 34, weight: .bold))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                    Text("$\(selectedCar.price)")
                        .foregroundColor(.white.opacity(0.95))
                        .foregroundColor(.mint)
                        .bold()
                    
                    Text(selectedCar.description)
                        .font(.body)
                        .foregroundColor(.white.opacity(0.9))
                        .multilineTextAlignment(.center)
                        .lineSpacing(5)
                        .padding()
                        .background(Color.black.opacity(0.35))
                        .cornerRadius(15)
                }
                .padding(.horizontal, 20)
                
                Spacer()
            }
        }
    }
}
#Preview
{
    ContentView()
}
