

import Foundation
public extension PlatformClient {
    /*
         Model: UserDetailsData
         Used By: Orders
     */

    class UserDetailsData: Codable {
        public var pincode: String

        public var state: String

        public var email: String

        public var address: String

        public var city: String

        public var country: String

        public var name: String

        public var phone: String

        public enum CodingKeys: String, CodingKey {
            case pincode

            case state

            case email

            case address

            case city

            case country

            case name

            case phone
        }

        public init(address: String, city: String, country: String, email: String, name: String, phone: String, pincode: String, state: String) {
            self.pincode = pincode

            self.state = state

            self.email = email

            self.address = address

            self.city = city

            self.country = country

            self.name = name

            self.phone = phone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pincode = try container.decode(String.self, forKey: .pincode)

            state = try container.decode(String.self, forKey: .state)

            email = try container.decode(String.self, forKey: .email)

            address = try container.decode(String.self, forKey: .address)

            city = try container.decode(String.self, forKey: .city)

            country = try container.decode(String.self, forKey: .country)

            name = try container.decode(String.self, forKey: .name)

            phone = try container.decode(String.self, forKey: .phone)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(phone, forKey: .phone)
        }
    }
}
