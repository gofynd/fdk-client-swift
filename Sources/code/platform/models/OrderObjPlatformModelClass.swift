

import Foundation
public extension PlatformClient {
    /*
         Model: OrderObj
         Used By: Order
     */

    class OrderObj: Codable {
        public var collectBy: String

        public var createdTime: Int

        public var oId: Int

        public var headers: [String: Any]

        public var affiliateOrderDate: String

        public var orderingChannelLogo: String

        public var couponValue: Double

        public var orderValue: Double

        public var meta: OrderMeta

        public var rawUserAgent: String

        public var fyndOrderId: String

        public var taxDetails: OrderTaxDetails?

        public var prices: OrderPrices

        public var deliveryCharges: Double

        public var affiliateId: String

        public var codCharges: Int

        public var cashbackValue: Double

        public var cashbackApplied: Double

        public var transactionId: String?

        public var modeOfPayment: String

        public var fyndCredits: Double

        public var paymentMethods: [String: Any]

        public var orderingChannel: String

        public var discount: Double

        public var userId: Int

        public var currency: String

        public var paymentModeId: Int

        public var refundBy: String

        public var mongoCartId: [String: Any]

        public var promotionEffectiveDiscount: Double

        public var totalOrderValue: Double

        public var affiliateOrderId: String

        public var source: String

        public enum CodingKeys: String, CodingKey {
            case collectBy = "collect_by"

            case createdTime = "created_time"

            case oId = "o_id"

            case headers

            case affiliateOrderDate = "affiliate_order_date"

            case orderingChannelLogo = "ordering_channel_logo"

            case couponValue = "coupon_value"

            case orderValue = "order_value"

            case meta

            case rawUserAgent = "raw_user_agent"

            case fyndOrderId = "fynd_order_id"

            case taxDetails = "tax_details"

            case prices

            case deliveryCharges = "delivery_charges"

            case affiliateId = "affiliate_id"

            case codCharges = "cod_charges"

            case cashbackValue = "cashback_value"

            case cashbackApplied = "cashback_applied"

            case transactionId = "transaction_id"

            case modeOfPayment = "mode_of_payment"

            case fyndCredits = "fynd_credits"

            case paymentMethods = "payment_methods"

            case orderingChannel = "ordering_channel"

            case discount

            case userId = "user_id"

            case currency

            case paymentModeId = "payment_mode_id"

            case refundBy = "refund_by"

            case mongoCartId = "mongo_cart_id"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case totalOrderValue = "total_order_value"

            case affiliateOrderId = "affiliate_order_id"

            case source
        }

        public init(affiliateId: String, affiliateOrderDate: String, affiliateOrderId: String, cashbackApplied: Double, cashbackValue: Double, codCharges: Int, collectBy: String, couponValue: Double, createdTime: Int, currency: String, deliveryCharges: Double, discount: Double, fyndCredits: Double, fyndOrderId: String, headers: [String: Any], meta: OrderMeta, modeOfPayment: String, mongoCartId: [String: Any], orderingChannel: String, orderingChannelLogo: String, orderValue: Double, oId: Int, paymentMethods: [String: Any], paymentModeId: Int, prices: OrderPrices, promotionEffectiveDiscount: Double, rawUserAgent: String, refundBy: String, source: String, taxDetails: OrderTaxDetails? = nil, totalOrderValue: Double, transactionId: String? = nil, userId: Int) {
            self.collectBy = collectBy

            self.createdTime = createdTime

            self.oId = oId

            self.headers = headers

            self.affiliateOrderDate = affiliateOrderDate

            self.orderingChannelLogo = orderingChannelLogo

            self.couponValue = couponValue

            self.orderValue = orderValue

            self.meta = meta

            self.rawUserAgent = rawUserAgent

            self.fyndOrderId = fyndOrderId

            self.taxDetails = taxDetails

            self.prices = prices

            self.deliveryCharges = deliveryCharges

            self.affiliateId = affiliateId

            self.codCharges = codCharges

            self.cashbackValue = cashbackValue

            self.cashbackApplied = cashbackApplied

            self.transactionId = transactionId

            self.modeOfPayment = modeOfPayment

            self.fyndCredits = fyndCredits

            self.paymentMethods = paymentMethods

            self.orderingChannel = orderingChannel

            self.discount = discount

            self.userId = userId

            self.currency = currency

            self.paymentModeId = paymentModeId

            self.refundBy = refundBy

            self.mongoCartId = mongoCartId

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.totalOrderValue = totalOrderValue

            self.affiliateOrderId = affiliateOrderId

            self.source = source
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            collectBy = try container.decode(String.self, forKey: .collectBy)

            createdTime = try container.decode(Int.self, forKey: .createdTime)

            oId = try container.decode(Int.self, forKey: .oId)

            headers = try container.decode([String: Any].self, forKey: .headers)

            affiliateOrderDate = try container.decode(String.self, forKey: .affiliateOrderDate)

            orderingChannelLogo = try container.decode(String.self, forKey: .orderingChannelLogo)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            meta = try container.decode(OrderMeta.self, forKey: .meta)

            rawUserAgent = try container.decode(String.self, forKey: .rawUserAgent)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            do {
                taxDetails = try container.decode(OrderTaxDetails.self, forKey: .taxDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            prices = try container.decode(OrderPrices.self, forKey: .prices)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            affiliateId = try container.decode(String.self, forKey: .affiliateId)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            cashbackValue = try container.decode(Double.self, forKey: .cashbackValue)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            do {
                transactionId = try container.decode(String.self, forKey: .transactionId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modeOfPayment = try container.decode(String.self, forKey: .modeOfPayment)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            discount = try container.decode(Double.self, forKey: .discount)

            userId = try container.decode(Int.self, forKey: .userId)

            currency = try container.decode(String.self, forKey: .currency)

            paymentModeId = try container.decode(Int.self, forKey: .paymentModeId)

            refundBy = try container.decode(String.self, forKey: .refundBy)

            mongoCartId = try container.decode([String: Any].self, forKey: .mongoCartId)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            totalOrderValue = try container.decode(Double.self, forKey: .totalOrderValue)

            affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            source = try container.decode(String.self, forKey: .source)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(collectBy, forKey: .collectBy)

            try? container.encodeIfPresent(createdTime, forKey: .createdTime)

            try? container.encodeIfPresent(oId, forKey: .oId)

            try? container.encodeIfPresent(headers, forKey: .headers)

            try? container.encodeIfPresent(affiliateOrderDate, forKey: .affiliateOrderDate)

            try? container.encodeIfPresent(orderingChannelLogo, forKey: .orderingChannelLogo)

            try? container.encode(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(rawUserAgent, forKey: .rawUserAgent)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(taxDetails, forKey: .taxDetails)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(cashbackValue, forKey: .cashbackValue)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encode(transactionId, forKey: .transactionId)

            try? container.encodeIfPresent(modeOfPayment, forKey: .modeOfPayment)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(paymentModeId, forKey: .paymentModeId)

            try? container.encodeIfPresent(refundBy, forKey: .refundBy)

            try? container.encodeIfPresent(mongoCartId, forKey: .mongoCartId)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(totalOrderValue, forKey: .totalOrderValue)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(source, forKey: .source)
        }
    }
}
