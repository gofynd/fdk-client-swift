

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var refundCredit: Int

        public var taxCollectedAtSource: Int?

        public var amountPaidRoundoff: Int?

        public var identifiers: Identifier

        public var addedToFyndCash: Bool

        public var priceMarked: Int

        public var discount: Int

        public var cashbackApplied: Int

        public var totalUnits: Int

        public var fyndCredits: Int

        public var promotionEffectiveDiscount: Double

        public var priceEffective: Int

        public var deliveryCharge: Int

        public var codCharges: Int

        public var brandCalculatedAmount: Double

        public var valueOfGood: Double

        public var couponEffectiveDiscount: Double

        public var gstFee: Double

        public var hsnCode: String

        public var amountPaid: Double

        public var size: String

        public var gstTag: String

        public var transferPrice: Int

        public var itemName: String

        public var cashback: Int

        public var gstTaxPercentage: Int

        public var couponValue: Double

        public enum CodingKeys: String, CodingKey {
            case refundCredit = "refund_credit"

            case taxCollectedAtSource = "tax_collected_at_source"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case identifiers

            case addedToFyndCash = "added_to_fynd_cash"

            case priceMarked = "price_marked"

            case discount

            case cashbackApplied = "cashback_applied"

            case totalUnits = "total_units"

            case fyndCredits = "fynd_credits"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case codCharges = "cod_charges"

            case brandCalculatedAmount = "brand_calculated_amount"

            case valueOfGood = "value_of_good"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case gstFee = "gst_fee"

            case hsnCode = "hsn_code"

            case amountPaid = "amount_paid"

            case size

            case gstTag = "gst_tag"

            case transferPrice = "transfer_price"

            case itemName = "item_name"

            case cashback

            case gstTaxPercentage = "gst_tax_percentage"

            case couponValue = "coupon_value"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.refundCredit = refundCredit

            self.taxCollectedAtSource = taxCollectedAtSource

            self.amountPaidRoundoff = amountPaidRoundoff

            self.identifiers = identifiers

            self.addedToFyndCash = addedToFyndCash

            self.priceMarked = priceMarked

            self.discount = discount

            self.cashbackApplied = cashbackApplied

            self.totalUnits = totalUnits

            self.fyndCredits = fyndCredits

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.codCharges = codCharges

            self.brandCalculatedAmount = brandCalculatedAmount

            self.valueOfGood = valueOfGood

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.gstFee = gstFee

            self.hsnCode = hsnCode

            self.amountPaid = amountPaid

            self.size = size

            self.gstTag = gstTag

            self.transferPrice = transferPrice

            self.itemName = itemName

            self.cashback = cashback

            self.gstTaxPercentage = gstTaxPercentage

            self.couponValue = couponValue
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            discount = try container.decode(Int.self, forKey: .discount)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            size = try container.decode(String.self, forKey: .size)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemName = try container.decode(String.self, forKey: .itemName)

            cashback = try container.decode(Int.self, forKey: .cashback)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            couponValue = try container.decode(Double.self, forKey: .couponValue)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

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
        public var refundCredit: Int

        public var taxCollectedAtSource: Int?

        public var amountPaidRoundoff: Int?

        public var identifiers: Identifier

        public var addedToFyndCash: Bool

        public var priceMarked: Int

        public var discount: Int

        public var cashbackApplied: Int

        public var totalUnits: Int

        public var fyndCredits: Int

        public var promotionEffectiveDiscount: Double

        public var priceEffective: Int

        public var deliveryCharge: Int

        public var codCharges: Int

        public var brandCalculatedAmount: Double

        public var valueOfGood: Double

        public var couponEffectiveDiscount: Double

        public var gstFee: Double

        public var hsnCode: String

        public var amountPaid: Double

        public var size: String

        public var gstTag: String

        public var transferPrice: Int

        public var itemName: String

        public var cashback: Int

        public var gstTaxPercentage: Int

        public var couponValue: Double

        public enum CodingKeys: String, CodingKey {
            case refundCredit = "refund_credit"

            case taxCollectedAtSource = "tax_collected_at_source"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case identifiers

            case addedToFyndCash = "added_to_fynd_cash"

            case priceMarked = "price_marked"

            case discount

            case cashbackApplied = "cashback_applied"

            case totalUnits = "total_units"

            case fyndCredits = "fynd_credits"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case codCharges = "cod_charges"

            case brandCalculatedAmount = "brand_calculated_amount"

            case valueOfGood = "value_of_good"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case gstFee = "gst_fee"

            case hsnCode = "hsn_code"

            case amountPaid = "amount_paid"

            case size

            case gstTag = "gst_tag"

            case transferPrice = "transfer_price"

            case itemName = "item_name"

            case cashback

            case gstTaxPercentage = "gst_tax_percentage"

            case couponValue = "coupon_value"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.refundCredit = refundCredit

            self.taxCollectedAtSource = taxCollectedAtSource

            self.amountPaidRoundoff = amountPaidRoundoff

            self.identifiers = identifiers

            self.addedToFyndCash = addedToFyndCash

            self.priceMarked = priceMarked

            self.discount = discount

            self.cashbackApplied = cashbackApplied

            self.totalUnits = totalUnits

            self.fyndCredits = fyndCredits

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.codCharges = codCharges

            self.brandCalculatedAmount = brandCalculatedAmount

            self.valueOfGood = valueOfGood

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.gstFee = gstFee

            self.hsnCode = hsnCode

            self.amountPaid = amountPaid

            self.size = size

            self.gstTag = gstTag

            self.transferPrice = transferPrice

            self.itemName = itemName

            self.cashback = cashback

            self.gstTaxPercentage = gstTaxPercentage

            self.couponValue = couponValue
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            discount = try container.decode(Int.self, forKey: .discount)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            size = try container.decode(String.self, forKey: .size)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemName = try container.decode(String.self, forKey: .itemName)

            cashback = try container.decode(Int.self, forKey: .cashback)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            couponValue = try container.decode(Double.self, forKey: .couponValue)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)
        }
    }
}
