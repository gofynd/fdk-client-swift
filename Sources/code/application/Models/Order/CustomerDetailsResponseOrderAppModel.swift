

import Foundation
public extension ApplicationClient.Order {
    /*
         Model: CustomerDetailsResponse
         Used By: Order
     */
    class CustomerDetailsResponse: Codable {
        public var country: String?

        public var name: String?

        public var phone: String?

        public var orderId: String?

        public var shipmentId: String?

        public enum CodingKeys: String, CodingKey {
            case country

            case name

            case phone

            case orderId = "order_id"

            case shipmentId = "shipment_id"
        }

        public init(country: String? = nil, name: String? = nil, orderId: String? = nil, phone: String? = nil, shipmentId: String? = nil) {
            self.country = country

            self.name = name

            self.phone = phone

            self.orderId = orderId

            self.shipmentId = shipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                country = try container.decode(String.self, forKey: .country)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                phone = try container.decode(String.self, forKey: .phone)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)
        }
    }
}
