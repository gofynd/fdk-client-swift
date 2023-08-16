

import Foundation

public extension PlatformClient.Discount {
    /*
         Model: DiscountItems
         Used By: Discount
     */

    class DiscountItems: Codable {
        public var itemCode: String?

        public var brandUid: Int?

        public var sellerIdentifier: String?

        public var discountType: String

        public var value: Double

        public var discountMeta: DiscountMeta?

        public enum CodingKeys: String, CodingKey {
            case itemCode = "item_code"

            case brandUid = "brand_uid"

            case sellerIdentifier = "seller_identifier"

            case discountType = "discount_type"

            case value

            case discountMeta = "discount_meta"
        }

        public init(brandUid: Int? = nil, discountMeta: DiscountMeta? = nil, discountType: String, itemCode: String? = nil, sellerIdentifier: String? = nil, value: Double) {
            self.itemCode = itemCode

            self.brandUid = brandUid

            self.sellerIdentifier = sellerIdentifier

            self.discountType = discountType

            self.value = value

            self.discountMeta = discountMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemCode = try container.decode(String.self, forKey: .itemCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandUid = try container.decode(Int.self, forKey: .brandUid)

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

            discountType = try container.decode(String.self, forKey: .discountType)

            value = try container.decode(Double.self, forKey: .value)

            do {
                discountMeta = try container.decode(DiscountMeta.self, forKey: .discountMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemCode, forKey: .itemCode)

            try? container.encodeIfPresent(brandUid, forKey: .brandUid)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(discountType, forKey: .discountType)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(discountMeta, forKey: .discountMeta)
        }
    }
}
