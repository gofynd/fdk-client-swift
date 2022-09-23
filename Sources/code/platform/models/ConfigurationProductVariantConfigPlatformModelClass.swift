

import Foundation
public extension PlatformClient {
    /*
         Model: ConfigurationProductVariantConfig
         Used By: Catalog
     */

    class ConfigurationProductVariantConfig: Codable {
        public var name: String

        public var logo: String?

        public var size: ProductSize

        public var isActive: Bool

        public var priority: Int

        public var key: String

        public var displayType: String

        public enum CodingKeys: String, CodingKey {
            case name

            case logo

            case size

            case isActive = "is_active"

            case priority

            case key

            case displayType = "display_type"
        }

        public init(displayType: String, isActive: Bool, key: String, logo: String? = nil, name: String, priority: Int, size: ProductSize) {
            self.name = name

            self.logo = logo

            self.size = size

            self.isActive = isActive

            self.priority = priority

            self.key = key

            self.displayType = displayType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(ProductSize.self, forKey: .size)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            priority = try container.decode(Int.self, forKey: .priority)

            key = try container.decode(String.self, forKey: .key)

            displayType = try container.decode(String.self, forKey: .displayType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(displayType, forKey: .displayType)
        }
    }
}
