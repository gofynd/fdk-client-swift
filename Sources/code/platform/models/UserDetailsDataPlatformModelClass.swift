

import Foundation
public extension PlatformClient {
    /*
         Model: UserDetailsData
         Used By: Orders
     */

    class UserDetailsData: Codable {
        public var country: String

        public var address: String

        public var phone: String

        public var name: String

        public var email: String

        public var state: String

        public var pincode: String

        public var city: String

        public enum CodingKeys: String, CodingKey {
            case country

            case address

            case phone

            case name

            case email

            case state

            case pincode

            case city
        }

        public init(address: String, city: String, country: String, email: String, name: String, phone: String, pincode: String, state: String) {
            self.country = country

            self.address = address

            self.phone = phone

            self.name = name

            self.email = email

            self.state = state

            self.pincode = pincode

            self.city = city
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            country = try container.decode(String.self, forKey: .country)

            address = try container.decode(String.self, forKey: .address)

            phone = try container.decode(String.self, forKey: .phone)

            name = try container.decode(String.self, forKey: .name)

            email = try container.decode(String.self, forKey: .email)

            state = try container.decode(String.self, forKey: .state)

            pincode = try container.decode(String.self, forKey: .pincode)

            city = try container.decode(String.self, forKey: .city)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(city, forKey: .city)
        }
    }
}
