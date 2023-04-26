

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var couponValue: Double

        public var cashbackApplied: Int

        public var itemName: String

        public var couponEffectiveDiscount: Double

        public var deliveryCharge: Int

        public var addedToFyndCash: Bool

        public var gstFee: Double

        public var brandCalculatedAmount: Double

        public var priceEffective: Int

        public var gstTaxPercentage: Int

        public var totalUnits: Int

        public var size: String

        public var taxCollectedAtSource: Int?

        public var identifiers: Identifier

        public var hsnCode: String

        public var amountPaid: Double

        public var fyndCredits: Int

        public var transferPrice: Int

        public var promotionEffectiveDiscount: Double

        public var codCharges: Int

        public var valueOfGood: Double

        public var amountPaidRoundoff: Int?

        public var refundCredit: Int

        public var discount: Int

        public var cashback: Int

        public var priceMarked: Int

        public var gstTag: String

        public enum CodingKeys: String, CodingKey {
            case couponValue = "coupon_value"

            case cashbackApplied = "cashback_applied"

            case itemName = "item_name"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case deliveryCharge = "delivery_charge"

            case addedToFyndCash = "added_to_fynd_cash"

            case gstFee = "gst_fee"

            case brandCalculatedAmount = "brand_calculated_amount"

            case priceEffective = "price_effective"

            case gstTaxPercentage = "gst_tax_percentage"

            case totalUnits = "total_units"

            case size

            case taxCollectedAtSource = "tax_collected_at_source"

            case identifiers

            case hsnCode = "hsn_code"

            case amountPaid = "amount_paid"

            case fyndCredits = "fynd_credits"

            case transferPrice = "transfer_price"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case codCharges = "cod_charges"

            case valueOfGood = "value_of_good"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case refundCredit = "refund_credit"

            case discount

            case cashback

            case priceMarked = "price_marked"

            case gstTag = "gst_tag"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.couponValue = couponValue

            self.cashbackApplied = cashbackApplied

            self.itemName = itemName

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.deliveryCharge = deliveryCharge

            self.addedToFyndCash = addedToFyndCash

            self.gstFee = gstFee

            self.brandCalculatedAmount = brandCalculatedAmount

            self.priceEffective = priceEffective

            self.gstTaxPercentage = gstTaxPercentage

            self.totalUnits = totalUnits

            self.size = size

            self.taxCollectedAtSource = taxCollectedAtSource

            self.identifiers = identifiers

            self.hsnCode = hsnCode

            self.amountPaid = amountPaid

            self.fyndCredits = fyndCredits

            self.transferPrice = transferPrice

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.codCharges = codCharges

            self.valueOfGood = valueOfGood

            self.amountPaidRoundoff = amountPaidRoundoff

            self.refundCredit = refundCredit

            self.discount = discount

            self.cashback = cashback

            self.priceMarked = priceMarked

            self.gstTag = gstTag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            itemName = try container.decode(String.self, forKey: .itemName)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            size = try container.decode(String.self, forKey: .size)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            discount = try container.decode(Int.self, forKey: .discount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            gstTag = try container.decode(String.self, forKey: .gstTag)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

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
        public var couponValue: Double

        public var cashbackApplied: Int

        public var itemName: String

        public var couponEffectiveDiscount: Double

        public var deliveryCharge: Int

        public var addedToFyndCash: Bool

        public var gstFee: Double

        public var brandCalculatedAmount: Double

        public var priceEffective: Int

        public var gstTaxPercentage: Int

        public var totalUnits: Int

        public var size: String

        public var taxCollectedAtSource: Int?

        public var identifiers: Identifier

        public var hsnCode: String

        public var amountPaid: Double

        public var fyndCredits: Int

        public var transferPrice: Int

        public var promotionEffectiveDiscount: Double

        public var codCharges: Int

        public var valueOfGood: Double

        public var amountPaidRoundoff: Int?

        public var refundCredit: Int

        public var discount: Int

        public var cashback: Int

        public var priceMarked: Int

        public var gstTag: String

        public enum CodingKeys: String, CodingKey {
            case couponValue = "coupon_value"

            case cashbackApplied = "cashback_applied"

            case itemName = "item_name"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case deliveryCharge = "delivery_charge"

            case addedToFyndCash = "added_to_fynd_cash"

            case gstFee = "gst_fee"

            case brandCalculatedAmount = "brand_calculated_amount"

            case priceEffective = "price_effective"

            case gstTaxPercentage = "gst_tax_percentage"

            case totalUnits = "total_units"

            case size

            case taxCollectedAtSource = "tax_collected_at_source"

            case identifiers

            case hsnCode = "hsn_code"

            case amountPaid = "amount_paid"

            case fyndCredits = "fynd_credits"

            case transferPrice = "transfer_price"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case codCharges = "cod_charges"

            case valueOfGood = "value_of_good"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case refundCredit = "refund_credit"

            case discount

            case cashback

            case priceMarked = "price_marked"

            case gstTag = "gst_tag"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.couponValue = couponValue

            self.cashbackApplied = cashbackApplied

            self.itemName = itemName

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.deliveryCharge = deliveryCharge

            self.addedToFyndCash = addedToFyndCash

            self.gstFee = gstFee

            self.brandCalculatedAmount = brandCalculatedAmount

            self.priceEffective = priceEffective

            self.gstTaxPercentage = gstTaxPercentage

            self.totalUnits = totalUnits

            self.size = size

            self.taxCollectedAtSource = taxCollectedAtSource

            self.identifiers = identifiers

            self.hsnCode = hsnCode

            self.amountPaid = amountPaid

            self.fyndCredits = fyndCredits

            self.transferPrice = transferPrice

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.codCharges = codCharges

            self.valueOfGood = valueOfGood

            self.amountPaidRoundoff = amountPaidRoundoff

            self.refundCredit = refundCredit

            self.discount = discount

            self.cashback = cashback

            self.priceMarked = priceMarked

            self.gstTag = gstTag
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            itemName = try container.decode(String.self, forKey: .itemName)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            size = try container.decode(String.self, forKey: .size)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            discount = try container.decode(Int.self, forKey: .discount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            gstTag = try container.decode(String.self, forKey: .gstTag)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)
        }
    }
}
