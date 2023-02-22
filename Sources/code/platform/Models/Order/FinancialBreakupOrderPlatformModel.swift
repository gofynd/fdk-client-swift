

import Foundation

public extension PlatformClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var amountPaidRoundoff: Int?

        public var totalUnits: Int

        public var priceEffective: Int

        public var fyndCredits: Int

        public var priceMarked: Int

        public var gstFee: Double

        public var couponValue: Double

        public var gstTaxPercentage: Int

        public var taxCollectedAtSource: Int?

        public var amountPaid: Double

        public var deliveryCharge: Int

        public var transferPrice: Int

        public var brandCalculatedAmount: Double

        public var codCharges: Int

        public var cashback: Int

        public var identifiers: Identifier

        public var discount: Int

        public var itemName: String

        public var couponEffectiveDiscount: Double

        public var hsnCode: String

        public var size: String

        public var cashbackApplied: Int

        public var addedToFyndCash: Bool

        public var valueOfGood: Double

        public var gstTag: String

        public var promotionEffectiveDiscount: Double

        public var refundCredit: Int

        public enum CodingKeys: String, CodingKey {
            case amountPaidRoundoff = "amount_paid_roundoff"

            case totalUnits = "total_units"

            case priceEffective = "price_effective"

            case fyndCredits = "fynd_credits"

            case priceMarked = "price_marked"

            case gstFee = "gst_fee"

            case couponValue = "coupon_value"

            case gstTaxPercentage = "gst_tax_percentage"

            case taxCollectedAtSource = "tax_collected_at_source"

            case amountPaid = "amount_paid"

            case deliveryCharge = "delivery_charge"

            case transferPrice = "transfer_price"

            case brandCalculatedAmount = "brand_calculated_amount"

            case codCharges = "cod_charges"

            case cashback

            case identifiers

            case discount

            case itemName = "item_name"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case hsnCode = "hsn_code"

            case size

            case cashbackApplied = "cashback_applied"

            case addedToFyndCash = "added_to_fynd_cash"

            case valueOfGood = "value_of_good"

            case gstTag = "gst_tag"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case refundCredit = "refund_credit"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.amountPaidRoundoff = amountPaidRoundoff

            self.totalUnits = totalUnits

            self.priceEffective = priceEffective

            self.fyndCredits = fyndCredits

            self.priceMarked = priceMarked

            self.gstFee = gstFee

            self.couponValue = couponValue

            self.gstTaxPercentage = gstTaxPercentage

            self.taxCollectedAtSource = taxCollectedAtSource

            self.amountPaid = amountPaid

            self.deliveryCharge = deliveryCharge

            self.transferPrice = transferPrice

            self.brandCalculatedAmount = brandCalculatedAmount

            self.codCharges = codCharges

            self.cashback = cashback

            self.identifiers = identifiers

            self.discount = discount

            self.itemName = itemName

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.hsnCode = hsnCode

            self.size = size

            self.cashbackApplied = cashbackApplied

            self.addedToFyndCash = addedToFyndCash

            self.valueOfGood = valueOfGood

            self.gstTag = gstTag

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.refundCredit = refundCredit
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            cashback = try container.decode(Int.self, forKey: .cashback)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            discount = try container.decode(Int.self, forKey: .discount)

            itemName = try container.decode(String.self, forKey: .itemName)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            size = try container.decode(String.self, forKey: .size)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: FinancialBreakup
         Used By: Order
     */

    class FinancialBreakup: Codable {
        public var amountPaidRoundoff: Int?

        public var totalUnits: Int

        public var priceEffective: Int

        public var fyndCredits: Int

        public var priceMarked: Int

        public var gstFee: Double

        public var couponValue: Double

        public var gstTaxPercentage: Int

        public var taxCollectedAtSource: Int?

        public var amountPaid: Double

        public var deliveryCharge: Int

        public var transferPrice: Int

        public var brandCalculatedAmount: Double

        public var codCharges: Int

        public var cashback: Int

        public var identifiers: Identifier

        public var discount: Int

        public var itemName: String

        public var couponEffectiveDiscount: Double

        public var hsnCode: String

        public var size: String

        public var cashbackApplied: Int

        public var addedToFyndCash: Bool

        public var valueOfGood: Double

        public var gstTag: String

        public var promotionEffectiveDiscount: Double

        public var refundCredit: Int

        public enum CodingKeys: String, CodingKey {
            case amountPaidRoundoff = "amount_paid_roundoff"

            case totalUnits = "total_units"

            case priceEffective = "price_effective"

            case fyndCredits = "fynd_credits"

            case priceMarked = "price_marked"

            case gstFee = "gst_fee"

            case couponValue = "coupon_value"

            case gstTaxPercentage = "gst_tax_percentage"

            case taxCollectedAtSource = "tax_collected_at_source"

            case amountPaid = "amount_paid"

            case deliveryCharge = "delivery_charge"

            case transferPrice = "transfer_price"

            case brandCalculatedAmount = "brand_calculated_amount"

            case codCharges = "cod_charges"

            case cashback

            case identifiers

            case discount

            case itemName = "item_name"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case hsnCode = "hsn_code"

            case size

            case cashbackApplied = "cashback_applied"

            case addedToFyndCash = "added_to_fynd_cash"

            case valueOfGood = "value_of_good"

            case gstTag = "gst_tag"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case refundCredit = "refund_credit"
        }

        public init(addedToFyndCash: Bool, amountPaid: Double, amountPaidRoundoff: Int? = nil, brandCalculatedAmount: Double, cashback: Int, cashbackApplied: Int, codCharges: Int, couponEffectiveDiscount: Double, couponValue: Double, deliveryCharge: Int, discount: Int, fyndCredits: Int, gstFee: Double, gstTag: String, gstTaxPercentage: Int, hsnCode: String, identifiers: Identifier, itemName: String, priceEffective: Int, priceMarked: Int, promotionEffectiveDiscount: Double, refundCredit: Int, size: String, taxCollectedAtSource: Int? = nil, totalUnits: Int, transferPrice: Int, valueOfGood: Double) {
            self.amountPaidRoundoff = amountPaidRoundoff

            self.totalUnits = totalUnits

            self.priceEffective = priceEffective

            self.fyndCredits = fyndCredits

            self.priceMarked = priceMarked

            self.gstFee = gstFee

            self.couponValue = couponValue

            self.gstTaxPercentage = gstTaxPercentage

            self.taxCollectedAtSource = taxCollectedAtSource

            self.amountPaid = amountPaid

            self.deliveryCharge = deliveryCharge

            self.transferPrice = transferPrice

            self.brandCalculatedAmount = brandCalculatedAmount

            self.codCharges = codCharges

            self.cashback = cashback

            self.identifiers = identifiers

            self.discount = discount

            self.itemName = itemName

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.hsnCode = hsnCode

            self.size = size

            self.cashbackApplied = cashbackApplied

            self.addedToFyndCash = addedToFyndCash

            self.valueOfGood = valueOfGood

            self.gstTag = gstTag

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.refundCredit = refundCredit
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                amountPaidRoundoff = try container.decode(Int.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            priceEffective = try container.decode(Int.self, forKey: .priceEffective)

            fyndCredits = try container.decode(Int.self, forKey: .fyndCredits)

            priceMarked = try container.decode(Int.self, forKey: .priceMarked)

            gstFee = try container.decode(Double.self, forKey: .gstFee)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            gstTaxPercentage = try container.decode(Int.self, forKey: .gstTaxPercentage)

            do {
                taxCollectedAtSource = try container.decode(Int.self, forKey: .taxCollectedAtSource)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            deliveryCharge = try container.decode(Int.self, forKey: .deliveryCharge)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            cashback = try container.decode(Int.self, forKey: .cashback)

            identifiers = try container.decode(Identifier.self, forKey: .identifiers)

            discount = try container.decode(Int.self, forKey: .discount)

            itemName = try container.decode(String.self, forKey: .itemName)

            couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            hsnCode = try container.decode(String.self, forKey: .hsnCode)

            size = try container.decode(String.self, forKey: .size)

            cashbackApplied = try container.decode(Int.self, forKey: .cashbackApplied)

            addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            gstTag = try container.decode(String.self, forKey: .gstTag)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            refundCredit = try container.decode(Int.self, forKey: .refundCredit)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(taxCollectedAtSource, forKey: .taxCollectedAtSource)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)
        }
    }
}
