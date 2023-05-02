

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AttachUserInfo
         Used By: Order
     */

    class AttachUserInfo: Codable {
        public var firstName: String

        public var lastName: String

        public var mobile: Int

        public enum CodingKeys: String, CodingKey {
            case firstName = "first_name"

            case lastName = "last_name"

            case mobile
        }

        public init(firstName: String, lastName: String, mobile: Int) {
            self.firstName = firstName

            self.lastName = lastName

            self.mobile = mobile
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            firstName = try container.decode(String.self, forKey: .firstName)

            lastName = try container.decode(String.self, forKey: .lastName)

            mobile = try container.decode(Int.self, forKey: .mobile)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(mobile, forKey: .mobile)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AttachUserInfo
         Used By: Order
     */

    class AttachUserInfo: Codable {
        public var firstName: String

        public var lastName: String

        public var mobile: Int

        public enum CodingKeys: String, CodingKey {
            case firstName = "first_name"

            case lastName = "last_name"

            case mobile
        }

        public init(firstName: String, lastName: String, mobile: Int) {
            self.firstName = firstName

            self.lastName = lastName

            self.mobile = mobile
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            firstName = try container.decode(String.self, forKey: .firstName)

            lastName = try container.decode(String.self, forKey: .lastName)

            mobile = try container.decode(Int.self, forKey: .mobile)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(mobile, forKey: .mobile)
        }
    }
}
