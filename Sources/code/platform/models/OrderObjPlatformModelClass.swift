

import Foundation
public extension PlatformClient {
    /*
         Model: OrderObj
         Used By: Order
     */

    class OrderObj: Codable {
        public var modeOfPayment: String

        public var affiliateId: String

        public var discount: Double

        public var currency: String

        public var promotionEffectiveDiscount: Double

        public var orderingChannelLogo: String

        public var collectBy: String

        public var source: String

        public var paymentMethods: [String: Any]

        public var totalOrderValue: Double

        public var prices: OrderPrices

        public var transactionId: String?

        public var couponValue: Double

        public var cashbackApplied: Double

        public var fyndOrderId: String

        public var paymentModeId: Int

        public var affiliateOrderId: String

        public var oId: Int

        public var orderValue: Double

        public var orderingChannel: String

        public var rawUserAgent: String

        public var fyndCredits: Double

        public var affiliateOrderDate: String

        public var userId: Int

        public var codCharges: Int

        public var deliveryCharges: Double

        public var headers: [String: Any]

        public var taxDetails: OrderTaxDetails?

        public var cashbackValue: Double

        public var refundBy: String

        public var meta: OrderMeta

        public var mongoCartId: [String: Any]

        public var createdTime: Int

        public enum CodingKeys: String, CodingKey {
            case modeOfPayment = "mode_of_payment"

            case affiliateId = "affiliate_id"

            case discount

            case currency

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case orderingChannelLogo = "ordering_channel_logo"

            case collectBy = "collect_by"

            case source

            case paymentMethods = "payment_methods"

            case totalOrderValue = "total_order_value"

            case prices

            case transactionId = "transaction_id"

            case couponValue = "coupon_value"

            case cashbackApplied = "cashback_applied"

            case fyndOrderId = "fynd_order_id"

            case paymentModeId = "payment_mode_id"

            case affiliateOrderId = "affiliate_order_id"

            case oId = "o_id"

            case orderValue = "order_value"

            case orderingChannel = "ordering_channel"

            case rawUserAgent = "raw_user_agent"

            case fyndCredits = "fynd_credits"

            case affiliateOrderDate = "affiliate_order_date"

            case userId = "user_id"

            case codCharges = "cod_charges"

            case deliveryCharges = "delivery_charges"

            case headers

            case taxDetails = "tax_details"

            case cashbackValue = "cashback_value"

            case refundBy = "refund_by"

            case meta

            case mongoCartId = "mongo_cart_id"

            case createdTime = "created_time"
        }

        public init(affiliateId: String, affiliateOrderDate: String, affiliateOrderId: String, cashbackApplied: Double, cashbackValue: Double, codCharges: Int, collectBy: String, couponValue: Double, createdTime: Int, currency: String, deliveryCharges: Double, discount: Double, fyndCredits: Double, fyndOrderId: String, headers: [String: Any], meta: OrderMeta, modeOfPayment: String, mongoCartId: [String: Any], orderingChannel: String, orderingChannelLogo: String, orderValue: Double, oId: Int, paymentMethods: [String: Any], paymentModeId: Int, prices: OrderPrices, promotionEffectiveDiscount: Double, rawUserAgent: String, refundBy: String, source: String, taxDetails: OrderTaxDetails? = nil, totalOrderValue: Double, transactionId: String? = nil, userId: Int) {
            self.modeOfPayment = modeOfPayment

            self.affiliateId = affiliateId

            self.discount = discount

            self.currency = currency

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.orderingChannelLogo = orderingChannelLogo

            self.collectBy = collectBy

            self.source = source

            self.paymentMethods = paymentMethods

            self.totalOrderValue = totalOrderValue

            self.prices = prices

            self.transactionId = transactionId

            self.couponValue = couponValue

            self.cashbackApplied = cashbackApplied

            self.fyndOrderId = fyndOrderId

            self.paymentModeId = paymentModeId

            self.affiliateOrderId = affiliateOrderId

            self.oId = oId

            self.orderValue = orderValue

            self.orderingChannel = orderingChannel

            self.rawUserAgent = rawUserAgent

            self.fyndCredits = fyndCredits

            self.affiliateOrderDate = affiliateOrderDate

            self.userId = userId

            self.codCharges = codCharges

            self.deliveryCharges = deliveryCharges

            self.headers = headers

            self.taxDetails = taxDetails

            self.cashbackValue = cashbackValue

            self.refundBy = refundBy

            self.meta = meta

            self.mongoCartId = mongoCartId

            self.createdTime = createdTime
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            modeOfPayment = try container.decode(String.self, forKey: .modeOfPayment)

            affiliateId = try container.decode(String.self, forKey: .affiliateId)

            discount = try container.decode(Double.self, forKey: .discount)

            currency = try container.decode(String.self, forKey: .currency)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            orderingChannelLogo = try container.decode(String.self, forKey: .orderingChannelLogo)

            collectBy = try container.decode(String.self, forKey: .collectBy)

            source = try container.decode(String.self, forKey: .source)

            paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

            totalOrderValue = try container.decode(Double.self, forKey: .totalOrderValue)

            prices = try container.decode(OrderPrices.self, forKey: .prices)

            do {
                transactionId = try container.decode(String.self, forKey: .transactionId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            paymentModeId = try container.decode(Int.self, forKey: .paymentModeId)

            affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            oId = try container.decode(Int.self, forKey: .oId)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            rawUserAgent = try container.decode(String.self, forKey: .rawUserAgent)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            affiliateOrderDate = try container.decode(String.self, forKey: .affiliateOrderDate)

            userId = try container.decode(Int.self, forKey: .userId)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            headers = try container.decode([String: Any].self, forKey: .headers)

            do {
                taxDetails = try container.decode(OrderTaxDetails.self, forKey: .taxDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashbackValue = try container.decode(Double.self, forKey: .cashbackValue)

            refundBy = try container.decode(String.self, forKey: .refundBy)

            meta = try container.decode(OrderMeta.self, forKey: .meta)

            mongoCartId = try container.decode([String: Any].self, forKey: .mongoCartId)

            createdTime = try container.decode(Int.self, forKey: .createdTime)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(modeOfPayment, forKey: .modeOfPayment)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(orderingChannelLogo, forKey: .orderingChannelLogo)

            try? container.encodeIfPresent(collectBy, forKey: .collectBy)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(totalOrderValue, forKey: .totalOrderValue)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encode(transactionId, forKey: .transactionId)

            try? container.encode(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(paymentModeId, forKey: .paymentModeId)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(oId, forKey: .oId)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(rawUserAgent, forKey: .rawUserAgent)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(affiliateOrderDate, forKey: .affiliateOrderDate)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(headers, forKey: .headers)

            try? container.encodeIfPresent(taxDetails, forKey: .taxDetails)

            try? container.encodeIfPresent(cashbackValue, forKey: .cashbackValue)

            try? container.encodeIfPresent(refundBy, forKey: .refundBy)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(mongoCartId, forKey: .mongoCartId)

            try? container.encodeIfPresent(createdTime, forKey: .createdTime)
        }
    }
}
