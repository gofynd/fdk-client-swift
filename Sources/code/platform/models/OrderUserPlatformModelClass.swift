

import Foundation
public extension PlatformClient {
    /*
         Model: OrderUser
         Used By: Order
     */

    class OrderUser: Codable {
        public var city: String

        public var email: String

        public var lastName: String

        public var phone: Int

        public var firstName: String

        public var address1: String?

        public var pincode: String

        public var mobile: Int

        public var country: String

        public var state: String

        public var address2: String?

        public enum CodingKeys: String, CodingKey {
            case city

            case email

            case lastName = "last_name"

            case phone

            case firstName = "first_name"

            case address1

            case pincode

            case mobile

            case country

            case state

            case address2
        }

        public init(address1: String? = nil, address2: String? = nil, city: String, country: String, email: String, firstName: String, lastName: String, mobile: Int, phone: Int, pincode: String, state: String) {
            self.city = city

            self.email = email

            self.lastName = lastName

            self.phone = phone

            self.firstName = firstName

            self.address1 = address1

            self.pincode = pincode

            self.mobile = mobile

            self.country = country

            self.state = state

            self.address2 = address2
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            city = try container.decode(String.self, forKey: .city)

            email = try container.decode(String.self, forKey: .email)

            lastName = try container.decode(String.self, forKey: .lastName)

            phone = try container.decode(Int.self, forKey: .phone)

            firstName = try container.decode(String.self, forKey: .firstName)

            do {
                address1 = try container.decode(String.self, forKey: .address1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            mobile = try container.decode(Int.self, forKey: .mobile)

            country = try container.decode(String.self, forKey: .country)

            state = try container.decode(String.self, forKey: .state)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encode(address1, forKey: .address1)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(address2, forKey: .address2)
        }
    }
}
