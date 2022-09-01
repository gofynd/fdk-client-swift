

import Foundation
public extension PlatformClient {
    /*
         Model: OrderObj
         Used By: Order
     */

    class OrderObj: Codable {
        public var affiliateId: String

        public var headers: [String: Any]

        public var source: String

        public var discount: Double

        public var paymentMethods: [String: Any]

        public var prices: OrderPrices

        public var codCharges: Int

        public var rawUserAgent: String

        public var refundBy: String

        public var cashbackApplied: Double

        public var orderingChannel: String

        public var promotionEffectiveDiscount: Double

        public var createdTime: Int

        public var userId: Int

        public var affiliateOrderDate: String

        public var orderingChannelLogo: String

        public var cashbackValue: Double

        public var oId: Int

        public var paymentModeId: Int

        public var mongoCartId: [String: Any]

        public var modeOfPayment: String

        public var fyndOrderId: String

        public var deliveryCharges: Double

        public var meta: OrderMeta

        public var couponValue: Double

        public var transactionId: String?

        public var totalOrderValue: Double

        public var fyndCredits: Double

        public var collectBy: String

        public var currency: String

        public var taxDetails: OrderTaxDetails?

        public var affiliateOrderId: String

        public var orderValue: Double

        public enum CodingKeys: String, CodingKey {
            case affiliateId = "affiliate_id"

            case headers

            case source

            case discount

            case paymentMethods = "payment_methods"

            case prices

            case codCharges = "cod_charges"

            case rawUserAgent = "raw_user_agent"

            case refundBy = "refund_by"

            case cashbackApplied = "cashback_applied"

            case orderingChannel = "ordering_channel"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case createdTime = "created_time"

            case userId = "user_id"

            case affiliateOrderDate = "affiliate_order_date"

            case orderingChannelLogo = "ordering_channel_logo"

            case cashbackValue = "cashback_value"

            case oId = "o_id"

            case paymentModeId = "payment_mode_id"

            case mongoCartId = "mongo_cart_id"

            case modeOfPayment = "mode_of_payment"

            case fyndOrderId = "fynd_order_id"

            case deliveryCharges = "delivery_charges"

            case meta

            case couponValue = "coupon_value"

            case transactionId = "transaction_id"

            case totalOrderValue = "total_order_value"

            case fyndCredits = "fynd_credits"

            case collectBy = "collect_by"

            case currency

            case taxDetails = "tax_details"

            case affiliateOrderId = "affiliate_order_id"

            case orderValue = "order_value"
        }

        public init(affiliateId: String, affiliateOrderDate: String, affiliateOrderId: String, cashbackApplied: Double, cashbackValue: Double, codCharges: Int, collectBy: String, couponValue: Double, createdTime: Int, currency: String, deliveryCharges: Double, discount: Double, fyndCredits: Double, fyndOrderId: String, headers: [String: Any], meta: OrderMeta, modeOfPayment: String, mongoCartId: [String: Any], orderingChannel: String, orderingChannelLogo: String, orderValue: Double, oId: Int, paymentMethods: [String: Any], paymentModeId: Int, prices: OrderPrices, promotionEffectiveDiscount: Double, rawUserAgent: String, refundBy: String, source: String, taxDetails: OrderTaxDetails? = nil, totalOrderValue: Double, transactionId: String? = nil, userId: Int) {
            self.affiliateId = affiliateId

            self.headers = headers

            self.source = source

            self.discount = discount

            self.paymentMethods = paymentMethods

            self.prices = prices

            self.codCharges = codCharges

            self.rawUserAgent = rawUserAgent

            self.refundBy = refundBy

            self.cashbackApplied = cashbackApplied

            self.orderingChannel = orderingChannel

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.createdTime = createdTime

            self.userId = userId

            self.affiliateOrderDate = affiliateOrderDate

            self.orderingChannelLogo = orderingChannelLogo

            self.cashbackValue = cashbackValue

            self.oId = oId

            self.paymentModeId = paymentModeId

            self.mongoCartId = mongoCartId

            self.modeOfPayment = modeOfPayment

            self.fyndOrderId = fyndOrderId

            self.deliveryCharges = deliveryCharges

            self.meta = meta

            self.couponValue = couponValue

            self.transactionId = transactionId

            self.totalOrderValue = totalOrderValue

            self.fyndCredits = fyndCredits

            self.collectBy = collectBy

            self.currency = currency

            self.taxDetails = taxDetails

            self.affiliateOrderId = affiliateOrderId

            self.orderValue = orderValue
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateId = try container.decode(String.self, forKey: .affiliateId)

            headers = try container.decode([String: Any].self, forKey: .headers)

            source = try container.decode(String.self, forKey: .source)

            discount = try container.decode(Double.self, forKey: .discount)

            paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

            prices = try container.decode(OrderPrices.self, forKey: .prices)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            rawUserAgent = try container.decode(String.self, forKey: .rawUserAgent)

            refundBy = try container.decode(String.self, forKey: .refundBy)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            createdTime = try container.decode(Int.self, forKey: .createdTime)

            userId = try container.decode(Int.self, forKey: .userId)

            affiliateOrderDate = try container.decode(String.self, forKey: .affiliateOrderDate)

            orderingChannelLogo = try container.decode(String.self, forKey: .orderingChannelLogo)

            cashbackValue = try container.decode(Double.self, forKey: .cashbackValue)

            oId = try container.decode(Int.self, forKey: .oId)

            paymentModeId = try container.decode(Int.self, forKey: .paymentModeId)

            mongoCartId = try container.decode([String: Any].self, forKey: .mongoCartId)

            modeOfPayment = try container.decode(String.self, forKey: .modeOfPayment)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            meta = try container.decode(OrderMeta.self, forKey: .meta)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            do {
                transactionId = try container.decode(String.self, forKey: .transactionId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            totalOrderValue = try container.decode(Double.self, forKey: .totalOrderValue)

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            collectBy = try container.decode(String.self, forKey: .collectBy)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                taxDetails = try container.decode(OrderTaxDetails.self, forKey: .taxDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            orderValue = try container.decode(Double.self, forKey: .orderValue)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(headers, forKey: .headers)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(rawUserAgent, forKey: .rawUserAgent)

            try? container.encodeIfPresent(refundBy, forKey: .refundBy)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(createdTime, forKey: .createdTime)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(affiliateOrderDate, forKey: .affiliateOrderDate)

            try? container.encodeIfPresent(orderingChannelLogo, forKey: .orderingChannelLogo)

            try? container.encodeIfPresent(cashbackValue, forKey: .cashbackValue)

            try? container.encodeIfPresent(oId, forKey: .oId)

            try? container.encodeIfPresent(paymentModeId, forKey: .paymentModeId)

            try? container.encodeIfPresent(mongoCartId, forKey: .mongoCartId)

            try? container.encodeIfPresent(modeOfPayment, forKey: .modeOfPayment)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encode(couponValue, forKey: .couponValue)

            try? container.encode(transactionId, forKey: .transactionId)

            try? container.encodeIfPresent(totalOrderValue, forKey: .totalOrderValue)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(collectBy, forKey: .collectBy)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(taxDetails, forKey: .taxDetails)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)
        }
    }
}
