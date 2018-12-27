//
//  Importer.swift
//  People
//
//  Created by Lotanna Igwe-Odunze on 12/23/18.
//  Copyright © 2018 Sugabelly LLC. All rights reserved.
//

import Foundation
import UIKit

class Importer {

    let APIurl = URL(string: "https://randomuser.me/api/?format=json&inc=name,email,cell,picture&results=1/")!
    
    var peopleController: PeopleController?
    
    
    func getUsers() {
        
        URLSession.shared.dataTask(with: APIurl) {data,_,error in
            
            //Step 1 - Unwrap the error
            
            if let merror = error { NSLog(merror.localizedDescription); return }
            
            //Step 2 - Unwrap the data
            
            guard let grabbedData = data else { NSLog("Error: \(error?.localizedDescription))"); return }
            
            //Step 3 - Decode the data
            do {
                let decoder = JSONDecoder()
                let myTry = try decoder.decode(People.self, from: grabbedData)
                
                self.peopleController?.guestbook.append(myTry)
                
            } catch { //In case decoding doesn't work
                NSLog("Error: \(error.localizedDescription)")
                return
                
            } //End of Do-Catch Statement
            
            } .resume() //End of Data Task
        
        }//End of Function

} //End of Class
