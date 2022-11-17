

import Foundation
public extension PlatformClient {
    /*
         Model: AttributeDetailsGroup
         Used By: Catalog
     */

    class AttributeDetailsGroup: Codable {
        public var name: String

        public var key: String?

        public var slug: String?

        public var isActive: Bool

        public var logo: String?

        public var unit: String?

        public var priority: Int

        public var displayType: String

        public enum CodingKeys: String, CodingKey {
            case name

            case key

            case slug

            case isActive = "is_active"

            case logo

            case unit

            case priority

            case displayType = "display_type"
        }

        public init(displayType: String, isActive: Bool, key: String? = nil, logo: String? = nil, name: String, priority: Int, slug: String? = nil, unit: String? = nil) {
            self.name = name

            self.key = key

            self.slug = slug

            self.isActive = isActive

            self.logo = logo

            self.unit = unit

            self.priority = priority

            self.displayType = displayType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

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

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                unit = try container.decode(String.self, forKey: .unit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priority = try container.decode(Int.self, forKey: .priority)

            displayType = try container.decode(String.self, forKey: .displayType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(unit, forKey: .unit)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(displayType, forKey: .displayType)
        }
    }
}
