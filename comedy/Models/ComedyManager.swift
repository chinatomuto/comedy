//
//  ComedyManager.swift
//  comedy
//
//  Created by nato on 15/04/2022.
//

import Foundation

struct ComedyManager {
    
    var value = Value()
        
        func fetchData() {
            if let url = URL(string: "https://api.icndb.com/jokes/random") {
                let session = URLSession(configuration: .default)
                let task = session.dataTask(with: url) { (data, response, error) in
                    if error == nil {
                        let decoder = JSONDecoder()
                        if let safeData = data {
                            do {
                                let comedy = try decoder.decode(Response.self, from: safeData)
                                DispatchQueue.main.async {
                                    self.value = comedy.value
                                    //print("hello")
                                }
                                
                            } catch {
                                print(error)
                            }
                        }
                    }
                }
                
                task.resume()
            }
        }
        
    }
        
        
    

    
    
    
