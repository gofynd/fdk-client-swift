

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: AttributeDetailsGroup
         Used By: Catalog
     */

    class AttributeDetailsGroup: Codable {
        public var key: String?

        public var slug: String?

        public var displayType: String

        public var name: String

        public var unit: String?

        public var logo: String?

        public var isActive: Bool

        public var priority: Int

        public enum CodingKeys: String, CodingKey {
            case key

            case slug

            case displayType = "display_type"

            case name

            case unit

            case logo

            case isActive = "is_active"

            case priority
        }

        public init(displayType: String, isActive: Bool, key: String? = nil, logo: String? = nil, name: String, priority: Int, slug: String? = nil, unit: String? = nil) {
            self.key = key

            self.slug = slug

            self.displayType = displayType

            self.name = name

            self.unit = unit

            self.logo = logo

            self.isActive = isActive

            self.priority = priority
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                key = try container.decode(String.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayType = try container.decode(String.self, forKey: .displayType)

            name = try container.decode(String.self, forKey: .name)

            do {
                unit = try container.decode(String.self, forKey: .unit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            priority = try container.decode(Int.self, forKey: .priority)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(displayType, forKey: .displayType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(priority, forKey: .priority)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: AttributeDetailsGroup
         Used By: Catalog
     */

    class AttributeDetailsGroup: Codable {
        public var key: String?

        public var slug: String?

        public var displayType: String

        public var name: String

        public var unit: String?

        public var logo: String?

        public var isActive: Bool

        public var priority: Int

        public enum CodingKeys: String, CodingKey {
            case key

            case slug

            case displayType = "display_type"

            case name

            case unit

            case logo

            case isActive = "is_active"

            case priority
        }

        public init(displayType: String, isActive: Bool, key: String? = nil, logo: String? = nil, name: String, priority: Int, slug: String? = nil, unit: String? = nil) {
            self.key = key

            self.slug = slug

            self.displayType = displayType

            self.name = name

            self.unit = unit

            self.logo = logo

            self.isActive = isActive

            self.priority = priority
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                key = try container.decode(String.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayType = try container.decode(String.self, forKey: .displayType)

            name = try container.decode(String.self, forKey: .name)

            do {
                unit = try container.decode(String.self, forKey: .unit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            priority = try container.decode(Int.self, forKey: .priority)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(displayType, forKey: .displayType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(priority, forKey: .priority)
        }
    }
}
