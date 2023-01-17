

import Foundation
public extension PlatformClient {
    /*
         Model: PlatformShipmentTrack
         Used By: Order
     */

    class PlatformShipmentTrack: Codable {
        public var results: Results

        public enum CodingKeys: String, CodingKey {
            case results
        }

        public init(results: Results) {
            self.results = results
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            results = try container.decode(Results.self, forKey: .results)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(results, forKey: .results)
        }
    }
}
