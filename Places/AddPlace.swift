//
//  AddPlace.swift
//  Places
//
//  Created by Nusrat Ganiyev on 11/07/22.
//  Copyright © 2022 Nusrat Ganiyev. All rights reserved.
//

import Foundation

struct Place {
    var name: String
    var location: String
    var type: String
    var image: String
    
    
    
    
       static let restaurantNames = [
       "Burger Heroes","Kitchen","Bonsai","Dasturxon",
       "Indokitay","X.O","Balkan Grill","Sherlock Holmes",
       "Speak Easy","Morris Pub","Vkusnie Istorii",
       "Classic","Love&Life","Wok","Bochka"
       ]
    
    static func getPlaces() -> [Place] {
        var places = [Place]()
            
            for place in restaurantNames {
                places.append(Place(name: place, location: "Tashkent", type: "Fast food", image: place))
            }
            return places
    }
    
}

