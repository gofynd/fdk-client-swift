

import Foundation
public extension PlatformClient {
    /*
         Model: ConfigurationProductVariantConfig
         Used By: Catalog
     */

    class ConfigurationProductVariantConfig: Codable {
        public var name: String

        public var displayType: String

        public var size: ProductSize

        public var priority: Int

        public var logo: String?

        public var key: String

        public var isActive: Bool

        public enum CodingKeys: String, CodingKey {
            case name

            case displayType = "display_type"

            case size

            case priority

            case logo

            case key

            case isActive = "is_active"
        }

        public init(displayType: String, isActive: Bool, key: String, logo: String? = nil, name: String, priority: Int, size: ProductSize) {
            self.name = name

            self.displayType = displayType

            self.size = size

            self.priority = priority

            self.logo = logo

            self.key = key

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            displayType = try container.decode(String.self, forKey: .displayType)

            size = try container.decode(ProductSize.self, forKey: .size)

            priority = try container.decode(Int.self, forKey: .priority)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            key = try container.decode(String.self, forKey: .key)

            isActive = try container.decode(Bool.self, forKey: .isActive)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(displayType, forKey: .displayType)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
