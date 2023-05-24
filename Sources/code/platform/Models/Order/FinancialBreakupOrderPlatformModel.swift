

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var brandCalculatedAmount: Double

        public var size: String

        public var deliveryCharge: Int

        public var identifiers: Identifier

        public var valueOfGood: Double

        public var totalUnits: Int

        public var hsnCode: String

        public var priceMarked: Int

        public var cashbackApplied: Int

        public var couponEffectiveDiscount: Double

        public var couponValue: Double

        public var amountPaidRoundoff: Int?

        public var fyndCredits: Int

        public var addedToFyndCash: Bool

        public var transferPrice: Int

        public var gstTag: String

        public var gstFee: Double

        public var amountPaid: Double

        public var refundCredit: Int

        public var cashback: Int

        public var gstTaxPercentage: Int

        public var itemName: String

        public var priceEffective: Int

        public var codCharges: Int

        public var discount: Int

        public var taxCollectedAtSource: Int?

        public var promotionEffectiveDiscount: Double

        public enum CodingKeys: String, CodingKey {
            case brandCalculatedAmount = "brand_calculated_amount"

            case size

            case deliveryCharge = "delivery_charge"

            case identifiers

            case valueOfGood = "value_of_good"

            case totalUnits = "total_units"

            case hsnCode = "hsn_code"

            case priceMarked = "price_marked"

            case cashbackApplied = "cashback_applied"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case couponValue = "coupon_value"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case fyndCredits = "fynd_credits"

            case addedToFyndCash = "added_to_fynd_cash"

            case transferPrice = "transfer_price"

            case gstTag = "gst_tag"

            case gstFee = "gst_fee"

            case amountPaid = "amount_paid"

            case refundCredit = "refund_credit"

            case cashback

            case gstTaxPercentage = "gst_tax_percentage"

            case itemName = "item_name"

            case priceEffective = "price_effective"

            case codCharges = "cod_charges"

            case discount

            case taxCollectedAtSource = "tax_collected_at_source"

            case promotionEffectiveDiscount = "promotion_effective_discount"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.brandCalculatedAmount = brandCalculatedAmount

            self.size = size

            self.deliveryCharge = deliveryCharge

            self.identifiers = identifiers

            self.valueOfGood = valueOfGood

            self.totalUnits = totalUnits

            self.hsnCode = hsnCode

            self.priceMarked = priceMarked

            self.cashbackApplied = cashbackApplied

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.couponValue = couponValue

            self.amountPaidRoundoff = amountPaidRoundoff

            self.fyndCredits = fyndCredits

            self.addedToFyndCash = addedToFyndCash

            self.transferPrice = transferPrice

            self.gstTag = gstTag

            self.gstFee = gstFee

            self.amountPaid = amountPaid

            self.refundCredit = refundCredit

            self.cashback = cashback

            self.gstTaxPercentage = gstTaxPercentage

            self.itemName = itemName

            self.priceEffective = priceEffective

            self.codCharges = codCharges

            self.discount = discount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.promotionEffectiveDiscount = promotionEffectiveDiscount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            size = try container.decode(String.self, forKey: .size)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            cashback = try container.decode(Int.self, forKey: .cashback)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            itemName = try container.decode(String.self, forKey: .itemName)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            discount = try container.decode(Int.self, forKey: .discount)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var brandCalculatedAmount: Double

        public var size: String

        public var deliveryCharge: Int

        public var identifiers: Identifier

        public var valueOfGood: Double

        public var totalUnits: Int

        public var hsnCode: String

        public var priceMarked: Int

        public var cashbackApplied: Int

        public var couponEffectiveDiscount: Double

        public var couponValue: Double

        public var amountPaidRoundoff: Int?

        public var fyndCredits: Int

        public var addedToFyndCash: Bool

        public var transferPrice: Int

        public var gstTag: String

        public var gstFee: Double

        public var amountPaid: Double

        public var refundCredit: Int

        public var cashback: Int

        public var gstTaxPercentage: Int

        public var itemName: String

        public var priceEffective: Int

        public var codCharges: Int

        public var discount: Int

        public var taxCollectedAtSource: Int?

        public var promotionEffectiveDiscount: Double

        public enum CodingKeys: String, CodingKey {
            case brandCalculatedAmount = "brand_calculated_amount"

            case size

            case deliveryCharge = "delivery_charge"

            case identifiers

            case valueOfGood = "value_of_good"

            case totalUnits = "total_units"

            case hsnCode = "hsn_code"

            case priceMarked = "price_marked"

            case cashbackApplied = "cashback_applied"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case couponValue = "coupon_value"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case fyndCredits = "fynd_credits"

            case addedToFyndCash = "added_to_fynd_cash"

            case transferPrice = "transfer_price"

            case gstTag = "gst_tag"

            case gstFee = "gst_fee"

            case amountPaid = "amount_paid"

            case refundCredit = "refund_credit"

            case cashback

            case gstTaxPercentage = "gst_tax_percentage"

            case itemName = "item_name"

            case priceEffective = "price_effective"

            case codCharges = "cod_charges"

            case discount

            case taxCollectedAtSource = "tax_collected_at_source"

            case promotionEffectiveDiscount = "promotion_effective_discount"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.brandCalculatedAmount = brandCalculatedAmount

            self.size = size

            self.deliveryCharge = deliveryCharge

            self.identifiers = identifiers

            self.valueOfGood = valueOfGood

            self.totalUnits = totalUnits

            self.hsnCode = hsnCode

            self.priceMarked = priceMarked

            self.cashbackApplied = cashbackApplied

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.couponValue = couponValue

            self.amountPaidRoundoff = amountPaidRoundoff

            self.fyndCredits = fyndCredits

            self.addedToFyndCash = addedToFyndCash

            self.transferPrice = transferPrice

            self.gstTag = gstTag

            self.gstFee = gstFee

            self.amountPaid = amountPaid

            self.refundCredit = refundCredit

            self.cashback = cashback

            self.gstTaxPercentage = gstTaxPercentage

            self.itemName = itemName

            self.priceEffective = priceEffective

            self.codCharges = codCharges

            self.discount = discount

            self.taxCollectedAtSource = taxCollectedAtSource

            self.promotionEffectiveDiscount = promotionEffectiveDiscount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            size = try container.decode(String.self, forKey: .size)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            cashback = try container.decode(Int.self, forKey: .cashback)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            itemName = try container.decode(String.self, forKey: .itemName)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            discount = try container.decode(Int.self, forKey: .discount)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)
        }
    }
}
