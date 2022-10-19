

import Foundation
public extension PlatformClient {
    /*
         Model: UserDetailsData
         Used By: Orders
     */

    class UserDetailsData: Codable {
        public var phone: String

        public var address: String

        public var email: String

        public var city: String

        public var pincode: String

        public var country: String

        public var state: String

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case phone

            case address

            case email

            case city

            case pincode

            case country

            case state

            case name
        }

        public init(address: String, city: String, country: String, email: String, name: String, phone: String, pincode: String, state: String) {
            self.phone = phone

            self.address = address

            self.email = email

            self.city = city

            self.pincode = pincode

            self.country = country

            self.state = state

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            phone = try container.decode(String.self, forKey: .phone)

            address = try container.decode(String.self, forKey: .address)

            email = try container.decode(String.self, forKey: .email)

            city = try container.decode(String.self, forKey: .city)

            pincode = try container.decode(String.self, forKey: .pincode)

            country = try container.decode(String.self, forKey: .country)

            state = try container.decode(String.self, forKey: .state)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
