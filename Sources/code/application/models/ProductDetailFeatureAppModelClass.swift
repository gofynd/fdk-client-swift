

import Foundation
public extension ApplicationClient {
    /*
         Model: ProductDetailFeature
         Used By: Configuration
     */
    class ProductDetailFeature: Codable {
        public var similar: [String]?

        public var sellerSelection: Bool?

        public var updateProductMeta: Bool?

        public var requestProduct: Bool?

        public enum CodingKeys: String, CodingKey {
            case similar

            case sellerSelection = "seller_selection"

            case updateProductMeta = "update_product_meta"

            case requestProduct = "request_product"
        }

        public init(requestProduct: Bool? = nil, sellerSelection: Bool? = nil, similar: [String]? = nil, updateProductMeta: Bool? = nil) {
            self.similar = similar

            self.sellerSelection = sellerSelection

            self.updateProductMeta = updateProductMeta

            self.requestProduct = requestProduct
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                similar = try container.decode([String].self, forKey: .similar)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sellerSelection = try container.decode(Bool.self, forKey: .sellerSelection)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updateProductMeta = try container.decode(Bool.self, forKey: .updateProductMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                requestProduct = try container.decode(Bool.self, forKey: .requestProduct)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(similar, forKey: .similar)

            try? container.encodeIfPresent(sellerSelection, forKey: .sellerSelection)

            try? container.encodeIfPresent(updateProductMeta, forKey: .updateProductMeta)

            try? container.encodeIfPresent(requestProduct, forKey: .requestProduct)
        }
    }
}
