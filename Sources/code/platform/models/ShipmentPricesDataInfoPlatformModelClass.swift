

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentPricesDataInfo
         Used By: Orders
     */

    class ShipmentPricesDataInfo: Codable {
        public var codCharges: Int?

        public var discount: Int?

        public var cashback: Int?

        public var valueOfGood: Int?

        public var amountPaid: Int?

        public var couponValue: String?

        public var refundAmount: Int?

        public var fyndCredits: Int?

        public var cashbackApplied: Int?

        public var refundCredit: Int?

        public var deliveryCharge: Int?

        public var priceMarked: Int?

        public var priceEffective: Int?

        public enum CodingKeys: String, CodingKey {
            case codCharges = "cod_charges"

            case discount

            case cashback

            case valueOfGood = "value_of_good"

            case amountPaid = "amount_paid"

            case couponValue = "coupon_value"

            case refundAmount = "refund_amount"

            case fyndCredits = "fynd_credits"

            case cashbackApplied = "cashback_applied"

            case refundCredit = "refund_credit"

            case deliveryCharge = "delivery_charge"

            case priceMarked = "price_marked"

            case priceEffective = "price_effective"
        }

        public init(amountPaid: Int? = nil, cashback: Int? = nil, cashbackApplied: Int? = nil, codCharges: Int? = nil, couponValue: String? = nil, deliveryCharge: Int? = nil, discount: Int? = nil, fyndCredits: Int? = nil, priceEffective: Int? = nil, priceMarked: Int? = nil, refundAmount: Int? = nil, refundCredit: Int? = nil, valueOfGood: Int? = nil) {
            self.codCharges = codCharges

            self.discount = discount

            self.cashback = cashback

            self.valueOfGood = valueOfGood

            self.amountPaid = amountPaid

            self.couponValue = couponValue

            self.refundAmount = refundAmount

            self.fyndCredits = fyndCredits

            self.cashbackApplied = cashbackApplied

            self.refundCredit = refundCredit

            self.deliveryCharge = deliveryCharge

            self.priceMarked = priceMarked

            self.priceEffective = priceEffective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                codCharges = try container.decode(Int.self, forKey: .codCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discount = try container.decode(Int.self, forKey: .discount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cashback = try container.decode(Int.self, forKey: .cashback)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                valueOfGood = try container.decode(Int.self, forKey: .valueOfGood)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amountPaid = try container.decode(Int.self, forKey: .amountPaid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                couponValue = try container.decode(String.self, forKey: .couponValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refundAmount = try container.decode(Int.self, forKey: .refundAmount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)
        }
    }
}
