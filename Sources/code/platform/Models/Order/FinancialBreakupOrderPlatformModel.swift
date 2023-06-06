

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var valueOfGood: Double

        public var amountPaid: Double

        public var discount: Int

        public var codCharges: Int

        public var cashback: Int

        public var addedToFyndCash: Bool

        public var couponEffectiveDiscount: Double

        public var identifiers: Identifier

        public var cashbackApplied: Int

        public var gstFee: Double

        public var fyndCredits: Int

        public var gstTaxPercentage: Int

        public var refundCredit: Int

        public var hsnCode: String

        public var deliveryCharge: Double

        public var promotionEffectiveDiscount: Double

        public var priceEffective: Int

        public var amountPaidRoundoff: Int?

        public var couponValue: Double

        public var itemName: String

        public var size: String

        public var gstTag: String

        public var brandCalculatedAmount: Double

        public var transferPrice: Int

        public var taxCollectedAtSource: Int?

        public var priceMarked: Int

        public var totalUnits: Int

        public enum CodingKeys: String, CodingKey {
            case valueOfGood = "value_of_good"

            case amountPaid = "amount_paid"

            case discount

            case codCharges = "cod_charges"

            case cashback

            case addedToFyndCash = "added_to_fynd_cash"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case identifiers

            case cashbackApplied = "cashback_applied"

            case gstFee = "gst_fee"

            case fyndCredits = "fynd_credits"

            case gstTaxPercentage = "gst_tax_percentage"

            case refundCredit = "refund_credit"

            case hsnCode = "hsn_code"

            case deliveryCharge = "delivery_charge"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case priceEffective = "price_effective"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case couponValue = "coupon_value"

            case itemName = "item_name"

            case size

            case gstTag = "gst_tag"

            case brandCalculatedAmount = "brand_calculated_amount"

            case transferPrice = "transfer_price"

            case taxCollectedAtSource = "tax_collected_at_source"

            case priceMarked = "price_marked"

            case totalUnits = "total_units"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.valueOfGood = valueOfGood

            self.amountPaid = amountPaid

            self.discount = discount

            self.codCharges = codCharges

            self.cashback = cashback

            self.addedToFyndCash = addedToFyndCash

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.identifiers = identifiers

            self.cashbackApplied = cashbackApplied

            self.gstFee = gstFee

            self.fyndCredits = fyndCredits

            self.gstTaxPercentage = gstTaxPercentage

            self.refundCredit = refundCredit

            self.hsnCode = hsnCode

            self.deliveryCharge = deliveryCharge

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.priceEffective = priceEffective

            self.amountPaidRoundoff = amountPaidRoundoff

            self.couponValue = couponValue

            self.itemName = itemName

            self.size = size

            self.gstTag = gstTag

            self.brandCalculatedAmount = brandCalculatedAmount

            self.transferPrice = transferPrice

            self.taxCollectedAtSource = taxCollectedAtSource

            self.priceMarked = priceMarked

            self.totalUnits = totalUnits
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            discount = try container.decode(Int.self, forKey: .discount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            cashback = try container.decode(Int.self, forKey: .cashback)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            itemName = try container.decode(String.self, forKey: .itemName)

            size = try container.decode(String.self, forKey: .size)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var valueOfGood: Double

        public var amountPaid: Double

        public var discount: Int

        public var codCharges: Int

        public var cashback: Int

        public var addedToFyndCash: Bool

        public var couponEffectiveDiscount: Double

        public var identifiers: Identifier

        public var cashbackApplied: Int

        public var gstFee: Double

        public var fyndCredits: Int

        public var gstTaxPercentage: Int

        public var refundCredit: Int

        public var hsnCode: String

        public var deliveryCharge: Double

        public var promotionEffectiveDiscount: Double

        public var priceEffective: Int

        public var amountPaidRoundoff: Int?

        public var couponValue: Double

        public var itemName: String

        public var size: String

        public var gstTag: String

        public var brandCalculatedAmount: Double

        public var transferPrice: Int

        public var taxCollectedAtSource: Int?

        public var priceMarked: Int

        public var totalUnits: Int

        public enum CodingKeys: String, CodingKey {
            case valueOfGood = "value_of_good"

            case amountPaid = "amount_paid"

            case discount

            case codCharges = "cod_charges"

            case cashback

            case addedToFyndCash = "added_to_fynd_cash"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case identifiers

            case cashbackApplied = "cashback_applied"

            case gstFee = "gst_fee"

            case fyndCredits = "fynd_credits"

            case gstTaxPercentage = "gst_tax_percentage"

            case refundCredit = "refund_credit"

            case hsnCode = "hsn_code"

            case deliveryCharge = "delivery_charge"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case priceEffective = "price_effective"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case couponValue = "coupon_value"

            case itemName = "item_name"

            case size

            case gstTag = "gst_tag"

            case brandCalculatedAmount = "brand_calculated_amount"

            case transferPrice = "transfer_price"

            case taxCollectedAtSource = "tax_collected_at_source"

            case priceMarked = "price_marked"

            case totalUnits = "total_units"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.valueOfGood = valueOfGood

            self.amountPaid = amountPaid

            self.discount = discount

            self.codCharges = codCharges

            self.cashback = cashback

            self.addedToFyndCash = addedToFyndCash

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.identifiers = identifiers

            self.cashbackApplied = cashbackApplied

            self.gstFee = gstFee

            self.fyndCredits = fyndCredits

            self.gstTaxPercentage = gstTaxPercentage

            self.refundCredit = refundCredit

            self.hsnCode = hsnCode

            self.deliveryCharge = deliveryCharge

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.priceEffective = priceEffective

            self.amountPaidRoundoff = amountPaidRoundoff

            self.couponValue = couponValue

            self.itemName = itemName

            self.size = size

            self.gstTag = gstTag

            self.brandCalculatedAmount = brandCalculatedAmount

            self.transferPrice = transferPrice

            self.taxCollectedAtSource = taxCollectedAtSource

            self.priceMarked = priceMarked

            self.totalUnits = totalUnits
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            discount = try container.decode(Int.self, forKey: .discount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            cashback = try container.decode(Int.self, forKey: .cashback)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            itemName = try container.decode(String.self, forKey: .itemName)

            size = try container.decode(String.self, forKey: .size)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)
        }
    }
}
