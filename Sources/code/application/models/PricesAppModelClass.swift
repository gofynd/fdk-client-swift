

import Foundation
public extension ApplicationClient {
    /*
         Model: Prices
         Used By: Order
     */
    class Prices: Codable {
        public var amountPaidRoundoff: Double?

        public var fyndCredits: Double?

        public var codCharges: Double?

        public var cashback: Double?

        public var addedToFyndCash: Bool?

        public var priceMarked: Double?

        public var transferPrice: Double?

        public var couponValue: Double?

        public var priceEffective: Double?

        public var refundCredit: Double?

        public var amountPaid: Double?

        public var refundAmount: Double?

        public var cashbackApplied: Double?

        public var gstTaxPercentage: Double?

        public var valueOfGood: Double?

        public var brandCalculatedAmount: Double?

        public var promotionEffectiveDiscount: Double?

        public var discount: Double?

        public var couponEffectiveDiscount: Double?

        public var deliveryCharge: Double?

        public enum CodingKeys: String, CodingKey {
            case amountPaidRoundoff = "amount_paid_roundoff"

            case fyndCredits = "fynd_credits"

            case codCharges = "cod_charges"

            case cashback

            case addedToFyndCash = "added_to_fynd_cash"

            case priceMarked = "price_marked"

            case transferPrice = "transfer_price"

            case couponValue = "coupon_value"

            case priceEffective = "price_effective"

            case refundCredit = "refund_credit"

            case amountPaid = "amount_paid"

            case refundAmount = "refund_amount"

            case cashbackApplied = "cashback_applied"

            case gstTaxPercentage = "gst_tax_percentage"

            case valueOfGood = "value_of_good"

            case brandCalculatedAmount = "brand_calculated_amount"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case discount

            case couponEffectiveDiscount = "coupon_effective_discount"

            case deliveryCharge = "delivery_charge"
        }

        public init(addedToFyndCash: Bool? = nil, amountPaid: Double? = nil, amountPaidRoundoff: Double? = nil, brandCalculatedAmount: Double? = nil, cashback: Double? = nil, cashbackApplied: Double? = nil, codCharges: Double? = nil, couponEffectiveDiscount: Double? = nil, couponValue: Double? = nil, deliveryCharge: Double? = nil, discount: Double? = nil, fyndCredits: Double? = nil, gstTaxPercentage: Double? = nil, priceEffective: Double? = nil, priceMarked: Double? = nil, promotionEffectiveDiscount: Double? = nil, refundAmount: Double? = nil, refundCredit: Double? = nil, transferPrice: Double? = nil, valueOfGood: Double? = nil) {
            self.amountPaidRoundoff = amountPaidRoundoff

            self.fyndCredits = fyndCredits

            self.codCharges = codCharges

            self.cashback = cashback

            self.addedToFyndCash = addedToFyndCash

            self.priceMarked = priceMarked

            self.transferPrice = transferPrice

            self.couponValue = couponValue

            self.priceEffective = priceEffective

            self.refundCredit = refundCredit

            self.amountPaid = amountPaid

            self.refundAmount = refundAmount

            self.cashbackApplied = cashbackApplied

            self.gstTaxPercentage = gstTaxPercentage

            self.valueOfGood = valueOfGood

            self.brandCalculatedAmount = brandCalculatedAmount

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.discount = discount

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.deliveryCharge = deliveryCharge
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)

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
                codCharges = try container.decode(Double.self, forKey: .codCharges)

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
                addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

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
                transferPrice = try container.decode(Double.self, forKey: .transferPrice)

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
                priceEffective = try container.decode(Double.self, forKey: .priceEffective)

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

            do {
                amountPaid = try container.decode(Double.self, forKey: .amountPaid)

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
                cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

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
                brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

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
                discount = try container.decode(Double.self, forKey: .discount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
        }
    }
}
