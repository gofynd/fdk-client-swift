

import Foundation

public extension PlatformClient.Order {
    /*
         Model: ShipmentDetailsResponse
         Used By: Order
     */

    class ShipmentDetailsResponse: Codable {
        public var order: OrderDict?

        public var shipments: [Shipment]?

        public var isValidated: Bool?

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case order

            case shipments

            case isValidated = "is_validated"

            case success
        }

        public init(isValidated: Bool? = nil, order: OrderDict? = nil, shipments: [Shipment]? = nil, success: Bool) {
            self.order = order

            self.shipments = shipments

            self.isValidated = isValidated

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                order = try container.decode(OrderDict.self, forKey: .order)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipments = try container.decode([Shipment].self, forKey: .shipments)

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

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(isValidated, forKey: .isValidated)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: ShipmentDetailsResponse
         Used By: Order
     */

    class ShipmentDetailsResponse: Codable {
        public var order: OrderDict?

        public var shipments: [Shipment]?

        public var isValidated: Bool?

        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case order

            case shipments

            case isValidated = "is_validated"

            case success
        }

        public init(isValidated: Bool? = nil, order: OrderDict? = nil, shipments: [Shipment]? = nil, success: Bool) {
            self.order = order

            self.shipments = shipments

            self.isValidated = isValidated

            self.success = success
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                order = try container.decode(OrderDict.self, forKey: .order)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipments = try container.decode([Shipment].self, forKey: .shipments)

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

            try? container.encodeIfPresent(order, forKey: .order)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(isValidated, forKey: .isValidated)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }
}
