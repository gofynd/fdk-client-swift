

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var codCharges: Int

        public var fyndCredits: Int

        public var hsnCode: String

        public var refundCredit: Int

        public var amountPaidRoundoff: Int?

        public var identifiers: Identifier

        public var deliveryCharge: Int

        public var amountPaid: Double

        public var size: String

        public var cashbackApplied: Int

        public var itemName: String

        public var transferPrice: Int

        public var gstFee: Double

        public var valueOfGood: Double

        public var promotionEffectiveDiscount: Double

        public var priceEffective: Int

        public var gstTaxPercentage: Int

        public var couponEffectiveDiscount: Double

        public var gstTag: String

        public var couponValue: Double

        public var brandCalculatedAmount: Double

        public var cashback: Int

        public var discount: Int

        public var priceMarked: Int

        public var taxCollectedAtSource: Int?

        public var totalUnits: Int

        public var addedToFyndCash: Bool

        public enum CodingKeys: String, CodingKey {
            case codCharges = "cod_charges"

            case fyndCredits = "fynd_credits"

            case hsnCode = "hsn_code"

            case refundCredit = "refund_credit"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case identifiers

            case deliveryCharge = "delivery_charge"

            case amountPaid = "amount_paid"

            case size

            case cashbackApplied = "cashback_applied"

            case itemName = "item_name"

            case transferPrice = "transfer_price"

            case gstFee = "gst_fee"

            case valueOfGood = "value_of_good"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case priceEffective = "price_effective"

            case gstTaxPercentage = "gst_tax_percentage"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case gstTag = "gst_tag"

            case couponValue = "coupon_value"

            case brandCalculatedAmount = "brand_calculated_amount"

            case cashback

            case discount

            case priceMarked = "price_marked"

            case taxCollectedAtSource = "tax_collected_at_source"

            case totalUnits = "total_units"

            case addedToFyndCash = "added_to_fynd_cash"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.codCharges = codCharges

            self.fyndCredits = fyndCredits

            self.hsnCode = hsnCode

            self.refundCredit = refundCredit

            self.amountPaidRoundoff = amountPaidRoundoff

            self.identifiers = identifiers

            self.deliveryCharge = deliveryCharge

            self.amountPaid = amountPaid

            self.size = size

            self.cashbackApplied = cashbackApplied

            self.itemName = itemName

            self.transferPrice = transferPrice

            self.gstFee = gstFee

            self.valueOfGood = valueOfGood

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.priceEffective = priceEffective

            self.gstTaxPercentage = gstTaxPercentage

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.gstTag = gstTag

            self.couponValue = couponValue

            self.brandCalculatedAmount = brandCalculatedAmount

            self.cashback = cashback

            self.discount = discount

            self.priceMarked = priceMarked

            self.taxCollectedAtSource = taxCollectedAtSource

            self.totalUnits = totalUnits

            self.addedToFyndCash = addedToFyndCash
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            size = try container.decode(String.self, forKey: .size)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            itemName = try container.decode(String.self, forKey: .itemName)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            discount = try container.decode(Int.self, forKey: .discount)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

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
        public var codCharges: Int

        public var fyndCredits: Int

        public var hsnCode: String

        public var refundCredit: Int

        public var amountPaidRoundoff: Int?

        public var identifiers: Identifier

        public var deliveryCharge: Int

        public var amountPaid: Double

        public var size: String

        public var cashbackApplied: Int

        public var itemName: String

        public var transferPrice: Int

        public var gstFee: Double

        public var valueOfGood: Double

        public var promotionEffectiveDiscount: Double

        public var priceEffective: Int

        public var gstTaxPercentage: Int

        public var couponEffectiveDiscount: Double

        public var gstTag: String

        public var couponValue: Double

        public var brandCalculatedAmount: Double

        public var cashback: Int

        public var discount: Int

        public var priceMarked: Int

        public var taxCollectedAtSource: Int?

        public var totalUnits: Int

        public var addedToFyndCash: Bool

        public enum CodingKeys: String, CodingKey {
            case codCharges = "cod_charges"

            case fyndCredits = "fynd_credits"

            case hsnCode = "hsn_code"

            case refundCredit = "refund_credit"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case identifiers

            case deliveryCharge = "delivery_charge"

            case amountPaid = "amount_paid"

            case size

            case cashbackApplied = "cashback_applied"

            case itemName = "item_name"

            case transferPrice = "transfer_price"

            case gstFee = "gst_fee"

            case valueOfGood = "value_of_good"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case priceEffective = "price_effective"

            case gstTaxPercentage = "gst_tax_percentage"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case gstTag = "gst_tag"

            case couponValue = "coupon_value"

            case brandCalculatedAmount = "brand_calculated_amount"

            case cashback

            case discount

            case priceMarked = "price_marked"

            case taxCollectedAtSource = "tax_collected_at_source"

            case totalUnits = "total_units"

            case addedToFyndCash = "added_to_fynd_cash"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.codCharges = codCharges

            self.fyndCredits = fyndCredits

            self.hsnCode = hsnCode

            self.refundCredit = refundCredit

            self.amountPaidRoundoff = amountPaidRoundoff

            self.identifiers = identifiers

            self.deliveryCharge = deliveryCharge

            self.amountPaid = amountPaid

            self.size = size

            self.cashbackApplied = cashbackApplied

            self.itemName = itemName

            self.transferPrice = transferPrice

            self.gstFee = gstFee

            self.valueOfGood = valueOfGood

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.priceEffective = priceEffective

            self.gstTaxPercentage = gstTaxPercentage

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.gstTag = gstTag

            self.couponValue = couponValue

            self.brandCalculatedAmount = brandCalculatedAmount

            self.cashback = cashback

            self.discount = discount

            self.priceMarked = priceMarked

            self.taxCollectedAtSource = taxCollectedAtSource

            self.totalUnits = totalUnits

            self.addedToFyndCash = addedToFyndCash
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            size = try container.decode(String.self, forKey: .size)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            itemName = try container.decode(String.self, forKey: .itemName)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            discount = try container.decode(Int.self, forKey: .discount)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)
        }
    }
}
