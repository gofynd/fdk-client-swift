

import Foundation
public extension PlatformClient {
    /*
         Model: OrderUser
         Used By: Order
     */

    class OrderUser: Codable {
        public var country: String

        public var pincode: String

        public var email: String

        public var city: String

        public var firstName: String

        public var phone: Int

        public var lastName: String

        public var state: String

        public var address2: String?

        public var address1: String?

        public var mobile: Int

        public enum CodingKeys: String, CodingKey {
            case country

            case pincode

            case email

            case city

            case firstName = "first_name"

            case phone

            case lastName = "last_name"

            case state

            case address2

            case address1

            case mobile
        }

        public init(address1: String? = nil, address2: String? = nil, city: String, country: String, email: String, firstName: String, lastName: String, mobile: Int, phone: Int, pincode: String, state: String) {
            self.country = country

            self.pincode = pincode

            self.email = email

            self.city = city

            self.firstName = firstName

            self.phone = phone

            self.lastName = lastName

            self.state = state

            self.address2 = address2

            self.address1 = address1

            self.mobile = mobile
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            country = try container.decode(String.self, forKey: .country)

            pincode = try container.decode(String.self, forKey: .pincode)

            email = try container.decode(String.self, forKey: .email)

            city = try container.decode(String.self, forKey: .city)

            firstName = try container.decode(String.self, forKey: .firstName)

            phone = try container.decode(Int.self, forKey: .phone)

            lastName = try container.decode(String.self, forKey: .lastName)

            state = try container.decode(String.self, forKey: .state)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address1 = try container.decode(String.self, forKey: .address1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mobile = try container.decode(Int.self, forKey: .mobile)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(address2, forKey: .address2)

            try? container.encode(address1, forKey: .address1)

            try? container.encodeIfPresent(mobile, forKey: .mobile)
        }
    }
}
