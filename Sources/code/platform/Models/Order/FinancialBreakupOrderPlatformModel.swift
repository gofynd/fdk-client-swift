

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var priceEffective: Int

        public var identifiers: Identifier

        public var couponValue: Double

        public var hsnCode: String

        public var itemName: String

        public var fyndCredits: Int

        public var gstTaxPercentage: Int

        public var amountPaid: Double

        public var valueOfGood: Double

        public var addedToFyndCash: Bool

        public var refundCredit: Int

        public var transferPrice: Int

        public var deliveryCharge: Int

        public var size: String

        public var priceMarked: Int

        public var taxCollectedAtSource: Int?

        public var promotionEffectiveDiscount: Double

        public var cashbackApplied: Int

        public var gstTag: String

        public var amountPaidRoundoff: Int?

        public var codCharges: Int

        public var brandCalculatedAmount: Double

        public var totalUnits: Int

        public var gstFee: Double

        public var discount: Int

        public var cashback: Int

        public var couponEffectiveDiscount: Double

        public enum CodingKeys: String, CodingKey {
            case priceEffective = "price_effective"

            case identifiers

            case couponValue = "coupon_value"

            case hsnCode = "hsn_code"

            case itemName = "item_name"

            case fyndCredits = "fynd_credits"

            case gstTaxPercentage = "gst_tax_percentage"

            case amountPaid = "amount_paid"

            case valueOfGood = "value_of_good"

            case addedToFyndCash = "added_to_fynd_cash"

            case refundCredit = "refund_credit"

            case transferPrice = "transfer_price"

            case deliveryCharge = "delivery_charge"

            case size

            case priceMarked = "price_marked"

            case taxCollectedAtSource = "tax_collected_at_source"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case cashbackApplied = "cashback_applied"

            case gstTag = "gst_tag"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case codCharges = "cod_charges"

            case brandCalculatedAmount = "brand_calculated_amount"

            case totalUnits = "total_units"

            case gstFee = "gst_fee"

            case discount

            case cashback

            case couponEffectiveDiscount = "coupon_effective_discount"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.priceEffective = priceEffective

            self.identifiers = identifiers

            self.couponValue = couponValue

            self.hsnCode = hsnCode

            self.itemName = itemName

            self.fyndCredits = fyndCredits

            self.gstTaxPercentage = gstTaxPercentage

            self.amountPaid = amountPaid

            self.valueOfGood = valueOfGood

            self.addedToFyndCash = addedToFyndCash

            self.refundCredit = refundCredit

            self.transferPrice = transferPrice

            self.deliveryCharge = deliveryCharge

            self.size = size

            self.priceMarked = priceMarked

            self.taxCollectedAtSource = taxCollectedAtSource

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.cashbackApplied = cashbackApplied

            self.gstTag = gstTag

            self.amountPaidRoundoff = amountPaidRoundoff

            self.codCharges = codCharges

            self.brandCalculatedAmount = brandCalculatedAmount

            self.totalUnits = totalUnits

            self.gstFee = gstFee

            self.discount = discount

            self.cashback = cashback

            self.couponEffectiveDiscount = couponEffectiveDiscount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            itemName = try container.decode(String.self, forKey: .itemName)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            size = try container.decode(String.self, forKey: .size)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            discount = try container.decode(Int.self, forKey: .discount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var priceEffective: Int

        public var identifiers: Identifier

        public var couponValue: Double

        public var hsnCode: String

        public var itemName: String

        public var fyndCredits: Int

        public var gstTaxPercentage: Int

        public var amountPaid: Double

        public var valueOfGood: Double

        public var addedToFyndCash: Bool

        public var refundCredit: Int

        public var transferPrice: Int

        public var deliveryCharge: Int

        public var size: String

        public var priceMarked: Int

        public var taxCollectedAtSource: Int?

        public var promotionEffectiveDiscount: Double

        public var cashbackApplied: Int

        public var gstTag: String

        public var amountPaidRoundoff: Int?

        public var codCharges: Int

        public var brandCalculatedAmount: Double

        public var totalUnits: Int

        public var gstFee: Double

        public var discount: Int

        public var cashback: Int

        public var couponEffectiveDiscount: Double

        public enum CodingKeys: String, CodingKey {
            case priceEffective = "price_effective"

            case identifiers

            case couponValue = "coupon_value"

            case hsnCode = "hsn_code"

            case itemName = "item_name"

            case fyndCredits = "fynd_credits"

            case gstTaxPercentage = "gst_tax_percentage"

            case amountPaid = "amount_paid"

            case valueOfGood = "value_of_good"

            case addedToFyndCash = "added_to_fynd_cash"

            case refundCredit = "refund_credit"

            case transferPrice = "transfer_price"

            case deliveryCharge = "delivery_charge"

            case size

            case priceMarked = "price_marked"

            case taxCollectedAtSource = "tax_collected_at_source"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case cashbackApplied = "cashback_applied"

            case gstTag = "gst_tag"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case codCharges = "cod_charges"

            case brandCalculatedAmount = "brand_calculated_amount"

            case totalUnits = "total_units"

            case gstFee = "gst_fee"

            case discount

            case cashback

            case couponEffectiveDiscount = "coupon_effective_discount"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.priceEffective = priceEffective

            self.identifiers = identifiers

            self.couponValue = couponValue

            self.hsnCode = hsnCode

            self.itemName = itemName

            self.fyndCredits = fyndCredits

            self.gstTaxPercentage = gstTaxPercentage

            self.amountPaid = amountPaid

            self.valueOfGood = valueOfGood

            self.addedToFyndCash = addedToFyndCash

            self.refundCredit = refundCredit

            self.transferPrice = transferPrice

            self.deliveryCharge = deliveryCharge

            self.size = size

            self.priceMarked = priceMarked

            self.taxCollectedAtSource = taxCollectedAtSource

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.cashbackApplied = cashbackApplied

            self.gstTag = gstTag

            self.amountPaidRoundoff = amountPaidRoundoff

            self.codCharges = codCharges

            self.brandCalculatedAmount = brandCalculatedAmount

            self.totalUnits = totalUnits

            self.gstFee = gstFee

            self.discount = discount

            self.cashback = cashback

            self.couponEffectiveDiscount = couponEffectiveDiscount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            itemName = try container.decode(String.self, forKey: .itemName)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            size = try container.decode(String.self, forKey: .size)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            discount = try container.decode(Int.self, forKey: .discount)

            cashback = try container.decode(Int.self, forKey: .cashback)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)
        }
    }
}
