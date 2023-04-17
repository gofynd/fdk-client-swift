

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderUser
         Used By: Order
     */

    class OrderUser: Codable {
        public var phone: Int

        public var pincode: String

        public var firstName: String

        public var city: String

        public var state: String

        public var address2: String?

        public var lastName: String

        public var country: String

        public var address1: String?

        public var email: String

        public var mobile: Int

        public enum CodingKeys: String, CodingKey {
            case phone

            case pincode

            case firstName = "first_name"

            case city

            case state

            case address2

            case lastName = "last_name"

            case country

            case address1

            case email

            case mobile
        }

        public init(address1: String? = nil, address2: String? = nil, city: String, country: String, email: String, firstName: String, lastName: String, mobile: Int, phone: Int, pincode: String, state: String) {
            self.phone = phone

            self.pincode = pincode

            self.firstName = firstName

            self.city = city

            self.state = state

            self.address2 = address2

            self.lastName = lastName

            self.country = country

            self.address1 = address1

            self.email = email

            self.mobile = mobile
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            phone = try container.decode(Int.self, forKey: .phone)

            pincode = try container.decode(String.self, forKey: .pincode)

            firstName = try container.decode(String.self, forKey: .firstName)

            city = try container.decode(String.self, forKey: .city)

            state = try container.decode(String.self, forKey: .state)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            lastName = try container.decode(String.self, forKey: .lastName)

            country = try container.decode(String.self, forKey: .country)

            do {
                address1 = try container.decode(String.self, forKey: .address1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            mobile = try container.decode(Int.self, forKey: .mobile)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(address2, forKey: .address2)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(address1, forKey: .address1)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(mobile, forKey: .mobile)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: OrderUser
         Used By: Order
     */

    class OrderUser: Codable {
        public var phone: Int

        public var pincode: String

        public var firstName: String

        public var city: String

        public var state: String

        public var address2: String?

        public var lastName: String

        public var country: String

        public var address1: String?

        public var email: String

        public var mobile: Int

        public enum CodingKeys: String, CodingKey {
            case phone

            case pincode

            case firstName = "first_name"

            case city

            case state

            case address2

            case lastName = "last_name"

            case country

            case address1

            case email

            case mobile
        }

        public init(address1: String? = nil, address2: String? = nil, city: String, country: String, email: String, firstName: String, lastName: String, mobile: Int, phone: Int, pincode: String, state: String) {
            self.phone = phone

            self.pincode = pincode

            self.firstName = firstName

            self.city = city

            self.state = state

            self.address2 = address2

            self.lastName = lastName

            self.country = country

            self.address1 = address1

            self.email = email

            self.mobile = mobile
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            phone = try container.decode(Int.self, forKey: .phone)

            pincode = try container.decode(String.self, forKey: .pincode)

            firstName = try container.decode(String.self, forKey: .firstName)

            city = try container.decode(String.self, forKey: .city)

            state = try container.decode(String.self, forKey: .state)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            lastName = try container.decode(String.self, forKey: .lastName)

            country = try container.decode(String.self, forKey: .country)

            do {
                address1 = try container.decode(String.self, forKey: .address1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            mobile = try container.decode(Int.self, forKey: .mobile)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(address2, forKey: .address2)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(address1, forKey: .address1)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(mobile, forKey: .mobile)
        }
    }
}
