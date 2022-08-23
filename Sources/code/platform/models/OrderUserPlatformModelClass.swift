

import Foundation
public extension PlatformClient {
    /*
         Model: OrderUser
         Used By: Order
     */

    class OrderUser: Codable {
        public var email: String

        public var firstName: String

        public var pincode: String

        public var state: String

        public var phone: Int

        public var mobile: Int

        public var address2: String?

        public var country: String

        public var city: String

        public var address1: String?

        public var lastName: String

        public enum CodingKeys: String, CodingKey {
            case email

            case firstName = "first_name"

            case pincode

            case state

            case phone

            case mobile

            case address2

            case country

            case city

            case address1

            case lastName = "last_name"
        }

        public init(address1: String? = nil, address2: String? = nil, city: String, country: String, email: String, firstName: String, lastName: String, mobile: Int, phone: Int, pincode: String, state: String) {
            self.email = email

            self.firstName = firstName

            self.pincode = pincode

            self.state = state

            self.phone = phone

            self.mobile = mobile

            self.address2 = address2

            self.country = country

            self.city = city

            self.address1 = address1

            self.lastName = lastName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            email = try container.decode(String.self, forKey: .email)

            firstName = try container.decode(String.self, forKey: .firstName)

            pincode = try container.decode(String.self, forKey: .pincode)

            state = try container.decode(String.self, forKey: .state)

            phone = try container.decode(Int.self, forKey: .phone)

            mobile = try container.decode(Int.self, forKey: .mobile)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            city = try container.decode(String.self, forKey: .city)

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

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encode(address2, forKey: .address2)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encode(address1, forKey: .address1)

            try? container.encodeIfPresent(lastName, forKey: .lastName)
        }
    }
}