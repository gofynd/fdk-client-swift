

import Foundation
public extension PlatformClient {
    /*
         Model: UserDetailsData
         Used By: Orders
     */

    class UserDetailsData: Codable {
        public var pincode: String

        public var city: String

        public var name: String

        public var email: String

        public var country: String

        public var state: String

        public var address: String

        public var phone: String

        public enum CodingKeys: String, CodingKey {
            case pincode

            case city

            case name

            case email

            case country

            case state

            case address

            case phone
        }

        public init(address: String, city: String, country: String, email: String, name: String, phone: String, pincode: String, state: String) {
            self.pincode = pincode

            self.city = city

            self.name = name

            self.email = email

            self.country = country

            self.state = state

            self.address = address

            self.phone = phone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pincode = try container.decode(String.self, forKey: .pincode)

            city = try container.decode(String.self, forKey: .city)

            name = try container.decode(String.self, forKey: .name)

            email = try container.decode(String.self, forKey: .email)

            country = try container.decode(String.self, forKey: .country)

            state = try container.decode(String.self, forKey: .state)

            address = try container.decode(String.self, forKey: .address)

            phone = try container.decode(String.self, forKey: .phone)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(phone, forKey: .phone)
        }
    }
}
