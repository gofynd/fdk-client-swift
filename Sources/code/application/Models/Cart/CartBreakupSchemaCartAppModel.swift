

import Foundation
public extension ApplicationClient.Cart {
    /*
         Model: CartBreakupSchema
         Used By: Cart
     */
    class CartBreakupSchema: Codable {
        public var loyaltyPoints: LoyaltyPoints?

        public var coupon: CouponBreakupSchema?

        public var raw: RawBreakupSchema?

        public var display: [DisplayBreakupSchema]?

        public enum CodingKeys: String, CodingKey {
            case loyaltyPoints = "loyalty_points"

            case coupon

            case raw

            case display
        }

        public init(coupon: CouponBreakupSchema? = nil, display: [DisplayBreakupSchema]? = nil, loyaltyPoints: LoyaltyPoints? = nil, raw: RawBreakupSchema? = nil) {
            self.loyaltyPoints = loyaltyPoints

            self.coupon = coupon

            self.raw = raw

            self.display = display
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                loyaltyPoints = try container.decode(LoyaltyPoints.self, forKey: .loyaltyPoints)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                coupon = try container.decode(CouponBreakupSchema.self, forKey: .coupon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                raw = try container.decode(RawBreakupSchema.self, forKey: .raw)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                display = try container.decode([DisplayBreakupSchema].self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(loyaltyPoints, forKey: .loyaltyPoints)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(raw, forKey: .raw)

            try? container.encodeIfPresent(display, forKey: .display)
        }
    }
}
