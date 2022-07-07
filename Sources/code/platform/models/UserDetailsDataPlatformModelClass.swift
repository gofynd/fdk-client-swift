

import Foundation
public extension PlatformClient {
    /*
         Model: UserDetailsData
         Used By: Orders
     */

    class UserDetailsData: Codable {
        public var state: String

        public var country: String

        public var city: String

        public var pincode: String

        public var phone: String

        public var address: String

        public var name: String

        public var email: String

        public enum CodingKeys: String, CodingKey {
            case state

            case country

            case city

            case pincode

            case phone

            case address

            case name

            case email
        }

        public init(address: String, city: String, country: String, email: String, name: String, phone: String, pincode: String, state: String) {
            self.state = state

            self.country = country

            self.city = city

            self.pincode = pincode

            self.phone = phone

            self.address = address

            self.name = name

            self.email = email
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            state = try container.decode(String.self, forKey: .state)

            country = try container.decode(String.self, forKey: .country)

            city = try container.decode(String.self, forKey: .city)

            pincode = try container.decode(String.self, forKey: .pincode)

            phone = try container.decode(String.self, forKey: .phone)

            address = try container.decode(String.self, forKey: .address)

            name = try container.decode(String.self, forKey: .name)

            email = try container.decode(String.self, forKey: .email)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }
}
