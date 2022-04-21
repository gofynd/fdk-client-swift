

import Foundation
public extension ApplicationClient {
    /*
         Model: CustomerDetailsByShipmentId
         Used By: Order
     */
    class CustomerDetailsByShipmentId: Codable {
        public var orderId: String

        public var shipmentId: String

        public var name: String

        public var phone: String

        public var country: String

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"

            case shipmentId = "shipment_id"

            case name

            case phone

            case country
        }

        public init(country: String, name: String, orderId: String, phone: String, shipmentId: String) {
            self.orderId = orderId

            self.shipmentId = shipmentId

            self.name = name

            self.phone = phone

            self.country = country
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderId = try container.decode(String.self, forKey: .orderId)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            name = try container.decode(String.self, forKey: .name)

            phone = try container.decode(String.self, forKey: .phone)

            country = try container.decode(String.self, forKey: .country)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(country, forKey: .country)
        }
    }
}
