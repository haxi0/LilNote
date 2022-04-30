
import SwiftUI

struct ContentView: View {
    @AppStorage("notes") private var notes = ""
    var body: some View {
        NavigationView {
                    TextEditor(text: $notes)
                        .navigationTitle("Your LilNote")
                        .padding()
            }
        
        Button(action: {
            UIPasteboard.general.string = notes
        }) {
            Text("Copy your note")
            
        }
        Spacer()
    }
}
