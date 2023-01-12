

import Foundation
public extension PlatformClient {
    /*
         Model: CouponDetails
         Used By: Cart
     */

    class CouponDetails: Codable {
        public var discountTotalQuantity: Double?

        public var discountSingleQuantity: Double?

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case discountTotalQuantity = "discount_total_quantity"

            case discountSingleQuantity = "discount_single_quantity"

            case code
        }

        public init(code: String? = nil, discountSingleQuantity: Double? = nil, discountTotalQuantity: Double? = nil) {
            self.discountTotalQuantity = discountTotalQuantity

            self.discountSingleQuantity = discountSingleQuantity

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                discountTotalQuantity = try container.decode(Double.self, forKey: .discountTotalQuantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discountSingleQuantity = try container.decode(Double.self, forKey: .discountSingleQuantity)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discountTotalQuantity, forKey: .discountTotalQuantity)

            try? container.encodeIfPresent(discountSingleQuantity, forKey: .discountSingleQuantity)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}
