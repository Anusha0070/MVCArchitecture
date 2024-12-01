//
//  Network.swift
//  MVCArchitecture
//
//  Created by Anusha Raju on 11/27/24.
//
//Singleton Network Layer

import Foundation

protocol NetworkProtocol {
    func getData(from url: String)
}


class Network: @unchecked Sendable, NetworkProtocol {
    
    static let sharedInstance = Network()
    private init() { }
    
    func getData(from url: String){
        
        guard let serverUrl =  URL(string: url) else {
            print("getData: Invalid URL")
            return []
        }
        
        // fetch data from server by passing URL object
        URLSession.shared.dataTask(with: URLRequest(url: serverUrl), completionHandler: { data, response, error in
            
            guard let data, error == nil else {
                return print("getData: Error: \(error!.localizedDescription)")
            }
            do {
                var receivedData = try JSONDecoder().decode([Country].self, from: data)
                print("Data received")
                print(receivedData)
                
            } catch {
                print("Unable to decode json data to the Food structure \(error)")
            }
        })
        .resume()
        
    }
}
