

import Foundation
public extension PlatformClient {
    /*
         Model: ConfigurationListingSortConfig
         Used By: Catalog
     */

    class ConfigurationListingSortConfig: Codable {
        public var logo: String?

        public var key: String

        public var priority: Int

        public var isActive: Bool

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case logo

            case key

            case priority

            case isActive = "is_active"

            case name
        }

        public init(isActive: Bool, key: String, logo: String? = nil, name: String? = nil, priority: Int) {
            self.logo = logo

            self.key = key

            self.priority = priority

            self.isActive = isActive

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            key = try container.decode(String.self, forKey: .key)

            priority = try container.decode(Int.self, forKey: .priority)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
