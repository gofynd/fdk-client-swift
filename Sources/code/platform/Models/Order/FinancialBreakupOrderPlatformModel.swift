

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var gstFee: Double

        public var promotionEffectiveDiscount: Double

        public var discount: Int

        public var amountPaidRoundoff: Int?

        public var addedToFyndCash: Bool

        public var couponEffectiveDiscount: Double

        public var hsnCode: String

        public var valueOfGood: Double

        public var itemName: String

        public var size: String

        public var brandCalculatedAmount: Double

        public var identifiers: Identifier

        public var totalUnits: Int

        public var priceMarked: Int

        public var gstTag: String

        public var fyndCredits: Int

        public var taxCollectedAtSource: Int?

        public var cashbackApplied: Int

        public var deliveryCharge: Int

        public var codCharges: Int

        public var couponValue: Double

        public var refundCredit: Int

        public var cashback: Int

        public var transferPrice: Int

        public var priceEffective: Int

        public var gstTaxPercentage: Int

        public var amountPaid: Double

        public enum CodingKeys: String, CodingKey {
            case gstFee = "gst_fee"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case discount

            case amountPaidRoundoff = "amount_paid_roundoff"

            case addedToFyndCash = "added_to_fynd_cash"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case hsnCode = "hsn_code"

            case valueOfGood = "value_of_good"

            case itemName = "item_name"

            case size

            case brandCalculatedAmount = "brand_calculated_amount"

            case identifiers

            case totalUnits = "total_units"

            case priceMarked = "price_marked"

            case gstTag = "gst_tag"

            case fyndCredits = "fynd_credits"

            case taxCollectedAtSource = "tax_collected_at_source"

            case cashbackApplied = "cashback_applied"

            case deliveryCharge = "delivery_charge"

            case codCharges = "cod_charges"

            case couponValue = "coupon_value"

            case refundCredit = "refund_credit"

            case cashback

            case transferPrice = "transfer_price"

            case priceEffective = "price_effective"

            case gstTaxPercentage = "gst_tax_percentage"

            case amountPaid = "amount_paid"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.gstFee = gstFee

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.discount = discount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.addedToFyndCash = addedToFyndCash

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.hsnCode = hsnCode

            self.valueOfGood = valueOfGood

            self.itemName = itemName

            self.size = size

            self.brandCalculatedAmount = brandCalculatedAmount

            self.identifiers = identifiers

            self.totalUnits = totalUnits

            self.priceMarked = priceMarked

            self.gstTag = gstTag

            self.fyndCredits = fyndCredits

            self.taxCollectedAtSource = taxCollectedAtSource

            self.cashbackApplied = cashbackApplied

            self.deliveryCharge = deliveryCharge

            self.codCharges = codCharges

            self.couponValue = couponValue

            self.refundCredit = refundCredit

            self.cashback = cashback

            self.transferPrice = transferPrice

            self.priceEffective = priceEffective

            self.gstTaxPercentage = gstTaxPercentage

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            discount = try container.decode(Int.self, forKey: .discount)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            itemName = try container.decode(String.self, forKey: .itemName)

            size = try container.decode(String.self, forKey: .size)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            cashback = try container.decode(Int.self, forKey: .cashback)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

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
        public var gstFee: Double

        public var promotionEffectiveDiscount: Double

        public var discount: Int

        public var amountPaidRoundoff: Int?

        public var addedToFyndCash: Bool

        public var couponEffectiveDiscount: Double

        public var hsnCode: String

        public var valueOfGood: Double

        public var itemName: String

        public var size: String

        public var brandCalculatedAmount: Double

        public var identifiers: Identifier

        public var totalUnits: Int

        public var priceMarked: Int

        public var gstTag: String

        public var fyndCredits: Int

        public var taxCollectedAtSource: Int?

        public var cashbackApplied: Int

        public var deliveryCharge: Int

        public var codCharges: Int

        public var couponValue: Double

        public var refundCredit: Int

        public var cashback: Int

        public var transferPrice: Int

        public var priceEffective: Int

        public var gstTaxPercentage: Int

        public var amountPaid: Double

        public enum CodingKeys: String, CodingKey {
            case gstFee = "gst_fee"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case discount

            case amountPaidRoundoff = "amount_paid_roundoff"

            case addedToFyndCash = "added_to_fynd_cash"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case hsnCode = "hsn_code"

            case valueOfGood = "value_of_good"

            case itemName = "item_name"

            case size

            case brandCalculatedAmount = "brand_calculated_amount"

            case identifiers

            case totalUnits = "total_units"

            case priceMarked = "price_marked"

            case gstTag = "gst_tag"

            case fyndCredits = "fynd_credits"

            case taxCollectedAtSource = "tax_collected_at_source"

            case cashbackApplied = "cashback_applied"

            case deliveryCharge = "delivery_charge"

            case codCharges = "cod_charges"

            case couponValue = "coupon_value"

            case refundCredit = "refund_credit"

            case cashback

            case transferPrice = "transfer_price"

            case priceEffective = "price_effective"

            case gstTaxPercentage = "gst_tax_percentage"

            case amountPaid = "amount_paid"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.gstFee = gstFee

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.discount = discount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.addedToFyndCash = addedToFyndCash

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.hsnCode = hsnCode

            self.valueOfGood = valueOfGood

            self.itemName = itemName

            self.size = size

            self.brandCalculatedAmount = brandCalculatedAmount

            self.identifiers = identifiers

            self.totalUnits = totalUnits

            self.priceMarked = priceMarked

            self.gstTag = gstTag

            self.fyndCredits = fyndCredits

            self.taxCollectedAtSource = taxCollectedAtSource

            self.cashbackApplied = cashbackApplied

            self.deliveryCharge = deliveryCharge

            self.codCharges = codCharges

            self.couponValue = couponValue

            self.refundCredit = refundCredit

            self.cashback = cashback

            self.transferPrice = transferPrice

            self.priceEffective = priceEffective

            self.gstTaxPercentage = gstTaxPercentage

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            discount = try container.decode(Int.self, forKey: .discount)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            itemName = try container.decode(String.self, forKey: .itemName)

            size = try container.decode(String.self, forKey: .size)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            cashback = try container.decode(Int.self, forKey: .cashback)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
        }
    }
}
