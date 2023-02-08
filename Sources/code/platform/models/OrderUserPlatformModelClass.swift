

import Foundation
public extension PlatformClient {
    /*
         Model: OrderUser
         Used By: Order
     */

    class OrderUser: Codable {
        public var mobile: Int

        public var city: String

        public var phone: Int

        public var pincode: String

        public var email: String

        public var country: String

        public var lastName: String

        public var address2: String?

        public var address1: String?

        public var state: String

        public var firstName: String

        public enum CodingKeys: String, CodingKey {
            case mobile

            case city

            case phone

            case pincode

            case email

            case country

            case lastName = "last_name"

            case address2

            case address1

            case state

            case firstName = "first_name"
        }

        public init(address1: String? = nil, address2: String? = nil, city: String, country: String, email: String, firstName: String, lastName: String, mobile: Int, phone: Int, pincode: String, state: String) {
            self.mobile = mobile

            self.city = city

            self.phone = phone

            self.pincode = pincode

            self.email = email

            self.country = country

            self.lastName = lastName

            self.address2 = address2

            self.address1 = address1

            self.state = state

            self.firstName = firstName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mobile = try container.decode(Int.self, forKey: .mobile)

            city = try container.decode(String.self, forKey: .city)

            phone = try container.decode(Int.self, forKey: .phone)

            pincode = try container.decode(String.self, forKey: .pincode)

            email = try container.decode(String.self, forKey: .email)

            country = try container.decode(String.self, forKey: .country)

            lastName = try container.decode(String.self, forKey: .lastName)

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

            state = try container.decode(String.self, forKey: .state)

            firstName = try container.decode(String.self, forKey: .firstName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encode(address2, forKey: .address2)

            try? container.encode(address1, forKey: .address1)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(firstName, forKey: .firstName)
        }
    }
}
