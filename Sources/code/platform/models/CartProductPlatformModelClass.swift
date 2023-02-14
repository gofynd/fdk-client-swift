

import Foundation
public extension PlatformClient {
    /*
         Model: CartProduct
         Used By: Cart
     */

    class CartProduct: Codable {
        public var slug: String?

        public var teaserTag: Tags?

        public var customJson: [String: Any]?

        public var categories: [CategoryInfo]?

        public var uid: Int?

        public var brand: BaseInfo?

        public var images: [ProductImage]?

        public var action: ProductAction?

        public var type: String?

        public var tags: [String]?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case slug

            case teaserTag = "teaser_tag"

            case customJson = "_custom_json"

            case categories

            case uid

            case brand

            case images

            case action

            case type

            case tags

            case name
        }

        public init(action: ProductAction? = nil, brand: BaseInfo? = nil, categories: [CategoryInfo]? = nil, images: [ProductImage]? = nil, name: String? = nil, slug: String? = nil, tags: [String]? = nil, teaserTag: Tags? = nil, type: String? = nil, uid: Int? = nil, customJson: [String: Any]? = nil) {
            self.slug = slug

            self.teaserTag = teaserTag

            self.customJson = customJson

            self.categories = categories

            self.uid = uid

            self.brand = brand

            self.images = images

            self.action = action

            self.type = type

            self.tags = tags

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                teaserTag = try container.decode(Tags.self, forKey: .teaserTag)

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
                categories = try container.decode([CategoryInfo].self, forKey: .categories)

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
                brand = try container.decode(BaseInfo.self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                images = try container.decode([ProductImage].self, forKey: .images)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(ProductAction.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

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

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(teaserTag, forKey: .teaserTag)

            try? container.encodeIfPresent(customJson, forKey: .customJson)

            try? container.encodeIfPresent(categories, forKey: .categories)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(images, forKey: .images)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
