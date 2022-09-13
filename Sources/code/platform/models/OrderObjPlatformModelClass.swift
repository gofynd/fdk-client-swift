

import Foundation
public extension PlatformClient {
    /*
         Model: OrderObj
         Used By: Order
     */

    class OrderObj: Codable {
        public var paymentMethods: [String: Any]

        public var modeOfPayment: String

        public var affiliateId: String

        public var collectBy: String

        public var headers: [String: Any]

        public var cashbackApplied: Double

        public var oId: Int

        public var meta: OrderMeta

        public var cashbackValue: Double

        public var rawUserAgent: String

        public var codCharges: Int

        public var taxDetails: OrderTaxDetails?

        public var fyndCredits: Double

        public var couponValue: Double

        public var fyndOrderId: String

        public var prices: OrderPrices

        public var totalOrderValue: Double

        public var userId: Int

        public var orderValue: Double

        public var createdTime: Int

        public var mongoCartId: [String: Any]

        public var orderingChannel: String

        public var affiliateOrderDate: String

        public var paymentModeId: Int

        public var deliveryCharges: Double

        public var affiliateOrderId: String

        public var refundBy: String

        public var currency: String

        public var promotionEffectiveDiscount: Double

        public var transactionId: String?

        public var discount: Double

        public var source: String

        public var orderingChannelLogo: String

        public enum CodingKeys: String, CodingKey {
            case paymentMethods = "payment_methods"

            case modeOfPayment = "mode_of_payment"

            case affiliateId = "affiliate_id"

            case collectBy = "collect_by"

            case headers

            case cashbackApplied = "cashback_applied"

            case oId = "o_id"

            case meta

            case cashbackValue = "cashback_value"

            case rawUserAgent = "raw_user_agent"

            case codCharges = "cod_charges"

            case taxDetails = "tax_details"

            case fyndCredits = "fynd_credits"

            case couponValue = "coupon_value"

            case fyndOrderId = "fynd_order_id"

            case prices

            case totalOrderValue = "total_order_value"

            case userId = "user_id"

            case orderValue = "order_value"

            case createdTime = "created_time"

            case mongoCartId = "mongo_cart_id"

            case orderingChannel = "ordering_channel"

            case affiliateOrderDate = "affiliate_order_date"

            case paymentModeId = "payment_mode_id"

            case deliveryCharges = "delivery_charges"

            case affiliateOrderId = "affiliate_order_id"

            case refundBy = "refund_by"

            case currency

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case transactionId = "transaction_id"

            case discount

            case source

            case orderingChannelLogo = "ordering_channel_logo"
        }

        public init(affiliateId: String, affiliateOrderDate: String, affiliateOrderId: String, cashbackApplied: Double, cashbackValue: Double, codCharges: Int, collectBy: String, couponValue: Double, createdTime: Int, currency: String, deliveryCharges: Double, discount: Double, fyndCredits: Double, fyndOrderId: String, headers: [String: Any], meta: OrderMeta, modeOfPayment: String, mongoCartId: [String: Any], orderingChannel: String, orderingChannelLogo: String, orderValue: Double, oId: Int, paymentMethods: [String: Any], paymentModeId: Int, prices: OrderPrices, promotionEffectiveDiscount: Double, rawUserAgent: String, refundBy: String, source: String, taxDetails: OrderTaxDetails? = nil, totalOrderValue: Double, transactionId: String? = nil, userId: Int) {
            self.paymentMethods = paymentMethods

            self.modeOfPayment = modeOfPayment

            self.affiliateId = affiliateId

            self.collectBy = collectBy

            self.headers = headers

            self.cashbackApplied = cashbackApplied

            self.oId = oId

            self.meta = meta

            self.cashbackValue = cashbackValue

            self.rawUserAgent = rawUserAgent

            self.codCharges = codCharges

            self.taxDetails = taxDetails

            self.fyndCredits = fyndCredits

            self.couponValue = couponValue

            self.fyndOrderId = fyndOrderId

            self.prices = prices

            self.totalOrderValue = totalOrderValue

            self.userId = userId

            self.orderValue = orderValue

            self.createdTime = createdTime

            self.mongoCartId = mongoCartId

            self.orderingChannel = orderingChannel

            self.affiliateOrderDate = affiliateOrderDate

            self.paymentModeId = paymentModeId

            self.deliveryCharges = deliveryCharges

            self.affiliateOrderId = affiliateOrderId

            self.refundBy = refundBy

            self.currency = currency

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.transactionId = transactionId

            self.discount = discount

            self.source = source

            self.orderingChannelLogo = orderingChannelLogo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentMethods = try container.decode([String: Any].self, forKey: .paymentMethods)

            modeOfPayment = try container.decode(String.self, forKey: .modeOfPayment)

            affiliateId = try container.decode(String.self, forKey: .affiliateId)

            collectBy = try container.decode(String.self, forKey: .collectBy)

            headers = try container.decode([String: Any].self, forKey: .headers)

            cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            oId = try container.decode(Int.self, forKey: .oId)

            meta = try container.decode(OrderMeta.self, forKey: .meta)

            cashbackValue = try container.decode(Double.self, forKey: .cashbackValue)

            rawUserAgent = try container.decode(String.self, forKey: .rawUserAgent)

            codCharges = try container.decode(Int.self, forKey: .codCharges)

            do {
                taxDetails = try container.decode(OrderTaxDetails.self, forKey: .taxDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            couponValue = try container.decode(Double.self, forKey: .couponValue)

            fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            prices = try container.decode(OrderPrices.self, forKey: .prices)

            totalOrderValue = try container.decode(Double.self, forKey: .totalOrderValue)

            userId = try container.decode(Int.self, forKey: .userId)

            orderValue = try container.decode(Double.self, forKey: .orderValue)

            createdTime = try container.decode(Int.self, forKey: .createdTime)

            mongoCartId = try container.decode([String: Any].self, forKey: .mongoCartId)

            orderingChannel = try container.decode(String.self, forKey: .orderingChannel)

            affiliateOrderDate = try container.decode(String.self, forKey: .affiliateOrderDate)

            paymentModeId = try container.decode(Int.self, forKey: .paymentModeId)

            deliveryCharges = try container.decode(Double.self, forKey: .deliveryCharges)

            affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            refundBy = try container.decode(String.self, forKey: .refundBy)

            currency = try container.decode(String.self, forKey: .currency)

            promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            do {
                transactionId = try container.decode(String.self, forKey: .transactionId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Double.self, forKey: .discount)

            source = try container.decode(String.self, forKey: .source)

            orderingChannelLogo = try container.decode(String.self, forKey: .orderingChannelLogo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(modeOfPayment, forKey: .modeOfPayment)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(collectBy, forKey: .collectBy)

            try? container.encodeIfPresent(headers, forKey: .headers)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(oId, forKey: .oId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(cashbackValue, forKey: .cashbackValue)

            try? container.encodeIfPresent(rawUserAgent, forKey: .rawUserAgent)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(taxDetails, forKey: .taxDetails)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encode(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(totalOrderValue, forKey: .totalOrderValue)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(orderValue, forKey: .orderValue)

            try? container.encodeIfPresent(createdTime, forKey: .createdTime)

            try? container.encodeIfPresent(mongoCartId, forKey: .mongoCartId)

            try? container.encodeIfPresent(orderingChannel, forKey: .orderingChannel)

            try? container.encodeIfPresent(affiliateOrderDate, forKey: .affiliateOrderDate)

            try? container.encodeIfPresent(paymentModeId, forKey: .paymentModeId)

            try? container.encodeIfPresent(deliveryCharges, forKey: .deliveryCharges)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(refundBy, forKey: .refundBy)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encode(transactionId, forKey: .transactionId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(orderingChannelLogo, forKey: .orderingChannelLogo)
        }
    }
}
