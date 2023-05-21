

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ConfigurationProductVariantConfig
         Used By: Catalog
     */

    class ConfigurationProductVariantConfig: Codable {
        public var priority: Int

        public var name: String

        public var isActive: Bool

        public var displayType: String

        public var key: String

        public var size: ProductSize

        public var logo: String?

        public enum CodingKeys: String, CodingKey {
            case priority

            case name

            case isActive = "is_active"

            case displayType = "display_type"

            case key

            case size

            case logo
        }

        public init(displayType: String, isActive: Bool, key: String, logo: String? = nil, name: String, priority: Int, size: ProductSize) {
            self.priority = priority

            self.name = name

            self.isActive = isActive

            self.displayType = displayType

            self.key = key

            self.size = size

            self.logo = logo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priority = try container.decode(Int.self, forKey: .priority)

            name = try container.decode(String.self, forKey: .name)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            displayType = try container.decode(String.self, forKey: .displayType)

            key = try container.decode(String.self, forKey: .key)

            size = try container.decode(ProductSize.self, forKey: .size)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(displayType, forKey: .displayType)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ConfigurationProductVariantConfig
         Used By: Catalog
     */

    class ConfigurationProductVariantConfig: Codable {
        public var priority: Int

        public var name: String

        public var isActive: Bool

        public var displayType: String

        public var key: String

        public var size: ProductSize

        public var logo: String?

        public enum CodingKeys: String, CodingKey {
            case priority

            case name

            case isActive = "is_active"

            case displayType = "display_type"

            case key

            case size

            case logo
        }

        public init(displayType: String, isActive: Bool, key: String, logo: String? = nil, name: String, priority: Int, size: ProductSize) {
            self.priority = priority

            self.name = name

            self.isActive = isActive

            self.displayType = displayType

            self.key = key

            self.size = size

            self.logo = logo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priority = try container.decode(Int.self, forKey: .priority)

            name = try container.decode(String.self, forKey: .name)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            displayType = try container.decode(String.self, forKey: .displayType)

            key = try container.decode(String.self, forKey: .key)

            size = try container.decode(ProductSize.self, forKey: .size)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(displayType, forKey: .displayType)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }
}
