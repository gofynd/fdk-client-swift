

import Foundation
public extension PlatformClient {
    /*
         Model: OrderUser
         Used By: OrderManage
     */

    class OrderUser: Codable {
        public var address2: String?

        public var state: String

        public var email: String

        public var lastName: String

        public var phone: Int

        public var firstName: String

        public var city: String

        public var pincode: String

        public var mobile: Int

        public var address1: String?

        public var country: String

        public enum CodingKeys: String, CodingKey {
            case address2

            case state

            case email

            case lastName = "last_name"

            case phone

            case firstName = "first_name"

            case city

            case pincode

            case mobile

            case address1

            case country
        }

        public init(address1: String? = nil, address2: String? = nil, city: String, country: String, email: String, firstName: String, lastName: String, mobile: Int, phone: Int, pincode: String, state: String) {
            self.address2 = address2

            self.state = state

            self.email = email

            self.lastName = lastName

            self.phone = phone

            self.firstName = firstName

            self.city = city

            self.pincode = pincode

            self.mobile = mobile

            self.address1 = address1

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

            state = try container.decode(String.self, forKey: .state)

            email = try container.decode(String.self, forKey: .email)

            lastName = try container.decode(String.self, forKey: .lastName)

            phone = try container.decode(Int.self, forKey: .phone)

            firstName = try container.decode(String.self, forKey: .firstName)

            city = try container.decode(String.self, forKey: .city)

            pincode = try container.decode(String.self, forKey: .pincode)

            mobile = try container.decode(Int.self, forKey: .mobile)

            do {
                address1 = try container.decode(String.self, forKey: .address1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(address2, forKey: .address2)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encode(address1, forKey: .address1)

            try? container.encodeIfPresent(country, forKey: .country)
        }
    }
}
