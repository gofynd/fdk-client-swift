

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var cashback: Int

        public var discount: Int

        public var couponEffectiveDiscount: Double

        public var gstTaxPercentage: Int

        public var priceMarked: Int

        public var totalUnits: Int

        public var cashbackApplied: Int

        public var brandCalculatedAmount: Double

        public var gstTag: String

        public var addedToFyndCash: Bool

        public var itemName: String

        public var gstFee: Double

        public var identifiers: Identifier

        public var amountPaid: Double

        public var taxCollectedAtSource: Int?

        public var hsnCode: String

        public var fyndCredits: Int

        public var priceEffective: Int

        public var transferPrice: Int

        public var deliveryCharge: Int

        public var codCharges: Int

        public var refundCredit: Int

        public var size: String

        public var promotionEffectiveDiscount: Double

        public var amountPaidRoundoff: Int?

        public var valueOfGood: Double

        public var couponValue: Double

        public enum CodingKeys: String, CodingKey {
            case cashback

            case discount

            case couponEffectiveDiscount = "coupon_effective_discount"

            case gstTaxPercentage = "gst_tax_percentage"

            case priceMarked = "price_marked"

            case totalUnits = "total_units"

            case cashbackApplied = "cashback_applied"

            case brandCalculatedAmount = "brand_calculated_amount"

            case gstTag = "gst_tag"

            case addedToFyndCash = "added_to_fynd_cash"

            case itemName = "item_name"

            case gstFee = "gst_fee"

            case identifiers

            case amountPaid = "amount_paid"

            case taxCollectedAtSource = "tax_collected_at_source"

            case hsnCode = "hsn_code"

            case fyndCredits = "fynd_credits"

            case priceEffective = "price_effective"

            case transferPrice = "transfer_price"

            case deliveryCharge = "delivery_charge"

            case codCharges = "cod_charges"

            case refundCredit = "refund_credit"

            case size

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case valueOfGood = "value_of_good"

            case couponValue = "coupon_value"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.cashback = cashback

            self.discount = discount

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.gstTaxPercentage = gstTaxPercentage

            self.priceMarked = priceMarked

            self.totalUnits = totalUnits

            self.cashbackApplied = cashbackApplied

            self.brandCalculatedAmount = brandCalculatedAmount

            self.gstTag = gstTag

            self.addedToFyndCash = addedToFyndCash

            self.itemName = itemName

            self.gstFee = gstFee

            self.identifiers = identifiers

            self.amountPaid = amountPaid

            self.taxCollectedAtSource = taxCollectedAtSource

            self.hsnCode = hsnCode

            self.fyndCredits = fyndCredits

            self.priceEffective = priceEffective

            self.transferPrice = transferPrice

            self.deliveryCharge = deliveryCharge

            self.codCharges = codCharges

            self.refundCredit = refundCredit

            self.size = size

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.valueOfGood = valueOfGood

            self.couponValue = couponValue
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cashback = try container.decode(Int.self, forKey: .cashback)

            discount = try container.decode(Int.self, forKey: .discount)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            itemName = try container.decode(String.self, forKey: .itemName)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            size = try container.decode(String.self, forKey: .size)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            couponValue = try container.decode(Double.self, forKey: .couponValue)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var cashback: Int

        public var discount: Int

        public var couponEffectiveDiscount: Double

        public var gstTaxPercentage: Int

        public var priceMarked: Int

        public var totalUnits: Int

        public var cashbackApplied: Int

        public var brandCalculatedAmount: Double

        public var gstTag: String

        public var addedToFyndCash: Bool

        public var itemName: String

        public var gstFee: Double

        public var identifiers: Identifier

        public var amountPaid: Double

        public var taxCollectedAtSource: Int?

        public var hsnCode: String

        public var fyndCredits: Int

        public var priceEffective: Int

        public var transferPrice: Int

        public var deliveryCharge: Int

        public var codCharges: Int

        public var refundCredit: Int

        public var size: String

        public var promotionEffectiveDiscount: Double

        public var amountPaidRoundoff: Int?

        public var valueOfGood: Double

        public var couponValue: Double

        public enum CodingKeys: String, CodingKey {
            case cashback

            case discount

            case couponEffectiveDiscount = "coupon_effective_discount"

            case gstTaxPercentage = "gst_tax_percentage"

            case priceMarked = "price_marked"

            case totalUnits = "total_units"

            case cashbackApplied = "cashback_applied"

            case brandCalculatedAmount = "brand_calculated_amount"

            case gstTag = "gst_tag"

            case addedToFyndCash = "added_to_fynd_cash"

            case itemName = "item_name"

            case gstFee = "gst_fee"

            case identifiers

            case amountPaid = "amount_paid"

            case taxCollectedAtSource = "tax_collected_at_source"

            case hsnCode = "hsn_code"

            case fyndCredits = "fynd_credits"

            case priceEffective = "price_effective"

            case transferPrice = "transfer_price"

            case deliveryCharge = "delivery_charge"

            case codCharges = "cod_charges"

            case refundCredit = "refund_credit"

            case size

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case valueOfGood = "value_of_good"

            case couponValue = "coupon_value"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.cashback = cashback

            self.discount = discount

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.gstTaxPercentage = gstTaxPercentage

            self.priceMarked = priceMarked

            self.totalUnits = totalUnits

            self.cashbackApplied = cashbackApplied

            self.brandCalculatedAmount = brandCalculatedAmount

            self.gstTag = gstTag

            self.addedToFyndCash = addedToFyndCash

            self.itemName = itemName

            self.gstFee = gstFee

            self.identifiers = identifiers

            self.amountPaid = amountPaid

            self.taxCollectedAtSource = taxCollectedAtSource

            self.hsnCode = hsnCode

            self.fyndCredits = fyndCredits

            self.priceEffective = priceEffective

            self.transferPrice = transferPrice

            self.deliveryCharge = deliveryCharge

            self.codCharges = codCharges

            self.refundCredit = refundCredit

            self.size = size

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.amountPaidRoundoff = amountPaidRoundoff

            self.valueOfGood = valueOfGood

            self.couponValue = couponValue
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cashback = try container.decode(Int.self, forKey: .cashback)

            discount = try container.decode(Int.self, forKey: .discount)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            itemName = try container.decode(String.self, forKey: .itemName)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            size = try container.decode(String.self, forKey: .size)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            couponValue = try container.decode(Double.self, forKey: .couponValue)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)
        }
    }
}
