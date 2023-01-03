

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentTrackingResponse
         Used By: Order
     */

    class ShipmentTrackingResponse: Codable {
        public var results: ShipmentTrackingResultsResponse?

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case results

            case meta
        }

        public init(meta: [String: Any]? = nil, results: ShipmentTrackingResultsResponse? = nil) {
            self.results = results

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                results = try container.decode(ShipmentTrackingResultsResponse.self, forKey: .results)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(results, forKey: .results)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
