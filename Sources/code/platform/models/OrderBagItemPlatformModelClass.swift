

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBagItem
         Used By: Orders
     */

    class OrderBagItem: Codable {
        public var brand: String

        public var image: [String]?

        public var l1Category: [String]?

        public var l3Category: Int

        public var size: String

        public var slugKey: String

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case brand

            case image

            case l1Category = "l1_category"

            case l3Category = "l3_category"

            case size

            case slugKey = "slug_key"

            case name
        }

        public init(brand: String, image: [String]? = nil, l1Category: [String]? = nil, l3Category: Int, name: String, size: String, slugKey: String) {
            self.brand = brand

            self.image = image

            self.l1Category = l1Category

            self.l3Category = l3Category

            self.size = size

            self.slugKey = slugKey

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            brand = try container.decode(String.self, forKey: .brand)

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

            l3Category = try container.decode(Int.self, forKey: .l3Category)

            size = try container.decode(String.self, forKey: .size)

            slugKey = try container.decode(String.self, forKey: .slugKey)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encodeIfPresent(l1Category, forKey: .l1Category)

            try? container.encodeIfPresent(l3Category, forKey: .l3Category)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(slugKey, forKey: .slugKey)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
