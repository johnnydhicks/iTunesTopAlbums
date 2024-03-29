//
//  URLSession+NetworkDataLoader.swift
//  iTunesTopAlbums
//
//  Created by Johnny Hicks on 9/24/19.
//  Copyright © 2019 Swiftly, LLC. All rights reserved.
//

import Foundation

extension URLSession: NetworkDataLoader {
    func loadData(with request: URLRequest, completion: @escaping (Data?, Error?) -> Void) {
        let task = self.dataTask(with: request) { (data, _, error) in
            completion(data, error)
        }
        task.resume()
    }
}
