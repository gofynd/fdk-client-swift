

import Foundation
public extension ApplicationClient {
    /*
         Model: ShipmentTrack1
         Used By: Order
     */
    class ShipmentTrack1: Codable {
        public var results: [Track]?

        public enum CodingKeys: String, CodingKey {
            case results
        }

        public init(results: [Track]? = nil) {
            self.results = results
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                results = try container.decode([Track].self, forKey: .results)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(results, forKey: .results)
        }
    }
}