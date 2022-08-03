

import Foundation
public extension PlatformClient {
    /*
         Model: AttributeDetailsGroup
         Used By: Catalog
     */

    class AttributeDetailsGroup: Codable {
        public var key: String?

        public var logo: String?

        public var slug: String?

        public var name: String

        public var isActive: Bool

        public var priority: Int

        public var displayType: String

        public var unit: String?

        public enum CodingKeys: String, CodingKey {
            case key

            case logo

            case slug

            case name

            case isActive = "is_active"

            case priority

            case displayType = "display_type"

            case unit
        }

        public init(displayType: String, isActive: Bool, key: String? = nil, logo: String? = nil, name: String, priority: Int, slug: String? = nil, unit: String? = nil) {
            self.key = key

            self.logo = logo

            self.slug = slug

            self.name = name

            self.isActive = isActive

            self.priority = priority

            self.displayType = displayType

            self.unit = unit
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
                logo = try container.decode(String.self, forKey: .logo)

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

            name = try container.decode(String.self, forKey: .name)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            priority = try container.decode(Int.self, forKey: .priority)

            displayType = try container.decode(String.self, forKey: .displayType)

            do {
                unit = try container.decode(String.self, forKey: .unit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(key, forKey: .key)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(displayType, forKey: .displayType)

            try? container.encodeIfPresent(unit, forKey: .unit)
        }
    }
}
