

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var promotionEffectiveDiscount: Double

        public var deliveryCharge: Int

        public var totalUnits: Int

        public var refundCredit: Int

        public var priceMarked: Int

        public var cashback: Int

        public var brandCalculatedAmount: Double

        public var priceEffective: Int

        public var addedToFyndCash: Bool

        public var valueOfGood: Double

        public var identifiers: Identifier

        public var amountPaid: Double

        public var gstTaxPercentage: Int

        public var hsnCode: String

        public var discount: Int

        public var taxCollectedAtSource: Int?

        public var cashbackApplied: Int

        public var couponValue: Double

        public var itemName: String

        public var fyndCredits: Int

        public var couponEffectiveDiscount: Double

        public var codCharges: Int

        public var amountPaidRoundoff: Int?

        public var gstTag: String

        public var transferPrice: Int

        public var size: String

        public var gstFee: Double

        public enum CodingKeys: String, CodingKey {
            case promotionEffectiveDiscount = "promotion_effective_discount"

            case deliveryCharge = "delivery_charge"

            case totalUnits = "total_units"

            case refundCredit = "refund_credit"

            case priceMarked = "price_marked"

            case cashback

            case brandCalculatedAmount = "brand_calculated_amount"

            case priceEffective = "price_effective"

            case addedToFyndCash = "added_to_fynd_cash"

            case valueOfGood = "value_of_good"

            case identifiers

            case amountPaid = "amount_paid"

            case gstTaxPercentage = "gst_tax_percentage"

            case hsnCode = "hsn_code"

            case discount

            case taxCollectedAtSource = "tax_collected_at_source"

            case cashbackApplied = "cashback_applied"

            case couponValue = "coupon_value"

            case itemName = "item_name"

            case fyndCredits = "fynd_credits"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case codCharges = "cod_charges"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case gstTag = "gst_tag"

            case transferPrice = "transfer_price"

            case size

            case gstFee = "gst_fee"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.deliveryCharge = deliveryCharge

            self.totalUnits = totalUnits

            self.refundCredit = refundCredit

            self.priceMarked = priceMarked

            self.cashback = cashback

            self.brandCalculatedAmount = brandCalculatedAmount

            self.priceEffective = priceEffective

            self.addedToFyndCash = addedToFyndCash

            self.valueOfGood = valueOfGood

            self.identifiers = identifiers

            self.amountPaid = amountPaid

            self.gstTaxPercentage = gstTaxPercentage

            self.hsnCode = hsnCode

            self.discount = discount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.cashbackApplied = cashbackApplied

            self.couponValue = couponValue

            self.itemName = itemName

            self.fyndCredits = fyndCredits

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.codCharges = codCharges

            self.amountPaidRoundoff = amountPaidRoundoff

            self.gstTag = gstTag

            self.transferPrice = transferPrice

            self.size = size

            self.gstFee = gstFee
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            cashback = try container.decode(Int.self, forKey: .cashback)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            discount = try container.decode(Int.self, forKey: .discount)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            itemName = try container.decode(String.self, forKey: .itemName)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTag = try container.decode(String.self, forKey: .gstTag)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            size = try container.decode(String.self, forKey: .size)

            gstFee = try container.decode(Double.self, forKey: .gstFee)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var promotionEffectiveDiscount: Double

        public var deliveryCharge: Int

        public var totalUnits: Int

        public var refundCredit: Int

        public var priceMarked: Int

        public var cashback: Int

        public var brandCalculatedAmount: Double

        public var priceEffective: Int

        public var addedToFyndCash: Bool

        public var valueOfGood: Double

        public var identifiers: Identifier

        public var amountPaid: Double

        public var gstTaxPercentage: Int

        public var hsnCode: String

        public var discount: Int

        public var taxCollectedAtSource: Int?

        public var cashbackApplied: Int

        public var couponValue: Double

        public var itemName: String

        public var fyndCredits: Int

        public var couponEffectiveDiscount: Double

        public var codCharges: Int

        public var amountPaidRoundoff: Int?

        public var gstTag: String

        public var transferPrice: Int

        public var size: String

        public var gstFee: Double

        public enum CodingKeys: String, CodingKey {
            case promotionEffectiveDiscount = "promotion_effective_discount"

            case deliveryCharge = "delivery_charge"

            case totalUnits = "total_units"

            case refundCredit = "refund_credit"

            case priceMarked = "price_marked"

            case cashback

            case brandCalculatedAmount = "brand_calculated_amount"

            case priceEffective = "price_effective"

            case addedToFyndCash = "added_to_fynd_cash"

            case valueOfGood = "value_of_good"

            case identifiers

            case amountPaid = "amount_paid"

            case gstTaxPercentage = "gst_tax_percentage"

            case hsnCode = "hsn_code"

            case discount

            case taxCollectedAtSource = "tax_collected_at_source"

            case cashbackApplied = "cashback_applied"

            case couponValue = "coupon_value"

            case itemName = "item_name"

            case fyndCredits = "fynd_credits"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case codCharges = "cod_charges"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case gstTag = "gst_tag"

            case transferPrice = "transfer_price"

            case size

            case gstFee = "gst_fee"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.deliveryCharge = deliveryCharge

            self.totalUnits = totalUnits

            self.refundCredit = refundCredit

            self.priceMarked = priceMarked

            self.cashback = cashback

            self.brandCalculatedAmount = brandCalculatedAmount

            self.priceEffective = priceEffective

            self.addedToFyndCash = addedToFyndCash

            self.valueOfGood = valueOfGood

            self.identifiers = identifiers

            self.amountPaid = amountPaid

            self.gstTaxPercentage = gstTaxPercentage

            self.hsnCode = hsnCode

            self.discount = discount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.cashbackApplied = cashbackApplied

            self.couponValue = couponValue

            self.itemName = itemName

            self.fyndCredits = fyndCredits

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.codCharges = codCharges

            self.amountPaidRoundoff = amountPaidRoundoff

            self.gstTag = gstTag

            self.transferPrice = transferPrice

            self.size = size

            self.gstFee = gstFee
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            cashback = try container.decode(Int.self, forKey: .cashback)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            discount = try container.decode(Int.self, forKey: .discount)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            itemName = try container.decode(String.self, forKey: .itemName)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTag = try container.decode(String.self, forKey: .gstTag)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            size = try container.decode(String.self, forKey: .size)

            gstFee = try container.decode(Double.self, forKey: .gstFee)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)
        }
    }
}
