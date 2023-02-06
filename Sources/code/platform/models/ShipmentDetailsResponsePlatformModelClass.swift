

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentDetailsResponse
         Used By: Orders
     */

    class ShipmentDetailsResponse: Codable {
        public var order: OrderDict?

        public var success: Bool

        public var shipments: [PlatformShipment]?

        public var customMeta: [[String: Any]]?

        public enum CodingKeys: String, CodingKey {
            case order

            case success

            case shipments

            case customMeta = "custom_meta"
        }

        public init(customMeta: [[String: Any]]? = nil, order: OrderDict? = nil, shipments: [PlatformShipment]? = nil, success: Bool) {
            self.order = order

            self.success = success

            self.shipments = shipments

            self.customMeta = customMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                order = try container.decode(OrderDict.self, forKey: .order)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            do {
                shipments = try container.decode([PlatformShipment].self, forKey: .shipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customMeta = try container.decode([[String: Any]].self, forKey: .customMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(customMeta, forKey: .customMeta)
        }
    }
}
