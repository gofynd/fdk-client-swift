

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AttachUserInfo
         Used By: Order
     */

    class AttachUserInfo: Codable {
        public var countryCode: String?

        public var lastName: String

        public var mobile: Int

        public var firstName: String

        public enum CodingKeys: String, CodingKey {
            case countryCode = "country_code"

            case lastName = "last_name"

            case mobile

            case firstName = "first_name"
        }

        public init(countryCode: String? = nil, firstName: String, lastName: String, mobile: Int) {
            self.countryCode = countryCode

            self.lastName = lastName

            self.mobile = mobile

            self.firstName = firstName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                countryCode = try container.decode(String.self, forKey: .countryCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            lastName = try container.decode(String.self, forKey: .lastName)

            mobile = try container.decode(Int.self, forKey: .mobile)

            firstName = try container.decode(String.self, forKey: .firstName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(firstName, forKey: .firstName)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AttachUserInfo
         Used By: Order
     */

    class AttachUserInfo: Codable {
        public var countryCode: String?

        public var lastName: String

        public var mobile: Int

        public var firstName: String

        public enum CodingKeys: String, CodingKey {
            case countryCode = "country_code"

            case lastName = "last_name"

            case mobile

            case firstName = "first_name"
        }

        public init(countryCode: String? = nil, firstName: String, lastName: String, mobile: Int) {
            self.countryCode = countryCode

            self.lastName = lastName

            self.mobile = mobile

            self.firstName = firstName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                countryCode = try container.decode(String.self, forKey: .countryCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            lastName = try container.decode(String.self, forKey: .lastName)

            mobile = try container.decode(Int.self, forKey: .mobile)

            firstName = try container.decode(String.self, forKey: .firstName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(firstName, forKey: .firstName)
        }
    }
}
