

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderUser
         Used By: Order
     */

    class OrderUser: Codable {
        public var address2: String?

        public var state: String

        public var country: String

        public var lastName: String

        public var email: String

        public var phone: Int

        public var address1: String?

        public var mobile: Int

        public var pincode: String

        public var firstName: String

        public var city: String

        public enum CodingKeys: String, CodingKey {
            case address2

            case state

            case country

            case lastName = "last_name"

            case email

            case phone

            case address1

            case mobile

            case pincode

            case firstName = "first_name"

            case city
        }

        public init(address1: String? = nil, address2: String? = nil, city: String, country: String, email: String, firstName: String, lastName: String, mobile: Int, phone: Int, pincode: String, state: String) {
            self.address2 = address2

            self.state = state

            self.country = country

            self.lastName = lastName

            self.email = email

            self.phone = phone

            self.address1 = address1

            self.mobile = mobile

            self.pincode = pincode

            self.firstName = firstName

            self.city = city
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            country = try container.decode(String.self, forKey: .country)

            lastName = try container.decode(String.self, forKey: .lastName)

            email = try container.decode(String.self, forKey: .email)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                address1 = try container.decode(String.self, forKey: .address1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mobile = try container.decode(Int.self, forKey: .mobile)

            pincode = try container.decode(String.self, forKey: .pincode)

            firstName = try container.decode(String.self, forKey: .firstName)

            city = try container.decode(String.self, forKey: .city)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(address2, forKey: .address2)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(address1, forKey: .address1)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(city, forKey: .city)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: OrderUser
         Used By: Order
     */

    class OrderUser: Codable {
        public var address2: String?

        public var state: String

        public var country: String

        public var lastName: String

        public var email: String

        public var phone: Int

        public var address1: String?

        public var mobile: Int

        public var pincode: String

        public var firstName: String

        public var city: String

        public enum CodingKeys: String, CodingKey {
            case address2

            case state

            case country

            case lastName = "last_name"

            case email

            case phone

            case address1

            case mobile

            case pincode

            case firstName = "first_name"

            case city
        }

        public init(address1: String? = nil, address2: String? = nil, city: String, country: String, email: String, firstName: String, lastName: String, mobile: Int, phone: Int, pincode: String, state: String) {
            self.address2 = address2

            self.state = state

            self.country = country

            self.lastName = lastName

            self.email = email

            self.phone = phone

            self.address1 = address1

            self.mobile = mobile

            self.pincode = pincode

            self.firstName = firstName

            self.city = city
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            country = try container.decode(String.self, forKey: .country)

            lastName = try container.decode(String.self, forKey: .lastName)

            email = try container.decode(String.self, forKey: .email)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                address1 = try container.decode(String.self, forKey: .address1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mobile = try container.decode(Int.self, forKey: .mobile)

            pincode = try container.decode(String.self, forKey: .pincode)

            firstName = try container.decode(String.self, forKey: .firstName)

            city = try container.decode(String.self, forKey: .city)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(address2, forKey: .address2)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(address1, forKey: .address1)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(city, forKey: .city)
        }
    }
}
