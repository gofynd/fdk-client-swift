

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AttachUserInfo
         Used By: Order
     */

    class AttachUserInfo: Codable {
        public var mobile: Int

        public var firstName: String

        public var countryCode: String?

        public var lastName: String

        public enum CodingKeys: String, CodingKey {
            case mobile

            case firstName = "first_name"

            case countryCode = "country_code"

            case lastName = "last_name"
        }

        public init(countryCode: String? = nil, firstName: String, lastName: String, mobile: Int) {
            self.mobile = mobile

            self.firstName = firstName

            self.countryCode = countryCode

            self.lastName = lastName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mobile = try container.decode(Int.self, forKey: .mobile)

            firstName = try container.decode(String.self, forKey: .firstName)

            do {
                countryCode = try container.decode(String.self, forKey: .countryCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            lastName = try container.decode(String.self, forKey: .lastName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(lastName, forKey: .lastName)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AttachUserInfo
         Used By: Order
     */

    class AttachUserInfo: Codable {
        public var mobile: Int

        public var firstName: String

        public var countryCode: String?

        public var lastName: String

        public enum CodingKeys: String, CodingKey {
            case mobile

            case firstName = "first_name"

            case countryCode = "country_code"

            case lastName = "last_name"
        }

        public init(countryCode: String? = nil, firstName: String, lastName: String, mobile: Int) {
            self.mobile = mobile

            self.firstName = firstName

            self.countryCode = countryCode

            self.lastName = lastName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mobile = try container.decode(Int.self, forKey: .mobile)

            firstName = try container.decode(String.self, forKey: .firstName)

            do {
                countryCode = try container.decode(String.self, forKey: .countryCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            lastName = try container.decode(String.self, forKey: .lastName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(lastName, forKey: .lastName)
        }
    }
}
