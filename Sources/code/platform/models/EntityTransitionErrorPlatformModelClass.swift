

import Foundation
public extension PlatformClient {
    /*
         Model: EntityTransitionError
         Used By: Order
     */

    class EntityTransitionError: Codable {
        public var error: String?

        public var shipmentId: String

        public enum CodingKeys: String, CodingKey {
            case error

            case shipmentId = "shipment_id"
        }

        public init(error: String? = nil, shipmentId: String) {
            self.error = error

            self.shipmentId = shipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                error = try container.decode(String.self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentId = try container.decode(String.self, forKey: .shipmentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
        }
    }
}
