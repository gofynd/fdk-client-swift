

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var transferPrice: Int

        public var itemName: String

        public var gstTaxPercentage: Int

        public var addedToFyndCash: Bool

        public var valueOfGood: Double

        public var taxCollectedAtSource: Int?

        public var gstTag: String

        public var totalUnits: Int

        public var brandCalculatedAmount: Double

        public var promotionEffectiveDiscount: Double

        public var priceEffective: Int

        public var fyndCredits: Int

        public var gstFee: Double

        public var amountPaidRoundoff: Int?

        public var identifiers: Identifier

        public var discount: Int

        public var hsnCode: String

        public var cashback: Int

        public var couponEffectiveDiscount: Double

        public var cashbackApplied: Int

        public var refundCredit: Int

        public var priceMarked: Int

        public var size: String

        public var deliveryCharge: Double

        public var couponValue: Double

        public var codCharges: Int

        public var amountPaid: Double

        public enum CodingKeys: String, CodingKey {
            case transferPrice = "transfer_price"

            case itemName = "item_name"

            case gstTaxPercentage = "gst_tax_percentage"

            case addedToFyndCash = "added_to_fynd_cash"

            case valueOfGood = "value_of_good"

            case taxCollectedAtSource = "tax_collected_at_source"

            case gstTag = "gst_tag"

            case totalUnits = "total_units"

            case brandCalculatedAmount = "brand_calculated_amount"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case priceEffective = "price_effective"

            case fyndCredits = "fynd_credits"

            case gstFee = "gst_fee"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case identifiers

            case discount

            case hsnCode = "hsn_code"

            case cashback

            case couponEffectiveDiscount = "coupon_effective_discount"

            case cashbackApplied = "cashback_applied"

            case refundCredit = "refund_credit"

            case priceMarked = "price_marked"

            case size

            case deliveryCharge = "delivery_charge"

            case couponValue = "coupon_value"

            case codCharges = "cod_charges"

            case amountPaid = "amount_paid"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.transferPrice = transferPrice

            self.itemName = itemName

            self.gstTaxPercentage = gstTaxPercentage

            self.addedToFyndCash = addedToFyndCash

            self.valueOfGood = valueOfGood

            self.taxCollectedAtSource = taxCollectedAtSource

            self.gstTag = gstTag

            self.totalUnits = totalUnits

            self.brandCalculatedAmount = brandCalculatedAmount

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.priceEffective = priceEffective

            self.fyndCredits = fyndCredits

            self.gstFee = gstFee

            self.amountPaidRoundoff = amountPaidRoundoff

            self.identifiers = identifiers

            self.discount = discount

            self.hsnCode = hsnCode

            self.cashback = cashback

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.cashbackApplied = cashbackApplied

            self.refundCredit = refundCredit

            self.priceMarked = priceMarked

            self.size = size

            self.deliveryCharge = deliveryCharge

            self.couponValue = couponValue

            self.codCharges = codCharges

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemName = try container.decode(String.self, forKey: .itemName)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTag = try container.decode(String.self, forKey: .gstTag)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            discount = try container.decode(Int.self, forKey: .discount)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            cashback = try container.decode(Int.self, forKey: .cashback)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            size = try container.decode(String.self, forKey: .size)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var transferPrice: Int

        public var itemName: String

        public var gstTaxPercentage: Int

        public var addedToFyndCash: Bool

        public var valueOfGood: Double

        public var taxCollectedAtSource: Int?

        public var gstTag: String

        public var totalUnits: Int

        public var brandCalculatedAmount: Double

        public var promotionEffectiveDiscount: Double

        public var priceEffective: Int

        public var fyndCredits: Int

        public var gstFee: Double

        public var amountPaidRoundoff: Int?

        public var identifiers: Identifier

        public var discount: Int

        public var hsnCode: String

        public var cashback: Int

        public var couponEffectiveDiscount: Double

        public var cashbackApplied: Int

        public var refundCredit: Int

        public var priceMarked: Int

        public var size: String

        public var deliveryCharge: Double

        public var couponValue: Double

        public var codCharges: Int

        public var amountPaid: Double

        public enum CodingKeys: String, CodingKey {
            case transferPrice = "transfer_price"

            case itemName = "item_name"

            case gstTaxPercentage = "gst_tax_percentage"

            case addedToFyndCash = "added_to_fynd_cash"

            case valueOfGood = "value_of_good"

            case taxCollectedAtSource = "tax_collected_at_source"

            case gstTag = "gst_tag"

            case totalUnits = "total_units"

            case brandCalculatedAmount = "brand_calculated_amount"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case priceEffective = "price_effective"

            case fyndCredits = "fynd_credits"

            case gstFee = "gst_fee"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case identifiers

            case discount

            case hsnCode = "hsn_code"

            case cashback

            case couponEffectiveDiscount = "coupon_effective_discount"

            case cashbackApplied = "cashback_applied"

            case refundCredit = "refund_credit"

            case priceMarked = "price_marked"

            case size

            case deliveryCharge = "delivery_charge"

            case couponValue = "coupon_value"

            case codCharges = "cod_charges"

            case amountPaid = "amount_paid"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Double, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.transferPrice = transferPrice

            self.itemName = itemName

            self.gstTaxPercentage = gstTaxPercentage

            self.addedToFyndCash = addedToFyndCash

            self.valueOfGood = valueOfGood

            self.taxCollectedAtSource = taxCollectedAtSource

            self.gstTag = gstTag

            self.totalUnits = totalUnits

            self.brandCalculatedAmount = brandCalculatedAmount

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.priceEffective = priceEffective

            self.fyndCredits = fyndCredits

            self.gstFee = gstFee

            self.amountPaidRoundoff = amountPaidRoundoff

            self.identifiers = identifiers

            self.discount = discount

            self.hsnCode = hsnCode

            self.cashback = cashback

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.cashbackApplied = cashbackApplied

            self.refundCredit = refundCredit

            self.priceMarked = priceMarked

            self.size = size

            self.deliveryCharge = deliveryCharge

            self.couponValue = couponValue

            self.codCharges = codCharges

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemName = try container.decode(String.self, forKey: .itemName)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTag = try container.decode(String.self, forKey: .gstTag)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            discount = try container.decode(Int.self, forKey: .discount)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            cashback = try container.decode(Int.self, forKey: .cashback)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            size = try container.decode(String.self, forKey: .size)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
        }
    }
}
