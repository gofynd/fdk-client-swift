

import Foundation
public extension ApplicationClient.Order {
    /*
         Model: Item
         Used By: Order
     */
    class Item: Codable {
        public var brand: ItemBrand?

        public var name: String?

        public var l1Categories: [String]?

        public var size: String?

        public var slugKey: String?

        public var l3CategoryName: String?

        public var sellerIdentifier: String?

        public var l2Categories: [String]?

        public var code: String?

        public var image: [String]?

        public var id: Double?

        public enum CodingKeys: String, CodingKey {
            case brand

            case name

            case l1Categories = "l1_categories"

            case size

            case slugKey = "slug_key"

            case l3CategoryName = "l3_category_name"

            case sellerIdentifier = "seller_identifier"

            case l2Categories = "l2_categories"

            case code

            case image

            case id
        }

        public init(brand: ItemBrand? = nil, code: String? = nil, id: Double? = nil, image: [String]? = nil, l1Categories: [String]? = nil, l2Categories: [String]? = nil, l3CategoryName: String? = nil, name: String? = nil, sellerIdentifier: String? = nil, size: String? = nil, slugKey: String? = nil) {
            self.brand = brand

            self.name = name

            self.l1Categories = l1Categories

            self.size = size

            self.slugKey = slugKey

            self.l3CategoryName = l3CategoryName

            self.sellerIdentifier = sellerIdentifier

            self.l2Categories = l2Categories

            self.code = code

            self.image = image

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                brand = try container.decode(ItemBrand.self, forKey: .brand)

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
                l1Categories = try container.decode([String].self, forKey: .l1Categories)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                size = try container.decode(String.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slugKey = try container.decode(String.self, forKey: .slugKey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                l3CategoryName = try container.decode(String.self, forKey: .l3CategoryName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                l2Categories = try container.decode([String].self, forKey: .l2Categories)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                image = try container.decode([String].self, forKey: .image)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(Double.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(l1Categories, forKey: .l1Categories)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(slugKey, forKey: .slugKey)

            try? container.encodeIfPresent(l3CategoryName, forKey: .l3CategoryName)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(l2Categories, forKey: .l2Categories)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
