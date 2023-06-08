

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderUser
         Used By: Order
     */

    class OrderUser: Codable {
        public var pincode: String

        public var address1: String?

        public var country: String

        public var firstName: String

        public var mobile: Int

        public var lastName: String

        public var state: String

        public var city: String

        public var email: String

        public var phone: Int

        public var address2: String?

        public enum CodingKeys: String, CodingKey {
            case pincode

            case address1

            case country

            case firstName = "first_name"

            case mobile

            case lastName = "last_name"

            case state

            case city

            case email

            case phone

            case address2
        }

        public init(address1: String? = nil, address2: String? = nil, city: String, country: String, email: String, firstName: String, lastName: String, mobile: Int, phone: Int, pincode: String, state: String) {
            self.pincode = pincode

            self.address1 = address1

            self.country = country

            self.firstName = firstName

            self.mobile = mobile

            self.lastName = lastName

            self.state = state

            self.city = city

            self.email = email

            self.phone = phone

            self.address2 = address2
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                address1 = try container.decode(String.self, forKey: .address1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            firstName = try container.decode(String.self, forKey: .firstName)

            mobile = try container.decode(Int.self, forKey: .mobile)

            lastName = try container.decode(String.self, forKey: .lastName)

            state = try container.decode(String.self, forKey: .state)

            city = try container.decode(String.self, forKey: .city)

            email = try container.decode(String.self, forKey: .email)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(address1, forKey: .address1)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(address2, forKey: .address2)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: OrderUser
         Used By: Order
     */

    class OrderUser: Codable {
        public var pincode: String

        public var address1: String?

        public var country: String

        public var firstName: String

        public var mobile: Int

        public var lastName: String

        public var state: String

        public var city: String

        public var email: String

        public var phone: Int

        public var address2: String?

        public enum CodingKeys: String, CodingKey {
            case pincode

            case address1

            case country

            case firstName = "first_name"

            case mobile

            case lastName = "last_name"

            case state

            case city

            case email

            case phone

            case address2
        }

        public init(address1: String? = nil, address2: String? = nil, city: String, country: String, email: String, firstName: String, lastName: String, mobile: Int, phone: Int, pincode: String, state: String) {
            self.pincode = pincode

            self.address1 = address1

            self.country = country

            self.firstName = firstName

            self.mobile = mobile

            self.lastName = lastName

            self.state = state

            self.city = city

            self.email = email

            self.phone = phone

            self.address2 = address2
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                address1 = try container.decode(String.self, forKey: .address1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            firstName = try container.decode(String.self, forKey: .firstName)

            mobile = try container.decode(Int.self, forKey: .mobile)

            lastName = try container.decode(String.self, forKey: .lastName)

            state = try container.decode(String.self, forKey: .state)

            city = try container.decode(String.self, forKey: .city)

            email = try container.decode(String.self, forKey: .email)

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(address1, forKey: .address1)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(address2, forKey: .address2)
        }
    }
}
