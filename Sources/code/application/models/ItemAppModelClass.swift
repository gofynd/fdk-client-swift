

import Foundation
public extension ApplicationClient {
    /*
         Model: Item
         Used By: Order
     */
    class Item: Codable {
        public var size: String?

        public var brand: ItemBrand?

        public var slugKey: String?

        public var sellerIdentifier: String?

        public var name: String?

        public var code: String?

        public var image: [String]?

        public var id: Int?

        public enum CodingKeys: String, CodingKey {
            case size

            case brand

            case slugKey = "slug_key"

            case sellerIdentifier = "seller_identifier"

            case name

            case code

            case image

            case id
        }

        public init(brand: ItemBrand? = nil, code: String? = nil, id: Int? = nil, image: [String]? = nil, name: String? = nil, sellerIdentifier: String? = nil, size: String? = nil, slugKey: String? = nil) {
            self.size = size

            self.brand = brand

            self.slugKey = slugKey

            self.sellerIdentifier = sellerIdentifier

            self.name = name

            self.code = code

            self.image = image

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                size = try container.decode(String.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brand = try container.decode(ItemBrand.self, forKey: .brand)

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
                sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

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
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(slugKey, forKey: .slugKey)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
