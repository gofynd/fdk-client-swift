

import Foundation
public extension PlatformClient {
    /*
         Model: OrderObj
         Used By: Order
     */

    class OrderObj: Codable {
        public var modeOfPayment: String

        public var taxDetails: OrderTaxDetails?

        public var oId: Int

        public var collectBy: String

        public var rawUserAgent: String

        public var codCharges: Int

        public var meta: OrderMeta

        public var mongoCartId: [String: Any]

        public var refundBy: String

        public var discount: Double

        public var paymentModeId: Int

        public var fyndCredits: Double

        public var source: String

        public var transactionId: String?

        public var fyndOrderId: String

        public var cashbackValue: Double

        public var deliveryCharges: Double

        public var orderValue: Double

        public var currency: String

        public var affiliateOrderId: String

        public var orderingChannel: String

        public var affiliateId: String

        public var promotionEffectiveDiscount: Double

        public var orderingChannelLogo: String

        public var affiliateOrderDate: String

        public var totalOrderValue: Double

        public var headers: [String: Any]

        public var paymentMethods: [String: Any]

        public var couponValue: Double

        public var createdTime: Int

        public var userId: Int

        public var cashbackApplied: Double

        public var prices: OrderPrices

        public enum CodingKeys: String, CodingKey {
            case modeOfPayment = "mode_of_payment"

            case taxDetails = "tax_details"

            case oId = "o_id"

            case collectBy = "collect_by"

            case rawUserAgent = "raw_user_agent"

            case codCharges = "cod_charges"

            case meta

            case mongoCartId = "mongo_cart_id"

            case refundBy = "refund_by"

            case discount

            case paymentModeId = "payment_mode_id"

            case fyndCredits = "fynd_credits"

            case source

            case transactionId = "transaction_id"

            case fyndOrderId = "fynd_order_id"

            case cashbackValue = "cashback_value"

            case deliveryCharges = "delivery_charges"

            case orderValue = "order_value"

            case currency

            case affiliateOrderId = "affiliate_order_id"

            case orderingChannel = "ordering_channel"

            case affiliateId = "affiliate_id"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case orderingChannelLogo = "ordering_channel_logo"

            case affiliateOrderDate = "affiliate_order_date"

            case totalOrderValue = "total_order_value"

            case headers

            case paymentMethods = "payment_methods"

            case couponValue = "coupon_value"

            case createdTime = "created_time"

            case userId = "user_id"

            case cashbackApplied = "cashback_applied"

            case prices
        }

        public init(affiliateId: String, affiliateOrderDate: String, affiliateOrderId: String, cashbackApplied: Double, cashbackValue: Double, codCharges: Int, collectBy: String, couponValue: Double, createdTime: Int, currency: String, deliveryCharges: Double, discount: Double, fyndCredits: Double, fyndOrderId: String, headers: [String: Any], meta: OrderMeta, modeOfPayment: String, mongoCartId: [String: Any], orderingChannel: String, orderingChannelLogo: String, orderValue: Double, oId: Int, paymentMethods: [String: Any], paymentModeId: Int, prices: OrderPrices, promotionEffectiveDiscount: Double, rawUserAgent: String, refundBy: String, source: String, taxDetails: OrderTaxDetails? = nil, totalOrderValue: Double, transactionId: String? = nil, userId: Int) {
            self.modeOfPayment = modeOfPayment

            self.taxDetails = taxDetails

            self.oId = oId

            self.collectBy = collectBy

            self.rawUserAgent = rawUserAgent

            self.codCharges = codCharges

            self.meta = meta

            self.mongoCartId = mongoCartId

            self.refundBy = refundBy

            self.discount = discount

            self.paymentModeId = paymentModeId

            self.fyndCredits = fyndCredits

            self.source = source

            self.transactionId = transactionId

            self.fyndOrderId = fyndOrderId

            self.cashbackValue = cashbackValue

            self.deliveryCharges = deliveryCharges

            self.orderValue = orderValue

            self.currency = currency

            self.affiliateOrderId = affiliateOrderId

            self.orderingChannel = orderingChannel

            self.affiliateId = affiliateId

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.orderingChannelLogo = orderingChannelLogo

            self.affiliateOrderDate = affiliateOrderDate

            self.totalOrderValue = totalOrderValue

            self.headers = headers

            self.paymentMethods = paymentMethods

            self.couponValue = couponValue

            self.createdTime = createdTime

            self.userId = userId

            self.cashbackApplied = cashbackApplied

            self.prices = prices
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            modeOfPayment = try container.decode(String.self, forKey: .modeOfPayment)

            do {
                taxDetails = try container.decode(OrderTaxDetails.self, forKey: .taxDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            oId = try container.decode(Int.self, forKey: .oId)

            collectBy = try container.decode(String.self, forKey: .collectBy)

            rawUserAgent = try container.decode(String.self, forKey: .rawUserAgent)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            meta = try container.decode(OrderMeta.self, forKey: .meta)

            mongoCartId = try container.decode([String: Any].self, forKey: .mongoCartId)

            refundBy = try container.decode(String.self, forKey: .refundBy)

            discount = try container.decode(Double.self, forKey: .discount)

            paymentModeId = try container.decode(Int.self, forKey: .paymentModeId)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            source = try container.decode(String.self, forKey: .source)

            do {
                transactionId = try container.decode(String.self, forKey: .transactionId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            cashbackValue = try container.decode(Double.self, forKey: .cashbackValue)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            currency = try container.decode(String.self, forKey: .currency)

            affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            affiliateId = try container.decode(String.self, forKey: .affiliateId)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            orderingChannelLogo = try container.decode(String.self, forKey: .orderingChannelLogo)

            affiliateOrderDate = try container.decode(String.self, forKey: .affiliateOrderDate)

            totalOrderValue = try container.decode(Double.self, forKey: .totalOrderValue)

            headers = try container.decode([String: Any].self, forKey: .headers)

            paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            createdTime = try container.decode(Int.self, forKey: .createdTime)

            userId = try container.decode(Int.self, forKey: .userId)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            prices = try container.decode(OrderPrices.self, forKey: .prices)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modeOfPayment, forKey: .modeOfPayment)

            try? container.encodeIfPresent(taxDetails, forKey: .taxDetails)

            try? container.encodeIfPresent(oId, forKey: .oId)

            try? container.encodeIfPresent(collectBy, forKey: .collectBy)

            try? container.encodeIfPresent(rawUserAgent, forKey: .rawUserAgent)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(mongoCartId, forKey: .mongoCartId)

            try? container.encodeIfPresent(refundBy, forKey: .refundBy)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(paymentModeId, forKey: .paymentModeId)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encode(transactionId, forKey: .transactionId)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(cashbackValue, forKey: .cashbackValue)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(orderingChannelLogo, forKey: .orderingChannelLogo)

            try? container.encodeIfPresent(affiliateOrderDate, forKey: .affiliateOrderDate)

            try? container.encodeIfPresent(totalOrderValue, forKey: .totalOrderValue)

            try? container.encodeIfPresent(headers, forKey: .headers)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encode(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(createdTime, forKey: .createdTime)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(prices, forKey: .prices)
        }
    }
}
