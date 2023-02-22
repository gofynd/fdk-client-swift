

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderUser
         Used By: Order
     */

    class OrderUser: Codable {
        public var city: String

        public var pincode: String

        public var phone: Int

        public var country: String

        public var lastName: String

        public var state: String

        public var email: String

        public var address2: String?

        public var firstName: String

        public var mobile: Int

        public var address1: String?

        public enum CodingKeys: String, CodingKey {
            case city

            case pincode

            case phone

            case country

            case lastName = "last_name"

            case state

            case email

            case address2

            case firstName = "first_name"

            case mobile

            case address1
        }

        public init(address1: String? = nil, address2: String? = nil, city: String, country: String, email: String, firstName: String, lastName: String, mobile: Int, phone: Int, pincode: String, state: String) {
            self.city = city

            self.pincode = pincode

            self.phone = phone

            self.country = country

            self.lastName = lastName

            self.state = state

            self.email = email

            self.address2 = address2

            self.firstName = firstName

            self.mobile = mobile

            self.address1 = address1
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            city = try container.decode(String.self, forKey: .city)

            pincode = try container.decode(String.self, forKey: .pincode)

            phone = try container.decode(Int.self, forKey: .phone)

            country = try container.decode(String.self, forKey: .country)

            lastName = try container.decode(String.self, forKey: .lastName)

            state = try container.decode(String.self, forKey: .state)

            email = try container.decode(String.self, forKey: .email)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            firstName = try container.decode(String.self, forKey: .firstName)

            mobile = try container.decode(Int.self, forKey: .mobile)

            do {
                address1 = try container.decode(String.self, forKey: .address1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(address2, forKey: .address2)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

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
        public var city: String

        public var pincode: String

        public var phone: Int

        public var country: String

        public var lastName: String

        public var state: String

        public var email: String

        public var address2: String?

        public var firstName: String

        public var mobile: Int

        public var address1: String?

        public enum CodingKeys: String, CodingKey {
            case city

            case pincode

            case phone

            case country

            case lastName = "last_name"

            case state

            case email

            case address2

            case firstName = "first_name"

            case mobile

            case address1
        }

        public init(address1: String? = nil, address2: String? = nil, city: String, country: String, email: String, firstName: String, lastName: String, mobile: Int, phone: Int, pincode: String, state: String) {
            self.city = city

            self.pincode = pincode

            self.phone = phone

            self.country = country

            self.lastName = lastName

            self.state = state

            self.email = email

            self.address2 = address2

            self.firstName = firstName

            self.mobile = mobile

            self.address1 = address1
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            city = try container.decode(String.self, forKey: .city)

            pincode = try container.decode(String.self, forKey: .pincode)

            phone = try container.decode(Int.self, forKey: .phone)

            country = try container.decode(String.self, forKey: .country)

            lastName = try container.decode(String.self, forKey: .lastName)

            state = try container.decode(String.self, forKey: .state)

            email = try container.decode(String.self, forKey: .email)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            firstName = try container.decode(String.self, forKey: .firstName)

            mobile = try container.decode(Int.self, forKey: .mobile)

            do {
                address1 = try container.decode(String.self, forKey: .address1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(address2, forKey: .address2)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encode(address1, forKey: .address1)
        }
    }
}
