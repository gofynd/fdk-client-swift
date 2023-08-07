

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentSessionDetail
         Used By: Payment
     */

    class PaymentSessionDetail: Codable {
        public var aggregatorOrderId: String

        public var shippingAddress: AddressDetail

        public var amountCaptured: Int

        public var amountRefunded: Int?

        public var aggregatorCustomerId: String?

        public var cancelUrl: String

        public var paymentId: String

        public var paymentMethods: [[String: Any]]

        public var created: String?

        public var gUserId: String

        public var currency: String

        public var locale: String?

        public var gid: String

        public var amount: Int

        public var billingAddress: AddressDetail

        public var successUrl: String

        public var kind: String?

        public var mode: String

        public var status: String

        public var merchantLocale: String?

        public var captured: Bool?

        public enum CodingKeys: String, CodingKey {
            case aggregatorOrderId = "aggregator_order_id"

            case shippingAddress = "shipping_address"

            case amountCaptured = "amount_captured"

            case amountRefunded = "amount_refunded"

            case aggregatorCustomerId = "aggregator_customer_id"

            case cancelUrl = "cancel_url"

            case paymentId = "payment_id"

            case paymentMethods = "payment_methods"

            case created

            case gUserId = "g_user_id"

            case currency

            case locale

            case gid

            case amount

            case billingAddress = "billing_address"

            case successUrl = "success_url"

            case kind

            case mode

            case status

            case merchantLocale = "merchant_locale"

            case captured
        }

        public init(aggregatorCustomerId: String? = nil, aggregatorOrderId: String, amount: Int, amountCaptured: Int, amountRefunded: Int? = nil, billingAddress: AddressDetail, cancelUrl: String, captured: Bool? = nil, created: String? = nil, currency: String, gid: String, gUserId: String, kind: String? = nil, locale: String? = nil, merchantLocale: String? = nil, mode: String, paymentId: String, paymentMethods: [[String: Any]], shippingAddress: AddressDetail, status: String, successUrl: String) {
            self.aggregatorOrderId = aggregatorOrderId

            self.shippingAddress = shippingAddress

            self.amountCaptured = amountCaptured

            self.amountRefunded = amountRefunded

            self.aggregatorCustomerId = aggregatorCustomerId

            self.cancelUrl = cancelUrl

            self.paymentId = paymentId

            self.paymentMethods = paymentMethods

            self.created = created

            self.gUserId = gUserId

            self.currency = currency

            self.locale = locale

            self.gid = gid

            self.amount = amount

            self.billingAddress = billingAddress

            self.successUrl = successUrl

            self.kind = kind

            self.mode = mode

            self.status = status

            self.merchantLocale = merchantLocale

            self.captured = captured
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            shippingAddress = try container.decode(AddressDetail.self, forKey: .shippingAddress)

            amountCaptured = try container.decode(Int.self, forKey: .amountCaptured)

            do {
                amountRefunded = try container.decode(Int.self, forKey: .amountRefunded)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aggregatorCustomerId = try container.decode(String.self, forKey: .aggregatorCustomerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cancelUrl = try container.decode(String.self, forKey: .cancelUrl)

            paymentId = try container.decode(String.self, forKey: .paymentId)

            paymentMethods = try container.decode([[String: Any]].self, forKey: .paymentMethods)

            do {
                created = try container.decode(String.self, forKey: .created)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gUserId = try container.decode(String.self, forKey: .gUserId)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                locale = try container.decode(String.self, forKey: .locale)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gid = try container.decode(String.self, forKey: .gid)

            amount = try container.decode(Int.self, forKey: .amount)

            billingAddress = try container.decode(AddressDetail.self, forKey: .billingAddress)

            successUrl = try container.decode(String.self, forKey: .successUrl)

            do {
                kind = try container.decode(String.self, forKey: .kind)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mode = try container.decode(String.self, forKey: .mode)

            status = try container.decode(String.self, forKey: .status)

            do {
                merchantLocale = try container.decode(String.self, forKey: .merchantLocale)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                captured = try container.decode(Bool.self, forKey: .captured)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(amountCaptured, forKey: .amountCaptured)

            try? container.encodeIfPresent(amountRefunded, forKey: .amountRefunded)

            try? container.encodeIfPresent(aggregatorCustomerId, forKey: .aggregatorCustomerId)

            try? container.encodeIfPresent(cancelUrl, forKey: .cancelUrl)

            try? container.encodeIfPresent(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(gUserId, forKey: .gUserId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(locale, forKey: .locale)

            try? container.encodeIfPresent(gid, forKey: .gid)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(successUrl, forKey: .successUrl)

            try? container.encodeIfPresent(kind, forKey: .kind)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(merchantLocale, forKey: .merchantLocale)

            try? container.encodeIfPresent(captured, forKey: .captured)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentSessionDetail
         Used By: Payment
     */

    class PaymentSessionDetail: Codable {
        public var aggregatorOrderId: String

        public var shippingAddress: AddressDetail

        public var amountCaptured: Int

        public var amountRefunded: Int?

        public var aggregatorCustomerId: String?

        public var cancelUrl: String

        public var paymentId: String

        public var paymentMethods: [[String: Any]]

        public var created: String?

        public var gUserId: String

        public var currency: String

        public var locale: String?

        public var gid: String

        public var amount: Int

        public var billingAddress: AddressDetail

        public var successUrl: String

        public var kind: String?

        public var mode: String

        public var status: String

        public var merchantLocale: String?

        public var captured: Bool?

        public enum CodingKeys: String, CodingKey {
            case aggregatorOrderId = "aggregator_order_id"

            case shippingAddress = "shipping_address"

            case amountCaptured = "amount_captured"

            case amountRefunded = "amount_refunded"

            case aggregatorCustomerId = "aggregator_customer_id"

            case cancelUrl = "cancel_url"

            case paymentId = "payment_id"

            case paymentMethods = "payment_methods"

            case created

            case gUserId = "g_user_id"

            case currency

            case locale

            case gid

            case amount

            case billingAddress = "billing_address"

            case successUrl = "success_url"

            case kind

            case mode

            case status

            case merchantLocale = "merchant_locale"

            case captured
        }

        public init(aggregatorCustomerId: String? = nil, aggregatorOrderId: String, amount: Int, amountCaptured: Int, amountRefunded: Int? = nil, billingAddress: AddressDetail, cancelUrl: String, captured: Bool? = nil, created: String? = nil, currency: String, gid: String, gUserId: String, kind: String? = nil, locale: String? = nil, merchantLocale: String? = nil, mode: String, paymentId: String, paymentMethods: [[String: Any]], shippingAddress: AddressDetail, status: String, successUrl: String) {
            self.aggregatorOrderId = aggregatorOrderId

            self.shippingAddress = shippingAddress

            self.amountCaptured = amountCaptured

            self.amountRefunded = amountRefunded

            self.aggregatorCustomerId = aggregatorCustomerId

            self.cancelUrl = cancelUrl

            self.paymentId = paymentId

            self.paymentMethods = paymentMethods

            self.created = created

            self.gUserId = gUserId

            self.currency = currency

            self.locale = locale

            self.gid = gid

            self.amount = amount

            self.billingAddress = billingAddress

            self.successUrl = successUrl

            self.kind = kind

            self.mode = mode

            self.status = status

            self.merchantLocale = merchantLocale

            self.captured = captured
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            shippingAddress = try container.decode(AddressDetail.self, forKey: .shippingAddress)

            amountCaptured = try container.decode(Int.self, forKey: .amountCaptured)

            do {
                amountRefunded = try container.decode(Int.self, forKey: .amountRefunded)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aggregatorCustomerId = try container.decode(String.self, forKey: .aggregatorCustomerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            cancelUrl = try container.decode(String.self, forKey: .cancelUrl)

            paymentId = try container.decode(String.self, forKey: .paymentId)

            paymentMethods = try container.decode([[String: Any]].self, forKey: .paymentMethods)

            do {
                created = try container.decode(String.self, forKey: .created)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gUserId = try container.decode(String.self, forKey: .gUserId)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                locale = try container.decode(String.self, forKey: .locale)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            gid = try container.decode(String.self, forKey: .gid)

            amount = try container.decode(Int.self, forKey: .amount)

            billingAddress = try container.decode(AddressDetail.self, forKey: .billingAddress)

            successUrl = try container.decode(String.self, forKey: .successUrl)

            do {
                kind = try container.decode(String.self, forKey: .kind)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mode = try container.decode(String.self, forKey: .mode)

            status = try container.decode(String.self, forKey: .status)

            do {
                merchantLocale = try container.decode(String.self, forKey: .merchantLocale)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                captured = try container.decode(Bool.self, forKey: .captured)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(amountCaptured, forKey: .amountCaptured)

            try? container.encodeIfPresent(amountRefunded, forKey: .amountRefunded)

            try? container.encodeIfPresent(aggregatorCustomerId, forKey: .aggregatorCustomerId)

            try? container.encodeIfPresent(cancelUrl, forKey: .cancelUrl)

            try? container.encodeIfPresent(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(paymentMethods, forKey: .paymentMethods)

            try? container.encodeIfPresent(created, forKey: .created)

            try? container.encodeIfPresent(gUserId, forKey: .gUserId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(locale, forKey: .locale)

            try? container.encodeIfPresent(gid, forKey: .gid)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(successUrl, forKey: .successUrl)

            try? container.encodeIfPresent(kind, forKey: .kind)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(merchantLocale, forKey: .merchantLocale)

            try? container.encodeIfPresent(captured, forKey: .captured)
        }
    }
}
