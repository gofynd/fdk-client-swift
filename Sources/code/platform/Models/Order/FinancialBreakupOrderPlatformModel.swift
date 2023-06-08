

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var codCharges: Int

        public var gstTaxPercentage: Int

        public var addedToFyndCash: Bool

        public var amountPaidRoundoff: Int?

        public var hsnCode: String

        public var promotionEffectiveDiscount: Double

        public var transferPrice: Int

        public var itemName: String

        public var brandCalculatedAmount: Double

        public var identifiers: Identifier

        public var cashback: Int

        public var couponValue: Double

        public var taxCollectedAtSource: Int?

        public var amountPaid: Double

        public var totalUnits: Int

        public var valueOfGood: Double

        public var discount: Int

        public var gstTag: String

        public var refundCredit: Int

        public var deliveryCharge: Double

        public var priceMarked: Int

        public var gstFee: Double

        public var couponEffectiveDiscount: Double

        public var priceEffective: Int

        public var size: String

        public var cashbackApplied: Int

        public var fyndCredits: Int

        public enum CodingKeys: String, CodingKey {
            case codCharges = "cod_charges"

            case gstTaxPercentage = "gst_tax_percentage"

            case addedToFyndCash = "added_to_fynd_cash"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case hsnCode = "hsn_code"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case transferPrice = "transfer_price"

            case itemName = "item_name"

            case brandCalculatedAmount = "brand_calculated_amount"

            case identifiers

            case cashback

            case couponValue = "coupon_value"

            case taxCollectedAtSource = "tax_collected_at_source"

            case amountPaid = "amount_paid"

            case totalUnits = "total_units"

            case valueOfGood = "value_of_good"

            case discount

            case gstTag = "gst_tag"

            case refundCredit = "refund_credit"

            case deliveryCharge = "delivery_charge"

            case priceMarked = "price_marked"

            case gstFee = "gst_fee"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case priceEffective = "price_effective"

            case size

            case cashbackApplied = "cashback_applied"

            case fyndCredits = "fynd_credits"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.codCharges = codCharges

            self.gstTaxPercentage = gstTaxPercentage

            self.addedToFyndCash = addedToFyndCash

            self.amountPaidRoundoff = amountPaidRoundoff

            self.hsnCode = hsnCode

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.transferPrice = transferPrice

            self.itemName = itemName

            self.brandCalculatedAmount = brandCalculatedAmount

            self.identifiers = identifiers

            self.cashback = cashback

            self.couponValue = couponValue

            self.taxCollectedAtSource = taxCollectedAtSource

            self.amountPaid = amountPaid

            self.totalUnits = totalUnits

            self.valueOfGood = valueOfGood

            self.discount = discount

            self.gstTag = gstTag

            self.refundCredit = refundCredit

            self.deliveryCharge = deliveryCharge

            self.priceMarked = priceMarked

            self.gstFee = gstFee

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.priceEffective = priceEffective

            self.size = size

            self.cashbackApplied = cashbackApplied

            self.fyndCredits = fyndCredits
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemName = try container.decode(String.self, forKey: .itemName)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            cashback = try container.decode(Int.self, forKey: .cashback)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            discount = try container.decode(Int.self, forKey: .discount)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            size = try container.decode(String.self, forKey: .size)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)
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

        public var gstTaxPercentage: Int

        public var addedToFyndCash: Bool

        public var amountPaidRoundoff: Int?

        public var hsnCode: String

        public var promotionEffectiveDiscount: Double

        public var transferPrice: Int

        public var itemName: String

        public var brandCalculatedAmount: Double

        public var identifiers: Identifier

        public var cashback: Int

        public var couponValue: Double

        public var taxCollectedAtSource: Int?

        public var amountPaid: Double

        public var totalUnits: Int

        public var valueOfGood: Double

        public var discount: Int

        public var gstTag: String

        public var refundCredit: Int

        public var deliveryCharge: Double

        public var priceMarked: Int

        public var gstFee: Double

        public var couponEffectiveDiscount: Double

        public var priceEffective: Int

        public var size: String

        public var cashbackApplied: Int

        public var fyndCredits: Int

        public enum CodingKeys: String, CodingKey {
            case codCharges = "cod_charges"

            case gstTaxPercentage = "gst_tax_percentage"

            case addedToFyndCash = "added_to_fynd_cash"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case hsnCode = "hsn_code"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case transferPrice = "transfer_price"

            case itemName = "item_name"

            case brandCalculatedAmount = "brand_calculated_amount"

            case identifiers

            case cashback

            case couponValue = "coupon_value"

            case taxCollectedAtSource = "tax_collected_at_source"

            case amountPaid = "amount_paid"

            case totalUnits = "total_units"

            case valueOfGood = "value_of_good"

            case discount

            case gstTag = "gst_tag"

            case refundCredit = "refund_credit"

            case deliveryCharge = "delivery_charge"

            case priceMarked = "price_marked"

            case gstFee = "gst_fee"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case priceEffective = "price_effective"

            case size

            case cashbackApplied = "cashback_applied"

            case fyndCredits = "fynd_credits"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.codCharges = codCharges

            self.gstTaxPercentage = gstTaxPercentage

            self.addedToFyndCash = addedToFyndCash

            self.amountPaidRoundoff = amountPaidRoundoff

            self.hsnCode = hsnCode

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.transferPrice = transferPrice

            self.itemName = itemName

            self.brandCalculatedAmount = brandCalculatedAmount

            self.identifiers = identifiers

            self.cashback = cashback

            self.couponValue = couponValue

            self.taxCollectedAtSource = taxCollectedAtSource

            self.amountPaid = amountPaid

            self.totalUnits = totalUnits

            self.valueOfGood = valueOfGood

            self.discount = discount

            self.gstTag = gstTag

            self.refundCredit = refundCredit

            self.deliveryCharge = deliveryCharge

            self.priceMarked = priceMarked

            self.gstFee = gstFee

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.priceEffective = priceEffective

            self.size = size

            self.cashbackApplied = cashbackApplied

            self.fyndCredits = fyndCredits
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemName = try container.decode(String.self, forKey: .itemName)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            cashback = try container.decode(Int.self, forKey: .cashback)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            discount = try container.decode(Int.self, forKey: .discount)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            size = try container.decode(String.self, forKey: .size)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)
        }
    }
}
