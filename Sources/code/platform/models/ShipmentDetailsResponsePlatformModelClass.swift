

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentDetailsResponse
         Used By: Orders
     */

    class ShipmentDetailsResponse: Codable {
        public var shipments: [Shipment]?

        public var order: OrderDict?

        public var isValidated: Bool?

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case shipments

            case order

            case isValidated = "is_validated"

            case success
        }

        public init(isValidated: Bool? = nil, order: OrderDict? = nil, shipments: [Shipment]? = nil, success: Bool) {
            self.shipments = shipments

            self.order = order

            self.isValidated = isValidated

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                shipments = try container.decode([Shipment].self, forKey: .shipments)

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
                isValidated = try container.decode(Bool.self, forKey: .isValidated)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(isValidated, forKey: .isValidated)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
