

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AttachUserInfo
         Used By: Order
     */

    class AttachUserInfo: Codable {
        public var lastName: String

        public var mobile: String

        public var firstName: String

        public var countryCode: String?

        public enum CodingKeys: String, CodingKey {
            case lastName = "last_name"

            case mobile

            case firstName = "first_name"

            case countryCode = "country_code"
        }

        public init(countryCode: String? = nil, firstName: String, lastName: String, mobile: String) {
            self.lastName = lastName

            self.mobile = mobile

            self.firstName = firstName

            self.countryCode = countryCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            lastName = try container.decode(String.self, forKey: .lastName)

            mobile = try container.decode(String.self, forKey: .mobile)

            firstName = try container.decode(String.self, forKey: .firstName)

            do {
                countryCode = try container.decode(String.self, forKey: .countryCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AttachUserInfo
         Used By: Order
     */

    class AttachUserInfo: Codable {
        public var lastName: String

        public var mobile: String

        public var firstName: String

        public var countryCode: String?

        public enum CodingKeys: String, CodingKey {
            case lastName = "last_name"

            case mobile

            case firstName = "first_name"

            case countryCode = "country_code"
        }

        public init(countryCode: String? = nil, firstName: String, lastName: String, mobile: String) {
            self.lastName = lastName

            self.mobile = mobile

            self.firstName = firstName

            self.countryCode = countryCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            lastName = try container.decode(String.self, forKey: .lastName)

            mobile = try container.decode(String.self, forKey: .mobile)

            firstName = try container.decode(String.self, forKey: .firstName)

            do {
                countryCode = try container.decode(String.self, forKey: .countryCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
        }
    }
}
