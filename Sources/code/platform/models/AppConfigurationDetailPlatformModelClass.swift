

import Foundation
public extension PlatformClient {
    /*
         Model: AppConfigurationDetail
         Used By: Catalog
     */

    class AppConfigurationDetail: Codable {
        public var isActive: Bool

        public var appId: String

        public var isDefault: Bool

        public var slug: String

        public var attributes: [AttributeDetailsGroup]?

        public var name: String?

        public var priority: Int

        public var templateSlugs: [String]?

        public var logo: String?

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case appId = "app_id"

            case isDefault = "is_default"

            case slug

            case attributes

            case name

            case priority

            case templateSlugs = "template_slugs"

            case logo
        }

        public init(appId: String, attributes: [AttributeDetailsGroup]? = nil, isActive: Bool, isDefault: Bool, logo: String? = nil, name: String? = nil, priority: Int, slug: String, templateSlugs: [String]? = nil) {
            self.isActive = isActive

            self.appId = appId

            self.isDefault = isDefault

            self.slug = slug

            self.attributes = attributes

            self.name = name

            self.priority = priority

            self.templateSlugs = templateSlugs

            self.logo = logo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            appId = try container.decode(String.self, forKey: .appId)

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            slug = try container.decode(String.self, forKey: .slug)

            do {
                attributes = try container.decode([AttributeDetailsGroup].self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priority = try container.decode(Int.self, forKey: .priority)

            do {
                templateSlugs = try container.decode([String].self, forKey: .templateSlugs)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(templateSlugs, forKey: .templateSlugs)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }
}
