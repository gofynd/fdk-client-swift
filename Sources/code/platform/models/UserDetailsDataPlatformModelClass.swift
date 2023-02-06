

import Foundation
public extension PlatformClient {
    /*
         Model: UserDetailsData
         Used By: Order
     */

    class UserDetailsData: Codable {
        public var email: String

        public var pincode: String

        public var country: String

        public var name: String

        public var address: String

        public var phone: String

        public var city: String

        public var state: String

        public enum CodingKeys: String, CodingKey {
            case email

            case pincode

            case country

            case name

            case address

            case phone

            case city

            case state
        }

        public init(address: String, city: String, country: String, email: String, name: String, phone: String, pincode: String, state: String) {
            self.email = email

            self.pincode = pincode

            self.country = country

            self.name = name

            self.address = address

            self.phone = phone

            self.city = city

            self.state = state
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            email = try container.decode(String.self, forKey: .email)

            pincode = try container.decode(String.self, forKey: .pincode)

            country = try container.decode(String.self, forKey: .country)

            name = try container.decode(String.self, forKey: .name)

            address = try container.decode(String.self, forKey: .address)

            phone = try container.decode(String.self, forKey: .phone)

            city = try container.decode(String.self, forKey: .city)

            state = try container.decode(String.self, forKey: .state)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(state, forKey: .state)
        }
    }
}
