

import Foundation
public extension ApplicationClient.Order {
    /*
         Model: ProductBrand
         Used By: Order
     */
    class ProductBrand: Codable {
        public var id: Int?

        public var brandName: String?

        public enum CodingKeys: String, CodingKey {
            case id

            case brandName = "brand_name"
        }

        public init(brandName: String? = nil, id: Int? = nil) {
            self.id = id

            self.brandName = brandName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandName = try container.decode(String.self, forKey: .brandName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(brandName, forKey: .brandName)
        }
    }
}
