

import Foundation
public extension PlatformClient {
    /*
         Model: OrderUser
         Used By: Order
     */

    class OrderUser: Codable {
        public var address2: String?

        public var address1: String?

        public var email: String

        public var phone: Int

        public var pincode: String

        public var mobile: Int

        public var lastName: String

        public var firstName: String

        public var country: String

        public var state: String

        public var city: String

        public enum CodingKeys: String, CodingKey {
            case address2

            case address1

            case email

            case phone

            case pincode

            case mobile

            case lastName = "last_name"

            case firstName = "first_name"

            case country

            case state

            case city
        }

        public init(address1: String? = nil, address2: String? = nil, city: String, country: String, email: String, firstName: String, lastName: String, mobile: Int, phone: Int, pincode: String, state: String) {
            self.address2 = address2

            self.address1 = address1

            self.email = email

            self.phone = phone

            self.pincode = pincode

            self.mobile = mobile

            self.lastName = lastName

            self.firstName = firstName

            self.country = country

            self.state = state

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

            do {
                address1 = try container.decode(String.self, forKey: .address1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            phone = try container.decode(Int.self, forKey: .phone)

            pincode = try container.decode(String.self, forKey: .pincode)

            mobile = try container.decode(Int.self, forKey: .mobile)

            lastName = try container.decode(String.self, forKey: .lastName)

            firstName = try container.decode(String.self, forKey: .firstName)

            country = try container.decode(String.self, forKey: .country)

            state = try container.decode(String.self, forKey: .state)

            city = try container.decode(String.self, forKey: .city)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(address2, forKey: .address2)

            try? container.encode(address1, forKey: .address1)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)
        }
    }
}
