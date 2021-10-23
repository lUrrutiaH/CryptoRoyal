//
//  APICaller.swift
//  CryptoRoyal
//
//  Created by PMStudent on 10/22/21.
//

import Foundation

final class APICaller {
    static let shared = APICaller()
    
    private struct Constants {
    static let apiKey = "A49FBD65-ED28-4415-B173-B7BAC8D49906"
    static let assetsEndpoint = "https://rest-sandbox.coinapi.io/v1/assets/"
}

    private init() {}

    //MARK: - Public

    public func getAllCryptoData(
        completion: @escaping (Result<[Crypto], Error>) -> Void
    ) {
    guard let url = URL(string: Constants.assetsEndpoint + "?apikey=" + Constants.apiKey) else {
        return
      }
        
        let task = URLSession.shared.dataTask(with: url) {data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                //Decode response
                let cryptos = try JSONDecoder().decode([Crypto].self, from: data)
                
                completion(.success(cryptos))
            }
            catch {
                completion(.failure(error))
            }
        }
        
        task.resume()
    }
}
