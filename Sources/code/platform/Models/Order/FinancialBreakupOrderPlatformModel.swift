

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var identifiers: Identifier

        public var transferPrice: Int

        public var couponEffectiveDiscount: Double

        public var cashbackApplied: Int

        public var gstTag: String

        public var gstFee: Double

        public var refundCredit: Int

        public var cashback: Int

        public var amountPaid: Double

        public var gstTaxPercentage: Int

        public var totalUnits: Int

        public var size: String

        public var deliveryCharge: Int

        public var fyndCredits: Int

        public var hsnCode: String

        public var addedToFyndCash: Bool

        public var couponValue: Double

        public var priceEffective: Int

        public var discount: Int

        public var codCharges: Int

        public var taxCollectedAtSource: Int?

        public var promotionEffectiveDiscount: Double

        public var brandCalculatedAmount: Double

        public var priceMarked: Int

        public var amountPaidRoundoff: Int?

        public var valueOfGood: Double

        public var itemName: String

        public enum CodingKeys: String, CodingKey {
            case identifiers

            case transferPrice = "transfer_price"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case cashbackApplied = "cashback_applied"

            case gstTag = "gst_tag"

            case gstFee = "gst_fee"

            case refundCredit = "refund_credit"

            case cashback

            case amountPaid = "amount_paid"

            case gstTaxPercentage = "gst_tax_percentage"

            case totalUnits = "total_units"

            case size

            case deliveryCharge = "delivery_charge"

            case fyndCredits = "fynd_credits"

            case hsnCode = "hsn_code"

            case addedToFyndCash = "added_to_fynd_cash"

            case couponValue = "coupon_value"

            case priceEffective = "price_effective"

            case discount

            case codCharges = "cod_charges"

            case taxCollectedAtSource = "tax_collected_at_source"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case brandCalculatedAmount = "brand_calculated_amount"

            case priceMarked = "price_marked"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case valueOfGood = "value_of_good"

            case itemName = "item_name"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.identifiers = identifiers

            self.transferPrice = transferPrice

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.cashbackApplied = cashbackApplied

            self.gstTag = gstTag

            self.gstFee = gstFee

            self.refundCredit = refundCredit

            self.cashback = cashback

            self.amountPaid = amountPaid

            self.gstTaxPercentage = gstTaxPercentage

            self.totalUnits = totalUnits

            self.size = size

            self.deliveryCharge = deliveryCharge

            self.fyndCredits = fyndCredits

            self.hsnCode = hsnCode

            self.addedToFyndCash = addedToFyndCash

            self.couponValue = couponValue

            self.priceEffective = priceEffective

            self.discount = discount

            self.codCharges = codCharges

            self.taxCollectedAtSource = taxCollectedAtSource

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.brandCalculatedAmount = brandCalculatedAmount

            self.priceMarked = priceMarked

            self.amountPaidRoundoff = amountPaidRoundoff

            self.valueOfGood = valueOfGood

            self.itemName = itemName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            cashback = try container.decode(Int.self, forKey: .cashback)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            size = try container.decode(String.self, forKey: .size)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            discount = try container.decode(Int.self, forKey: .discount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            itemName = try container.decode(String.self, forKey: .itemName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(itemName, forKey: .itemName)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var identifiers: Identifier

        public var transferPrice: Int

        public var couponEffectiveDiscount: Double

        public var cashbackApplied: Int

        public var gstTag: String

        public var gstFee: Double

        public var refundCredit: Int

        public var cashback: Int

        public var amountPaid: Double

        public var gstTaxPercentage: Int

        public var totalUnits: Int

        public var size: String

        public var deliveryCharge: Int

        public var fyndCredits: Int

        public var hsnCode: String

        public var addedToFyndCash: Bool

        public var couponValue: Double

        public var priceEffective: Int

        public var discount: Int

        public var codCharges: Int

        public var taxCollectedAtSource: Int?

        public var promotionEffectiveDiscount: Double

        public var brandCalculatedAmount: Double

        public var priceMarked: Int

        public var amountPaidRoundoff: Int?

        public var valueOfGood: Double

        public var itemName: String

        public enum CodingKeys: String, CodingKey {
            case identifiers

            case transferPrice = "transfer_price"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case cashbackApplied = "cashback_applied"

            case gstTag = "gst_tag"

            case gstFee = "gst_fee"

            case refundCredit = "refund_credit"

            case cashback

            case amountPaid = "amount_paid"

            case gstTaxPercentage = "gst_tax_percentage"

            case totalUnits = "total_units"

            case size

            case deliveryCharge = "delivery_charge"

            case fyndCredits = "fynd_credits"

            case hsnCode = "hsn_code"

            case addedToFyndCash = "added_to_fynd_cash"

            case couponValue = "coupon_value"

            case priceEffective = "price_effective"

            case discount

            case codCharges = "cod_charges"

            case taxCollectedAtSource = "tax_collected_at_source"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case brandCalculatedAmount = "brand_calculated_amount"

            case priceMarked = "price_marked"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case valueOfGood = "value_of_good"

            case itemName = "item_name"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.identifiers = identifiers

            self.transferPrice = transferPrice

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.cashbackApplied = cashbackApplied

            self.gstTag = gstTag

            self.gstFee = gstFee

            self.refundCredit = refundCredit

            self.cashback = cashback

            self.amountPaid = amountPaid

            self.gstTaxPercentage = gstTaxPercentage

            self.totalUnits = totalUnits

            self.size = size

            self.deliveryCharge = deliveryCharge

            self.fyndCredits = fyndCredits

            self.hsnCode = hsnCode

            self.addedToFyndCash = addedToFyndCash

            self.couponValue = couponValue

            self.priceEffective = priceEffective

            self.discount = discount

            self.codCharges = codCharges

            self.taxCollectedAtSource = taxCollectedAtSource

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.brandCalculatedAmount = brandCalculatedAmount

            self.priceMarked = priceMarked

            self.amountPaidRoundoff = amountPaidRoundoff

            self.valueOfGood = valueOfGood

            self.itemName = itemName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            cashback = try container.decode(Int.self, forKey: .cashback)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            size = try container.decode(String.self, forKey: .size)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            discount = try container.decode(Int.self, forKey: .discount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            itemName = try container.decode(String.self, forKey: .itemName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(itemName, forKey: .itemName)
        }
    }
}
