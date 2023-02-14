

import Foundation
public extension ApplicationClient {
    /*
         Model: ShipmentTrack
         Used By: Order
     */
    class ShipmentTrack: Codable {
        public var results: [Track]

        public enum CodingKeys: String, CodingKey {
            case results
        }

        public init(results: [Track]) {
            self.results = results
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            results = try container.decode([Track].self, forKey: .results)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(results, forKey: .results)
        }
    }
}
