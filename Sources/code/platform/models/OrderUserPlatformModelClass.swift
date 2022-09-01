

import Foundation
public extension PlatformClient {
    /*
         Model: OrderUser
         Used By: Order
     */

    class OrderUser: Codable {
        public var address2: String?

        public var firstName: String

        public var address1: String?

        public var pincode: String

        public var email: String

        public var city: String

        public var mobile: Int

        public var state: String

        public var phone: Int

        public var lastName: String

        public var country: String

        public enum CodingKeys: String, CodingKey {
            case address2

            case firstName = "first_name"

            case address1

            case pincode

            case email

            case city

            case mobile

            case state

            case phone

            case lastName = "last_name"

            case country
        }

        public init(address1: String? = nil, address2: String? = nil, city: String, country: String, email: String, firstName: String, lastName: String, mobile: Int, phone: Int, pincode: String, state: String) {
            self.address2 = address2

            self.firstName = firstName

            self.address1 = address1

            self.pincode = pincode

            self.email = email

            self.city = city

            self.mobile = mobile

            self.state = state

            self.phone = phone

            self.lastName = lastName

            self.country = country
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            firstName = try container.decode(String.self, forKey: .firstName)

            do {
                address1 = try container.decode(String.self, forKey: .address1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            email = try container.decode(String.self, forKey: .email)

            city = try container.decode(String.self, forKey: .city)

            mobile = try container.decode(Int.self, forKey: .mobile)

            state = try container.decode(String.self, forKey: .state)

            phone = try container.decode(Int.self, forKey: .phone)

            lastName = try container.decode(String.self, forKey: .lastName)

            country = try container.decode(String.self, forKey: .country)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(address2, forKey: .address2)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encode(address1, forKey: .address1)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(country, forKey: .country)
        }
    }
}
