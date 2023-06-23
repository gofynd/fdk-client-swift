

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: CategoryItems
         Used By: Catalog
     */

    class CategoryItems: Codable {
        public var childs: [Child]?

        public var uid: Int?

        public var banners: ImageUrls?

        public var name: String?

        public var action: Action?

        public var slug: String?

        public enum CodingKeys: String, CodingKey {
            case childs

            case uid

            case banners

            case name

            case action

            case slug
        }

        public init(action: Action? = nil, banners: ImageUrls? = nil, childs: [Child]? = nil, name: String? = nil, slug: String? = nil, uid: Int? = nil) {
            self.childs = childs

            self.uid = uid

            self.banners = banners

            self.name = name

            self.action = action

            self.slug = slug
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                childs = try container.decode([Child].self, forKey: .childs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                banners = try container.decode(ImageUrls.self, forKey: .banners)

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

            do {
                action = try container.decode(Action.self, forKey: .action)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(childs, forKey: .childs)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: CategoryItems
         Used By: Catalog
     */

    class CategoryItems: Codable {
        public var childs: [Child]?

        public var uid: Int?

        public var banners: ImageUrls?

        public var name: String?

        public var action: Action?

        public var slug: String?

        public enum CodingKeys: String, CodingKey {
            case childs

            case uid

            case banners

            case name

            case action

            case slug
        }

        public init(action: Action? = nil, banners: ImageUrls? = nil, childs: [Child]? = nil, name: String? = nil, slug: String? = nil, uid: Int? = nil) {
            self.childs = childs

            self.uid = uid

            self.banners = banners

            self.name = name

            self.action = action

            self.slug = slug
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                childs = try container.decode([Child].self, forKey: .childs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(Int.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                banners = try container.decode(ImageUrls.self, forKey: .banners)

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

            do {
                action = try container.decode(Action.self, forKey: .action)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(childs, forKey: .childs)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(banners, forKey: .banners)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(slug, forKey: .slug)
        }
    }
}
