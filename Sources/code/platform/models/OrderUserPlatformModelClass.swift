

import Foundation
public extension PlatformClient {
    /*
         Model: OrderUser
         Used By: Order
     */

    class OrderUser: Codable {
        public var email: String

        public var country: String

        public var firstName: String

        public var address1: String?

        public var lastName: String

        public var address2: String?

        public var city: String

        public var state: String

        public var phone: Int

        public var mobile: Int

        public var pincode: String

        public enum CodingKeys: String, CodingKey {
            case email

            case country

            case firstName = "first_name"

            case address1

            case lastName = "last_name"

            case address2

            case city

            case state

            case phone

            case mobile

            case pincode
        }

        public init(address1: String? = nil, address2: String? = nil, city: String, country: String, email: String, firstName: String, lastName: String, mobile: Int, phone: Int, pincode: String, state: String) {
            self.email = email

            self.country = country

            self.firstName = firstName

            self.address1 = address1

            self.lastName = lastName

            self.address2 = address2

            self.city = city

            self.state = state

            self.phone = phone

            self.mobile = mobile

            self.pincode = pincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            email = try container.decode(String.self, forKey: .email)

            country = try container.decode(String.self, forKey: .country)

            firstName = try container.decode(String.self, forKey: .firstName)

            do {
                address1 = try container.decode(String.self, forKey: .address1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            lastName = try container.decode(String.self, forKey: .lastName)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            state = try container.decode(String.self, forKey: .state)

            phone = try container.decode(Int.self, forKey: .phone)

            mobile = try container.decode(Int.self, forKey: .mobile)

            pincode = try container.decode(String.self, forKey: .pincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encode(address1, forKey: .address1)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encode(address2, forKey: .address2)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(pincode, forKey: .pincode)
        }
    }
}
