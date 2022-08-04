

import Foundation
public extension PlatformClient {
    /*
         Model: ShippingToAddress
         Used By: OrderInvoiceEngine
     */

    class ShippingToAddress: Codable {
        public var address: String

        public var city: String

        public var state: String

        public var country: String

        public var pincode: String

        public enum CodingKeys: String, CodingKey {
            case address

            case city

            case state

            case country

            case pincode
        }

        public init(address: String, city: String, country: String, pincode: String, state: String) {
            self.address = address

            self.city = city

            self.state = state

            self.country = country

            self.pincode = pincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address = try container.decode(String.self, forKey: .address)

            city = try container.decode(String.self, forKey: .city)

            state = try container.decode(String.self, forKey: .state)

            country = try container.decode(String.self, forKey: .country)

            pincode = try container.decode(String.self, forKey: .pincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)
        }
    }
}
