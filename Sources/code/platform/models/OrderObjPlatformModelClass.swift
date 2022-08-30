

import Foundation
public extension PlatformClient {
    /*
         Model: OrderObj
         Used By: Order
     */

    class OrderObj: Codable {
        public var collectBy: String

        public var promotionEffectiveDiscount: Double

        public var cashbackApplied: Double

        public var affiliateOrderDate: String

        public var refundBy: String

        public var codCharges: Int

        public var orderValue: Double

        public var totalOrderValue: Double

        public var createdTime: Int

        public var source: String

        public var cashbackValue: Double

        public var orderingChannelLogo: String

        public var headers: [String: Any]

        public var fyndOrderId: String

        public var fyndCredits: Double

        public var orderingChannel: String

        public var paymentMethods: [String: Any]

        public var prices: OrderPrices

        public var userId: Int

        public var couponValue: Double

        public var rawUserAgent: String

        public var paymentModeId: Int

        public var discount: Double

        public var currency: String

        public var modeOfPayment: String

        public var oId: Int

        public var affiliateOrderId: String

        public var meta: OrderMeta

        public var mongoCartId: [String: Any]

        public var affiliateId: String

        public var taxDetails: OrderTaxDetails?

        public var deliveryCharges: Double

        public var transactionId: String?

        public enum CodingKeys: String, CodingKey {
            case collectBy = "collect_by"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case cashbackApplied = "cashback_applied"

            case affiliateOrderDate = "affiliate_order_date"

            case refundBy = "refund_by"

            case codCharges = "cod_charges"

            case orderValue = "order_value"

            case totalOrderValue = "total_order_value"

            case createdTime = "created_time"

            case source

            case cashbackValue = "cashback_value"

            case orderingChannelLogo = "ordering_channel_logo"

            case headers

            case fyndOrderId = "fynd_order_id"

            case fyndCredits = "fynd_credits"

            case orderingChannel = "ordering_channel"

            case paymentMethods = "payment_methods"

            case prices

            case userId = "user_id"

            case couponValue = "coupon_value"

            case rawUserAgent = "raw_user_agent"

            case paymentModeId = "payment_mode_id"

            case discount

            case currency

            case modeOfPayment = "mode_of_payment"

            case oId = "o_id"

            case affiliateOrderId = "affiliate_order_id"

            case meta

            case mongoCartId = "mongo_cart_id"

            case affiliateId = "affiliate_id"

            case taxDetails = "tax_details"

            case deliveryCharges = "delivery_charges"

            case transactionId = "transaction_id"
        }

        public init(affiliateId: String, affiliateOrderDate: String, affiliateOrderId: String, cashbackApplied: Double, cashbackValue: Double, codCharges: Int, collectBy: String, couponValue: Double, createdTime: Int, currency: String, deliveryCharges: Double, discount: Double, fyndCredits: Double, fyndOrderId: String, headers: [String: Any], meta: OrderMeta, modeOfPayment: String, mongoCartId: [String: Any], orderingChannel: String, orderingChannelLogo: String, orderValue: Double, oId: Int, paymentMethods: [String: Any], paymentModeId: Int, prices: OrderPrices, promotionEffectiveDiscount: Double, rawUserAgent: String, refundBy: String, source: String, taxDetails: OrderTaxDetails? = nil, totalOrderValue: Double, transactionId: String? = nil, userId: Int) {
            self.collectBy = collectBy

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.cashbackApplied = cashbackApplied

            self.affiliateOrderDate = affiliateOrderDate

            self.refundBy = refundBy

            self.codCharges = codCharges

            self.orderValue = orderValue

            self.totalOrderValue = totalOrderValue

            self.createdTime = createdTime

            self.source = source

            self.cashbackValue = cashbackValue

            self.orderingChannelLogo = orderingChannelLogo

            self.headers = headers

            self.fyndOrderId = fyndOrderId

            self.fyndCredits = fyndCredits

            self.orderingChannel = orderingChannel

            self.paymentMethods = paymentMethods

            self.prices = prices

            self.userId = userId

            self.couponValue = couponValue

            self.rawUserAgent = rawUserAgent

            self.paymentModeId = paymentModeId

            self.discount = discount

            self.currency = currency

            self.modeOfPayment = modeOfPayment

            self.oId = oId

            self.affiliateOrderId = affiliateOrderId

            self.meta = meta

            self.mongoCartId = mongoCartId

            self.affiliateId = affiliateId

            self.taxDetails = taxDetails

            self.deliveryCharges = deliveryCharges

            self.transactionId = transactionId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            collectBy = try container.decode(String.self, forKey: .collectBy)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            affiliateOrderDate = try container.decode(String.self, forKey: .affiliateOrderDate)

            refundBy = try container.decode(String.self, forKey: .refundBy)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            totalOrderValue = try container.decode(Double.self, forKey: .totalOrderValue)

            createdTime = try container.decode(Int.self, forKey: .createdTime)

            source = try container.decode(String.self, forKey: .source)

            cashbackValue = try container.decode(Double.self, forKey: .cashbackValue)

            orderingChannelLogo = try container.decode(String.self, forKey: .orderingChannelLogo)

            headers = try container.decode([String: Any].self, forKey: .headers)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

            prices = try container.decode(OrderPrices.self, forKey: .prices)

            userId = try container.decode(Int.self, forKey: .userId)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            rawUserAgent = try container.decode(String.self, forKey: .rawUserAgent)

            paymentModeId = try container.decode(Int.self, forKey: .paymentModeId)

            discount = try container.decode(Double.self, forKey: .discount)

            currency = try container.decode(String.self, forKey: .currency)

            modeOfPayment = try container.decode(String.self, forKey: .modeOfPayment)

            oId = try container.decode(Int.self, forKey: .oId)

            affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            meta = try container.decode(OrderMeta.self, forKey: .meta)

            mongoCartId = try container.decode([String: Any].self, forKey: .mongoCartId)

            affiliateId = try container.decode(String.self, forKey: .affiliateId)

            do {
                taxDetails = try container.decode(OrderTaxDetails.self, forKey: .taxDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            do {
                transactionId = try container.decode(String.self, forKey: .transactionId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(collectBy, forKey: .collectBy)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(affiliateOrderDate, forKey: .affiliateOrderDate)

            try? container.encodeIfPresent(refundBy, forKey: .refundBy)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(totalOrderValue, forKey: .totalOrderValue)

            try? container.encodeIfPresent(createdTime, forKey: .createdTime)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(cashbackValue, forKey: .cashbackValue)

            try? container.encodeIfPresent(orderingChannelLogo, forKey: .orderingChannelLogo)

            try? container.encodeIfPresent(headers, forKey: .headers)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encode(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(rawUserAgent, forKey: .rawUserAgent)

            try? container.encodeIfPresent(paymentModeId, forKey: .paymentModeId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(modeOfPayment, forKey: .modeOfPayment)

            try? container.encodeIfPresent(oId, forKey: .oId)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(mongoCartId, forKey: .mongoCartId)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(taxDetails, forKey: .taxDetails)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encode(transactionId, forKey: .transactionId)
        }
    }
}
