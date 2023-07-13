

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderUser
         Used By: Order
     */

    class OrderUser: Codable {
        public var state: String

        public var phone: Int

        public var address2: String?

        public var country: String

        public var address1: String?

        public var email: String

        public var firstName: String

        public var pincode: String

        public var lastName: String

        public var city: String

        public var mobile: Int

        public enum CodingKeys: String, CodingKey {
            case state

            case phone

            case address2

            case country

            case address1

            case email

            case firstName = "first_name"

            case pincode

            case lastName = "last_name"

            case city

            case mobile
        }

        public init(address1: String? = nil, address2: String? = nil, city: String, country: String, email: String, firstName: String, lastName: String, mobile: Int, phone: Int, pincode: String, state: String) {
            self.state = state

            self.phone = phone

            self.address2 = address2

            self.country = country

            self.address1 = address1

            self.email = email

            self.firstName = firstName

            self.pincode = pincode

            self.lastName = lastName

            self.city = city

            self.mobile = mobile
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            state = try container.decode(String.self, forKey: .state)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            do {
                address1 = try container.decode(String.self, forKey: .address1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            firstName = try container.decode(String.self, forKey: .firstName)

            pincode = try container.decode(String.self, forKey: .pincode)

            lastName = try container.decode(String.self, forKey: .lastName)

            city = try container.decode(String.self, forKey: .city)

            mobile = try container.decode(Int.self, forKey: .mobile)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(address2, forKey: .address2)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(address1, forKey: .address1)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(city, forKey: .city)

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
        public var state: String

        public var phone: Int

        public var address2: String?

        public var country: String

        public var address1: String?

        public var email: String

        public var firstName: String

        public var pincode: String

        public var lastName: String

        public var city: String

        public var mobile: Int

        public enum CodingKeys: String, CodingKey {
            case state

            case phone

            case address2

            case country

            case address1

            case email

            case firstName = "first_name"

            case pincode

            case lastName = "last_name"

            case city

            case mobile
        }

        public init(address1: String? = nil, address2: String? = nil, city: String, country: String, email: String, firstName: String, lastName: String, mobile: Int, phone: Int, pincode: String, state: String) {
            self.state = state

            self.phone = phone

            self.address2 = address2

            self.country = country

            self.address1 = address1

            self.email = email

            self.firstName = firstName

            self.pincode = pincode

            self.lastName = lastName

            self.city = city

            self.mobile = mobile
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            state = try container.decode(String.self, forKey: .state)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            do {
                address1 = try container.decode(String.self, forKey: .address1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            firstName = try container.decode(String.self, forKey: .firstName)

            pincode = try container.decode(String.self, forKey: .pincode)

            lastName = try container.decode(String.self, forKey: .lastName)

            city = try container.decode(String.self, forKey: .city)

            mobile = try container.decode(Int.self, forKey: .mobile)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(address2, forKey: .address2)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(address1, forKey: .address1)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(mobile, forKey: .mobile)
        }
    }
}
