

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AttachUserInfo
         Used By: Order
     */

    class AttachUserInfo: Codable {
        public var mobile: String

        public var countryCode: String?

        public var firstName: String

        public var lastName: String

        public enum CodingKeys: String, CodingKey {
            case mobile

            case countryCode = "country_code"

            case firstName = "first_name"

            case lastName = "last_name"
        }

        public init(countryCode: String? = nil, firstName: String, lastName: String, mobile: String) {
            self.mobile = mobile

            self.countryCode = countryCode

            self.firstName = firstName

            self.lastName = lastName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mobile = try container.decode(String.self, forKey: .mobile)

            do {
                countryCode = try container.decode(String.self, forKey: .countryCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            firstName = try container.decode(String.self, forKey: .firstName)

            lastName = try container.decode(String.self, forKey: .lastName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

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
        public var mobile: String

        public var countryCode: String?

        public var firstName: String

        public var lastName: String

        public enum CodingKeys: String, CodingKey {
            case mobile

            case countryCode = "country_code"

            case firstName = "first_name"

            case lastName = "last_name"
        }

        public init(countryCode: String? = nil, firstName: String, lastName: String, mobile: String) {
            self.mobile = mobile

            self.countryCode = countryCode

            self.firstName = firstName

            self.lastName = lastName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mobile = try container.decode(String.self, forKey: .mobile)

            do {
                countryCode = try container.decode(String.self, forKey: .countryCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            firstName = try container.decode(String.self, forKey: .firstName)

            lastName = try container.decode(String.self, forKey: .lastName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(lastName, forKey: .lastName)
        }
    }
}
