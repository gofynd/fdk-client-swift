

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: ConfigurationProductVariantConfig
         Used By: Catalog
     */

    class ConfigurationProductVariantConfig: Codable {
        public var name: String

        public var key: String

        public var isActive: Bool

        public var logo: String?

        public var displayType: String

        public var size: ProductSize

        public var priority: Int

        public enum CodingKeys: String, CodingKey {
            case name

            case key

            case isActive = "is_active"

            case logo

            case displayType = "display_type"

            case size

            case priority
        }

        public init(displayType: String, isActive: Bool, key: String, logo: String? = nil, name: String, priority: Int, size: ProductSize) {
            self.name = name

            self.key = key

            self.isActive = isActive

            self.logo = logo

            self.displayType = displayType

            self.size = size

            self.priority = priority
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            key = try container.decode(String.self, forKey: .key)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayType = try container.decode(String.self, forKey: .displayType)

            size = try container.decode(ProductSize.self, forKey: .size)

            priority = try container.decode(Int.self, forKey: .priority)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(displayType, forKey: .displayType)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(priority, forKey: .priority)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: ConfigurationProductVariantConfig
         Used By: Catalog
     */

    class ConfigurationProductVariantConfig: Codable {
        public var name: String

        public var key: String

        public var isActive: Bool

        public var logo: String?

        public var displayType: String

        public var size: ProductSize

        public var priority: Int

        public enum CodingKeys: String, CodingKey {
            case name

            case key

            case isActive = "is_active"

            case logo

            case displayType = "display_type"

            case size

            case priority
        }

        public init(displayType: String, isActive: Bool, key: String, logo: String? = nil, name: String, priority: Int, size: ProductSize) {
            self.name = name

            self.key = key

            self.isActive = isActive

            self.logo = logo

            self.displayType = displayType

            self.size = size

            self.priority = priority
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            key = try container.decode(String.self, forKey: .key)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayType = try container.decode(String.self, forKey: .displayType)

            size = try container.decode(ProductSize.self, forKey: .size)

            priority = try container.decode(Int.self, forKey: .priority)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(displayType, forKey: .displayType)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(priority, forKey: .priority)
        }
    }
}