import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            content
        }
    }

    @ViewBuilder private var content: some View {
        VStack(alignment: .leading) {
            personInfo
            renderListItem(type: .one)
            renderListItem(type: .two)
        }
        .padding()
    }

    @ViewBuilder private var personInfo: some View {
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
    }

    @ViewBuilder private func renderListItem(type: ListItemType) -> some View {
        HStack {
            Image(systemName: type.imageName)
                .foregroundColor(type.foregroundColor)

            Text(type.description)
                .foregroundColor(type.foregroundColor)
        }
        .padding(.vertical, 10)

        Divider()
    }
}

extension ContentView {
    enum ListItemType {
        case one
        case two

        var imageName: String {
            switch self {
            case .one:
                return "person.circle"
            case .two:
                return "person"
            }
        }

        var description: String {
            switch self {
            case .one:
                return "This is item number one"
            case .two:
                return "This is item number two"
            }
        }

        var foregroundColor: Color {
            switch self {
            case .one:
                return .blue
            case .two:
                return .red
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
