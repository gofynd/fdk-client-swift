

import Foundation
public extension PlatformClient {
    /*
         Model: OrderObj
         Used By: Order
     */

    class OrderObj: Codable {
        public var prices: OrderPrices

        public var modeOfPayment: String

        public var currency: String

        public var fyndOrderId: String

        public var rawUserAgent: String

        public var fyndCredits: Double

        public var affiliateId: String

        public var paymentModeId: Int

        public var codCharges: Int

        public var headers: [String: Any]

        public var discount: Double

        public var deliveryCharges: Double

        public var orderingChannelLogo: String

        public var collectBy: String

        public var orderValue: Double

        public var userId: Int

        public var mongoCartId: [String: Any]

        public var source: String

        public var createdTime: Int

        public var oId: Int

        public var promotionEffectiveDiscount: Double

        public var taxDetails: OrderTaxDetails?

        public var paymentMethods: [String: Any]

        public var orderingChannel: String

        public var totalOrderValue: Double

        public var affiliateOrderDate: String

        public var transactionId: String?

        public var refundBy: String

        public var cashbackValue: Double

        public var couponValue: Double

        public var affiliateOrderId: String

        public var meta: OrderMeta

        public var cashbackApplied: Double

        public enum CodingKeys: String, CodingKey {
            case prices

            case modeOfPayment = "mode_of_payment"

            case currency

            case fyndOrderId = "fynd_order_id"

            case rawUserAgent = "raw_user_agent"

            case fyndCredits = "fynd_credits"

            case affiliateId = "affiliate_id"

            case paymentModeId = "payment_mode_id"

            case codCharges = "cod_charges"

            case headers

            case discount

            case deliveryCharges = "delivery_charges"

            case orderingChannelLogo = "ordering_channel_logo"

            case collectBy = "collect_by"

            case orderValue = "order_value"

            case userId = "user_id"

            case mongoCartId = "mongo_cart_id"

            case source

            case createdTime = "created_time"

            case oId = "o_id"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case taxDetails = "tax_details"

            case paymentMethods = "payment_methods"

            case orderingChannel = "ordering_channel"

            case totalOrderValue = "total_order_value"

            case affiliateOrderDate = "affiliate_order_date"

            case transactionId = "transaction_id"

            case refundBy = "refund_by"

            case cashbackValue = "cashback_value"

            case couponValue = "coupon_value"

            case affiliateOrderId = "affiliate_order_id"

            case meta

            case cashbackApplied = "cashback_applied"
        }

        public init(affiliateId: String, affiliateOrderDate: String, affiliateOrderId: String, cashbackApplied: Double, cashbackValue: Double, codCharges: Int, collectBy: String, couponValue: Double, createdTime: Int, currency: String, deliveryCharges: Double, discount: Double, fyndCredits: Double, fyndOrderId: String, headers: [String: Any], meta: OrderMeta, modeOfPayment: String, mongoCartId: [String: Any], orderingChannel: String, orderingChannelLogo: String, orderValue: Double, oId: Int, paymentMethods: [String: Any], paymentModeId: Int, prices: OrderPrices, promotionEffectiveDiscount: Double, rawUserAgent: String, refundBy: String, source: String, taxDetails: OrderTaxDetails? = nil, totalOrderValue: Double, transactionId: String? = nil, userId: Int) {
            self.prices = prices

            self.modeOfPayment = modeOfPayment

            self.currency = currency

            self.fyndOrderId = fyndOrderId

            self.rawUserAgent = rawUserAgent

            self.fyndCredits = fyndCredits

            self.affiliateId = affiliateId

            self.paymentModeId = paymentModeId

            self.codCharges = codCharges

            self.headers = headers

            self.discount = discount

            self.deliveryCharges = deliveryCharges

            self.orderingChannelLogo = orderingChannelLogo

            self.collectBy = collectBy

            self.orderValue = orderValue

            self.userId = userId

            self.mongoCartId = mongoCartId

            self.source = source

            self.createdTime = createdTime

            self.oId = oId

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.taxDetails = taxDetails

            self.paymentMethods = paymentMethods

            self.orderingChannel = orderingChannel

            self.totalOrderValue = totalOrderValue

            self.affiliateOrderDate = affiliateOrderDate

            self.transactionId = transactionId

            self.refundBy = refundBy

            self.cashbackValue = cashbackValue

            self.couponValue = couponValue

            self.affiliateOrderId = affiliateOrderId

            self.meta = meta

            self.cashbackApplied = cashbackApplied
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            prices = try container.decode(OrderPrices.self, forKey: .prices)

            modeOfPayment = try container.decode(String.self, forKey: .modeOfPayment)

            currency = try container.decode(String.self, forKey: .currency)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            rawUserAgent = try container.decode(String.self, forKey: .rawUserAgent)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            affiliateId = try container.decode(String.self, forKey: .affiliateId)

            paymentModeId = try container.decode(Int.self, forKey: .paymentModeId)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            headers = try container.decode([String: Any].self, forKey: .headers)

            discount = try container.decode(Double.self, forKey: .discount)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            orderingChannelLogo = try container.decode(String.self, forKey: .orderingChannelLogo)

            collectBy = try container.decode(String.self, forKey: .collectBy)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            userId = try container.decode(Int.self, forKey: .userId)

            mongoCartId = try container.decode([String: Any].self, forKey: .mongoCartId)

            source = try container.decode(String.self, forKey: .source)

            createdTime = try container.decode(Int.self, forKey: .createdTime)

            oId = try container.decode(Int.self, forKey: .oId)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            do {
                taxDetails = try container.decode(OrderTaxDetails.self, forKey: .taxDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            totalOrderValue = try container.decode(Double.self, forKey: .totalOrderValue)

            affiliateOrderDate = try container.decode(String.self, forKey: .affiliateOrderDate)

            do {
                transactionId = try container.decode(String.self, forKey: .transactionId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            refundBy = try container.decode(String.self, forKey: .refundBy)

            cashbackValue = try container.decode(Double.self, forKey: .cashbackValue)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            meta = try container.decode(OrderMeta.self, forKey: .meta)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(modeOfPayment, forKey: .modeOfPayment)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(rawUserAgent, forKey: .rawUserAgent)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(paymentModeId, forKey: .paymentModeId)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(headers, forKey: .headers)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(orderingChannelLogo, forKey: .orderingChannelLogo)

            try? container.encodeIfPresent(collectBy, forKey: .collectBy)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(mongoCartId, forKey: .mongoCartId)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(createdTime, forKey: .createdTime)

            try? container.encodeIfPresent(oId, forKey: .oId)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(taxDetails, forKey: .taxDetails)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(totalOrderValue, forKey: .totalOrderValue)

            try? container.encodeIfPresent(affiliateOrderDate, forKey: .affiliateOrderDate)

            try? container.encode(transactionId, forKey: .transactionId)

            try? container.encodeIfPresent(refundBy, forKey: .refundBy)

            try? container.encodeIfPresent(cashbackValue, forKey: .cashbackValue)

            try? container.encode(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)
        }
    }
}
