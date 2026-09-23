import SwiftUI

struct ContentView: View {

    let driverNames = [
        "Max Verstappen", "Lando Norris", "Charles Leclerc",
        "Oscar Piastri", "Carlos Sainz", "Lewis Hamilton",
        "Sergio Perez", "George Russell", "Fernando Alonso",
        "Lance Stroll", "Nico Hulkenberg", "Yuki Tsunoda",
        "Daniel Ricciardo", "Pierre Gasly", "Oliver Bearman",
        "Kevin Magnussen", "Alexander Albon", "Esteban Ocon",
        "Zhou Guanyu", "Logan Sargeant", "Franco Colapinto",
        "Valtteri Bottas"
    ]

    let driverPics = [
        "maxver", "lannor", "chalec", "oscpia", "carsai",
        "lewham", "serper", "georus", "feralo", "lanstr",
        "nichul", "yuktsu", "danric", "piegas", "olibea",
        "kevmag", "alealb", "estoco", "zhogua", "logsar",
        "fracol", "valbot"
    ]

    let teamInfo = [
        "Red Bull Racing", "McLaren", "Ferrari", "McLaren",
        "Ferrari", "Mercedes", "Red Bull Racing", "Mercedes",
        "Aston Martin", "Aston Martin", "Haas", "RB", "RB",
        "Alpine", "Ferrari", "Haas", "Alpine", "Alpine",
        "Kick Sauber", "Williams", "Williams", "Kick Sauber"
    ]

    let countryInfo = [
        "Netherlands", "United Kingdom", "Monaco", "Australia",
        "Spain", "United Kingdom", "Mexico", "United Kingdom",
        "Spain", "Canada", "Germany", "Japan", "Australia",
        "France", "United Kingdom", "Denmark", "Thailand",
        "France", "China", "United States", "Argentina",
        "Finland"
    ]

    let countryFlags = [
        "netherlands", "united-kingdom", "monaco", "australia",
        "spain", "united-kingdom", "mexico", "united-kingdom",
        "spain", "canada", "germany", "japan", "australia",
        "france", "united-kingdom", "denmark", "thailand",
        "france", "china", "united-states", "argentina",
        "finland"
    ]

    let numberInfo = [
        "1", "4", "16", "81", "55", "44", "11", "63",
        "14", "18", "27", "22", "3", "10", "38", "20",
        "23", "31", "24", "2", "43", "77"
    ]

    var body: some View {

        VStack {

            Text("F1 Drivers 2024")
                .font(.largeTitle)
                .fontWeight(.bold)

            NavigationView {

                List(0 ..< self.driverNames.count) { item in

                    NavigationLink(
                        destination:
                            VStack (alignment : .center){
                                
                                Text(numberInfo[item])
                                    .font(.title)
                                    .fontWeight(.bold)
                                HStack{
                                    Text(driverNames[item])
                                        .font(.title)
                                        .fontWeight(.bold)
                                    Image(countryFlags[item])
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 60, height: 55)


                                }
                                Text(teamInfo[item])
                                    .font(.headline)
                                
                                Image(driverPics[item])
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 200, height: 200)
                                   
                               
                            }

                    ) {

                        HStack {

                            Text(driverNames[item])
                                .font(.headline)

                            Spacer()

                            Image(driverPics[item])
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60.0, height: 60.0)
                                .clipShape(Circle())
                        }
                        Spacer()
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
