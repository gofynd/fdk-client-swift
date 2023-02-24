

import Foundation
public extension PlatformClient {
    /*
         Model: UserDetailsData
         Used By: Order
     */

    class UserDetailsData: Codable {
        public var name: String

        public var email: String

        public var phone: String

        public var pincode: String

        public var city: String

        public var country: String

        public var state: String

        public var address: String

        public enum CodingKeys: String, CodingKey {
            case name

            case email

            case phone

            case pincode

            case city

            case country

            case state

            case address
        }

        public init(address: String, city: String, country: String, email: String, name: String, phone: String, pincode: String, state: String) {
            self.name = name

            self.email = email

            self.phone = phone

            self.pincode = pincode

            self.city = city

            self.country = country

            self.state = state

            self.address = address
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            email = try container.decode(String.self, forKey: .email)

            phone = try container.decode(String.self, forKey: .phone)

            pincode = try container.decode(String.self, forKey: .pincode)

            city = try container.decode(String.self, forKey: .city)

            country = try container.decode(String.self, forKey: .country)

            state = try container.decode(String.self, forKey: .state)

            address = try container.decode(String.self, forKey: .address)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(address, forKey: .address)
        }
    }
}
