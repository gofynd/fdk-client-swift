

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var amountPaidRoundoff: Int?

        public var priceMarked: Int

        public var cashbackApplied: Int

        public var taxCollectedAtSource: Int?

        public var deliveryCharge: Double

        public var discount: Int

        public var transferPrice: Int

        public var promotionEffectiveDiscount: Double

        public var itemName: String

        public var gstFee: Double

        public var valueOfGood: Double

        public var identifiers: Identifier

        public var fyndCredits: Int

        public var gstTaxPercentage: Int

        public var amountPaid: Double

        public var couponEffectiveDiscount: Double

        public var hsnCode: String

        public var gstTag: String

        public var refundCredit: Int

        public var totalUnits: Int

        public var brandCalculatedAmount: Double

        public var codCharges: Int

        public var priceEffective: Int

        public var cashback: Int

        public var size: String

        public var couponValue: Double

        public var addedToFyndCash: Bool

        public enum CodingKeys: String, CodingKey {
            case amountPaidRoundoff = "amount_paid_roundoff"

            case priceMarked = "price_marked"

            case cashbackApplied = "cashback_applied"

            case taxCollectedAtSource = "tax_collected_at_source"

            case deliveryCharge = "delivery_charge"

            case discount

            case transferPrice = "transfer_price"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case itemName = "item_name"

            case gstFee = "gst_fee"

            case valueOfGood = "value_of_good"

            case identifiers

            case fyndCredits = "fynd_credits"

            case gstTaxPercentage = "gst_tax_percentage"

            case amountPaid = "amount_paid"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case hsnCode = "hsn_code"

            case gstTag = "gst_tag"

            case refundCredit = "refund_credit"

            case totalUnits = "total_units"

            case brandCalculatedAmount = "brand_calculated_amount"

            case codCharges = "cod_charges"

            case priceEffective = "price_effective"

            case cashback

            case size

            case couponValue = "coupon_value"

            case addedToFyndCash = "added_to_fynd_cash"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.amountPaidRoundoff = amountPaidRoundoff

            self.priceMarked = priceMarked

            self.cashbackApplied = cashbackApplied

            self.taxCollectedAtSource = taxCollectedAtSource

            self.deliveryCharge = deliveryCharge

            self.discount = discount

            self.transferPrice = transferPrice

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.itemName = itemName

            self.gstFee = gstFee

            self.valueOfGood = valueOfGood

            self.identifiers = identifiers

            self.fyndCredits = fyndCredits

            self.gstTaxPercentage = gstTaxPercentage

            self.amountPaid = amountPaid

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.hsnCode = hsnCode

            self.gstTag = gstTag

            self.refundCredit = refundCredit

            self.totalUnits = totalUnits

            self.brandCalculatedAmount = brandCalculatedAmount

            self.codCharges = codCharges

            self.priceEffective = priceEffective

            self.cashback = cashback

            self.size = size

            self.couponValue = couponValue

            self.addedToFyndCash = addedToFyndCash
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            discount = try container.decode(Int.self, forKey: .discount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            itemName = try container.decode(String.self, forKey: .itemName)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            cashback = try container.decode(Int.self, forKey: .cashback)

            size = try container.decode(String.self, forKey: .size)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var amountPaidRoundoff: Int?

        public var priceMarked: Int

        public var cashbackApplied: Int

        public var taxCollectedAtSource: Int?

        public var deliveryCharge: Double

        public var discount: Int

        public var transferPrice: Int

        public var promotionEffectiveDiscount: Double

        public var itemName: String

        public var gstFee: Double

        public var valueOfGood: Double

        public var identifiers: Identifier

        public var fyndCredits: Int

        public var gstTaxPercentage: Int

        public var amountPaid: Double

        public var couponEffectiveDiscount: Double

        public var hsnCode: String

        public var gstTag: String

        public var refundCredit: Int

        public var totalUnits: Int

        public var brandCalculatedAmount: Double

        public var codCharges: Int

        public var priceEffective: Int

        public var cashback: Int

        public var size: String

        public var couponValue: Double

        public var addedToFyndCash: Bool

        public enum CodingKeys: String, CodingKey {
            case amountPaidRoundoff = "amount_paid_roundoff"

            case priceMarked = "price_marked"

            case cashbackApplied = "cashback_applied"

            case taxCollectedAtSource = "tax_collected_at_source"

            case deliveryCharge = "delivery_charge"

            case discount

            case transferPrice = "transfer_price"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case itemName = "item_name"

            case gstFee = "gst_fee"

            case valueOfGood = "value_of_good"

            case identifiers

            case fyndCredits = "fynd_credits"

            case gstTaxPercentage = "gst_tax_percentage"

            case amountPaid = "amount_paid"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case hsnCode = "hsn_code"

            case gstTag = "gst_tag"

            case refundCredit = "refund_credit"

            case totalUnits = "total_units"

            case brandCalculatedAmount = "brand_calculated_amount"

            case codCharges = "cod_charges"

            case priceEffective = "price_effective"

            case cashback

            case size

            case couponValue = "coupon_value"

            case addedToFyndCash = "added_to_fynd_cash"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.amountPaidRoundoff = amountPaidRoundoff

            self.priceMarked = priceMarked

            self.cashbackApplied = cashbackApplied

            self.taxCollectedAtSource = taxCollectedAtSource

            self.deliveryCharge = deliveryCharge

            self.discount = discount

            self.transferPrice = transferPrice

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.itemName = itemName

            self.gstFee = gstFee

            self.valueOfGood = valueOfGood

            self.identifiers = identifiers

            self.fyndCredits = fyndCredits

            self.gstTaxPercentage = gstTaxPercentage

            self.amountPaid = amountPaid

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.hsnCode = hsnCode

            self.gstTag = gstTag

            self.refundCredit = refundCredit

            self.totalUnits = totalUnits

            self.brandCalculatedAmount = brandCalculatedAmount

            self.codCharges = codCharges

            self.priceEffective = priceEffective

            self.cashback = cashback

            self.size = size

            self.couponValue = couponValue

            self.addedToFyndCash = addedToFyndCash
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            discount = try container.decode(Int.self, forKey: .discount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            itemName = try container.decode(String.self, forKey: .itemName)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            cashback = try container.decode(Int.self, forKey: .cashback)

            size = try container.decode(String.self, forKey: .size)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)
        }
    }
}
