

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var hsnCode: String

        public var priceMarked: Int

        public var fyndCredits: Int

        public var gstFee: Double

        public var transferPrice: Int

        public var promotionEffectiveDiscount: Double

        public var discount: Int

        public var couponEffectiveDiscount: Double

        public var totalUnits: Int

        public var deliveryCharge: Int

        public var cashback: Int

        public var size: String

        public var gstTaxPercentage: Int

        public var identifiers: Identifier

        public var codCharges: Int

        public var itemName: String

        public var valueOfGood: Double

        public var amountPaid: Double

        public var addedToFyndCash: Bool

        public var cashbackApplied: Int

        public var refundCredit: Int

        public var brandCalculatedAmount: Double

        public var priceEffective: Int

        public var couponValue: Double

        public var taxCollectedAtSource: Int?

        public var amountPaidRoundoff: Int?

        public var gstTag: String

        public enum CodingKeys: String, CodingKey {
            case hsnCode = "hsn_code"

            case priceMarked = "price_marked"

            case fyndCredits = "fynd_credits"

            case gstFee = "gst_fee"

            case transferPrice = "transfer_price"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case discount

            case couponEffectiveDiscount = "coupon_effective_discount"

            case totalUnits = "total_units"

            case deliveryCharge = "delivery_charge"

            case cashback

            case size

            case gstTaxPercentage = "gst_tax_percentage"

            case identifiers

            case codCharges = "cod_charges"

            case itemName = "item_name"

            case valueOfGood = "value_of_good"

            case amountPaid = "amount_paid"

            case addedToFyndCash = "added_to_fynd_cash"

            case cashbackApplied = "cashback_applied"

            case refundCredit = "refund_credit"

            case brandCalculatedAmount = "brand_calculated_amount"

            case priceEffective = "price_effective"

            case couponValue = "coupon_value"

            case taxCollectedAtSource = "tax_collected_at_source"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case gstTag = "gst_tag"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.hsnCode = hsnCode

            self.priceMarked = priceMarked

            self.fyndCredits = fyndCredits

            self.gstFee = gstFee

            self.transferPrice = transferPrice

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.discount = discount

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.totalUnits = totalUnits

            self.deliveryCharge = deliveryCharge

            self.cashback = cashback

            self.size = size

            self.gstTaxPercentage = gstTaxPercentage

            self.identifiers = identifiers

            self.codCharges = codCharges

            self.itemName = itemName

            self.valueOfGood = valueOfGood

            self.amountPaid = amountPaid

            self.addedToFyndCash = addedToFyndCash

            self.cashbackApplied = cashbackApplied

            self.refundCredit = refundCredit

            self.brandCalculatedAmount = brandCalculatedAmount

            self.priceEffective = priceEffective

            self.couponValue = couponValue

            self.taxCollectedAtSource = taxCollectedAtSource

            self.amountPaidRoundoff = amountPaidRoundoff

            self.gstTag = gstTag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            discount = try container.decode(Int.self, forKey: .discount)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            cashback = try container.decode(Int.self, forKey: .cashback)

            size = try container.decode(String.self, forKey: .size)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            itemName = try container.decode(String.self, forKey: .itemName)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTag = try container.decode(String.self, forKey: .gstTag)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

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

        public var priceMarked: Int

        public var fyndCredits: Int

        public var gstFee: Double

        public var transferPrice: Int

        public var promotionEffectiveDiscount: Double

        public var discount: Int

        public var couponEffectiveDiscount: Double

        public var totalUnits: Int

        public var deliveryCharge: Int

        public var cashback: Int

        public var size: String

        public var gstTaxPercentage: Int

        public var identifiers: Identifier

        public var codCharges: Int

        public var itemName: String

        public var valueOfGood: Double

        public var amountPaid: Double

        public var addedToFyndCash: Bool

        public var cashbackApplied: Int

        public var refundCredit: Int

        public var brandCalculatedAmount: Double

        public var priceEffective: Int

        public var couponValue: Double

        public var taxCollectedAtSource: Int?

        public var amountPaidRoundoff: Int?

        public var gstTag: String

        public enum CodingKeys: String, CodingKey {
            case hsnCode = "hsn_code"

            case priceMarked = "price_marked"

            case fyndCredits = "fynd_credits"

            case gstFee = "gst_fee"

            case transferPrice = "transfer_price"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case discount

            case couponEffectiveDiscount = "coupon_effective_discount"

            case totalUnits = "total_units"

            case deliveryCharge = "delivery_charge"

            case cashback

            case size

            case gstTaxPercentage = "gst_tax_percentage"

            case identifiers

            case codCharges = "cod_charges"

            case itemName = "item_name"

            case valueOfGood = "value_of_good"

            case amountPaid = "amount_paid"

            case addedToFyndCash = "added_to_fynd_cash"

            case cashbackApplied = "cashback_applied"

            case refundCredit = "refund_credit"

            case brandCalculatedAmount = "brand_calculated_amount"

            case priceEffective = "price_effective"

            case couponValue = "coupon_value"

            case taxCollectedAtSource = "tax_collected_at_source"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case gstTag = "gst_tag"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.hsnCode = hsnCode

            self.priceMarked = priceMarked

            self.fyndCredits = fyndCredits

            self.gstFee = gstFee

            self.transferPrice = transferPrice

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.discount = discount

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.totalUnits = totalUnits

            self.deliveryCharge = deliveryCharge

            self.cashback = cashback

            self.size = size

            self.gstTaxPercentage = gstTaxPercentage

            self.identifiers = identifiers

            self.codCharges = codCharges

            self.itemName = itemName

            self.valueOfGood = valueOfGood

            self.amountPaid = amountPaid

            self.addedToFyndCash = addedToFyndCash

            self.cashbackApplied = cashbackApplied

            self.refundCredit = refundCredit

            self.brandCalculatedAmount = brandCalculatedAmount

            self.priceEffective = priceEffective

            self.couponValue = couponValue

            self.taxCollectedAtSource = taxCollectedAtSource

            self.amountPaidRoundoff = amountPaidRoundoff

            self.gstTag = gstTag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            discount = try container.decode(Int.self, forKey: .discount)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            cashback = try container.decode(Int.self, forKey: .cashback)

            size = try container.decode(String.self, forKey: .size)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            itemName = try container.decode(String.self, forKey: .itemName)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTag = try container.decode(String.self, forKey: .gstTag)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)
        }
    }
}
