

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Prices
         Used By: Order
     */

    class Prices: Codable {
        public var codCharges: Double?

        public var cashbackApplied: Double?

        public var cashback: Double?

        public var refundAmount: Double?

        public var amountPaidRoundoff: Double?

        public var discount: Double?

        public var priceEffective: Double?

        public var taxCollectedAtSource: Double?

        public var fyndCredits: Double?

        public var priceMarked: Double?

        public var amountPaid: Double?

        public var deliveryCharge: Double?

        public var valueOfGood: Double?

        public var couponValue: Double?

        public var promotionEffectiveDiscount: Double?

        public var refundCredit: Double?

        public enum CodingKeys: String, CodingKey {
            case codCharges = "cod_charges"

            case cashbackApplied = "cashback_applied"

            case cashback

            case refundAmount = "refund_amount"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case discount

            case priceEffective = "price_effective"

            case taxCollectedAtSource = "tax_collected_at_source"

            case fyndCredits = "fynd_credits"

            case priceMarked = "price_marked"

            case amountPaid = "amount_paid"

            case deliveryCharge = "delivery_charge"

            case valueOfGood = "value_of_good"

            case couponValue = "coupon_value"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case refundCredit = "refund_credit"
        }

        public init(amountPaid: Double? = nil, amountPaidRoundoff: Double? = nil, cashback: Double? = nil, cashbackApplied: Double? = nil, codCharges: Double? = nil, couponValue: Double? = nil, deliveryCharge: Double? = nil, discount: Double? = nil, fyndCredits: Double? = nil, priceEffective: Double? = nil, priceMarked: Double? = nil, promotionEffectiveDiscount: Double? = nil, refundAmount: Double? = nil, refundCredit: Double? = nil, taxCollectedAtSource: Double? = nil, valueOfGood: Double? = nil) {
            self.codCharges = codCharges

            self.cashbackApplied = cashbackApplied

            self.cashback = cashback

            self.refundAmount = refundAmount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.discount = discount

            self.priceEffective = priceEffective

            self.taxCollectedAtSource = taxCollectedAtSource

            self.fyndCredits = fyndCredits

            self.priceMarked = priceMarked

            self.amountPaid = amountPaid

            self.deliveryCharge = deliveryCharge

            self.valueOfGood = valueOfGood

            self.couponValue = couponValue

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.refundCredit = refundCredit
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                codCharges = try container.decode(Double.self, forKey: .codCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cashback = try container.decode(Double.self, forKey: .cashback)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discount = try container.decode(Double.self, forKey: .discount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                couponValue = try container.decode(Double.self, forKey: .couponValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Prices
         Used By: Order
     */

    class Prices: Codable {
        public var codCharges: Double?

        public var cashbackApplied: Double?

        public var cashback: Double?

        public var refundAmount: Double?

        public var amountPaidRoundoff: Double?

        public var discount: Double?

        public var priceEffective: Double?

        public var taxCollectedAtSource: Double?

        public var fyndCredits: Double?

        public var priceMarked: Double?

        public var amountPaid: Double?

        public var deliveryCharge: Double?

        public var valueOfGood: Double?

        public var couponValue: Double?

        public var promotionEffectiveDiscount: Double?

        public var refundCredit: Double?

        public enum CodingKeys: String, CodingKey {
            case codCharges = "cod_charges"

            case cashbackApplied = "cashback_applied"

            case cashback

            case refundAmount = "refund_amount"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case discount

            case priceEffective = "price_effective"

            case taxCollectedAtSource = "tax_collected_at_source"

            case fyndCredits = "fynd_credits"

            case priceMarked = "price_marked"

            case amountPaid = "amount_paid"

            case deliveryCharge = "delivery_charge"

            case valueOfGood = "value_of_good"

            case couponValue = "coupon_value"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case refundCredit = "refund_credit"
        }

        public init(amountPaid: Double? = nil, amountPaidRoundoff: Double? = nil, cashback: Double? = nil, cashbackApplied: Double? = nil, codCharges: Double? = nil, couponValue: Double? = nil, deliveryCharge: Double? = nil, discount: Double? = nil, fyndCredits: Double? = nil, priceEffective: Double? = nil, priceMarked: Double? = nil, promotionEffectiveDiscount: Double? = nil, refundAmount: Double? = nil, refundCredit: Double? = nil, taxCollectedAtSource: Double? = nil, valueOfGood: Double? = nil) {
            self.codCharges = codCharges

            self.cashbackApplied = cashbackApplied

            self.cashback = cashback

            self.refundAmount = refundAmount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.discount = discount

            self.priceEffective = priceEffective

            self.taxCollectedAtSource = taxCollectedAtSource

            self.fyndCredits = fyndCredits

            self.priceMarked = priceMarked

            self.amountPaid = amountPaid

            self.deliveryCharge = deliveryCharge

            self.valueOfGood = valueOfGood

            self.couponValue = couponValue

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.refundCredit = refundCredit
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                codCharges = try container.decode(Double.self, forKey: .codCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cashback = try container.decode(Double.self, forKey: .cashback)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discount = try container.decode(Double.self, forKey: .discount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taxCollectedAtSource = try container.decode(Double.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                couponValue = try container.decode(Double.self, forKey: .couponValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)
        }
    }
}
