

import Foundation
public extension PlatformClient {
    /*
         Model: OrderUser
         Used By: Order
     */

    class OrderUser: Codable {
        public var phone: Int

        public var lastName: String

        public var city: String

        public var country: String

        public var mobile: Int

        public var pincode: String

        public var firstName: String

        public var email: String

        public var address1: String?

        public var state: String

        public var address2: String?

        public enum CodingKeys: String, CodingKey {
            case phone

            case lastName = "last_name"

            case city

            case country

            case mobile

            case pincode

            case firstName = "first_name"

            case email

            case address1

            case state

            case address2
        }

        public init(address1: String? = nil, address2: String? = nil, city: String, country: String, email: String, firstName: String, lastName: String, mobile: Int, phone: Int, pincode: String, state: String) {
            self.phone = phone

            self.lastName = lastName

            self.city = city

            self.country = country

            self.mobile = mobile

            self.pincode = pincode

            self.firstName = firstName

            self.email = email

            self.address1 = address1

            self.state = state

            self.address2 = address2
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            phone = try container.decode(Int.self, forKey: .phone)

            lastName = try container.decode(String.self, forKey: .lastName)

            city = try container.decode(String.self, forKey: .city)

            country = try container.decode(String.self, forKey: .country)

            mobile = try container.decode(Int.self, forKey: .mobile)

            pincode = try container.decode(String.self, forKey: .pincode)

            firstName = try container.decode(String.self, forKey: .firstName)

            email = try container.decode(String.self, forKey: .email)

            do {
                address1 = try container.decode(String.self, forKey: .address1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(address1, forKey: .address1)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(address2, forKey: .address2)
        }
    }
}
