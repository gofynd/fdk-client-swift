

import Foundation

public extension PlatformClient.Order {
    /*
         Model: EInvoicePortalDetails
         Used By: Order
     */

    class EInvoicePortalDetails: Codable {
        public var password: String?

        public var user: String?

        public var username: String?

        public enum CodingKeys: String, CodingKey {
            case password

            case user

            case username
        }

        public init(password: String? = nil, user: String? = nil, username: String? = nil) {
            self.password = password

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

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(username, forKey: .username)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: EInvoicePortalDetails
         Used By: Order
     */

    class EInvoicePortalDetails: Codable {
        public var password: String?

        public var user: String?

        public var username: String?

        public enum CodingKeys: String, CodingKey {
            case password

            case user

            case username
        }

        public init(password: String? = nil, user: String? = nil, username: String? = nil) {
            self.password = password

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

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(username, forKey: .username)
        }
    }
}
