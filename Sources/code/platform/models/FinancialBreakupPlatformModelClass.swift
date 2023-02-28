

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var taxCollectedAtSource: Int?

        public var cashbackApplied: Int

        public var size: String

        public var brandCalculatedAmount: Double

        public var amountPaid: Double

        public var transferPrice: Int

        public var gstTaxPercentage: Int

        public var identifiers: Identifier

        public var priceEffective: Int

        public var couponValue: Double

        public var priceMarked: Int

        public var deliveryCharge: Int

        public var refundCredit: Int

        public var gstTag: String

        public var amountPaidRoundoff: Int?

        public var cashback: Int

        public var fyndCredits: Int

        public var hsnCode: String

        public var itemName: String

        public var couponEffectiveDiscount: Double

        public var gstFee: Double

        public var addedToFyndCash: Bool

        public var promotionEffectiveDiscount: Double

        public var valueOfGood: Double

        public var discount: Int

        public var totalUnits: Int

        public var codCharges: Int

        public enum CodingKeys: String, CodingKey {
            case taxCollectedAtSource = "tax_collected_at_source"

            case cashbackApplied = "cashback_applied"

            case size

            case brandCalculatedAmount = "brand_calculated_amount"

            case amountPaid = "amount_paid"

            case transferPrice = "transfer_price"

            case gstTaxPercentage = "gst_tax_percentage"

            case identifiers

            case priceEffective = "price_effective"

            case couponValue = "coupon_value"

            case priceMarked = "price_marked"

            case deliveryCharge = "delivery_charge"

            case refundCredit = "refund_credit"

            case gstTag = "gst_tag"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case cashback

            case fyndCredits = "fynd_credits"

            case hsnCode = "hsn_code"

            case itemName = "item_name"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case gstFee = "gst_fee"

            case addedToFyndCash = "added_to_fynd_cash"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case valueOfGood = "value_of_good"

            case discount

            case totalUnits = "total_units"

            case codCharges = "cod_charges"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.taxCollectedAtSource = taxCollectedAtSource

            self.cashbackApplied = cashbackApplied

            self.size = size

            self.brandCalculatedAmount = brandCalculatedAmount

            self.amountPaid = amountPaid

            self.transferPrice = transferPrice

            self.gstTaxPercentage = gstTaxPercentage

            self.identifiers = identifiers

            self.priceEffective = priceEffective

            self.couponValue = couponValue

            self.priceMarked = priceMarked

            self.deliveryCharge = deliveryCharge

            self.refundCredit = refundCredit

            self.gstTag = gstTag

            self.amountPaidRoundoff = amountPaidRoundoff

            self.cashback = cashback

            self.fyndCredits = fyndCredits

            self.hsnCode = hsnCode

            self.itemName = itemName

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.gstFee = gstFee

            self.addedToFyndCash = addedToFyndCash

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.valueOfGood = valueOfGood

            self.discount = discount

            self.totalUnits = totalUnits

            self.codCharges = codCharges
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            size = try container.decode(String.self, forKey: .size)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashback = try container.decode(Int.self, forKey: .cashback)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            itemName = try container.decode(String.self, forKey: .itemName)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            discount = try container.decode(Int.self, forKey: .discount)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            codCharges = try container.decode(Int.self, forKey: .codCharges)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
        }
    }
}
