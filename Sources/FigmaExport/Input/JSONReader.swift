//
//  JSONReader.swift
//
//
//  Created by Evgen Verkush on 26.06.2024.
//

import Foundation

final class JSONReader {

    private let inputPath: String

    init(inputPath: String) {
        self.inputPath = inputPath
    }

    func read() throws -> Any {
        let data = try Data(contentsOf: URL(fileURLWithPath: inputPath))
        return try JSONSerialization.jsonObject(with: data, options: [])
    }
}
