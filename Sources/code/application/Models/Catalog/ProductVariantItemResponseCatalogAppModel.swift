

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: ProductVariantItemResponse
         Used By: Catalog
     */
    class ProductVariantItemResponse: Codable {
        public var name: String?

        public var colorName: String?

        public var uid: Int?

        public var slug: String?

        public var action: ProductListingAction?

        public var medias: [Media]?

        public var customMeta: [CustomMetaFields]?

        public var value: String?

        public var isAvailable: Bool?

        public var color: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case colorName = "color_name"

            case uid

            case slug

            case action

            case medias

            case customMeta = "_custom_meta"

            case value

            case isAvailable = "is_available"

            case color
        }

        public init(action: ProductListingAction? = nil, color: String? = nil, colorName: String? = nil, isAvailable: Bool? = nil, medias: [Media]? = nil, name: String? = nil, slug: String? = nil, uid: Int? = nil, value: String? = nil, customMeta: [CustomMetaFields]? = nil) {
            self.name = name

            self.colorName = colorName

            self.uid = uid

            self.slug = slug

            self.action = action

            self.medias = medias

            self.customMeta = customMeta

            self.value = value

            self.isAvailable = isAvailable

            self.color = color
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                colorName = try container.decode(String.self, forKey: .colorName)

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
                slug = try container.decode(String.self, forKey: .slug)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(ProductListingAction.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                medias = try container.decode([Media].self, forKey: .medias)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customMeta = try container.decode([CustomMetaFields].self, forKey: .customMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isAvailable = try container.decode(Bool.self, forKey: .isAvailable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                color = try container.decode(String.self, forKey: .color)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(colorName, forKey: .colorName)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(medias, forKey: .medias)

            try? container.encodeIfPresent(customMeta, forKey: .customMeta)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)

            try? container.encodeIfPresent(color, forKey: .color)
        }
    }
}
