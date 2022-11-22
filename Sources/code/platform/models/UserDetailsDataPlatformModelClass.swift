

import Foundation
public extension PlatformClient {
    /*
         Model: UserDetailsData
         Used By: Order
     */

    class UserDetailsData: Codable {
        public var state: String

        public var pincode: String

        public var city: String

        public var phone: String

        public var address: String

        public var email: String

        public var name: String

        public var country: String

        public enum CodingKeys: String, CodingKey {
            case state

            case pincode

            case city

            case phone

            case address

            case email

            case name

            case country
        }

        public init(address: String, city: String, country: String, email: String, name: String, phone: String, pincode: String, state: String) {
            self.state = state

            self.pincode = pincode

            self.city = city

            self.phone = phone

            self.address = address

            self.email = email

            self.name = name

            self.country = country
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            state = try container.decode(String.self, forKey: .state)

            pincode = try container.decode(String.self, forKey: .pincode)

            city = try container.decode(String.self, forKey: .city)

            phone = try container.decode(String.self, forKey: .phone)

            address = try container.decode(String.self, forKey: .address)

            email = try container.decode(String.self, forKey: .email)

            name = try container.decode(String.self, forKey: .name)

            country = try container.decode(String.self, forKey: .country)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(country, forKey: .country)
        }
    }
}
