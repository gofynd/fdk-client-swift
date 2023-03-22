

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderUser
         Used By: Order
     */

    class OrderUser: Codable {
        public var lastName: String

        public var email: String

        public var country: String

        public var pincode: String

        public var firstName: String

        public var state: String

        public var address1: String?

        public var address2: String?

        public var city: String

        public var phone: Int

        public var mobile: Int

        public enum CodingKeys: String, CodingKey {
            case lastName = "last_name"

            case email

            case country

            case pincode

            case firstName = "first_name"

            case state

            case address1

            case address2

            case city

            case phone

            case mobile
        }

        public init(address1: String? = nil, address2: String? = nil, city: String, country: String, email: String, firstName: String, lastName: String, mobile: Int, phone: Int, pincode: String, state: String) {
            self.lastName = lastName

            self.email = email

            self.country = country

            self.pincode = pincode

            self.firstName = firstName

            self.state = state

            self.address1 = address1

            self.address2 = address2

            self.city = city

            self.phone = phone

            self.mobile = mobile
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            lastName = try container.decode(String.self, forKey: .lastName)

            email = try container.decode(String.self, forKey: .email)

            country = try container.decode(String.self, forKey: .country)

            pincode = try container.decode(String.self, forKey: .pincode)

            firstName = try container.decode(String.self, forKey: .firstName)

            state = try container.decode(String.self, forKey: .state)

            do {
                address1 = try container.decode(String.self, forKey: .address1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            phone = try container.decode(Int.self, forKey: .phone)

            mobile = try container.decode(Int.self, forKey: .mobile)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(address1, forKey: .address1)

            try? container.encode(address2, forKey: .address2)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(phone, forKey: .phone)

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
        public var lastName: String

        public var email: String

        public var country: String

        public var pincode: String

        public var firstName: String

        public var state: String

        public var address1: String?

        public var address2: String?

        public var city: String

        public var phone: Int

        public var mobile: Int

        public enum CodingKeys: String, CodingKey {
            case lastName = "last_name"

            case email

            case country

            case pincode

            case firstName = "first_name"

            case state

            case address1

            case address2

            case city

            case phone

            case mobile
        }

        public init(address1: String? = nil, address2: String? = nil, city: String, country: String, email: String, firstName: String, lastName: String, mobile: Int, phone: Int, pincode: String, state: String) {
            self.lastName = lastName

            self.email = email

            self.country = country

            self.pincode = pincode

            self.firstName = firstName

            self.state = state

            self.address1 = address1

            self.address2 = address2

            self.city = city

            self.phone = phone

            self.mobile = mobile
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            lastName = try container.decode(String.self, forKey: .lastName)

            email = try container.decode(String.self, forKey: .email)

            country = try container.decode(String.self, forKey: .country)

            pincode = try container.decode(String.self, forKey: .pincode)

            firstName = try container.decode(String.self, forKey: .firstName)

            state = try container.decode(String.self, forKey: .state)

            do {
                address1 = try container.decode(String.self, forKey: .address1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            phone = try container.decode(Int.self, forKey: .phone)

            mobile = try container.decode(Int.self, forKey: .mobile)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(address1, forKey: .address1)

            try? container.encode(address2, forKey: .address2)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(mobile, forKey: .mobile)
        }
    }
}
