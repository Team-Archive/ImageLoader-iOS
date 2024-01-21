
import SwiftUI
import Combine

@main
struct SampleApp: App {
  var body: some Scene {
    WindowGroup {
      ContentView()
    }
  }
}

struct ContentView: View {
  
  var body: some View {
    ArchiveImage(URL(string: "https://hips.hearstapps.com/hmg-prod/images/little-cute-maltipoo-puppy-royalty-free-image-1652926025.jpg?crop=0.444xw:1.00xh;0.129xw,0&resize=980:*")!)
  }
  
}
