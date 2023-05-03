

import Foundation

public extension PlatformClient.ApplicationClient.Cart {
    /*
         Model: CartBreakupSchema
         Used By: Cart
     */

    class CartBreakupSchema: Codable {
        public var coupon: CouponBreakupSchema?

        public var display: [DisplayBreakupSchema]?

        public var loyaltyPoints: LoyaltyPoints?

        public var raw: RawBreakupSchema?

        public enum CodingKeys: String, CodingKey {
            case coupon

            case display

            case loyaltyPoints = "loyalty_points"

            case raw
        }

        public init(coupon: CouponBreakupSchema? = nil, display: [DisplayBreakupSchema]? = nil, loyaltyPoints: LoyaltyPoints? = nil, raw: RawBreakupSchema? = nil) {
            self.coupon = coupon

            self.display = display

            self.loyaltyPoints = loyaltyPoints

            self.raw = raw
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                coupon = try container.decode(CouponBreakupSchema.self, forKey: .coupon)

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

            do {
                loyaltyPoints = try container.decode(LoyaltyPoints.self, forKey: .loyaltyPoints)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(coupon, forKey: .coupon)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(loyaltyPoints, forKey: .loyaltyPoints)

            try? container.encodeIfPresent(raw, forKey: .raw)
        }
    }
}
