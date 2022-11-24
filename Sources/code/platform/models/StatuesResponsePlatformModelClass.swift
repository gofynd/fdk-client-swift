

import Foundation
public extension PlatformClient {
    /*
         Model: StatuesResponse
         Used By: OrderManage
     */

    class StatuesResponse: Codable {
        public var shipments: ShipmentsResponse?

        public enum CodingKeys: String, CodingKey {
            case shipments
        }

        public init(shipments: ShipmentsResponse? = nil) {
            self.shipments = shipments
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                shipments = try container.decode(ShipmentsResponse.self, forKey: .shipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipments, forKey: .shipments)
        }
    }
}
