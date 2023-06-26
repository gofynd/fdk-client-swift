

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var priceEffective: Int

        public var amountPaidRoundoff: Int?

        public var discount: Int

        public var couponValue: Double

        public var taxCollectedAtSource: Int?

        public var codCharges: Int

        public var priceMarked: Int

        public var deliveryCharge: Double

        public var promotionEffectiveDiscount: Double

        public var cashbackApplied: Int

        public var valueOfGood: Double

        public var gstTag: String

        public var cashback: Int

        public var identifiers: Identifier

        public var totalUnits: Int

        public var refundCredit: Int

        public var amountPaid: Double

        public var gstFee: Double

        public var fyndCredits: Int

        public var itemName: String

        public var brandCalculatedAmount: Double

        public var gstTaxPercentage: Int

        public var addedToFyndCash: Bool

        public var hsnCode: String

        public var transferPrice: Int

        public var couponEffectiveDiscount: Double

        public var size: String

        public enum CodingKeys: String, CodingKey {
            case priceEffective = "price_effective"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case discount

            case couponValue = "coupon_value"

            case taxCollectedAtSource = "tax_collected_at_source"

            case codCharges = "cod_charges"

            case priceMarked = "price_marked"

            case deliveryCharge = "delivery_charge"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case cashbackApplied = "cashback_applied"

            case valueOfGood = "value_of_good"

            case gstTag = "gst_tag"

            case cashback

            case identifiers

            case totalUnits = "total_units"

            case refundCredit = "refund_credit"

            case amountPaid = "amount_paid"

            case gstFee = "gst_fee"

            case fyndCredits = "fynd_credits"

            case itemName = "item_name"

            case brandCalculatedAmount = "brand_calculated_amount"

            case gstTaxPercentage = "gst_tax_percentage"

            case addedToFyndCash = "added_to_fynd_cash"

            case hsnCode = "hsn_code"

            case transferPrice = "transfer_price"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case size
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.priceEffective = priceEffective

            self.amountPaidRoundoff = amountPaidRoundoff

            self.discount = discount

            self.couponValue = couponValue

            self.taxCollectedAtSource = taxCollectedAtSource

            self.codCharges = codCharges

            self.priceMarked = priceMarked

            self.deliveryCharge = deliveryCharge

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.cashbackApplied = cashbackApplied

            self.valueOfGood = valueOfGood

            self.gstTag = gstTag

            self.cashback = cashback

            self.identifiers = identifiers

            self.totalUnits = totalUnits

            self.refundCredit = refundCredit

            self.amountPaid = amountPaid

            self.gstFee = gstFee

            self.fyndCredits = fyndCredits

            self.itemName = itemName

            self.brandCalculatedAmount = brandCalculatedAmount

            self.gstTaxPercentage = gstTaxPercentage

            self.addedToFyndCash = addedToFyndCash

            self.hsnCode = hsnCode

            self.transferPrice = transferPrice

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Int.self, forKey: .discount)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            cashback = try container.decode(Int.self, forKey: .cashback)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            itemName = try container.decode(String.self, forKey: .itemName)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            size = try container.decode(String.self, forKey: .size)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(size, forKey: .size)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var priceEffective: Int

        public var amountPaidRoundoff: Int?

        public var discount: Int

        public var couponValue: Double

        public var taxCollectedAtSource: Int?

        public var codCharges: Int

        public var priceMarked: Int

        public var deliveryCharge: Double

        public var promotionEffectiveDiscount: Double

        public var cashbackApplied: Int

        public var valueOfGood: Double

        public var gstTag: String

        public var cashback: Int

        public var identifiers: Identifier

        public var totalUnits: Int

        public var refundCredit: Int

        public var amountPaid: Double

        public var gstFee: Double

        public var fyndCredits: Int

        public var itemName: String

        public var brandCalculatedAmount: Double

        public var gstTaxPercentage: Int

        public var addedToFyndCash: Bool

        public var hsnCode: String

        public var transferPrice: Int

        public var couponEffectiveDiscount: Double

        public var size: String

        public enum CodingKeys: String, CodingKey {
            case priceEffective = "price_effective"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case discount

            case couponValue = "coupon_value"

            case taxCollectedAtSource = "tax_collected_at_source"

            case codCharges = "cod_charges"

            case priceMarked = "price_marked"

            case deliveryCharge = "delivery_charge"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case cashbackApplied = "cashback_applied"

            case valueOfGood = "value_of_good"

            case gstTag = "gst_tag"

            case cashback

            case identifiers

            case totalUnits = "total_units"

            case refundCredit = "refund_credit"

            case amountPaid = "amount_paid"

            case gstFee = "gst_fee"

            case fyndCredits = "fynd_credits"

            case itemName = "item_name"

            case brandCalculatedAmount = "brand_calculated_amount"

            case gstTaxPercentage = "gst_tax_percentage"

            case addedToFyndCash = "added_to_fynd_cash"

            case hsnCode = "hsn_code"

            case transferPrice = "transfer_price"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case size
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.priceEffective = priceEffective

            self.amountPaidRoundoff = amountPaidRoundoff

            self.discount = discount

            self.couponValue = couponValue

            self.taxCollectedAtSource = taxCollectedAtSource

            self.codCharges = codCharges

            self.priceMarked = priceMarked

            self.deliveryCharge = deliveryCharge

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.cashbackApplied = cashbackApplied

            self.valueOfGood = valueOfGood

            self.gstTag = gstTag

            self.cashback = cashback

            self.identifiers = identifiers

            self.totalUnits = totalUnits

            self.refundCredit = refundCredit

            self.amountPaid = amountPaid

            self.gstFee = gstFee

            self.fyndCredits = fyndCredits

            self.itemName = itemName

            self.brandCalculatedAmount = brandCalculatedAmount

            self.gstTaxPercentage = gstTaxPercentage

            self.addedToFyndCash = addedToFyndCash

            self.hsnCode = hsnCode

            self.transferPrice = transferPrice

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Int.self, forKey: .discount)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            cashback = try container.decode(Int.self, forKey: .cashback)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            itemName = try container.decode(String.self, forKey: .itemName)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            size = try container.decode(String.self, forKey: .size)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(size, forKey: .size)
        }
    }
}
