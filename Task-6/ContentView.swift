import SwiftUI

struct product: Identifiable
{
    let id = UUID()
    let name: String
    let price: Int
}

struct ContentView: View
{
    let products = [
        product (name: "iPhone 17 Pro", price: 999),
        product (name: "MacBook Pro M5", price: 1999),
        product (name: "AirPods Pro", price: 249),
        product (name: "Apple Watch S11", price: 399)
    ]
    var body: some View
    {
        NavigationStack
        {
            List (products)
            { product in
                NavigationLink(destination: ProductDetailView(selectedProduct: product))
                {
                    HStack
                    {
                        Text ("\(product.name)")
                        Spacer()
                        Text ("$\(product.price)")
                            .foregroundColor(.green)
                            .bold()
                    }
                }
            }
        }.navigationTitle("My Shop")
    }
}

struct ProductDetailView: View
{
    let selectedProduct: product
    var body: some View
    {
        VStack (spacing: 20)
        {
            Text (selectedProduct.name)
                .font(.largeTitle)
                .bold()
            Text ("$\(selectedProduct.price)")
                .foregroundColor(.green)
                .bold()
            Text ("This is a premium real world device with top tier specifications and official warranty support.")
                .font(.body)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
        }
        .padding()
        .navigationTitle("Product Specification")
    }
}
#Preview
{
    ContentView()
}
