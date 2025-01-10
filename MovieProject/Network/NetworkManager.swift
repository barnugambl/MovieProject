//
//  NetworkManager.swift
//  MovieProject
//
//  Created by Терёхин Иван on 09.01.2025.
//

import Foundation

class NetworkManager {
    
    private let session: URLSession
    
    private lazy var jsonDecoder: JSONDecoder = {
        JSONDecoder()
    }()
    
    init(with configuration: URLSessionConfiguration) {
        session = URLSession(configuration: configuration)
    }
    
    func obtainMovies() async throws -> [MovieDto] {
        
        guard let url = URL(string: "https://kudago.com/public-api/v1.2/movies/") else { return [] }
        
        let urlRequest = URLRequest(url: url)
        
        let responceData = try await session.data(for: urlRequest)
        
        return try jsonDecoder.decode([MovieDto].self, from: responceData.0)
    }
    
    
    
    
}
