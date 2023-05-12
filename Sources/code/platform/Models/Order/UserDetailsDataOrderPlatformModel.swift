

import Foundation

public extension PlatformClient.Order {
    /*
         Model: UserDetailsData
         Used By: Order
     */

    class UserDetailsData: Codable {
        public var name: String

        public var state: String

        public var address: String

        public var pincode: String

        public var city: String

        public var country: String

        public var email: String?

        public var phone: String

        public enum CodingKeys: String, CodingKey {
            case name

            case state

            case address

            case pincode

            case city

            case country

            case email

            case phone
        }

        public init(address: String, city: String, country: String, email: String? = nil, name: String, phone: String, pincode: String, state: String) {
            self.name = name

            self.state = state

            self.address = address

            self.pincode = pincode

            self.city = city

            self.country = country

            self.email = email

            self.phone = phone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            state = try container.decode(String.self, forKey: .state)

            address = try container.decode(String.self, forKey: .address)

            pincode = try container.decode(String.self, forKey: .pincode)

            city = try container.decode(String.self, forKey: .city)

            country = try container.decode(String.self, forKey: .country)

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

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(country, forKey: .country)

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
        public var name: String

        public var state: String

        public var address: String

        public var pincode: String

        public var city: String

        public var country: String

        public var email: String?

        public var phone: String

        public enum CodingKeys: String, CodingKey {
            case name

            case state

            case address

            case pincode

            case city

            case country

            case email

            case phone
        }

        public init(address: String, city: String, country: String, email: String? = nil, name: String, phone: String, pincode: String, state: String) {
            self.name = name

            self.state = state

            self.address = address

            self.pincode = pincode

            self.city = city

            self.country = country

            self.email = email

            self.phone = phone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            state = try container.decode(String.self, forKey: .state)

            address = try container.decode(String.self, forKey: .address)

            pincode = try container.decode(String.self, forKey: .pincode)

            city = try container.decode(String.self, forKey: .city)

            country = try container.decode(String.self, forKey: .country)

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

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(phone, forKey: .phone)
        }
    }
}
