

import Foundation
public extension PlatformClient {
    /*
         Model: UserDetailsData
         Used By: Order
     */

    class UserDetailsData: Codable {
        public var city: String

        public var state: String

        public var phone: String

        public var country: String

        public var pincode: String

        public var address: String

        public var name: String

        public var email: String

        public enum CodingKeys: String, CodingKey {
            case city

            case state

            case phone

            case country

            case pincode

            case address

            case name

            case email
        }

        public init(address: String, city: String, country: String, email: String, name: String, phone: String, pincode: String, state: String) {
            self.city = city

            self.state = state

            self.phone = phone

            self.country = country

            self.pincode = pincode

            self.address = address

            self.name = name

            self.email = email
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            city = try container.decode(String.self, forKey: .city)

            state = try container.decode(String.self, forKey: .state)

            phone = try container.decode(String.self, forKey: .phone)

            country = try container.decode(String.self, forKey: .country)

            pincode = try container.decode(String.self, forKey: .pincode)

            address = try container.decode(String.self, forKey: .address)

            name = try container.decode(String.self, forKey: .name)

            email = try container.decode(String.self, forKey: .email)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }
}
