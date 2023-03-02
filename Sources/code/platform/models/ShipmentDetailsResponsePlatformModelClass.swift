

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentDetailsResponse
         Used By: Order
     */

    class ShipmentDetailsResponse: Codable {
        public var success: Bool

        public var customMeta: [[String: Any]]?

        public var order: OrderDict?

        public var shipments: [PlatformShipment]?

        public enum CodingKeys: String, CodingKey {
            case success

            case customMeta = "custom_meta"

            case order

            case shipments
        }

        public init(customMeta: [[String: Any]]? = nil, order: OrderDict? = nil, shipments: [PlatformShipment]? = nil, success: Bool) {
            self.success = success

            self.customMeta = customMeta

            self.order = order

            self.shipments = shipments
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                customMeta = try container.decode([[String: Any]].self, forKey: .customMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                order = try container.decode(OrderDict.self, forKey: .order)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipments = try container.decode([PlatformShipment].self, forKey: .shipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(customMeta, forKey: .customMeta)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(shipments, forKey: .shipments)
        }
    }
}
