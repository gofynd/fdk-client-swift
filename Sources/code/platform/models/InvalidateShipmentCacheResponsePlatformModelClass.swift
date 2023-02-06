

import Foundation
public extension PlatformClient {
    /*
         Model: InvalidateShipmentCacheResponse
         Used By: OrderManage
     */

    class InvalidateShipmentCacheResponse: Codable {
        public var response: [InvalidateShipmentCacheNestedResponse]?

        public enum CodingKeys: String, CodingKey {
            case response
        }

        public init(response: [InvalidateShipmentCacheNestedResponse]? = nil) {
            self.response = response
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                response = try container.decode([InvalidateShipmentCacheNestedResponse].self, forKey: .response)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(response, forKey: .response)
        }
    }
}
