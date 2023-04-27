

import Foundation

public extension PlatformClient.Order {
    /*
         Model: OrderUser
         Used By: Order
     */

    class OrderUser: Codable {
        public var country: String

        public var firstName: String

        public var state: String

        public var pincode: String

        public var email: String

        public var phone: Int

        public var mobile: Int

        public var address1: String?

        public var city: String

        public var lastName: String

        public var address2: String?

        public enum CodingKeys: String, CodingKey {
            case country

            case firstName = "first_name"

            case state

            case pincode

            case email

            case phone

            case mobile

            case address1

            case city

            case lastName = "last_name"

            case address2
        }

        public init(address1: String? = nil, address2: String? = nil, city: String, country: String, email: String, firstName: String, lastName: String, mobile: Int, phone: Int, pincode: String, state: String) {
            self.country = country

            self.firstName = firstName

            self.state = state

            self.pincode = pincode

            self.email = email

            self.phone = phone

            self.mobile = mobile

            self.address1 = address1

            self.city = city

            self.lastName = lastName

            self.address2 = address2
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            country = try container.decode(String.self, forKey: .country)

            firstName = try container.decode(String.self, forKey: .firstName)

            state = try container.decode(String.self, forKey: .state)

            pincode = try container.decode(String.self, forKey: .pincode)

            email = try container.decode(String.self, forKey: .email)

            phone = try container.decode(Int.self, forKey: .phone)

            mobile = try container.decode(Int.self, forKey: .mobile)

            do {
                address1 = try container.decode(String.self, forKey: .address1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            lastName = try container.decode(String.self, forKey: .lastName)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encode(address1, forKey: .address1)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

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
        public var country: String

        public var firstName: String

        public var state: String

        public var pincode: String

        public var email: String

        public var phone: Int

        public var mobile: Int

        public var address1: String?

        public var city: String

        public var lastName: String

        public var address2: String?

        public enum CodingKeys: String, CodingKey {
            case country

            case firstName = "first_name"

            case state

            case pincode

            case email

            case phone

            case mobile

            case address1

            case city

            case lastName = "last_name"

            case address2
        }

        public init(address1: String? = nil, address2: String? = nil, city: String, country: String, email: String, firstName: String, lastName: String, mobile: Int, phone: Int, pincode: String, state: String) {
            self.country = country

            self.firstName = firstName

            self.state = state

            self.pincode = pincode

            self.email = email

            self.phone = phone

            self.mobile = mobile

            self.address1 = address1

            self.city = city

            self.lastName = lastName

            self.address2 = address2
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            country = try container.decode(String.self, forKey: .country)

            firstName = try container.decode(String.self, forKey: .firstName)

            state = try container.decode(String.self, forKey: .state)

            pincode = try container.decode(String.self, forKey: .pincode)

            email = try container.decode(String.self, forKey: .email)

            phone = try container.decode(Int.self, forKey: .phone)

            mobile = try container.decode(Int.self, forKey: .mobile)

            do {
                address1 = try container.decode(String.self, forKey: .address1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            lastName = try container.decode(String.self, forKey: .lastName)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encode(address1, forKey: .address1)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encode(address2, forKey: .address2)
        }
    }
}