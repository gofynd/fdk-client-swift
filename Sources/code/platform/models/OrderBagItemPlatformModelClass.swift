

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBagItem
         Used By: Orders
     */

    class OrderBagItem: Codable {
        public var size: String

        public var brand: String

        public var l3Category: Int

        public var name: String

        public var slugKey: String

        public var image: [String]?

        public var l1Category: [String]?

        public enum CodingKeys: String, CodingKey {
            case size

            case brand

            case l3Category = "l3_category"

            case name

            case slugKey = "slug_key"

            case image

            case l1Category = "l1_category"
        }

        public init(brand: String, image: [String]? = nil, l1Category: [String]? = nil, l3Category: Int, name: String, size: String, slugKey: String) {
            self.size = size

            self.brand = brand

            self.l3Category = l3Category

            self.name = name

            self.slugKey = slugKey

            self.image = image

            self.l1Category = l1Category
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            size = try container.decode(String.self, forKey: .size)

            brand = try container.decode(String.self, forKey: .brand)

            l3Category = try container.decode(Int.self, forKey: .l3Category)

            name = try container.decode(String.self, forKey: .name)

            slugKey = try container.decode(String.self, forKey: .slugKey)

            do {
                image = try container.decode([String].self, forKey: .image)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                l1Category = try container.decode([String].self, forKey: .l1Category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(l3Category, forKey: .l3Category)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slugKey, forKey: .slugKey)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encodeIfPresent(l1Category, forKey: .l1Category)
        }
    }
}
