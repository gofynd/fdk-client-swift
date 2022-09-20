

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBagItem
         Used By: Orders
     */

    class OrderBagItem: Codable {
        public var image: [String]?

        public var size: String

        public var name: String

        public var slugKey: String

        public var l1Category: [String]?

        public var brand: String

        public var l3Category: Int

        public enum CodingKeys: String, CodingKey {
            case image

            case size

            case name

            case slugKey = "slug_key"

            case l1Category = "l1_category"

            case brand

            case l3Category = "l3_category"
        }

        public init(brand: String, image: [String]? = nil, l1Category: [String]? = nil, l3Category: Int, name: String, size: String, slugKey: String) {
            self.image = image

            self.size = size

            self.name = name

            self.slugKey = slugKey

            self.l1Category = l1Category

            self.brand = brand

            self.l3Category = l3Category
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                image = try container.decode([String].self, forKey: .image)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            size = try container.decode(String.self, forKey: .size)

            name = try container.decode(String.self, forKey: .name)

            slugKey = try container.decode(String.self, forKey: .slugKey)

            do {
                l1Category = try container.decode([String].self, forKey: .l1Category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(String.self, forKey: .brand)

            l3Category = try container.decode(Int.self, forKey: .l3Category)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(slugKey, forKey: .slugKey)

            try? container.encodeIfPresent(l1Category, forKey: .l1Category)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(l3Category, forKey: .l3Category)
        }
    }
}
