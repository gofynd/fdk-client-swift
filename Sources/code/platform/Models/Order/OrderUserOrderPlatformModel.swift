

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderUser
         Used By: Order
     */

    class OrderUser: Codable {
        public var mobile: Int

        public var phone: Int

        public var state: String

        public var country: String

        public var address2: String?

        public var pincode: String

        public var lastName: String

        public var city: String

        public var email: String

        public var firstName: String

        public var address1: String?

        public enum CodingKeys: String, CodingKey {
            case mobile

            case phone

            case state

            case country

            case address2

            case pincode

            case lastName = "last_name"

            case city

            case email

            case firstName = "first_name"

            case address1
        }

        public init(address1: String? = nil, address2: String? = nil, city: String, country: String, email: String, firstName: String, lastName: String, mobile: Int, phone: Int, pincode: String, state: String) {
            self.mobile = mobile

            self.phone = phone

            self.state = state

            self.country = country

            self.address2 = address2

            self.pincode = pincode

            self.lastName = lastName

            self.city = city

            self.email = email

            self.firstName = firstName

            self.address1 = address1
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mobile = try container.decode(Int.self, forKey: .mobile)

            phone = try container.decode(Int.self, forKey: .phone)

            state = try container.decode(String.self, forKey: .state)

            country = try container.decode(String.self, forKey: .country)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            lastName = try container.decode(String.self, forKey: .lastName)

            city = try container.decode(String.self, forKey: .city)

            email = try container.decode(String.self, forKey: .email)

            firstName = try container.decode(String.self, forKey: .firstName)

            do {
                address1 = try container.decode(String.self, forKey: .address1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(address2, forKey: .address2)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encode(address1, forKey: .address1)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: OrderUser
         Used By: Order
     */

    class OrderUser: Codable {
        public var mobile: Int

        public var phone: Int

        public var state: String

        public var country: String

        public var address2: String?

        public var pincode: String

        public var lastName: String

        public var city: String

        public var email: String

        public var firstName: String

        public var address1: String?

        public enum CodingKeys: String, CodingKey {
            case mobile

            case phone

            case state

            case country

            case address2

            case pincode

            case lastName = "last_name"

            case city

            case email

            case firstName = "first_name"

            case address1
        }

        public init(address1: String? = nil, address2: String? = nil, city: String, country: String, email: String, firstName: String, lastName: String, mobile: Int, phone: Int, pincode: String, state: String) {
            self.mobile = mobile

            self.phone = phone

            self.state = state

            self.country = country

            self.address2 = address2

            self.pincode = pincode

            self.lastName = lastName

            self.city = city

            self.email = email

            self.firstName = firstName

            self.address1 = address1
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mobile = try container.decode(Int.self, forKey: .mobile)

            phone = try container.decode(Int.self, forKey: .phone)

            state = try container.decode(String.self, forKey: .state)

            country = try container.decode(String.self, forKey: .country)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            lastName = try container.decode(String.self, forKey: .lastName)

            city = try container.decode(String.self, forKey: .city)

            email = try container.decode(String.self, forKey: .email)

            firstName = try container.decode(String.self, forKey: .firstName)

            do {
                address1 = try container.decode(String.self, forKey: .address1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encode(address2, forKey: .address2)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encode(address1, forKey: .address1)
        }
    }
}
