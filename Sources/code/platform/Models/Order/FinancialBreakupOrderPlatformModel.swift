

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var hsnCode: String

        public var itemName: String

        public var cashback: Int

        public var refundCredit: Int

        public var priceMarked: Int

        public var discount: Int

        public var gstTaxPercentage: Int

        public var transferPrice: Int

        public var amountPaidRoundoff: Int?

        public var promotionEffectiveDiscount: Double

        public var taxCollectedAtSource: Int?

        public var couponEffectiveDiscount: Double

        public var size: String

        public var cashbackApplied: Int

        public var brandCalculatedAmount: Double

        public var addedToFyndCash: Bool

        public var totalUnits: Int

        public var priceEffective: Int

        public var codCharges: Int

        public var couponValue: Double

        public var identifiers: Identifier

        public var fyndCredits: Int

        public var amountPaid: Double

        public var deliveryCharge: Int

        public var valueOfGood: Double

        public var gstFee: Double

        public var gstTag: String

        public enum CodingKeys: String, CodingKey {
            case hsnCode = "hsn_code"

            case itemName = "item_name"

            case cashback

            case refundCredit = "refund_credit"

            case priceMarked = "price_marked"

            case discount

            case gstTaxPercentage = "gst_tax_percentage"

            case transferPrice = "transfer_price"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case taxCollectedAtSource = "tax_collected_at_source"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case size

            case cashbackApplied = "cashback_applied"

            case brandCalculatedAmount = "brand_calculated_amount"

            case addedToFyndCash = "added_to_fynd_cash"

            case totalUnits = "total_units"

            case priceEffective = "price_effective"

            case codCharges = "cod_charges"

            case couponValue = "coupon_value"

            case identifiers

            case fyndCredits = "fynd_credits"

            case amountPaid = "amount_paid"

            case deliveryCharge = "delivery_charge"

            case valueOfGood = "value_of_good"

            case gstFee = "gst_fee"

            case gstTag = "gst_tag"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.hsnCode = hsnCode

            self.itemName = itemName

            self.cashback = cashback

            self.refundCredit = refundCredit

            self.priceMarked = priceMarked

            self.discount = discount

            self.gstTaxPercentage = gstTaxPercentage

            self.transferPrice = transferPrice

            self.amountPaidRoundoff = amountPaidRoundoff

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.size = size

            self.cashbackApplied = cashbackApplied

            self.brandCalculatedAmount = brandCalculatedAmount

            self.addedToFyndCash = addedToFyndCash

            self.totalUnits = totalUnits

            self.priceEffective = priceEffective

            self.codCharges = codCharges

            self.couponValue = couponValue

            self.identifiers = identifiers

            self.fyndCredits = fyndCredits

            self.amountPaid = amountPaid

            self.deliveryCharge = deliveryCharge

            self.valueOfGood = valueOfGood

            self.gstFee = gstFee

            self.gstTag = gstTag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            itemName = try container.decode(String.self, forKey: .itemName)

            cashback = try container.decode(Int.self, forKey: .cashback)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            discount = try container.decode(Int.self, forKey: .discount)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            size = try container.decode(String.self, forKey: .size)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            gstTag = try container.decode(String.self, forKey: .gstTag)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var hsnCode: String

        public var itemName: String

        public var cashback: Int

        public var refundCredit: Int

        public var priceMarked: Int

        public var discount: Int

        public var gstTaxPercentage: Int

        public var transferPrice: Int

        public var amountPaidRoundoff: Int?

        public var promotionEffectiveDiscount: Double

        public var taxCollectedAtSource: Int?

        public var couponEffectiveDiscount: Double

        public var size: String

        public var cashbackApplied: Int

        public var brandCalculatedAmount: Double

        public var addedToFyndCash: Bool

        public var totalUnits: Int

        public var priceEffective: Int

        public var codCharges: Int

        public var couponValue: Double

        public var identifiers: Identifier

        public var fyndCredits: Int

        public var amountPaid: Double

        public var deliveryCharge: Int

        public var valueOfGood: Double

        public var gstFee: Double

        public var gstTag: String

        public enum CodingKeys: String, CodingKey {
            case hsnCode = "hsn_code"

            case itemName = "item_name"

            case cashback

            case refundCredit = "refund_credit"

            case priceMarked = "price_marked"

            case discount

            case gstTaxPercentage = "gst_tax_percentage"

            case transferPrice = "transfer_price"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case taxCollectedAtSource = "tax_collected_at_source"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case size

            case cashbackApplied = "cashback_applied"

            case brandCalculatedAmount = "brand_calculated_amount"

            case addedToFyndCash = "added_to_fynd_cash"

            case totalUnits = "total_units"

            case priceEffective = "price_effective"

            case codCharges = "cod_charges"

            case couponValue = "coupon_value"

            case identifiers

            case fyndCredits = "fynd_credits"

            case amountPaid = "amount_paid"

            case deliveryCharge = "delivery_charge"

            case valueOfGood = "value_of_good"

            case gstFee = "gst_fee"

            case gstTag = "gst_tag"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.hsnCode = hsnCode

            self.itemName = itemName

            self.cashback = cashback

            self.refundCredit = refundCredit

            self.priceMarked = priceMarked

            self.discount = discount

            self.gstTaxPercentage = gstTaxPercentage

            self.transferPrice = transferPrice

            self.amountPaidRoundoff = amountPaidRoundoff

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.size = size

            self.cashbackApplied = cashbackApplied

            self.brandCalculatedAmount = brandCalculatedAmount

            self.addedToFyndCash = addedToFyndCash

            self.totalUnits = totalUnits

            self.priceEffective = priceEffective

            self.codCharges = codCharges

            self.couponValue = couponValue

            self.identifiers = identifiers

            self.fyndCredits = fyndCredits

            self.amountPaid = amountPaid

            self.deliveryCharge = deliveryCharge

            self.valueOfGood = valueOfGood

            self.gstFee = gstFee

            self.gstTag = gstTag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            itemName = try container.decode(String.self, forKey: .itemName)

            cashback = try container.decode(Int.self, forKey: .cashback)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            discount = try container.decode(Int.self, forKey: .discount)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            size = try container.decode(String.self, forKey: .size)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            gstTag = try container.decode(String.self, forKey: .gstTag)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)
        }
    }
}
