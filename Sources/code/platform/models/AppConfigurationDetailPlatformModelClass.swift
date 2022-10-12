

import Foundation
public extension PlatformClient {
    /*
         Model: AppConfigurationDetail
         Used By: Catalog
     */

    class AppConfigurationDetail: Codable {
        public var logo: String?

        public var slug: String

        public var attributes: [AttributeDetailsGroup]?

        public var priority: Int

        public var templateSlugs: [String]?

        public var isDefault: Bool

        public var appId: String

        public var isActive: Bool

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case logo

            case slug

            case attributes

            case priority

            case templateSlugs = "template_slugs"

            case isDefault = "is_default"

            case appId = "app_id"

            case isActive = "is_active"

            case name
        }

        public init(appId: String, attributes: [AttributeDetailsGroup]? = nil, isActive: Bool, isDefault: Bool, logo: String? = nil, name: String? = nil, priority: Int, slug: String, templateSlugs: [String]? = nil) {
            self.logo = logo

            self.slug = slug

            self.attributes = attributes

            self.priority = priority

            self.templateSlugs = templateSlugs

            self.isDefault = isDefault

            self.appId = appId

            self.isActive = isActive

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slug = try container.decode(String.self, forKey: .slug)

            do {
                attributes = try container.decode([AttributeDetailsGroup].self, forKey: .attributes)

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

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            appId = try container.decode(String.self, forKey: .appId)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(templateSlugs, forKey: .templateSlugs)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
