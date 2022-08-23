

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBagItem
         Used By: Orders
     */

    class OrderBagItem: Codable {
        public var brand: String

        public var l3Category: Int

        public var image: [String]?

        public var slugKey: String

        public var size: String

        public var l1Category: [String]?

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case brand

            case l3Category = "l3_category"

            case image

            case slugKey = "slug_key"

            case size

            case l1Category = "l1_category"

            case name
        }

        public init(brand: String, image: [String]? = nil, l1Category: [String]? = nil, l3Category: Int, name: String, size: String, slugKey: String) {
            self.brand = brand

            self.l3Category = l3Category

            self.image = image

            self.slugKey = slugKey

            self.size = size

            self.l1Category = l1Category

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            brand = try container.decode(String.self, forKey: .brand)

            l3Category = try container.decode(Int.self, forKey: .l3Category)

            do {
                image = try container.decode([String].self, forKey: .image)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            slugKey = try container.decode(String.self, forKey: .slugKey)

            size = try container.decode(String.self, forKey: .size)

            do {
                l1Category = try container.decode([String].self, forKey: .l1Category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(l3Category, forKey: .l3Category)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encodeIfPresent(slugKey, forKey: .slugKey)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(l1Category, forKey: .l1Category)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
