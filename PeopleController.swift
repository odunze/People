//
//  PeopleController.swift
//  People
//
//  Created by Lotanna Igwe-Odunze on 12/22/18.
//  Copyright © 2018 Sugabelly LLC. All rights reserved.
//

import Foundation
import UIKit

class PeopleController {
    
    var guestbook: [People] = []
    
   
    
    func newUsers(randomer: People) {
        guestbook.append(randomer)
    }
    

}
