

import Foundation
public extension PlatformClient {
    /*
         Model: OrderObj
         Used By: Order
     */

    class OrderObj: Codable {
        public var promotionEffectiveDiscount: Double

        public var fyndOrderId: String

        public var source: String

        public var modeOfPayment: String

        public var headers: [String: Any]

        public var orderingChannelLogo: String

        public var meta: OrderMeta

        public var discount: Double

        public var collectBy: String

        public var couponValue: Double

        public var mongoCartId: [String: Any]

        public var oId: Int

        public var paymentModeId: Int

        public var totalOrderValue: Double

        public var cashbackApplied: Double

        public var cashbackValue: Double

        public var currency: String

        public var orderValue: Double

        public var refundBy: String

        public var taxDetails: OrderTaxDetails?

        public var userId: Int

        public var fyndCredits: Double

        public var codCharges: Int

        public var deliveryCharges: Double

        public var affiliateId: String

        public var affiliateOrderDate: String

        public var paymentMethods: [String: Any]

        public var rawUserAgent: String

        public var transactionId: String?

        public var affiliateOrderId: String

        public var orderingChannel: String

        public var createdTime: Int

        public var prices: OrderPrices

        public enum CodingKeys: String, CodingKey {
            case promotionEffectiveDiscount = "promotion_effective_discount"

            case fyndOrderId = "fynd_order_id"

            case source

            case modeOfPayment = "mode_of_payment"

            case headers

            case orderingChannelLogo = "ordering_channel_logo"

            case meta

            case discount

            case collectBy = "collect_by"

            case couponValue = "coupon_value"

            case mongoCartId = "mongo_cart_id"

            case oId = "o_id"

            case paymentModeId = "payment_mode_id"

            case totalOrderValue = "total_order_value"

            case cashbackApplied = "cashback_applied"

            case cashbackValue = "cashback_value"

            case currency

            case orderValue = "order_value"

            case refundBy = "refund_by"

            case taxDetails = "tax_details"

            case userId = "user_id"

            case fyndCredits = "fynd_credits"

            case codCharges = "cod_charges"

            case deliveryCharges = "delivery_charges"

            case affiliateId = "affiliate_id"

            case affiliateOrderDate = "affiliate_order_date"

            case paymentMethods = "payment_methods"

            case rawUserAgent = "raw_user_agent"

            case transactionId = "transaction_id"

            case affiliateOrderId = "affiliate_order_id"

            case orderingChannel = "ordering_channel"

            case createdTime = "created_time"

            case prices
        }

        public init(affiliateId: String, affiliateOrderDate: String, affiliateOrderId: String, cashbackApplied: Double, cashbackValue: Double, codCharges: Int, collectBy: String, couponValue: Double, createdTime: Int, currency: String, deliveryCharges: Double, discount: Double, fyndCredits: Double, fyndOrderId: String, headers: [String: Any], meta: OrderMeta, modeOfPayment: String, mongoCartId: [String: Any], orderingChannel: String, orderingChannelLogo: String, orderValue: Double, oId: Int, paymentMethods: [String: Any], paymentModeId: Int, prices: OrderPrices, promotionEffectiveDiscount: Double, rawUserAgent: String, refundBy: String, source: String, taxDetails: OrderTaxDetails? = nil, totalOrderValue: Double, transactionId: String? = nil, userId: Int) {
            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.fyndOrderId = fyndOrderId

            self.source = source

            self.modeOfPayment = modeOfPayment

            self.headers = headers

            self.orderingChannelLogo = orderingChannelLogo

            self.meta = meta

            self.discount = discount

            self.collectBy = collectBy

            self.couponValue = couponValue

            self.mongoCartId = mongoCartId

            self.oId = oId

            self.paymentModeId = paymentModeId

            self.totalOrderValue = totalOrderValue

            self.cashbackApplied = cashbackApplied

            self.cashbackValue = cashbackValue

            self.currency = currency

            self.orderValue = orderValue

            self.refundBy = refundBy

            self.taxDetails = taxDetails

            self.userId = userId

            self.fyndCredits = fyndCredits

            self.codCharges = codCharges

            self.deliveryCharges = deliveryCharges

            self.affiliateId = affiliateId

            self.affiliateOrderDate = affiliateOrderDate

            self.paymentMethods = paymentMethods

            self.rawUserAgent = rawUserAgent

            self.transactionId = transactionId

            self.affiliateOrderId = affiliateOrderId

            self.orderingChannel = orderingChannel

            self.createdTime = createdTime

            self.prices = prices
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            source = try container.decode(String.self, forKey: .source)

            modeOfPayment = try container.decode(String.self, forKey: .modeOfPayment)

            headers = try container.decode([String: Any].self, forKey: .headers)

            orderingChannelLogo = try container.decode(String.self, forKey: .orderingChannelLogo)

            meta = try container.decode(OrderMeta.self, forKey: .meta)

            discount = try container.decode(Double.self, forKey: .discount)

            collectBy = try container.decode(String.self, forKey: .collectBy)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            mongoCartId = try container.decode([String: Any].self, forKey: .mongoCartId)

            oId = try container.decode(Int.self, forKey: .oId)

            paymentModeId = try container.decode(Int.self, forKey: .paymentModeId)

            totalOrderValue = try container.decode(Double.self, forKey: .totalOrderValue)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            cashbackValue = try container.decode(Double.self, forKey: .cashbackValue)

            currency = try container.decode(String.self, forKey: .currency)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            refundBy = try container.decode(String.self, forKey: .refundBy)

            do {
                taxDetails = try container.decode(OrderTaxDetails.self, forKey: .taxDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userId = try container.decode(Int.self, forKey: .userId)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            affiliateId = try container.decode(String.self, forKey: .affiliateId)

            affiliateOrderDate = try container.decode(String.self, forKey: .affiliateOrderDate)

            paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

            rawUserAgent = try container.decode(String.self, forKey: .rawUserAgent)

            do {
                transactionId = try container.decode(String.self, forKey: .transactionId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            createdTime = try container.decode(Int.self, forKey: .createdTime)

            prices = try container.decode(OrderPrices.self, forKey: .prices)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(modeOfPayment, forKey: .modeOfPayment)

            try? container.encodeIfPresent(headers, forKey: .headers)

            try? container.encodeIfPresent(orderingChannelLogo, forKey: .orderingChannelLogo)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(collectBy, forKey: .collectBy)

            try? container.encode(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(mongoCartId, forKey: .mongoCartId)

            try? container.encodeIfPresent(oId, forKey: .oId)

            try? container.encodeIfPresent(paymentModeId, forKey: .paymentModeId)

            try? container.encodeIfPresent(totalOrderValue, forKey: .totalOrderValue)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(cashbackValue, forKey: .cashbackValue)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(refundBy, forKey: .refundBy)

            try? container.encodeIfPresent(taxDetails, forKey: .taxDetails)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(affiliateOrderDate, forKey: .affiliateOrderDate)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(rawUserAgent, forKey: .rawUserAgent)

            try? container.encode(transactionId, forKey: .transactionId)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(createdTime, forKey: .createdTime)

            try? container.encodeIfPresent(prices, forKey: .prices)
        }
    }
}
