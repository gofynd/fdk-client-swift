

import Foundation
public extension PlatformClient {
    /*
         Model: UserDetailsData
         Used By: Order
     */

    class UserDetailsData: Codable {
        public var email: String?

        public var name: String

        public var state: String

        public var address: String

        public var country: String

        public var city: String

        public var phone: String

        public var pincode: String

        public enum CodingKeys: String, CodingKey {
            case email

            case name

            case state

            case address

            case country

            case city

            case phone

            case pincode
        }

        public init(address: String, city: String, country: String, email: String? = nil, name: String, phone: String, pincode: String, state: String) {
            self.email = email

            self.name = name

            self.state = state

            self.address = address

            self.country = country

            self.city = city

            self.phone = phone

            self.pincode = pincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            state = try container.decode(String.self, forKey: .state)

            address = try container.decode(String.self, forKey: .address)

            country = try container.decode(String.self, forKey: .country)

            city = try container.decode(String.self, forKey: .city)

            phone = try container.decode(String.self, forKey: .phone)

            pincode = try container.decode(String.self, forKey: .pincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(pincode, forKey: .pincode)
        }
    }
}
