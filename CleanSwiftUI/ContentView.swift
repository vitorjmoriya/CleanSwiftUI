import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HStack {
                    Image(systemName: "person")
                        .foregroundColor(.black)

                    VStack(alignment: .leading) {
                        Text("Name Surname")
                        Text("Person A")
                            .foregroundColor(.gray)
                            .font(.footnote)
                    }
                    .padding(.leading, 10)
                }

                Divider()

                HStack {
                    Image(systemName: "person.circle")
                        .foregroundColor(.blue)

                    Text("This is item number one")
                        .foregroundColor(.blue)
                }
                .padding(.vertical, 10)

                Divider()

                HStack {
                    Image(systemName: "person")
                        .foregroundColor(.red)

                    Text("This is item number two")
                        .foregroundColor(.red)
                }
                .padding(.top, 10)

                Divider()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
