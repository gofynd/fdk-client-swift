

import Foundation

public extension PlatformClient.Theme {
    /*
         Model: Email
         Used By: Theme
     */

    class Email: Codable {
        public var active: Bool

        public var primary: Bool

        public var verified: Bool

        public var email: String

        public enum CodingKeys: String, CodingKey {
            case active

            case primary

            case verified

            case email
        }

        public init(active: Bool, email: String, primary: Bool, verified: Bool) {
            self.active = active

            self.primary = primary

            self.verified = verified

            self.email = email
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            active = try container.decode(Bool.self, forKey: .active)

            primary = try container.decode(Bool.self, forKey: .primary)

            verified = try container.decode(Bool.self, forKey: .verified)

            email = try container.decode(String.self, forKey: .email)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(primary, forKey: .primary)

            try? container.encodeIfPresent(verified, forKey: .verified)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }
}

public extension PlatformClient.ApplicationClient.Theme {
    /*
         Model: Email
         Used By: Theme
     */

    class Email: Codable {
        public var active: Bool

        public var primary: Bool

        public var verified: Bool

        public var email: String

        public enum CodingKeys: String, CodingKey {
            case active

            case primary

            case verified

            case email
        }

        public init(active: Bool, email: String, primary: Bool, verified: Bool) {
            self.active = active

            self.primary = primary

            self.verified = verified

            self.email = email
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            active = try container.decode(Bool.self, forKey: .active)

            primary = try container.decode(Bool.self, forKey: .primary)

            verified = try container.decode(Bool.self, forKey: .verified)

            email = try container.decode(String.self, forKey: .email)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(primary, forKey: .primary)

            try? container.encodeIfPresent(verified, forKey: .verified)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }
}
