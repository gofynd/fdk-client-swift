

import Foundation
public extension PlatformClient {
    /*
         Model: ConfigurationProductVariantConfig
         Used By: Catalog
     */

    class ConfigurationProductVariantConfig: Codable {
        public var displayType: String

        public var size: ProductSize

        public var isActive: Bool

        public var logo: String?

        public var key: String

        public var priority: Int

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case displayType = "display_type"

            case size

            case isActive = "is_active"

            case logo

            case key

            case priority

            case name
        }

        public init(displayType: String, isActive: Bool, key: String, logo: String? = nil, name: String, priority: Int, size: ProductSize) {
            self.displayType = displayType

            self.size = size

            self.isActive = isActive

            self.logo = logo

            self.key = key

            self.priority = priority

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            displayType = try container.decode(String.self, forKey: .displayType)

            size = try container.decode(ProductSize.self, forKey: .size)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            key = try container.decode(String.self, forKey: .key)

            priority = try container.decode(Int.self, forKey: .priority)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(displayType, forKey: .displayType)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
