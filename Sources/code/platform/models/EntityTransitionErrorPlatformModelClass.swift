

import Foundation
public extension PlatformClient {
    /*
         Model: EntityTransitionError
         Used By: Order
     */

    class EntityTransitionError: Codable {
        public var shipmentId: String

        public var error: String?

        public enum CodingKeys: String, CodingKey {
            case shipmentId = "shipment_id"

            case error
        }

        public init(error: String? = nil, shipmentId: String) {
            self.shipmentId = shipmentId

            self.error = error
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                error = try container.decode(String.self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(error, forKey: .error)
        }
    }
}
