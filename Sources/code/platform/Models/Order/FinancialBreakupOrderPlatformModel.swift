

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var addedToFyndCash: Bool

        public var fyndCredits: Int

        public var transferPrice: Int

        public var refundCredit: Int

        public var gstTaxPercentage: Int

        public var hsnCode: String

        public var codCharges: Int

        public var couponEffectiveDiscount: Double

        public var itemName: String

        public var taxCollectedAtSource: Int?

        public var brandCalculatedAmount: Double

        public var deliveryCharge: Int

        public var cashback: Int

        public var identifiers: Identifier

        public var cashbackApplied: Int

        public var priceEffective: Int

        public var valueOfGood: Double

        public var priceMarked: Int

        public var promotionEffectiveDiscount: Double

        public var gstTag: String

        public var discount: Int

        public var gstFee: Double

        public var totalUnits: Int

        public var size: String

        public var amountPaidRoundoff: Int?

        public var couponValue: Double

        public var amountPaid: Double

        public enum CodingKeys: String, CodingKey {
            case addedToFyndCash = "added_to_fynd_cash"

            case fyndCredits = "fynd_credits"

            case transferPrice = "transfer_price"

            case refundCredit = "refund_credit"

            case gstTaxPercentage = "gst_tax_percentage"

            case hsnCode = "hsn_code"

            case codCharges = "cod_charges"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case itemName = "item_name"

            case taxCollectedAtSource = "tax_collected_at_source"

            case brandCalculatedAmount = "brand_calculated_amount"

            case deliveryCharge = "delivery_charge"

            case cashback

            case identifiers

            case cashbackApplied = "cashback_applied"

            case priceEffective = "price_effective"

            case valueOfGood = "value_of_good"

            case priceMarked = "price_marked"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case gstTag = "gst_tag"

            case discount

            case gstFee = "gst_fee"

            case totalUnits = "total_units"

            case size

            case amountPaidRoundoff = "amount_paid_roundoff"

            case couponValue = "coupon_value"

            case amountPaid = "amount_paid"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.addedToFyndCash = addedToFyndCash

            self.fyndCredits = fyndCredits

            self.transferPrice = transferPrice

            self.refundCredit = refundCredit

            self.gstTaxPercentage = gstTaxPercentage

            self.hsnCode = hsnCode

            self.codCharges = codCharges

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.itemName = itemName

            self.taxCollectedAtSource = taxCollectedAtSource

            self.brandCalculatedAmount = brandCalculatedAmount

            self.deliveryCharge = deliveryCharge

            self.cashback = cashback

            self.identifiers = identifiers

            self.cashbackApplied = cashbackApplied

            self.priceEffective = priceEffective

            self.valueOfGood = valueOfGood

            self.priceMarked = priceMarked

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.gstTag = gstTag

            self.discount = discount

            self.gstFee = gstFee

            self.totalUnits = totalUnits

            self.size = size

            self.amountPaidRoundoff = amountPaidRoundoff

            self.couponValue = couponValue

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            itemName = try container.decode(String.self, forKey: .itemName)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            cashback = try container.decode(Int.self, forKey: .cashback)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            discount = try container.decode(Int.self, forKey: .discount)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            size = try container.decode(String.self, forKey: .size)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

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
        public var addedToFyndCash: Bool

        public var fyndCredits: Int

        public var transferPrice: Int

        public var refundCredit: Int

        public var gstTaxPercentage: Int

        public var hsnCode: String

        public var codCharges: Int

        public var couponEffectiveDiscount: Double

        public var itemName: String

        public var taxCollectedAtSource: Int?

        public var brandCalculatedAmount: Double

        public var deliveryCharge: Int

        public var cashback: Int

        public var identifiers: Identifier

        public var cashbackApplied: Int

        public var priceEffective: Int

        public var valueOfGood: Double

        public var priceMarked: Int

        public var promotionEffectiveDiscount: Double

        public var gstTag: String

        public var discount: Int

        public var gstFee: Double

        public var totalUnits: Int

        public var size: String

        public var amountPaidRoundoff: Int?

        public var couponValue: Double

        public var amountPaid: Double

        public enum CodingKeys: String, CodingKey {
            case addedToFyndCash = "added_to_fynd_cash"

            case fyndCredits = "fynd_credits"

            case transferPrice = "transfer_price"

            case refundCredit = "refund_credit"

            case gstTaxPercentage = "gst_tax_percentage"

            case hsnCode = "hsn_code"

            case codCharges = "cod_charges"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case itemName = "item_name"

            case taxCollectedAtSource = "tax_collected_at_source"

            case brandCalculatedAmount = "brand_calculated_amount"

            case deliveryCharge = "delivery_charge"

            case cashback

            case identifiers

            case cashbackApplied = "cashback_applied"

            case priceEffective = "price_effective"

            case valueOfGood = "value_of_good"

            case priceMarked = "price_marked"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case gstTag = "gst_tag"

            case discount

            case gstFee = "gst_fee"

            case totalUnits = "total_units"

            case size

            case amountPaidRoundoff = "amount_paid_roundoff"

            case couponValue = "coupon_value"

            case amountPaid = "amount_paid"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.addedToFyndCash = addedToFyndCash

            self.fyndCredits = fyndCredits

            self.transferPrice = transferPrice

            self.refundCredit = refundCredit

            self.gstTaxPercentage = gstTaxPercentage

            self.hsnCode = hsnCode

            self.codCharges = codCharges

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.itemName = itemName

            self.taxCollectedAtSource = taxCollectedAtSource

            self.brandCalculatedAmount = brandCalculatedAmount

            self.deliveryCharge = deliveryCharge

            self.cashback = cashback

            self.identifiers = identifiers

            self.cashbackApplied = cashbackApplied

            self.priceEffective = priceEffective

            self.valueOfGood = valueOfGood

            self.priceMarked = priceMarked

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.gstTag = gstTag

            self.discount = discount

            self.gstFee = gstFee

            self.totalUnits = totalUnits

            self.size = size

            self.amountPaidRoundoff = amountPaidRoundoff

            self.couponValue = couponValue

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            itemName = try container.decode(String.self, forKey: .itemName)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            cashback = try container.decode(Int.self, forKey: .cashback)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            discount = try container.decode(Int.self, forKey: .discount)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            size = try container.decode(String.self, forKey: .size)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
        }
    }
}
