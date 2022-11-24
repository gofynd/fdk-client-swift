

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBagItem
         Used By: Order
     */

    class OrderBagItem: Codable {
        public var l3Category: Int

        public var l1Category: [String]?

        public var name: String

        public var size: String

        public var image: [String]?

        public var brand: String

        public var slugKey: String

        public enum CodingKeys: String, CodingKey {
            case l3Category = "l3_category"

            case l1Category = "l1_category"

            case name

            case size

            case image

            case brand

            case slugKey = "slug_key"
        }

        public init(brand: String, image: [String]? = nil, l1Category: [String]? = nil, l3Category: Int, name: String, size: String, slugKey: String) {
            self.l3Category = l3Category

            self.l1Category = l1Category

            self.name = name

            self.size = size

            self.image = image

            self.brand = brand

            self.slugKey = slugKey
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            l3Category = try container.decode(Int.self, forKey: .l3Category)

            do {
                l1Category = try container.decode([String].self, forKey: .l1Category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            size = try container.decode(String.self, forKey: .size)

            do {
                image = try container.decode([String].self, forKey: .image)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brand = try container.decode(String.self, forKey: .brand)

            slugKey = try container.decode(String.self, forKey: .slugKey)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(l3Category, forKey: .l3Category)

            try? container.encodeIfPresent(l1Category, forKey: .l1Category)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(slugKey, forKey: .slugKey)
        }
    }
}
