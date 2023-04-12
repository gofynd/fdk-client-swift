

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderUser
         Used By: Order
     */

    class OrderUser: Codable {
        public var email: String

        public var mobile: Int

        public var country: String

        public var pincode: String

        public var lastName: String

        public var address1: String?

        public var phone: Int

        public var address2: String?

        public var state: String

        public var city: String

        public var firstName: String

        public enum CodingKeys: String, CodingKey {
            case email

            case mobile

            case country

            case pincode

            case lastName = "last_name"

            case address1

            case phone

            case address2

            case state

            case city

            case firstName = "first_name"
        }

        public init(address1: String? = nil, address2: String? = nil, city: String, country: String, email: String, firstName: String, lastName: String, mobile: Int, phone: Int, pincode: String, state: String) {
            self.email = email

            self.mobile = mobile

            self.country = country

            self.pincode = pincode

            self.lastName = lastName

            self.address1 = address1

            self.phone = phone

            self.address2 = address2

            self.state = state

            self.city = city

            self.firstName = firstName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            email = try container.decode(String.self, forKey: .email)

            mobile = try container.decode(Int.self, forKey: .mobile)

            country = try container.decode(String.self, forKey: .country)

            pincode = try container.decode(String.self, forKey: .pincode)

            lastName = try container.decode(String.self, forKey: .lastName)

            do {
                address1 = try container.decode(String.self, forKey: .address1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            city = try container.decode(String.self, forKey: .city)

            firstName = try container.decode(String.self, forKey: .firstName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encode(address1, forKey: .address1)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(address2, forKey: .address2)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(firstName, forKey: .firstName)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: OrderUser
         Used By: Order
     */

    class OrderUser: Codable {
        public var email: String

        public var mobile: Int

        public var country: String

        public var pincode: String

        public var lastName: String

        public var address1: String?

        public var phone: Int

        public var address2: String?

        public var state: String

        public var city: String

        public var firstName: String

        public enum CodingKeys: String, CodingKey {
            case email

            case mobile

            case country

            case pincode

            case lastName = "last_name"

            case address1

            case phone

            case address2

            case state

            case city

            case firstName = "first_name"
        }

        public init(address1: String? = nil, address2: String? = nil, city: String, country: String, email: String, firstName: String, lastName: String, mobile: Int, phone: Int, pincode: String, state: String) {
            self.email = email

            self.mobile = mobile

            self.country = country

            self.pincode = pincode

            self.lastName = lastName

            self.address1 = address1

            self.phone = phone

            self.address2 = address2

            self.state = state

            self.city = city

            self.firstName = firstName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            email = try container.decode(String.self, forKey: .email)

            mobile = try container.decode(Int.self, forKey: .mobile)

            country = try container.decode(String.self, forKey: .country)

            pincode = try container.decode(String.self, forKey: .pincode)

            lastName = try container.decode(String.self, forKey: .lastName)

            do {
                address1 = try container.decode(String.self, forKey: .address1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            city = try container.decode(String.self, forKey: .city)

            firstName = try container.decode(String.self, forKey: .firstName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encode(address1, forKey: .address1)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(address2, forKey: .address2)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(firstName, forKey: .firstName)
        }
    }
}
