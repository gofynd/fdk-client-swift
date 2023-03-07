

import Foundation

public extension PlatformClient.Order {
    /*
         Model: StoreEinvoice
         Used By: Order
     */

    class StoreEinvoice: Codable {
        public var password: String?

        public var enabled: Bool

        public var user: String?

        public var username: String?

        public enum CodingKeys: String, CodingKey {
            case password

            case enabled

            case user

            case username
        }

        public init(enabled: Bool, password: String? = nil, user: String? = nil, username: String? = nil) {
            self.password = password

            self.enabled = enabled

            self.user = user

            self.username = username
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                password = try container.decode(String.self, forKey: .password)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            enabled = try container.decode(Bool.self, forKey: .enabled)

            do {
                user = try container.decode(String.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                username = try container.decode(String.self, forKey: .username)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(password, forKey: .password)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(username, forKey: .username)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: StoreEinvoice
         Used By: Order
     */

    class StoreEinvoice: Codable {
        public var password: String?

        public var enabled: Bool

        public var user: String?

        public var username: String?

        public enum CodingKeys: String, CodingKey {
            case password

            case enabled

            case user

            case username
        }

        public init(enabled: Bool, password: String? = nil, user: String? = nil, username: String? = nil) {
            self.password = password

            self.enabled = enabled

            self.user = user

            self.username = username
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                password = try container.decode(String.self, forKey: .password)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            enabled = try container.decode(Bool.self, forKey: .enabled)

            do {
                user = try container.decode(String.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                username = try container.decode(String.self, forKey: .username)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(password, forKey: .password)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(username, forKey: .username)
        }
    }
}
