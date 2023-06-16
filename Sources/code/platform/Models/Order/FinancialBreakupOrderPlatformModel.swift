

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var addedToFyndCash: Bool

        public var hsnCode: String

        public var deliveryCharge: Int

        public var identifiers: Identifier

        public var promotionEffectiveDiscount: Double

        public var cashback: Int

        public var brandCalculatedAmount: Double

        public var transferPrice: Int

        public var codCharges: Int

        public var valueOfGood: Double

        public var gstTag: String

        public var refundCredit: Int

        public var itemName: String

        public var priceEffective: Int

        public var couponEffectiveDiscount: Double

        public var priceMarked: Int

        public var discount: Int

        public var taxCollectedAtSource: Int?

        public var couponValue: Double

        public var gstFee: Double

        public var amountPaid: Double

        public var cashbackApplied: Int

        public var size: String

        public var amountPaidRoundoff: Int?

        public var gstTaxPercentage: Int

        public var fyndCredits: Int

        public var totalUnits: Int

        public enum CodingKeys: String, CodingKey {
            case addedToFyndCash = "added_to_fynd_cash"

            case hsnCode = "hsn_code"

            case deliveryCharge = "delivery_charge"

            case identifiers

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case cashback

            case brandCalculatedAmount = "brand_calculated_amount"

            case transferPrice = "transfer_price"

            case codCharges = "cod_charges"

            case valueOfGood = "value_of_good"

            case gstTag = "gst_tag"

            case refundCredit = "refund_credit"

            case itemName = "item_name"

            case priceEffective = "price_effective"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case priceMarked = "price_marked"

            case discount

            case taxCollectedAtSource = "tax_collected_at_source"

            case couponValue = "coupon_value"

            case gstFee = "gst_fee"

            case amountPaid = "amount_paid"

            case cashbackApplied = "cashback_applied"

            case size

            case amountPaidRoundoff = "amount_paid_roundoff"

            case gstTaxPercentage = "gst_tax_percentage"

            case fyndCredits = "fynd_credits"

            case totalUnits = "total_units"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.addedToFyndCash = addedToFyndCash

            self.hsnCode = hsnCode

            self.deliveryCharge = deliveryCharge

            self.identifiers = identifiers

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.cashback = cashback

            self.brandCalculatedAmount = brandCalculatedAmount

            self.transferPrice = transferPrice

            self.codCharges = codCharges

            self.valueOfGood = valueOfGood

            self.gstTag = gstTag

            self.refundCredit = refundCredit

            self.itemName = itemName

            self.priceEffective = priceEffective

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.priceMarked = priceMarked

            self.discount = discount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.couponValue = couponValue

            self.gstFee = gstFee

            self.amountPaid = amountPaid

            self.cashbackApplied = cashbackApplied

            self.size = size

            self.amountPaidRoundoff = amountPaidRoundoff

            self.gstTaxPercentage = gstTaxPercentage

            self.fyndCredits = fyndCredits

            self.totalUnits = totalUnits
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            itemName = try container.decode(String.self, forKey: .itemName)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            discount = try container.decode(Int.self, forKey: .discount)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            size = try container.decode(String.self, forKey: .size)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

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
        public var addedToFyndCash: Bool

        public var hsnCode: String

        public var deliveryCharge: Int

        public var identifiers: Identifier

        public var promotionEffectiveDiscount: Double

        public var cashback: Int

        public var brandCalculatedAmount: Double

        public var transferPrice: Int

        public var codCharges: Int

        public var valueOfGood: Double

        public var gstTag: String

        public var refundCredit: Int

        public var itemName: String

        public var priceEffective: Int

        public var couponEffectiveDiscount: Double

        public var priceMarked: Int

        public var discount: Int

        public var taxCollectedAtSource: Int?

        public var couponValue: Double

        public var gstFee: Double

        public var amountPaid: Double

        public var cashbackApplied: Int

        public var size: String

        public var amountPaidRoundoff: Int?

        public var gstTaxPercentage: Int

        public var fyndCredits: Int

        public var totalUnits: Int

        public enum CodingKeys: String, CodingKey {
            case addedToFyndCash = "added_to_fynd_cash"

            case hsnCode = "hsn_code"

            case deliveryCharge = "delivery_charge"

            case identifiers

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case cashback

            case brandCalculatedAmount = "brand_calculated_amount"

            case transferPrice = "transfer_price"

            case codCharges = "cod_charges"

            case valueOfGood = "value_of_good"

            case gstTag = "gst_tag"

            case refundCredit = "refund_credit"

            case itemName = "item_name"

            case priceEffective = "price_effective"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case priceMarked = "price_marked"

            case discount

            case taxCollectedAtSource = "tax_collected_at_source"

            case couponValue = "coupon_value"

            case gstFee = "gst_fee"

            case amountPaid = "amount_paid"

            case cashbackApplied = "cashback_applied"

            case size

            case amountPaidRoundoff = "amount_paid_roundoff"

            case gstTaxPercentage = "gst_tax_percentage"

            case fyndCredits = "fynd_credits"

            case totalUnits = "total_units"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.addedToFyndCash = addedToFyndCash

            self.hsnCode = hsnCode

            self.deliveryCharge = deliveryCharge

            self.identifiers = identifiers

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.cashback = cashback

            self.brandCalculatedAmount = brandCalculatedAmount

            self.transferPrice = transferPrice

            self.codCharges = codCharges

            self.valueOfGood = valueOfGood

            self.gstTag = gstTag

            self.refundCredit = refundCredit

            self.itemName = itemName

            self.priceEffective = priceEffective

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.priceMarked = priceMarked

            self.discount = discount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.couponValue = couponValue

            self.gstFee = gstFee

            self.amountPaid = amountPaid

            self.cashbackApplied = cashbackApplied

            self.size = size

            self.amountPaidRoundoff = amountPaidRoundoff

            self.gstTaxPercentage = gstTaxPercentage

            self.fyndCredits = fyndCredits

            self.totalUnits = totalUnits
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            itemName = try container.decode(String.self, forKey: .itemName)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            discount = try container.decode(Int.self, forKey: .discount)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            size = try container.decode(String.self, forKey: .size)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)
        }
    }
}
