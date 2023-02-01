

import Foundation
public extension PlatformClient {
    /*
         Model: OrderUser
         Used By: Order
     */

    class OrderUser: Codable {
        public var address2: String?

        public var phone: Int

        public var address1: String?

        public var firstName: String

        public var email: String

        public var pincode: String

        public var state: String

        public var mobile: Int

        public var city: String

        public var country: String

        public var lastName: String

        public enum CodingKeys: String, CodingKey {
            case address2

            case phone

            case address1

            case firstName = "first_name"

            case email

            case pincode

            case state

            case mobile

            case city

            case country

            case lastName = "last_name"
        }

        public init(address1: String? = nil, address2: String? = nil, city: String, country: String, email: String, firstName: String, lastName: String, mobile: Int, phone: Int, pincode: String, state: String) {
            self.address2 = address2

            self.phone = phone

            self.address1 = address1

            self.firstName = firstName

            self.email = email

            self.pincode = pincode

            self.state = state

            self.mobile = mobile

            self.city = city

            self.country = country

            self.lastName = lastName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(Int.self, forKey: .phone)

            do {
                address1 = try container.decode(String.self, forKey: .address1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            firstName = try container.decode(String.self, forKey: .firstName)

            email = try container.decode(String.self, forKey: .email)

            pincode = try container.decode(String.self, forKey: .pincode)

            state = try container.decode(String.self, forKey: .state)

            mobile = try container.decode(Int.self, forKey: .mobile)

            city = try container.decode(String.self, forKey: .city)

            country = try container.decode(String.self, forKey: .country)

            lastName = try container.decode(String.self, forKey: .lastName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(address2, forKey: .address2)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(address1, forKey: .address1)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(lastName, forKey: .lastName)
        }
    }
}
