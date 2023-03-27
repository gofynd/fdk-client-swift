

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var itemName: String

        public var codCharges: Int

        public var fyndCredits: Int

        public var addedToFyndCash: Bool

        public var hsnCode: String

        public var gstTaxPercentage: Int

        public var gstFee: Double

        public var brandCalculatedAmount: Double

        public var couponValue: Double

        public var cashbackApplied: Int

        public var amountPaid: Double

        public var amountPaidRoundoff: Int?

        public var promotionEffectiveDiscount: Double

        public var deliveryCharge: Int

        public var gstTag: String

        public var discount: Int

        public var priceMarked: Int

        public var refundCredit: Int

        public var couponEffectiveDiscount: Double

        public var size: String

        public var cashback: Int

        public var transferPrice: Int

        public var taxCollectedAtSource: Int?

        public var identifiers: Identifier

        public var totalUnits: Int

        public var priceEffective: Int

        public var valueOfGood: Double

        public enum CodingKeys: String, CodingKey {
            case itemName = "item_name"

            case codCharges = "cod_charges"

            case fyndCredits = "fynd_credits"

            case addedToFyndCash = "added_to_fynd_cash"

            case hsnCode = "hsn_code"

            case gstTaxPercentage = "gst_tax_percentage"

            case gstFee = "gst_fee"

            case brandCalculatedAmount = "brand_calculated_amount"

            case couponValue = "coupon_value"

            case cashbackApplied = "cashback_applied"

            case amountPaid = "amount_paid"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case deliveryCharge = "delivery_charge"

            case gstTag = "gst_tag"

            case discount

            case priceMarked = "price_marked"

            case refundCredit = "refund_credit"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case size

            case cashback

            case transferPrice = "transfer_price"

            case taxCollectedAtSource = "tax_collected_at_source"

            case identifiers

            case totalUnits = "total_units"

            case priceEffective = "price_effective"

            case valueOfGood = "value_of_good"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.itemName = itemName

            self.codCharges = codCharges

            self.fyndCredits = fyndCredits

            self.addedToFyndCash = addedToFyndCash

            self.hsnCode = hsnCode

            self.gstTaxPercentage = gstTaxPercentage

            self.gstFee = gstFee

            self.brandCalculatedAmount = brandCalculatedAmount

            self.couponValue = couponValue

            self.cashbackApplied = cashbackApplied

            self.amountPaid = amountPaid

            self.amountPaidRoundoff = amountPaidRoundoff

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.deliveryCharge = deliveryCharge

            self.gstTag = gstTag

            self.discount = discount

            self.priceMarked = priceMarked

            self.refundCredit = refundCredit

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.size = size

            self.cashback = cashback

            self.transferPrice = transferPrice

            self.taxCollectedAtSource = taxCollectedAtSource

            self.identifiers = identifiers

            self.totalUnits = totalUnits

            self.priceEffective = priceEffective

            self.valueOfGood = valueOfGood
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemName = try container.decode(String.self, forKey: .itemName)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            discount = try container.decode(Int.self, forKey: .discount)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            size = try container.decode(String.self, forKey: .size)

            cashback = try container.decode(Int.self, forKey: .cashback)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var itemName: String

        public var codCharges: Int

        public var fyndCredits: Int

        public var addedToFyndCash: Bool

        public var hsnCode: String

        public var gstTaxPercentage: Int

        public var gstFee: Double

        public var brandCalculatedAmount: Double

        public var couponValue: Double

        public var cashbackApplied: Int

        public var amountPaid: Double

        public var amountPaidRoundoff: Int?

        public var promotionEffectiveDiscount: Double

        public var deliveryCharge: Int

        public var gstTag: String

        public var discount: Int

        public var priceMarked: Int

        public var refundCredit: Int

        public var couponEffectiveDiscount: Double

        public var size: String

        public var cashback: Int

        public var transferPrice: Int

        public var taxCollectedAtSource: Int?

        public var identifiers: Identifier

        public var totalUnits: Int

        public var priceEffective: Int

        public var valueOfGood: Double

        public enum CodingKeys: String, CodingKey {
            case itemName = "item_name"

            case codCharges = "cod_charges"

            case fyndCredits = "fynd_credits"

            case addedToFyndCash = "added_to_fynd_cash"

            case hsnCode = "hsn_code"

            case gstTaxPercentage = "gst_tax_percentage"

            case gstFee = "gst_fee"

            case brandCalculatedAmount = "brand_calculated_amount"

            case couponValue = "coupon_value"

            case cashbackApplied = "cashback_applied"

            case amountPaid = "amount_paid"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case deliveryCharge = "delivery_charge"

            case gstTag = "gst_tag"

            case discount

            case priceMarked = "price_marked"

            case refundCredit = "refund_credit"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case size

            case cashback

            case transferPrice = "transfer_price"

            case taxCollectedAtSource = "tax_collected_at_source"

            case identifiers

            case totalUnits = "total_units"

            case priceEffective = "price_effective"

            case valueOfGood = "value_of_good"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.itemName = itemName

            self.codCharges = codCharges

            self.fyndCredits = fyndCredits

            self.addedToFyndCash = addedToFyndCash

            self.hsnCode = hsnCode

            self.gstTaxPercentage = gstTaxPercentage

            self.gstFee = gstFee

            self.brandCalculatedAmount = brandCalculatedAmount

            self.couponValue = couponValue

            self.cashbackApplied = cashbackApplied

            self.amountPaid = amountPaid

            self.amountPaidRoundoff = amountPaidRoundoff

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.deliveryCharge = deliveryCharge

            self.gstTag = gstTag

            self.discount = discount

            self.priceMarked = priceMarked

            self.refundCredit = refundCredit

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.size = size

            self.cashback = cashback

            self.transferPrice = transferPrice

            self.taxCollectedAtSource = taxCollectedAtSource

            self.identifiers = identifiers

            self.totalUnits = totalUnits

            self.priceEffective = priceEffective

            self.valueOfGood = valueOfGood
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemName = try container.decode(String.self, forKey: .itemName)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            discount = try container.decode(Int.self, forKey: .discount)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            size = try container.decode(String.self, forKey: .size)

            cashback = try container.decode(Int.self, forKey: .cashback)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)
        }
    }
}
