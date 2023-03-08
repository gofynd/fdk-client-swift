

import Foundation

public extension PlatformClient.Order {
    /*
         Model: UserDetailsData
         Used By: Order
     */

    class UserDetailsData: Codable {
        public var address: String

        public var country: String

        public var state: String

        public var pincode: String

        public var name: String

        public var city: String

        public var email: String?

        public var phone: String

        public enum CodingKeys: String, CodingKey {
            case address

            case country

            case state

            case pincode

            case name

            case city

            case email

            case phone
        }

        public init(address: String, city: String, country: String, email: String? = nil, name: String, phone: String, pincode: String, state: String) {
            self.address = address

            self.country = country

            self.state = state

            self.pincode = pincode

            self.name = name

            self.city = city

            self.email = email

            self.phone = phone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address = try container.decode(String.self, forKey: .address)

            country = try container.decode(String.self, forKey: .country)

            state = try container.decode(String.self, forKey: .state)

            pincode = try container.decode(String.self, forKey: .pincode)

            name = try container.decode(String.self, forKey: .name)

            city = try container.decode(String.self, forKey: .city)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(String.self, forKey: .phone)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(phone, forKey: .phone)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: UserDetailsData
         Used By: Order
     */

    class UserDetailsData: Codable {
        public var address: String

        public var country: String

        public var state: String

        public var pincode: String

        public var name: String

        public var city: String

        public var email: String?

        public var phone: String

        public enum CodingKeys: String, CodingKey {
            case address

            case country

            case state

            case pincode

            case name

            case city

            case email

            case phone
        }

        public init(address: String, city: String, country: String, email: String? = nil, name: String, phone: String, pincode: String, state: String) {
            self.address = address

            self.country = country

            self.state = state

            self.pincode = pincode

            self.name = name

            self.city = city

            self.email = email

            self.phone = phone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address = try container.decode(String.self, forKey: .address)

            country = try container.decode(String.self, forKey: .country)

            state = try container.decode(String.self, forKey: .state)

            pincode = try container.decode(String.self, forKey: .pincode)

            name = try container.decode(String.self, forKey: .name)

            city = try container.decode(String.self, forKey: .city)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(String.self, forKey: .phone)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(phone, forKey: .phone)
        }
    }
}
