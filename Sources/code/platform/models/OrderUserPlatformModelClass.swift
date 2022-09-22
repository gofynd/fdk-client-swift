

import Foundation
public extension PlatformClient {
    /*
         Model: OrderUser
         Used By: Order
     */

    class OrderUser: Codable {
        public var address1: String?

        public var pincode: String

        public var country: String

        public var mobile: Int

        public var email: String

        public var city: String

        public var lastName: String

        public var state: String

        public var phone: Int

        public var firstName: String

        public var address2: String?

        public enum CodingKeys: String, CodingKey {
            case address1

            case pincode

            case country

            case mobile

            case email

            case city

            case lastName = "last_name"

            case state

            case phone

            case firstName = "first_name"

            case address2
        }

        public init(address1: String? = nil, address2: String? = nil, city: String, country: String, email: String, firstName: String, lastName: String, mobile: Int, phone: Int, pincode: String, state: String) {
            self.address1 = address1

            self.pincode = pincode

            self.country = country

            self.mobile = mobile

            self.email = email

            self.city = city

            self.lastName = lastName

            self.state = state

            self.phone = phone

            self.firstName = firstName

            self.address2 = address2
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                address1 = try container.decode(String.self, forKey: .address1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            country = try container.decode(String.self, forKey: .country)

            mobile = try container.decode(Int.self, forKey: .mobile)

            email = try container.decode(String.self, forKey: .email)

            city = try container.decode(String.self, forKey: .city)

            lastName = try container.decode(String.self, forKey: .lastName)

            state = try container.decode(String.self, forKey: .state)

            phone = try container.decode(Int.self, forKey: .phone)

            firstName = try container.decode(String.self, forKey: .firstName)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(address1, forKey: .address1)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encode(address2, forKey: .address2)
        }
    }
}
