

import Foundation
public extension PlatformClient {
    /*
         Model: OrderUser
         Used By: Order
     */

    class OrderUser: Codable {
        public var phone: Int

        public var state: String

        public var pincode: String

        public var address2: String?

        public var country: String

        public var mobile: Int

        public var email: String

        public var city: String

        public var firstName: String

        public var address1: String?

        public var lastName: String

        public enum CodingKeys: String, CodingKey {
            case phone

            case state

            case pincode

            case address2

            case country

            case mobile

            case email

            case city

            case firstName = "first_name"

            case address1

            case lastName = "last_name"
        }

        public init(address1: String? = nil, address2: String? = nil, city: String, country: String, email: String, firstName: String, lastName: String, mobile: Int, phone: Int, pincode: String, state: String) {
            self.phone = phone

            self.state = state

            self.pincode = pincode

            self.address2 = address2

            self.country = country

            self.mobile = mobile

            self.email = email

            self.city = city

            self.firstName = firstName

            self.address1 = address1

            self.lastName = lastName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            phone = try container.decode(Int.self, forKey: .phone)

            state = try container.decode(String.self, forKey: .state)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            mobile = try container.decode(Int.self, forKey: .mobile)

            email = try container.decode(String.self, forKey: .email)

            city = try container.decode(String.self, forKey: .city)

            firstName = try container.decode(String.self, forKey: .firstName)

            do {
                address1 = try container.decode(String.self, forKey: .address1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            lastName = try container.decode(String.self, forKey: .lastName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(address2, forKey: .address2)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encode(address1, forKey: .address1)

            try? container.encodeIfPresent(lastName, forKey: .lastName)
        }
    }
}
