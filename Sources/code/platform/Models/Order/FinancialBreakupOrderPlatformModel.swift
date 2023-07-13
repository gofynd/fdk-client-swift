

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var gstTag: String

        public var gstTaxPercentage: Int

        public var valueOfGood: Double

        public var amountPaidRoundoff: Int?

        public var brandCalculatedAmount: Double

        public var fyndCredits: Int

        public var promotionEffectiveDiscount: Double

        public var discount: Int

        public var identifiers: Identifier

        public var cashbackApplied: Int

        public var priceMarked: Int

        public var taxCollectedAtSource: Int?

        public var amountPaid: Double

        public var totalUnits: Int

        public var hsnCode: String

        public var cashback: Int

        public var addedToFyndCash: Bool

        public var deliveryCharge: Double

        public var couponValue: Double

        public var priceEffective: Int

        public var refundCredit: Int

        public var couponEffectiveDiscount: Double

        public var codCharges: Int

        public var size: String

        public var itemName: String

        public var gstFee: Double

        public var transferPrice: Int

        public enum CodingKeys: String, CodingKey {
            case gstTag = "gst_tag"

            case gstTaxPercentage = "gst_tax_percentage"

            case valueOfGood = "value_of_good"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case brandCalculatedAmount = "brand_calculated_amount"

            case fyndCredits = "fynd_credits"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case discount

            case identifiers

            case cashbackApplied = "cashback_applied"

            case priceMarked = "price_marked"

            case taxCollectedAtSource = "tax_collected_at_source"

            case amountPaid = "amount_paid"

            case totalUnits = "total_units"

            case hsnCode = "hsn_code"

            case cashback

            case addedToFyndCash = "added_to_fynd_cash"

            case deliveryCharge = "delivery_charge"

            case couponValue = "coupon_value"

            case priceEffective = "price_effective"

            case refundCredit = "refund_credit"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case codCharges = "cod_charges"

            case size

            case itemName = "item_name"

            case gstFee = "gst_fee"

            case transferPrice = "transfer_price"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.gstTag = gstTag

            self.gstTaxPercentage = gstTaxPercentage

            self.valueOfGood = valueOfGood

            self.amountPaidRoundoff = amountPaidRoundoff

            self.brandCalculatedAmount = brandCalculatedAmount

            self.fyndCredits = fyndCredits

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.discount = discount

            self.identifiers = identifiers

            self.cashbackApplied = cashbackApplied

            self.priceMarked = priceMarked

            self.taxCollectedAtSource = taxCollectedAtSource

            self.amountPaid = amountPaid

            self.totalUnits = totalUnits

            self.hsnCode = hsnCode

            self.cashback = cashback

            self.addedToFyndCash = addedToFyndCash

            self.deliveryCharge = deliveryCharge

            self.couponValue = couponValue

            self.priceEffective = priceEffective

            self.refundCredit = refundCredit

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.codCharges = codCharges

            self.size = size

            self.itemName = itemName

            self.gstFee = gstFee

            self.transferPrice = transferPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            discount = try container.decode(Int.self, forKey: .discount)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            cashback = try container.decode(Int.self, forKey: .cashback)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            size = try container.decode(String.self, forKey: .size)

            itemName = try container.decode(String.self, forKey: .itemName)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var gstTag: String

        public var gstTaxPercentage: Int

        public var valueOfGood: Double

        public var amountPaidRoundoff: Int?

        public var brandCalculatedAmount: Double

        public var fyndCredits: Int

        public var promotionEffectiveDiscount: Double

        public var discount: Int

        public var identifiers: Identifier

        public var cashbackApplied: Int

        public var priceMarked: Int

        public var taxCollectedAtSource: Int?

        public var amountPaid: Double

        public var totalUnits: Int

        public var hsnCode: String

        public var cashback: Int

        public var addedToFyndCash: Bool

        public var deliveryCharge: Double

        public var couponValue: Double

        public var priceEffective: Int

        public var refundCredit: Int

        public var couponEffectiveDiscount: Double

        public var codCharges: Int

        public var size: String

        public var itemName: String

        public var gstFee: Double

        public var transferPrice: Int

        public enum CodingKeys: String, CodingKey {
            case gstTag = "gst_tag"

            case gstTaxPercentage = "gst_tax_percentage"

            case valueOfGood = "value_of_good"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case brandCalculatedAmount = "brand_calculated_amount"

            case fyndCredits = "fynd_credits"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case discount

            case identifiers

            case cashbackApplied = "cashback_applied"

            case priceMarked = "price_marked"

            case taxCollectedAtSource = "tax_collected_at_source"

            case amountPaid = "amount_paid"

            case totalUnits = "total_units"

            case hsnCode = "hsn_code"

            case cashback

            case addedToFyndCash = "added_to_fynd_cash"

            case deliveryCharge = "delivery_charge"

            case couponValue = "coupon_value"

            case priceEffective = "price_effective"

            case refundCredit = "refund_credit"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case codCharges = "cod_charges"

            case size

            case itemName = "item_name"

            case gstFee = "gst_fee"

            case transferPrice = "transfer_price"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.gstTag = gstTag

            self.gstTaxPercentage = gstTaxPercentage

            self.valueOfGood = valueOfGood

            self.amountPaidRoundoff = amountPaidRoundoff

            self.brandCalculatedAmount = brandCalculatedAmount

            self.fyndCredits = fyndCredits

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.discount = discount

            self.identifiers = identifiers

            self.cashbackApplied = cashbackApplied

            self.priceMarked = priceMarked

            self.taxCollectedAtSource = taxCollectedAtSource

            self.amountPaid = amountPaid

            self.totalUnits = totalUnits

            self.hsnCode = hsnCode

            self.cashback = cashback

            self.addedToFyndCash = addedToFyndCash

            self.deliveryCharge = deliveryCharge

            self.couponValue = couponValue

            self.priceEffective = priceEffective

            self.refundCredit = refundCredit

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.codCharges = codCharges

            self.size = size

            self.itemName = itemName

            self.gstFee = gstFee

            self.transferPrice = transferPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            discount = try container.decode(Int.self, forKey: .discount)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            cashback = try container.decode(Int.self, forKey: .cashback)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            size = try container.decode(String.self, forKey: .size)

            itemName = try container.decode(String.self, forKey: .itemName)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)
        }
    }
}
