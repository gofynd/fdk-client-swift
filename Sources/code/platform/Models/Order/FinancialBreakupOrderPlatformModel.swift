

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var brandCalculatedAmount: Double

        public var taxCollectedAtSource: Int?

        public var promotionEffectiveDiscount: Double

        public var transferPrice: Int

        public var gstFee: Double

        public var priceEffective: Int

        public var couponEffectiveDiscount: Double

        public var deliveryCharge: Int

        public var gstTag: String

        public var priceMarked: Int

        public var discount: Int

        public var refundCredit: Int

        public var cashback: Int

        public var addedToFyndCash: Bool

        public var totalUnits: Int

        public var amountPaidRoundoff: Int?

        public var valueOfGood: Double

        public var itemName: String

        public var gstTaxPercentage: Int

        public var couponValue: Double

        public var cashbackApplied: Int

        public var hsnCode: String

        public var amountPaid: Double

        public var fyndCredits: Int

        public var identifiers: Identifier

        public var codCharges: Int

        public var size: String

        public enum CodingKeys: String, CodingKey {
            case brandCalculatedAmount = "brand_calculated_amount"

            case taxCollectedAtSource = "tax_collected_at_source"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case transferPrice = "transfer_price"

            case gstFee = "gst_fee"

            case priceEffective = "price_effective"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case deliveryCharge = "delivery_charge"

            case gstTag = "gst_tag"

            case priceMarked = "price_marked"

            case discount

            case refundCredit = "refund_credit"

            case cashback

            case addedToFyndCash = "added_to_fynd_cash"

            case totalUnits = "total_units"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case valueOfGood = "value_of_good"

            case itemName = "item_name"

            case gstTaxPercentage = "gst_tax_percentage"

            case couponValue = "coupon_value"

            case cashbackApplied = "cashback_applied"

            case hsnCode = "hsn_code"

            case amountPaid = "amount_paid"

            case fyndCredits = "fynd_credits"

            case identifiers

            case codCharges = "cod_charges"

            case size
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.brandCalculatedAmount = brandCalculatedAmount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.transferPrice = transferPrice

            self.gstFee = gstFee

            self.priceEffective = priceEffective

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.deliveryCharge = deliveryCharge

            self.gstTag = gstTag

            self.priceMarked = priceMarked

            self.discount = discount

            self.refundCredit = refundCredit

            self.cashback = cashback

            self.addedToFyndCash = addedToFyndCash

            self.totalUnits = totalUnits

            self.amountPaidRoundoff = amountPaidRoundoff

            self.valueOfGood = valueOfGood

            self.itemName = itemName

            self.gstTaxPercentage = gstTaxPercentage

            self.couponValue = couponValue

            self.cashbackApplied = cashbackApplied

            self.hsnCode = hsnCode

            self.amountPaid = amountPaid

            self.fyndCredits = fyndCredits

            self.identifiers = identifiers

            self.codCharges = codCharges

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            discount = try container.decode(Int.self, forKey: .discount)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            cashback = try container.decode(Int.self, forKey: .cashback)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            itemName = try container.decode(String.self, forKey: .itemName)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            size = try container.decode(String.self, forKey: .size)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

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
        public var brandCalculatedAmount: Double

        public var taxCollectedAtSource: Int?

        public var promotionEffectiveDiscount: Double

        public var transferPrice: Int

        public var gstFee: Double

        public var priceEffective: Int

        public var couponEffectiveDiscount: Double

        public var deliveryCharge: Int

        public var gstTag: String

        public var priceMarked: Int

        public var discount: Int

        public var refundCredit: Int

        public var cashback: Int

        public var addedToFyndCash: Bool

        public var totalUnits: Int

        public var amountPaidRoundoff: Int?

        public var valueOfGood: Double

        public var itemName: String

        public var gstTaxPercentage: Int

        public var couponValue: Double

        public var cashbackApplied: Int

        public var hsnCode: String

        public var amountPaid: Double

        public var fyndCredits: Int

        public var identifiers: Identifier

        public var codCharges: Int

        public var size: String

        public enum CodingKeys: String, CodingKey {
            case brandCalculatedAmount = "brand_calculated_amount"

            case taxCollectedAtSource = "tax_collected_at_source"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case transferPrice = "transfer_price"

            case gstFee = "gst_fee"

            case priceEffective = "price_effective"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case deliveryCharge = "delivery_charge"

            case gstTag = "gst_tag"

            case priceMarked = "price_marked"

            case discount

            case refundCredit = "refund_credit"

            case cashback

            case addedToFyndCash = "added_to_fynd_cash"

            case totalUnits = "total_units"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case valueOfGood = "value_of_good"

            case itemName = "item_name"

            case gstTaxPercentage = "gst_tax_percentage"

            case couponValue = "coupon_value"

            case cashbackApplied = "cashback_applied"

            case hsnCode = "hsn_code"

            case amountPaid = "amount_paid"

            case fyndCredits = "fynd_credits"

            case identifiers

            case codCharges = "cod_charges"

            case size
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.brandCalculatedAmount = brandCalculatedAmount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.transferPrice = transferPrice

            self.gstFee = gstFee

            self.priceEffective = priceEffective

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.deliveryCharge = deliveryCharge

            self.gstTag = gstTag

            self.priceMarked = priceMarked

            self.discount = discount

            self.refundCredit = refundCredit

            self.cashback = cashback

            self.addedToFyndCash = addedToFyndCash

            self.totalUnits = totalUnits

            self.amountPaidRoundoff = amountPaidRoundoff

            self.valueOfGood = valueOfGood

            self.itemName = itemName

            self.gstTaxPercentage = gstTaxPercentage

            self.couponValue = couponValue

            self.cashbackApplied = cashbackApplied

            self.hsnCode = hsnCode

            self.amountPaid = amountPaid

            self.fyndCredits = fyndCredits

            self.identifiers = identifiers

            self.codCharges = codCharges

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            discount = try container.decode(Int.self, forKey: .discount)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            cashback = try container.decode(Int.self, forKey: .cashback)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            itemName = try container.decode(String.self, forKey: .itemName)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            size = try container.decode(String.self, forKey: .size)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(size, forKey: .size)
        }
    }
}
