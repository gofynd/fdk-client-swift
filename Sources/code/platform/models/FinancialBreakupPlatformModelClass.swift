

import Foundation
public extension PlatformClient {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var identifiers: Identifier

        public var priceMarked: Int

        public var discount: Int

        public var codCharges: Int

        public var totalUnits: Int

        public var promotionEffectiveDiscount: Double

        public var itemName: String

        public var size: String

        public var refundCredit: Int

        public var fyndCredits: Int

        public var amountPaidRoundoff: Int?

        public var taxCollectedAtSource: Int?

        public var gstFee: Double

        public var priceEffective: Int

        public var cashbackApplied: Int

        public var couponEffectiveDiscount: Double

        public var addedToFyndCash: Bool

        public var couponValue: Double

        public var gstTag: String

        public var brandCalculatedAmount: Double

        public var cashback: Int

        public var valueOfGood: Double

        public var amountPaid: Double

        public var transferPrice: Int

        public var deliveryCharge: Int

        public var gstTaxPercentage: Int

        public var hsnCode: String

        public enum CodingKeys: String, CodingKey {
            case identifiers

            case priceMarked = "price_marked"

            case discount

            case codCharges = "cod_charges"

            case totalUnits = "total_units"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case itemName = "item_name"

            case size

            case refundCredit = "refund_credit"

            case fyndCredits = "fynd_credits"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case taxCollectedAtSource = "tax_collected_at_source"

            case gstFee = "gst_fee"

            case priceEffective = "price_effective"

            case cashbackApplied = "cashback_applied"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case addedToFyndCash = "added_to_fynd_cash"

            case couponValue = "coupon_value"

            case gstTag = "gst_tag"

            case brandCalculatedAmount = "brand_calculated_amount"

            case cashback

            case valueOfGood = "value_of_good"

            case amountPaid = "amount_paid"

            case transferPrice = "transfer_price"

            case deliveryCharge = "delivery_charge"

            case gstTaxPercentage = "gst_tax_percentage"

            case hsnCode = "hsn_code"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.identifiers = identifiers

            self.priceMarked = priceMarked

            self.discount = discount

            self.codCharges = codCharges

            self.totalUnits = totalUnits

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.itemName = itemName

            self.size = size

            self.refundCredit = refundCredit

            self.fyndCredits = fyndCredits

            self.amountPaidRoundoff = amountPaidRoundoff

            self.taxCollectedAtSource = taxCollectedAtSource

            self.gstFee = gstFee

            self.priceEffective = priceEffective

            self.cashbackApplied = cashbackApplied

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.addedToFyndCash = addedToFyndCash

            self.couponValue = couponValue

            self.gstTag = gstTag

            self.brandCalculatedAmount = brandCalculatedAmount

            self.cashback = cashback

            self.valueOfGood = valueOfGood

            self.amountPaid = amountPaid

            self.transferPrice = transferPrice

            self.deliveryCharge = deliveryCharge

            self.gstTaxPercentage = gstTaxPercentage

            self.hsnCode = hsnCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            discount = try container.decode(Int.self, forKey: .discount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            itemName = try container.decode(String.self, forKey: .itemName)

            size = try container.decode(String.self, forKey: .size)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)
        }
    }
}
