

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var totalUnits: Int

        public var taxCollectedAtSource: Int?

        public var priceMarked: Int

        public var identifiers: Identifier

        public var addedToFyndCash: Bool

        public var amountPaid: Double

        public var promotionEffectiveDiscount: Double

        public var amountPaidRoundoff: Int?

        public var cashbackApplied: Int

        public var priceEffective: Int

        public var discount: Int

        public var couponValue: Double

        public var gstTag: String

        public var itemName: String

        public var hsnCode: String

        public var gstTaxPercentage: Int

        public var codCharges: Int

        public var refundCredit: Int

        public var cashback: Int

        public var couponEffectiveDiscount: Double

        public var fyndCredits: Int

        public var gstFee: Double

        public var valueOfGood: Double

        public var size: String

        public var brandCalculatedAmount: Double

        public var deliveryCharge: Double

        public var transferPrice: Int

        public enum CodingKeys: String, CodingKey {
            case totalUnits = "total_units"

            case taxCollectedAtSource = "tax_collected_at_source"

            case priceMarked = "price_marked"

            case identifiers

            case addedToFyndCash = "added_to_fynd_cash"

            case amountPaid = "amount_paid"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case cashbackApplied = "cashback_applied"

            case priceEffective = "price_effective"

            case discount

            case couponValue = "coupon_value"

            case gstTag = "gst_tag"

            case itemName = "item_name"

            case hsnCode = "hsn_code"

            case gstTaxPercentage = "gst_tax_percentage"

            case codCharges = "cod_charges"

            case refundCredit = "refund_credit"

            case cashback

            case couponEffectiveDiscount = "coupon_effective_discount"

            case fyndCredits = "fynd_credits"

            case gstFee = "gst_fee"

            case valueOfGood = "value_of_good"

            case size

            case brandCalculatedAmount = "brand_calculated_amount"

            case deliveryCharge = "delivery_charge"

            case transferPrice = "transfer_price"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.totalUnits = totalUnits

            self.taxCollectedAtSource = taxCollectedAtSource

            self.priceMarked = priceMarked

            self.identifiers = identifiers

            self.addedToFyndCash = addedToFyndCash

            self.amountPaid = amountPaid

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.cashbackApplied = cashbackApplied

            self.priceEffective = priceEffective

            self.discount = discount

            self.couponValue = couponValue

            self.gstTag = gstTag

            self.itemName = itemName

            self.hsnCode = hsnCode

            self.gstTaxPercentage = gstTaxPercentage

            self.codCharges = codCharges

            self.refundCredit = refundCredit

            self.cashback = cashback

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.fyndCredits = fyndCredits

            self.gstFee = gstFee

            self.valueOfGood = valueOfGood

            self.size = size

            self.brandCalculatedAmount = brandCalculatedAmount

            self.deliveryCharge = deliveryCharge

            self.transferPrice = transferPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            discount = try container.decode(Int.self, forKey: .discount)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            itemName = try container.decode(String.self, forKey: .itemName)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            cashback = try container.decode(Int.self, forKey: .cashback)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            size = try container.decode(String.self, forKey: .size)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

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
        public var totalUnits: Int

        public var taxCollectedAtSource: Int?

        public var priceMarked: Int

        public var identifiers: Identifier

        public var addedToFyndCash: Bool

        public var amountPaid: Double

        public var promotionEffectiveDiscount: Double

        public var amountPaidRoundoff: Int?

        public var cashbackApplied: Int

        public var priceEffective: Int

        public var discount: Int

        public var couponValue: Double

        public var gstTag: String

        public var itemName: String

        public var hsnCode: String

        public var gstTaxPercentage: Int

        public var codCharges: Int

        public var refundCredit: Int

        public var cashback: Int

        public var couponEffectiveDiscount: Double

        public var fyndCredits: Int

        public var gstFee: Double

        public var valueOfGood: Double

        public var size: String

        public var brandCalculatedAmount: Double

        public var deliveryCharge: Double

        public var transferPrice: Int

        public enum CodingKeys: String, CodingKey {
            case totalUnits = "total_units"

            case taxCollectedAtSource = "tax_collected_at_source"

            case priceMarked = "price_marked"

            case identifiers

            case addedToFyndCash = "added_to_fynd_cash"

            case amountPaid = "amount_paid"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case cashbackApplied = "cashback_applied"

            case priceEffective = "price_effective"

            case discount

            case couponValue = "coupon_value"

            case gstTag = "gst_tag"

            case itemName = "item_name"

            case hsnCode = "hsn_code"

            case gstTaxPercentage = "gst_tax_percentage"

            case codCharges = "cod_charges"

            case refundCredit = "refund_credit"

            case cashback

            case couponEffectiveDiscount = "coupon_effective_discount"

            case fyndCredits = "fynd_credits"

            case gstFee = "gst_fee"

            case valueOfGood = "value_of_good"

            case size

            case brandCalculatedAmount = "brand_calculated_amount"

            case deliveryCharge = "delivery_charge"

            case transferPrice = "transfer_price"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.totalUnits = totalUnits

            self.taxCollectedAtSource = taxCollectedAtSource

            self.priceMarked = priceMarked

            self.identifiers = identifiers

            self.addedToFyndCash = addedToFyndCash

            self.amountPaid = amountPaid

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.cashbackApplied = cashbackApplied

            self.priceEffective = priceEffective

            self.discount = discount

            self.couponValue = couponValue

            self.gstTag = gstTag

            self.itemName = itemName

            self.hsnCode = hsnCode

            self.gstTaxPercentage = gstTaxPercentage

            self.codCharges = codCharges

            self.refundCredit = refundCredit

            self.cashback = cashback

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.fyndCredits = fyndCredits

            self.gstFee = gstFee

            self.valueOfGood = valueOfGood

            self.size = size

            self.brandCalculatedAmount = brandCalculatedAmount

            self.deliveryCharge = deliveryCharge

            self.transferPrice = transferPrice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            discount = try container.decode(Int.self, forKey: .discount)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            itemName = try container.decode(String.self, forKey: .itemName)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            cashback = try container.decode(Int.self, forKey: .cashback)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            size = try container.decode(String.self, forKey: .size)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)
        }
    }
}
