

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var addedToFyndCash: Bool

        public var promotionEffectiveDiscount: Double

        public var cashback: Int

        public var brandCalculatedAmount: Double

        public var amountPaid: Double

        public var gstTag: String

        public var fyndCredits: Int

        public var priceMarked: Int

        public var taxCollectedAtSource: Int?

        public var codCharges: Int

        public var gstFee: Double

        public var identifiers: Identifier

        public var refundCredit: Int

        public var priceEffective: Int

        public var amountPaidRoundoff: Int?

        public var hsnCode: String

        public var size: String

        public var gstTaxPercentage: Int

        public var totalUnits: Int

        public var couponValue: Double

        public var itemName: String

        public var transferPrice: Int

        public var discount: Int

        public var deliveryCharge: Int

        public var cashbackApplied: Int

        public var valueOfGood: Double

        public var couponEffectiveDiscount: Double

        public enum CodingKeys: String, CodingKey {
            case addedToFyndCash = "added_to_fynd_cash"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case cashback

            case brandCalculatedAmount = "brand_calculated_amount"

            case amountPaid = "amount_paid"

            case gstTag = "gst_tag"

            case fyndCredits = "fynd_credits"

            case priceMarked = "price_marked"

            case taxCollectedAtSource = "tax_collected_at_source"

            case codCharges = "cod_charges"

            case gstFee = "gst_fee"

            case identifiers

            case refundCredit = "refund_credit"

            case priceEffective = "price_effective"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case hsnCode = "hsn_code"

            case size

            case gstTaxPercentage = "gst_tax_percentage"

            case totalUnits = "total_units"

            case couponValue = "coupon_value"

            case itemName = "item_name"

            case transferPrice = "transfer_price"

            case discount

            case deliveryCharge = "delivery_charge"

            case cashbackApplied = "cashback_applied"

            case valueOfGood = "value_of_good"

            case couponEffectiveDiscount = "coupon_effective_discount"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.addedToFyndCash = addedToFyndCash

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.cashback = cashback

            self.brandCalculatedAmount = brandCalculatedAmount

            self.amountPaid = amountPaid

            self.gstTag = gstTag

            self.fyndCredits = fyndCredits

            self.priceMarked = priceMarked

            self.taxCollectedAtSource = taxCollectedAtSource

            self.codCharges = codCharges

            self.gstFee = gstFee

            self.identifiers = identifiers

            self.refundCredit = refundCredit

            self.priceEffective = priceEffective

            self.amountPaidRoundoff = amountPaidRoundoff

            self.hsnCode = hsnCode

            self.size = size

            self.gstTaxPercentage = gstTaxPercentage

            self.totalUnits = totalUnits

            self.couponValue = couponValue

            self.itemName = itemName

            self.transferPrice = transferPrice

            self.discount = discount

            self.deliveryCharge = deliveryCharge

            self.cashbackApplied = cashbackApplied

            self.valueOfGood = valueOfGood

            self.couponEffectiveDiscount = couponEffectiveDiscount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            size = try container.decode(String.self, forKey: .size)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            itemName = try container.decode(String.self, forKey: .itemName)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            discount = try container.decode(Int.self, forKey: .discount)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)
        }
    }
}
