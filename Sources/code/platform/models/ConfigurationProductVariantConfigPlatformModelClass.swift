

import Foundation
public extension PlatformClient {
    /*
         Model: ConfigurationProductVariantConfig
         Used By: Catalog
     */

    class ConfigurationProductVariantConfig: Codable {
        public var isActive: Bool

        public var key: String

        public var priority: Int

        public var name: String

        public var size: ProductSize

        public var displayType: String

        public var logo: String?

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case key

            case priority

            case name

            case size

            case displayType = "display_type"

            case logo
        }

        public init(displayType: String, isActive: Bool, key: String, logo: String? = nil, name: String, priority: Int, size: ProductSize) {
            self.isActive = isActive

            self.key = key

            self.priority = priority

            self.name = name

            self.size = size

            self.displayType = displayType

            self.logo = logo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            key = try container.decode(String.self, forKey: .key)

            priority = try container.decode(Int.self, forKey: .priority)

            name = try container.decode(String.self, forKey: .name)

            size = try container.decode(ProductSize.self, forKey: .size)

            displayType = try container.decode(String.self, forKey: .displayType)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(displayType, forKey: .displayType)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }
}
