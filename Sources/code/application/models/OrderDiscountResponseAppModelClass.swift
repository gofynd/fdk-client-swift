

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderDiscountResponse
         Used By: Rewards
     */
    class OrderDiscountResponse: Codable {
        public var appliedRuleBucket: OrderDiscountRuleBucket?

        public var baseDiscount: DiscountProperties?

        public var discount: DiscountProperties?

        public var orderAmount: Double?

        public var points: Double?

        public enum CodingKeys: String, CodingKey {
            case appliedRuleBucket = "applied_rule_bucket"

            case baseDiscount = "base_discount"

            case discount

            case orderAmount = "order_amount"

            case points
        }

        public init(appliedRuleBucket: OrderDiscountRuleBucket? = nil, baseDiscount: DiscountProperties? = nil, discount: DiscountProperties? = nil, orderAmount: Double? = nil, points: Double? = nil) {
            self.appliedRuleBucket = appliedRuleBucket

            self.baseDiscount = baseDiscount

            self.discount = discount

            self.orderAmount = orderAmount

            self.points = points
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                appliedRuleBucket = try container.decode(OrderDiscountRuleBucket.self, forKey: .appliedRuleBucket)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                baseDiscount = try container.decode(DiscountProperties.self, forKey: .baseDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discount = try container.decode(DiscountProperties.self, forKey: .discount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderAmount = try container.decode(Double.self, forKey: .orderAmount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                points = try container.decode(Double.self, forKey: .points)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(appliedRuleBucket, forKey: .appliedRuleBucket)

            try? container.encodeIfPresent(baseDiscount, forKey: .baseDiscount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(orderAmount, forKey: .orderAmount)

            try? container.encodeIfPresent(points, forKey: .points)
        }
    }
}
