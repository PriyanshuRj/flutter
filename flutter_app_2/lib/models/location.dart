import 'location_fact.dart';
class Locations {
  final int id;
  String name;
  String imagePath;
  final List<LocationFact> facts;

  Locations(this.id,this.name,this.imagePath,this.facts);
  static Locations fetchByID(int locationID) {
    List<Locations> locations = Locations.fetchAll();
    for (var i = 0;i < locations.length; i++){
      if (locations[i].id == locationID) {
        return locations[i];
      }
      return null;
    }

  }
  static List<Locations> fetchAll() {
    return[
       Locations(1,'New york','assets/1.jpg',[
        LocationFact('Summury',
        'New York City comprises 5 boroughs sitting where the Hudson River meets the Atlantic Ocean. At its core is Manhattan, a densely populated borough that’s among the world’s major commercial, financial and cultural centers. Its iconic sites include skyscrapers such as the Empire State Building and sprawling Central Park.'),
        LocationFact('How to Get There',
        'New York is served by three airports, namely John F. Kennedy International Airport, LaGuardia Airport and Newark Liberty International Airport. Out of these, John F. Kennedy International Airport is the busiest airport. The airport has good connectivity to cities all across the world, such as London, Paris Delhi, Beijing, Sydney, Singapore, Dubai, etc. and also to major cities in United States, such as Chicago, Los Angeles, Washington D.C., Las Vegas, Orlando, San Francisco, etc. Major airlines serving this airport include Aeroflot, Air Berlin, Air China, Air India, Alaska Airlines, American Airlines, Delta Air Lines and many more.')
      ]),
     
      Locations(2,'Los Angeles','assets/2.jpg',[
        LocationFact('Summury',
        'Los Angeles is a sprawling Southern California city and the center of the nation’s film and television industry. Near its iconic Hollywood sign, studios such as Paramount Pictures, Universal and Warner Brothers offer behind-the-scenes tours. On Hollywood Boulevard, TCL Chinese Theatre displays celebrities’ hand- and footprints, the Walk of Fame honors thousands of luminaries and vendors sell maps to stars’ homes.'),
        LocationFact('How to Get There',
        "Los Angeles International Airport (LAX) is by far the most commonly used of the LA-area airports, but it's not the only one. In fact, there are five commercial airports in the Los Angeles area. Consider one of these other LA-area airports, especially if you're flying into LA from within California or adjoining states or are going to an area nearer another airport. The map above shows where they are, along with a few of the most popular tourist spots.")
      ]),
      Locations(3,'Washington, D.C.','assets/3.jfif',[
        LocationFact('Summury',
        "Washington, DC, the U.S. capital, is a compact city on the Potomac River, bordering the states of Maryland and Virginia. It’s defined by imposing neoclassical monuments and buildings – including the iconic ones that house the federal government’s 3 branches: the Capitol, White House and Supreme Court. It's also home to iconic museums and performing-arts venues such as the Kennedy Center."),
        LocationFact('How to Get There',
        'There are three primary airports used to get into the D.C. Metro area – Ronald Reagan (DCA), Dulles (IAD), and Baltimore-Washington (BWI). DCA is probably the easiest for out-of-towners, as you can use Metro to get into the city from the airport at a minimal price. BWI is larger with more available fares, but is a decent distance from D.C. proper. They offer a shuttle to the nearest Amtrak station, which you can then ride for a short jaunt down to D.C. Dulles is a substantial drive from the city and is best for travelers staying farther out in Virginia.')
      ]),
      Locations(4,'Chicago','assets/4.jfif',[
        LocationFact('Summury',
        "Chicago, on Lake Michigan in Illinois, is among the largest cities in the U.S. Famed for its bold architecture, it has a skyline punctuated by skyscrapers such as the iconic John Hancock Center, 1,451-ft. Willis Tower (formerly the Sears Tower) and the neo-Gothic Tribune Tower. The city is also renowned for its museums, including the Art Institute of Chicago with its noted Impressionist and Post-Impressionist works."),
        LocationFact('How to Get There',
        "Blue Line trains run 24 hours a day, seven days a week; and all trains from the O’Hare station go through downtown on their way to Forest Park (or, during some hours, UIC-Halsted). The normal travel time on the Blue Line from O'Hare to downtown, is 40-45 minutes. A free transfer is available to connecting CTA train lines at designated stations. See the Blue Line Route Guide or Maps for connection information. To make a paid transfer, such as to a bus route, you’ll need a Ventra Card or Ventra Ticket with fare or a pass, or to pay with a personal contactless bankcard (onto which you can load fare or passes at machines"),


      ])
    ];
  }


}