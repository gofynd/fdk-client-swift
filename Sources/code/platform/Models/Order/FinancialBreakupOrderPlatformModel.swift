

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var taxCollectedAtSource: Int?

        public var fyndCredits: Int

        public var identifiers: Identifier

        public var couponValue: Double

        public var addedToFyndCash: Bool

        public var brandCalculatedAmount: Double

        public var size: String

        public var totalUnits: Int

        public var discount: Int

        public var amountPaid: Double

        public var gstTaxPercentage: Int

        public var valueOfGood: Double

        public var priceEffective: Int

        public var deliveryCharge: Int

        public var promotionEffectiveDiscount: Double

        public var couponEffectiveDiscount: Double

        public var priceMarked: Int

        public var hsnCode: String

        public var codCharges: Int

        public var gstTag: String

        public var refundCredit: Int

        public var gstFee: Double

        public var transferPrice: Int

        public var cashback: Int

        public var cashbackApplied: Int

        public var itemName: String

        public var amountPaidRoundoff: Int?

        public enum CodingKeys: String, CodingKey {
            case taxCollectedAtSource = "tax_collected_at_source"

            case fyndCredits = "fynd_credits"

            case identifiers

            case couponValue = "coupon_value"

            case addedToFyndCash = "added_to_fynd_cash"

            case brandCalculatedAmount = "brand_calculated_amount"

            case size

            case totalUnits = "total_units"

            case discount

            case amountPaid = "amount_paid"

            case gstTaxPercentage = "gst_tax_percentage"

            case valueOfGood = "value_of_good"

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case priceMarked = "price_marked"

            case hsnCode = "hsn_code"

            case codCharges = "cod_charges"

            case gstTag = "gst_tag"

            case refundCredit = "refund_credit"

            case gstFee = "gst_fee"

            case transferPrice = "transfer_price"

            case cashback

            case cashbackApplied = "cashback_applied"

            case itemName = "item_name"

            case amountPaidRoundoff = "amount_paid_roundoff"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.taxCollectedAtSource = taxCollectedAtSource

            self.fyndCredits = fyndCredits

            self.identifiers = identifiers

            self.couponValue = couponValue

            self.addedToFyndCash = addedToFyndCash

            self.brandCalculatedAmount = brandCalculatedAmount

            self.size = size

            self.totalUnits = totalUnits

            self.discount = discount

            self.amountPaid = amountPaid

            self.gstTaxPercentage = gstTaxPercentage

            self.valueOfGood = valueOfGood

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.priceMarked = priceMarked

            self.hsnCode = hsnCode

            self.codCharges = codCharges

            self.gstTag = gstTag

            self.refundCredit = refundCredit

            self.gstFee = gstFee

            self.transferPrice = transferPrice

            self.cashback = cashback

            self.cashbackApplied = cashbackApplied

            self.itemName = itemName

            self.amountPaidRoundoff = amountPaidRoundoff
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            size = try container.decode(String.self, forKey: .size)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            discount = try container.decode(Int.self, forKey: .discount)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            cashback = try container.decode(Int.self, forKey: .cashback)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            itemName = try container.decode(String.self, forKey: .itemName)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var taxCollectedAtSource: Int?

        public var fyndCredits: Int

        public var identifiers: Identifier

        public var couponValue: Double

        public var addedToFyndCash: Bool

        public var brandCalculatedAmount: Double

        public var size: String

        public var totalUnits: Int

        public var discount: Int

        public var amountPaid: Double

        public var gstTaxPercentage: Int

        public var valueOfGood: Double

        public var priceEffective: Int

        public var deliveryCharge: Int

        public var promotionEffectiveDiscount: Double

        public var couponEffectiveDiscount: Double

        public var priceMarked: Int

        public var hsnCode: String

        public var codCharges: Int

        public var gstTag: String

        public var refundCredit: Int

        public var gstFee: Double

        public var transferPrice: Int

        public var cashback: Int

        public var cashbackApplied: Int

        public var itemName: String

        public var amountPaidRoundoff: Int?

        public enum CodingKeys: String, CodingKey {
            case taxCollectedAtSource = "tax_collected_at_source"

            case fyndCredits = "fynd_credits"

            case identifiers

            case couponValue = "coupon_value"

            case addedToFyndCash = "added_to_fynd_cash"

            case brandCalculatedAmount = "brand_calculated_amount"

            case size

            case totalUnits = "total_units"

            case discount

            case amountPaid = "amount_paid"

            case gstTaxPercentage = "gst_tax_percentage"

            case valueOfGood = "value_of_good"

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case priceMarked = "price_marked"

            case hsnCode = "hsn_code"

            case codCharges = "cod_charges"

            case gstTag = "gst_tag"

            case refundCredit = "refund_credit"

            case gstFee = "gst_fee"

            case transferPrice = "transfer_price"

            case cashback

            case cashbackApplied = "cashback_applied"

            case itemName = "item_name"

            case amountPaidRoundoff = "amount_paid_roundoff"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.taxCollectedAtSource = taxCollectedAtSource

            self.fyndCredits = fyndCredits

            self.identifiers = identifiers

            self.couponValue = couponValue

            self.addedToFyndCash = addedToFyndCash

            self.brandCalculatedAmount = brandCalculatedAmount

            self.size = size

            self.totalUnits = totalUnits

            self.discount = discount

            self.amountPaid = amountPaid

            self.gstTaxPercentage = gstTaxPercentage

            self.valueOfGood = valueOfGood

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.priceMarked = priceMarked

            self.hsnCode = hsnCode

            self.codCharges = codCharges

            self.gstTag = gstTag

            self.refundCredit = refundCredit

            self.gstFee = gstFee

            self.transferPrice = transferPrice

            self.cashback = cashback

            self.cashbackApplied = cashbackApplied

            self.itemName = itemName

            self.amountPaidRoundoff = amountPaidRoundoff
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            size = try container.decode(String.self, forKey: .size)

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            discount = try container.decode(Int.self, forKey: .discount)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            cashback = try container.decode(Int.self, forKey: .cashback)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            itemName = try container.decode(String.self, forKey: .itemName)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)
        }
    }
}
