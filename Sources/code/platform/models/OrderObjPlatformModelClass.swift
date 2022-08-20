

import Foundation
public extension PlatformClient {
    /*
         Model: OrderObj
         Used By: Order
     */

    class OrderObj: Codable {
        public var refundBy: String

        public var rawUserAgent: String

        public var codCharges: Int

        public var affiliateId: String

        public var modeOfPayment: String

        public var source: String

        public var userId: Int

        public var totalOrderValue: Double

        public var createdTime: Int

        public var cashbackApplied: Double

        public var mongoCartId: [String: Any]

        public var paymentModeId: Int

        public var affiliateOrderDate: String

        public var orderingChannelLogo: String

        public var orderValue: Double

        public var paymentMethods: [String: Any]

        public var discount: Double

        public var promotionEffectiveDiscount: Double

        public var collectBy: String

        public var deliveryCharges: Double

        public var meta: OrderMeta

        public var oId: Int

        public var currency: String

        public var taxDetails: OrderTaxDetails?

        public var headers: [String: Any]

        public var affiliateOrderId: String

        public var transactionId: String?

        public var orderingChannel: String

        public var cashbackValue: Double

        public var fyndCredits: Double

        public var couponValue: Double

        public var fyndOrderId: String

        public var prices: OrderPrices

        public enum CodingKeys: String, CodingKey {
            case refundBy = "refund_by"

            case rawUserAgent = "raw_user_agent"

            case codCharges = "cod_charges"

            case affiliateId = "affiliate_id"

            case modeOfPayment = "mode_of_payment"

            case source

            case userId = "user_id"

            case totalOrderValue = "total_order_value"

            case createdTime = "created_time"

            case cashbackApplied = "cashback_applied"

            case mongoCartId = "mongo_cart_id"

            case paymentModeId = "payment_mode_id"

            case affiliateOrderDate = "affiliate_order_date"

            case orderingChannelLogo = "ordering_channel_logo"

            case orderValue = "order_value"

            case paymentMethods = "payment_methods"

            case discount

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case collectBy = "collect_by"

            case deliveryCharges = "delivery_charges"

            case meta

            case oId = "o_id"

            case currency

            case taxDetails = "tax_details"

            case headers

            case affiliateOrderId = "affiliate_order_id"

            case transactionId = "transaction_id"

            case orderingChannel = "ordering_channel"

            case cashbackValue = "cashback_value"

            case fyndCredits = "fynd_credits"

            case couponValue = "coupon_value"

            case fyndOrderId = "fynd_order_id"

            case prices
        }

        public init(affiliateId: String, affiliateOrderDate: String, affiliateOrderId: String, cashbackApplied: Double, cashbackValue: Double, codCharges: Int, collectBy: String, couponValue: Double, createdTime: Int, currency: String, deliveryCharges: Double, discount: Double, fyndCredits: Double, fyndOrderId: String, headers: [String: Any], meta: OrderMeta, modeOfPayment: String, mongoCartId: [String: Any], orderingChannel: String, orderingChannelLogo: String, orderValue: Double, oId: Int, paymentMethods: [String: Any], paymentModeId: Int, prices: OrderPrices, promotionEffectiveDiscount: Double, rawUserAgent: String, refundBy: String, source: String, taxDetails: OrderTaxDetails? = nil, totalOrderValue: Double, transactionId: String? = nil, userId: Int) {
            self.refundBy = refundBy

            self.rawUserAgent = rawUserAgent

            self.codCharges = codCharges

            self.affiliateId = affiliateId

            self.modeOfPayment = modeOfPayment

            self.source = source

            self.userId = userId

            self.totalOrderValue = totalOrderValue

            self.createdTime = createdTime

            self.cashbackApplied = cashbackApplied

            self.mongoCartId = mongoCartId

            self.paymentModeId = paymentModeId

            self.affiliateOrderDate = affiliateOrderDate

            self.orderingChannelLogo = orderingChannelLogo

            self.orderValue = orderValue

            self.paymentMethods = paymentMethods

            self.discount = discount

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.collectBy = collectBy

            self.deliveryCharges = deliveryCharges

            self.meta = meta

            self.oId = oId

            self.currency = currency

            self.taxDetails = taxDetails

            self.headers = headers

            self.affiliateOrderId = affiliateOrderId

            self.transactionId = transactionId

            self.orderingChannel = orderingChannel

            self.cashbackValue = cashbackValue

            self.fyndCredits = fyndCredits

            self.couponValue = couponValue

            self.fyndOrderId = fyndOrderId

            self.prices = prices
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            refundBy = try container.decode(String.self, forKey: .refundBy)

            rawUserAgent = try container.decode(String.self, forKey: .rawUserAgent)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            affiliateId = try container.decode(String.self, forKey: .affiliateId)

            modeOfPayment = try container.decode(String.self, forKey: .modeOfPayment)

            source = try container.decode(String.self, forKey: .source)

            userId = try container.decode(Int.self, forKey: .userId)

            totalOrderValue = try container.decode(Double.self, forKey: .totalOrderValue)

            createdTime = try container.decode(Int.self, forKey: .createdTime)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            mongoCartId = try container.decode([String: Any].self, forKey: .mongoCartId)

            paymentModeId = try container.decode(Int.self, forKey: .paymentModeId)

            affiliateOrderDate = try container.decode(String.self, forKey: .affiliateOrderDate)

            orderingChannelLogo = try container.decode(String.self, forKey: .orderingChannelLogo)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

            discount = try container.decode(Double.self, forKey: .discount)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            collectBy = try container.decode(String.self, forKey: .collectBy)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            meta = try container.decode(OrderMeta.self, forKey: .meta)

            oId = try container.decode(Int.self, forKey: .oId)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                taxDetails = try container.decode(OrderTaxDetails.self, forKey: .taxDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            headers = try container.decode([String: Any].self, forKey: .headers)

            affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            do {
                transactionId = try container.decode(String.self, forKey: .transactionId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            cashbackValue = try container.decode(Double.self, forKey: .cashbackValue)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            prices = try container.decode(OrderPrices.self, forKey: .prices)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(refundBy, forKey: .refundBy)

            try? container.encodeIfPresent(rawUserAgent, forKey: .rawUserAgent)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(modeOfPayment, forKey: .modeOfPayment)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(totalOrderValue, forKey: .totalOrderValue)

            try? container.encodeIfPresent(createdTime, forKey: .createdTime)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(mongoCartId, forKey: .mongoCartId)

            try? container.encodeIfPresent(paymentModeId, forKey: .paymentModeId)

            try? container.encodeIfPresent(affiliateOrderDate, forKey: .affiliateOrderDate)

            try? container.encodeIfPresent(orderingChannelLogo, forKey: .orderingChannelLogo)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(collectBy, forKey: .collectBy)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(oId, forKey: .oId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(taxDetails, forKey: .taxDetails)

            try? container.encodeIfPresent(headers, forKey: .headers)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encode(transactionId, forKey: .transactionId)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(cashbackValue, forKey: .cashbackValue)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encode(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(prices, forKey: .prices)
        }
    }
}
