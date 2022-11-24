

import Foundation
public extension PlatformClient {
    /*
         Model: OrderBagItem
         Used By: Order
     */

    class OrderBagItem: Codable {
        public var name: String

        public var size: String

        public var l1Category: [String]?

        public var l3Category: Int

        public var brand: String

        public var slugKey: String

        public var image: [String]?

        public enum CodingKeys: String, CodingKey {
            case name

            case size

            case l1Category = "l1_category"

            case l3Category = "l3_category"

            case brand

            case slugKey = "slug_key"

            case image
        }

        public init(brand: String, image: [String]? = nil, l1Category: [String]? = nil, l3Category: Int, name: String, size: String, slugKey: String) {
            self.name = name

            self.size = size

            self.l1Category = l1Category

            self.l3Category = l3Category

            self.brand = brand

            self.slugKey = slugKey

            self.image = image
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            size = try container.decode(String.self, forKey: .size)

            do {
                l1Category = try container.decode([String].self, forKey: .l1Category)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            l3Category = try container.decode(Int.self, forKey: .l3Category)

            brand = try container.decode(String.self, forKey: .brand)

            slugKey = try container.decode(String.self, forKey: .slugKey)

            do {
                image = try container.decode([String].self, forKey: .image)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(l1Category, forKey: .l1Category)

            try? container.encodeIfPresent(l3Category, forKey: .l3Category)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(slugKey, forKey: .slugKey)

            try? container.encodeIfPresent(image, forKey: .image)
        }
    }
}
