

import Foundation
public extension PlatformClient {
    /*
         Model: AttributeDetailsGroup
         Used By: Catalog
     */

    class AttributeDetailsGroup: Codable {
        public var unit: String?

        public var isActive: Bool

        public var name: String

        public var key: String?

        public var priority: Int

        public var logo: String?

        public var displayType: String

        public var slug: String?

        public enum CodingKeys: String, CodingKey {
            case unit

            case isActive = "is_active"

            case name

            case key

            case priority

            case logo

            case displayType = "display_type"

            case slug
        }

        public init(displayType: String, isActive: Bool, key: String? = nil, logo: String? = nil, name: String, priority: Int, slug: String? = nil, unit: String? = nil) {
            self.unit = unit

            self.isActive = isActive

            self.name = name

            self.key = key

            self.priority = priority

            self.logo = logo

            self.displayType = displayType

            self.slug = slug
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                unit = try container.decode(String.self, forKey: .unit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isActive = try container.decode(Bool.self, forKey: .isActive)

            name = try container.decode(String.self, forKey: .name)

            do {
                key = try container.decode(String.self, forKey: .key)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priority = try container.decode(Int.self, forKey: .priority)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayType = try container.decode(String.self, forKey: .displayType)

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(displayType, forKey: .displayType)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }
}
