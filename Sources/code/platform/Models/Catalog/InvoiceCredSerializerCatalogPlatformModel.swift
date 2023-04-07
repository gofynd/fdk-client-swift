

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: InvoiceCredSerializer
         Used By: Catalog
     */

    class InvoiceCredSerializer: Codable {
        public var password: String?

        public var username: String?

        public var enabled: Bool?

        public enum CodingKeys: String, CodingKey {
            case password

            case username

            case enabled
        }

        public init(enabled: Bool? = nil, password: String? = nil, username: String? = nil) {
            self.password = password

            self.username = username

            self.enabled = enabled
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
                username = try container.decode(String.self, forKey: .username)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(password, forKey: .password)

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(enabled, forKey: .enabled)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: InvoiceCredSerializer
         Used By: Catalog
     */

    class InvoiceCredSerializer: Codable {
        public var password: String?

        public var username: String?

        public var enabled: Bool?

        public enum CodingKeys: String, CodingKey {
            case password

            case username

            case enabled
        }

        public init(enabled: Bool? = nil, password: String? = nil, username: String? = nil) {
            self.password = password

            self.username = username

            self.enabled = enabled
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
                username = try container.decode(String.self, forKey: .username)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(password, forKey: .password)

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(enabled, forKey: .enabled)
        }
    }
}
