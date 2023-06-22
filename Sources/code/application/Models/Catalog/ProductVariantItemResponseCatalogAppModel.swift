

import Foundation
public extension ApplicationClient.Catalog {
    /*
         Model: ProductVariantItemResponse
         Used By: Catalog
     */
    class ProductVariantItemResponse: Codable {
        public var color: String?

        public var uid: Int?

        public var action: ProductListingAction?

        public var colorName: String?

        public var value: String?

        public var medias: [Media]?

        public var name: String?

        public var customMeta: [CustomMetaFields]?

        public var slug: String?

        public var isAvailable: Bool?

        public enum CodingKeys: String, CodingKey {
            case color

            case uid

            case action

            case colorName = "color_name"

            case value

            case medias

            case name

            case customMeta = "_custom_meta"

            case slug

            case isAvailable = "is_available"
        }

        public init(action: ProductListingAction? = nil, color: String? = nil, colorName: String? = nil, isAvailable: Bool? = nil, medias: [Media]? = nil, name: String? = nil, slug: String? = nil, uid: Int? = nil, value: String? = nil, customMeta: [CustomMetaFields]? = nil) {
            self.color = color

            self.uid = uid

            self.action = action

            self.colorName = colorName

            self.value = value

            self.medias = medias

            self.name = name

            self.customMeta = customMeta

            self.slug = slug

            self.isAvailable = isAvailable
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                color = try container.decode(String.self, forKey: .color)

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
                action = try container.decode(ProductListingAction.self, forKey: .action)

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
                value = try container.decode(String.self, forKey: .value)

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
                name = try container.decode(String.self, forKey: .name)

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
                slug = try container.decode(String.self, forKey: .slug)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(color, forKey: .color)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(colorName, forKey: .colorName)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(medias, forKey: .medias)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(customMeta, forKey: .customMeta)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(isAvailable, forKey: .isAvailable)
        }
    }
}
