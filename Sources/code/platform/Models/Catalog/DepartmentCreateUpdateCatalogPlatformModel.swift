

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: DepartmentCreateUpdate
         Used By: Catalog
     */

    class DepartmentCreateUpdate: Codable {
        public var uid: Int?

        public var customJson: [String: Any]?

        public var isActive: Bool?

        public var tags: [String]?

        public var priorityOrder: Int

        public var logo: String

        public var synonyms: [String]?

        public var name: String

        public var platforms: [String: Any]?

        public var slug: String?

        public var cls: String?

        public enum CodingKeys: String, CodingKey {
            case uid

            case customJson = "_custom_json"

            case isActive = "is_active"

            case tags

            case priorityOrder = "priority_order"

            case logo

            case synonyms

            case name

            case platforms

            case slug

            case cls = "_cls"
        }

        public init(isActive: Bool? = nil, logo: String, name: String, platforms: [String: Any]? = nil, priorityOrder: Int, slug: String? = nil, synonyms: [String]? = nil, tags: [String]? = nil, uid: Int? = nil, cls: String? = nil, customJson: [String: Any]? = nil) {
            self.uid = uid

            self.customJson = customJson

            self.isActive = isActive

            self.tags = tags

            self.priorityOrder = priorityOrder

            self.logo = logo

            self.synonyms = synonyms

            self.name = name

            self.platforms = platforms

            self.slug = slug

            self.cls = cls
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priorityOrder = try container.decode(Int.self, forKey: .priorityOrder)

            logo = try container.decode(String.self, forKey: .logo)

            do {
                synonyms = try container.decode([String].self, forKey: .synonyms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                platforms = try container.decode([String: Any].self, forKey: .platforms)

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

            do {
                cls = try container.decode(String.self, forKey: .cls)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(platforms, forKey: .platforms)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(cls, forKey: .cls)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: DepartmentCreateUpdate
         Used By: Catalog
     */

    class DepartmentCreateUpdate: Codable {
        public var uid: Int?

        public var customJson: [String: Any]?

        public var isActive: Bool?

        public var tags: [String]?

        public var priorityOrder: Int

        public var logo: String

        public var synonyms: [String]?

        public var name: String

        public var platforms: [String: Any]?

        public var slug: String?

        public var cls: String?

        public enum CodingKeys: String, CodingKey {
            case uid

            case customJson = "_custom_json"

            case isActive = "is_active"

            case tags

            case priorityOrder = "priority_order"

            case logo

            case synonyms

            case name

            case platforms

            case slug

            case cls = "_cls"
        }

        public init(isActive: Bool? = nil, logo: String, name: String, platforms: [String: Any]? = nil, priorityOrder: Int, slug: String? = nil, synonyms: [String]? = nil, tags: [String]? = nil, uid: Int? = nil, cls: String? = nil, customJson: [String: Any]? = nil) {
            self.uid = uid

            self.customJson = customJson

            self.isActive = isActive

            self.tags = tags

            self.priorityOrder = priorityOrder

            self.logo = logo

            self.synonyms = synonyms

            self.name = name

            self.platforms = platforms

            self.slug = slug

            self.cls = cls
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customJson = try container.decode([String: Any].self, forKey: .customJson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode([String].self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priorityOrder = try container.decode(Int.self, forKey: .priorityOrder)

            logo = try container.decode(String.self, forKey: .logo)

            do {
                synonyms = try container.decode([String].self, forKey: .synonyms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                platforms = try container.decode([String: Any].self, forKey: .platforms)

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

            do {
                cls = try container.decode(String.self, forKey: .cls)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(priorityOrder, forKey: .priorityOrder)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(synonyms, forKey: .synonyms)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(platforms, forKey: .platforms)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(cls, forKey: .cls)
        }
    }
}
