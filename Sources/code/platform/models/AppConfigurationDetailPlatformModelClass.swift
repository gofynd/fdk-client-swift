

import Foundation
public extension PlatformClient {
    /*
         Model: AppConfigurationDetail
         Used By: Catalog
     */

    class AppConfigurationDetail: Codable {
        public var slug: String

        public var name: String?

        public var logo: String?

        public var isActive: Bool

        public var templateSlugs: [String]?

        public var appId: String

        public var attributes: [AttributeDetailsGroup]?

        public var isDefault: Bool

        public var priority: Int

        public enum CodingKeys: String, CodingKey {
            case slug

            case name

            case logo

            case isActive = "is_active"

            case templateSlugs = "template_slugs"

            case appId = "app_id"

            case attributes

            case isDefault = "is_default"

            case priority
        }

        public init(appId: String, attributes: [AttributeDetailsGroup]? = nil, isActive: Bool, isDefault: Bool, logo: String? = nil, name: String? = nil, priority: Int, slug: String, templateSlugs: [String]? = nil) {
            self.slug = slug

            self.name = name

            self.logo = logo

            self.isActive = isActive

            self.templateSlugs = templateSlugs

            self.appId = appId

            self.attributes = attributes

            self.isDefault = isDefault

            self.priority = priority
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            slug = try container.decode(String.self, forKey: .slug)

            do {
                name = try container.decode(String.self, forKey: .name)

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

            do {
                templateSlugs = try container.decode([String].self, forKey: .templateSlugs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)

            do {
                attributes = try container.decode([AttributeDetailsGroup].self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isDefault = try container.decode(Bool.self, forKey: .isDefault)

            priority = try container.decode(Int.self, forKey: .priority)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(templateSlugs, forKey: .templateSlugs)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(priority, forKey: .priority)
        }
    }
}
