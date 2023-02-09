

import Foundation
public extension PlatformClient {
    /*
         Model: ConfigurationProductVariantConfig
         Used By: Catalog
     */

    class ConfigurationProductVariantConfig: Codable {
        public var key: String

        public var displayType: String

        public var name: String

        public var logo: String?

        public var isActive: Bool

        public var priority: Int

        public var size: ProductSize

        public enum CodingKeys: String, CodingKey {
            case key

            case displayType = "display_type"

            case name

            case logo

            case isActive = "is_active"

            case priority

            case size
        }

        public init(displayType: String, isActive: Bool, key: String, logo: String? = nil, name: String, priority: Int, size: ProductSize) {
            self.key = key

            self.displayType = displayType

            self.name = name

            self.logo = logo

            self.isActive = isActive

            self.priority = priority

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            key = try container.decode(String.self, forKey: .key)

            displayType = try container.decode(String.self, forKey: .displayType)

            name = try container.decode(String.self, forKey: .name)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            priority = try container.decode(Int.self, forKey: .priority)

            size = try container.decode(ProductSize.self, forKey: .size)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(displayType, forKey: .displayType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(size, forKey: .size)
        }
    }
}
