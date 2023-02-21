

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var couponValue: Double

        public var brandCalculatedAmount: Double

        public var itemName: String

        public var size: String

        public var cashbackApplied: Int

        public var priceEffective: Int

        public var valueOfGood: Double

        public var codCharges: Int

        public var gstTag: String

        public var discount: Int

        public var taxCollectedAtSource: Int?

        public var identifiers: Identifier

        public var refundCredit: Int

        public var cashback: Int

        public var addedToFyndCash: Bool

        public var priceMarked: Int

        public var hsnCode: String

        public var gstFee: Double

        public var amountPaidRoundoff: Int?

        public var transferPrice: Int

        public var couponEffectiveDiscount: Double

        public var promotionEffectiveDiscount: Double

        public var amountPaid: Double

        public var gstTaxPercentage: Int

        public var totalUnits: Int

        public var deliveryCharge: Int

        public var fyndCredits: Int

        public enum CodingKeys: String, CodingKey {
            case couponValue = "coupon_value"

            case brandCalculatedAmount = "brand_calculated_amount"

            case itemName = "item_name"

            case size

            case cashbackApplied = "cashback_applied"

            case priceEffective = "price_effective"

            case valueOfGood = "value_of_good"

            case codCharges = "cod_charges"

            case gstTag = "gst_tag"

            case discount

            case taxCollectedAtSource = "tax_collected_at_source"

            case identifiers

            case refundCredit = "refund_credit"

            case cashback

            case addedToFyndCash = "added_to_fynd_cash"

            case priceMarked = "price_marked"

            case hsnCode = "hsn_code"

            case gstFee = "gst_fee"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case transferPrice = "transfer_price"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case amountPaid = "amount_paid"

            case gstTaxPercentage = "gst_tax_percentage"

            case totalUnits = "total_units"

            case deliveryCharge = "delivery_charge"

            case fyndCredits = "fynd_credits"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.couponValue = couponValue

            self.brandCalculatedAmount = brandCalculatedAmount

            self.itemName = itemName

            self.size = size

            self.cashbackApplied = cashbackApplied

            self.priceEffective = priceEffective

            self.valueOfGood = valueOfGood

            self.codCharges = codCharges

            self.gstTag = gstTag

            self.discount = discount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.identifiers = identifiers

            self.refundCredit = refundCredit

            self.cashback = cashback

            self.addedToFyndCash = addedToFyndCash

            self.priceMarked = priceMarked

            self.hsnCode = hsnCode

            self.gstFee = gstFee

            self.amountPaidRoundoff = amountPaidRoundoff

            self.transferPrice = transferPrice

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.amountPaid = amountPaid

            self.gstTaxPercentage = gstTaxPercentage

            self.totalUnits = totalUnits

            self.deliveryCharge = deliveryCharge

            self.fyndCredits = fyndCredits
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            itemName = try container.decode(String.self, forKey: .itemName)

            size = try container.decode(String.self, forKey: .size)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            discount = try container.decode(Int.self, forKey: .discount)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            cashback = try container.decode(Int.self, forKey: .cashback)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)
        }
    }
}
