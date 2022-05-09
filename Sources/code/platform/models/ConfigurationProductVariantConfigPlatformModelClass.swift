

import Foundation
public extension PlatformClient {
    /*
         Model: ConfigurationProductVariantConfig
         Used By: Catalog
     */

    class ConfigurationProductVariantConfig: Codable {
        public var logo: String?

        public var size: ProductSize

        public var name: String

        public var priority: Int

        public var displayType: String

        public var isActive: Bool

        public var key: String

        public enum CodingKeys: String, CodingKey {
            case logo

            case size

            case name

            case priority

            case displayType = "display_type"

            case isActive = "is_active"

            case key
        }

        public init(displayType: String, isActive: Bool, key: String, logo: String? = nil, name: String, priority: Int, size: ProductSize) {
            self.logo = logo

            self.size = size

            self.name = name

            self.priority = priority

            self.displayType = displayType

            self.isActive = isActive

            self.key = key
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(ProductSize.self, forKey: .size)

            name = try container.decode(String.self, forKey: .name)

            priority = try container.decode(Int.self, forKey: .priority)

            displayType = try container.decode(String.self, forKey: .displayType)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            key = try container.decode(String.self, forKey: .key)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(displayType, forKey: .displayType)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(key, forKey: .key)
        }
    }
}
