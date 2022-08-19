

import Foundation
public extension PlatformClient {
    /*
         Model: OrderObj
         Used By: Order
     */

    class OrderObj: Codable {
        public var userId: Int

        public var headers: [String: Any]

        public var refundBy: String

        public var rawUserAgent: String

        public var meta: OrderMeta

        public var orderingChannel: String

        public var promotionEffectiveDiscount: Double

        public var paymentModeId: Int

        public var deliveryCharges: Double

        public var orderValue: Double

        public var transactionId: String?

        public var oId: Int

        public var codCharges: Int

        public var affiliateId: String

        public var couponValue: Double

        public var currency: String

        public var fyndCredits: Double

        public var affiliateOrderDate: String

        public var source: String

        public var taxDetails: OrderTaxDetails?

        public var cashbackValue: Double

        public var mongoCartId: [String: Any]

        public var fyndOrderId: String

        public var prices: OrderPrices

        public var cashbackApplied: Double

        public var collectBy: String

        public var orderingChannelLogo: String

        public var createdTime: Int

        public var affiliateOrderId: String

        public var modeOfPayment: String

        public var discount: Double

        public var totalOrderValue: Double

        public var paymentMethods: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case userId = "user_id"

            case headers

            case refundBy = "refund_by"

            case rawUserAgent = "raw_user_agent"

            case meta

            case orderingChannel = "ordering_channel"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case paymentModeId = "payment_mode_id"

            case deliveryCharges = "delivery_charges"

            case orderValue = "order_value"

            case transactionId = "transaction_id"

            case oId = "o_id"

            case codCharges = "cod_charges"

            case affiliateId = "affiliate_id"

            case couponValue = "coupon_value"

            case currency

            case fyndCredits = "fynd_credits"

            case affiliateOrderDate = "affiliate_order_date"

            case source

            case taxDetails = "tax_details"

            case cashbackValue = "cashback_value"

            case mongoCartId = "mongo_cart_id"

            case fyndOrderId = "fynd_order_id"

            case prices

            case cashbackApplied = "cashback_applied"

            case collectBy = "collect_by"

            case orderingChannelLogo = "ordering_channel_logo"

            case createdTime = "created_time"

            case affiliateOrderId = "affiliate_order_id"

            case modeOfPayment = "mode_of_payment"

            case discount

            case totalOrderValue = "total_order_value"

            case paymentMethods = "payment_methods"
        }

        public init(affiliateId: String, affiliateOrderDate: String, affiliateOrderId: String, cashbackApplied: Double, cashbackValue: Double, codCharges: Int, collectBy: String, couponValue: Double, createdTime: Int, currency: String, deliveryCharges: Double, discount: Double, fyndCredits: Double, fyndOrderId: String, headers: [String: Any], meta: OrderMeta, modeOfPayment: String, mongoCartId: [String: Any], orderingChannel: String, orderingChannelLogo: String, orderValue: Double, oId: Int, paymentMethods: [String: Any], paymentModeId: Int, prices: OrderPrices, promotionEffectiveDiscount: Double, rawUserAgent: String, refundBy: String, source: String, taxDetails: OrderTaxDetails? = nil, totalOrderValue: Double, transactionId: String? = nil, userId: Int) {
            self.userId = userId

            self.headers = headers

            self.refundBy = refundBy

            self.rawUserAgent = rawUserAgent

            self.meta = meta

            self.orderingChannel = orderingChannel

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.paymentModeId = paymentModeId

            self.deliveryCharges = deliveryCharges

            self.orderValue = orderValue

            self.transactionId = transactionId

            self.oId = oId

            self.codCharges = codCharges

            self.affiliateId = affiliateId

            self.couponValue = couponValue

            self.currency = currency

            self.fyndCredits = fyndCredits

            self.affiliateOrderDate = affiliateOrderDate

            self.source = source

            self.taxDetails = taxDetails

            self.cashbackValue = cashbackValue

            self.mongoCartId = mongoCartId

            self.fyndOrderId = fyndOrderId

            self.prices = prices

            self.cashbackApplied = cashbackApplied

            self.collectBy = collectBy

            self.orderingChannelLogo = orderingChannelLogo

            self.createdTime = createdTime

            self.affiliateOrderId = affiliateOrderId

            self.modeOfPayment = modeOfPayment

            self.discount = discount

            self.totalOrderValue = totalOrderValue

            self.paymentMethods = paymentMethods
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            userId = try container.decode(Int.self, forKey: .userId)

            headers = try container.decode([String: Any].self, forKey: .headers)

            refundBy = try container.decode(String.self, forKey: .refundBy)

            rawUserAgent = try container.decode(String.self, forKey: .rawUserAgent)

            meta = try container.decode(OrderMeta.self, forKey: .meta)

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            paymentModeId = try container.decode(Int.self, forKey: .paymentModeId)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            do {
                transactionId = try container.decode(String.self, forKey: .transactionId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            oId = try container.decode(Int.self, forKey: .oId)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            affiliateId = try container.decode(String.self, forKey: .affiliateId)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            currency = try container.decode(String.self, forKey: .currency)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            affiliateOrderDate = try container.decode(String.self, forKey: .affiliateOrderDate)

            source = try container.decode(String.self, forKey: .source)

            do {
                taxDetails = try container.decode(OrderTaxDetails.self, forKey: .taxDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cashbackValue = try container.decode(Double.self, forKey: .cashbackValue)

            mongoCartId = try container.decode([String: Any].self, forKey: .mongoCartId)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            prices = try container.decode(OrderPrices.self, forKey: .prices)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            collectBy = try container.decode(String.self, forKey: .collectBy)

            orderingChannelLogo = try container.decode(String.self, forKey: .orderingChannelLogo)

            createdTime = try container.decode(Int.self, forKey: .createdTime)

            affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            modeOfPayment = try container.decode(String.self, forKey: .modeOfPayment)

            discount = try container.decode(Double.self, forKey: .discount)

            totalOrderValue = try container.decode(Double.self, forKey: .totalOrderValue)

            paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(headers, forKey: .headers)

            try? container.encodeIfPresent(refundBy, forKey: .refundBy)

            try? container.encodeIfPresent(rawUserAgent, forKey: .rawUserAgent)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(paymentModeId, forKey: .paymentModeId)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encode(transactionId, forKey: .transactionId)

            try? container.encodeIfPresent(oId, forKey: .oId)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encode(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(affiliateOrderDate, forKey: .affiliateOrderDate)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(taxDetails, forKey: .taxDetails)

            try? container.encodeIfPresent(cashbackValue, forKey: .cashbackValue)

            try? container.encodeIfPresent(mongoCartId, forKey: .mongoCartId)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(collectBy, forKey: .collectBy)

            try? container.encodeIfPresent(orderingChannelLogo, forKey: .orderingChannelLogo)

            try? container.encodeIfPresent(createdTime, forKey: .createdTime)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(modeOfPayment, forKey: .modeOfPayment)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(totalOrderValue, forKey: .totalOrderValue)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)
        }
    }
}
