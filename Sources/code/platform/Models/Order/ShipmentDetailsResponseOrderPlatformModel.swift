

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentDetailsResponse
         Used By: Order
     */

    class ShipmentDetailsResponse: Codable {
        public var shipments: [PlatformShipment]?

        public var success: Bool

        public var order: OrderDict?

        public enum CodingKeys: String, CodingKey {
            case shipments

            case success

            case order
        }

        public init(order: OrderDict? = nil, shipments: [PlatformShipment]? = nil, success: Bool) {
            self.shipments = shipments

            self.success = success

            self.order = order
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                shipments = try container.decode([PlatformShipment].self, forKey: .shipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            do {
                order = try container.decode(OrderDict.self, forKey: .order)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(order, forKey: .order)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentDetailsResponse
         Used By: Order
     */

    class ShipmentDetailsResponse: Codable {
        public var shipments: [PlatformShipment]?

        public var success: Bool

        public var order: OrderDict?

        public enum CodingKeys: String, CodingKey {
            case shipments

            case success

            case order
        }

        public init(order: OrderDict? = nil, shipments: [PlatformShipment]? = nil, success: Bool) {
            self.shipments = shipments

            self.success = success

            self.order = order
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                shipments = try container.decode([PlatformShipment].self, forKey: .shipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            success = try container.decode(Bool.self, forKey: .success)

            do {
                order = try container.decode(OrderDict.self, forKey: .order)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(order, forKey: .order)
        }
    }
}
