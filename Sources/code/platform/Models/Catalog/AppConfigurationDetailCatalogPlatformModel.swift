

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: AppConfigurationDetail
         Used By: Catalog
     */

    class AppConfigurationDetail: Codable {
        public var name: String?

        public var appId: String

        public var priority: Int

        public var templateSlugs: [String]?

        public var logo: String?

        public var slug: String

        public var isActive: Bool

        public var attributes: [AttributeDetailsGroup]?

        public var isDefault: Bool

        public enum CodingKeys: String, CodingKey {
            case name

            case appId = "app_id"

            case priority

            case templateSlugs = "template_slugs"

            case logo

            case slug

            case isActive = "is_active"

            case attributes

            case isDefault = "is_default"
        }

        public init(appId: String, attributes: [AttributeDetailsGroup]? = nil, isActive: Bool, isDefault: Bool, logo: String? = nil, name: String? = nil, priority: Int, slug: String, templateSlugs: [String]? = nil) {
            self.name = name

            self.appId = appId

            self.priority = priority

            self.templateSlugs = templateSlugs

            self.logo = logo

            self.slug = slug

            self.isActive = isActive

            self.attributes = attributes

            self.isDefault = isDefault
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)

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

            slug = try container.decode(String.self, forKey: .slug)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                attributes = try container.decode([AttributeDetailsGroup].self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isDefault = try container.decode(Bool.self, forKey: .isDefault)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(templateSlugs, forKey: .templateSlugs)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: AppConfigurationDetail
         Used By: Catalog
     */

    class AppConfigurationDetail: Codable {
        public var name: String?

        public var appId: String

        public var priority: Int

        public var templateSlugs: [String]?

        public var logo: String?

        public var slug: String

        public var isActive: Bool

        public var attributes: [AttributeDetailsGroup]?

        public var isDefault: Bool

        public enum CodingKeys: String, CodingKey {
            case name

            case appId = "app_id"

            case priority

            case templateSlugs = "template_slugs"

            case logo

            case slug

            case isActive = "is_active"

            case attributes

            case isDefault = "is_default"
        }

        public init(appId: String, attributes: [AttributeDetailsGroup]? = nil, isActive: Bool, isDefault: Bool, logo: String? = nil, name: String? = nil, priority: Int, slug: String, templateSlugs: [String]? = nil) {
            self.name = name

            self.appId = appId

            self.priority = priority

            self.templateSlugs = templateSlugs

            self.logo = logo

            self.slug = slug

            self.isActive = isActive

            self.attributes = attributes

            self.isDefault = isDefault
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            appId = try container.decode(String.self, forKey: .appId)

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

            slug = try container.decode(String.self, forKey: .slug)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                attributes = try container.decode([AttributeDetailsGroup].self, forKey: .attributes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            isDefault = try container.decode(Bool.self, forKey: .isDefault)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(templateSlugs, forKey: .templateSlugs)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(attributes, forKey: .attributes)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
        }
    }
}
