

import Foundation
public extension PlatformClient {
    /*
         Model: ConfigurationListingSortConfig
         Used By: Catalog
     */

    class ConfigurationListingSortConfig: Codable {
        public var priority: Int

        public var key: String

        public var logo: String?

        public var name: String?

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case priority

            case key

            case logo

            case name

            case isActive = "is_active"
        }

        public init(isActive: Bool, key: String, logo: String? = nil, name: String? = nil, priority: Int) {
            self.priority = priority

            self.key = key

            self.logo = logo

            self.name = name

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priority = try container.decode(Int.self, forKey: .priority)

            key = try container.decode(String.self, forKey: .key)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
