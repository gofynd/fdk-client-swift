

import Foundation
public extension PlatformClient {
    /*
         Model: AppPaymentConfig
         Used By: Configuration
     */

    class AppPaymentConfig: Codable {
        public var callbackUrl: CallbackUrl?

        public var methods: Methods?

        public var paymentSelectionLock: PaymentSelectionLock?

        public var modeOfPayment: String?

        public var source: String?

        public var enabled: Bool?

        public var codAmountLimit: Double?

        public var codCharges: Double?

        public enum CodingKeys: String, CodingKey {
            case callbackUrl = "callback_url"

            case methods

            case paymentSelectionLock = "payment_selection_lock"

            case modeOfPayment = "mode_of_payment"

            case source

            case enabled

            case codAmountLimit = "cod_amount_limit"

            case codCharges = "cod_charges"
        }

        public init(callbackUrl: CallbackUrl? = nil, codAmountLimit: Double? = nil, codCharges: Double? = nil, enabled: Bool? = nil, methods: Methods? = nil, modeOfPayment: String? = nil, paymentSelectionLock: PaymentSelectionLock? = nil, source: String? = nil) {
            self.callbackUrl = callbackUrl

            self.methods = methods

            self.paymentSelectionLock = paymentSelectionLock

            self.modeOfPayment = modeOfPayment

            self.source = source

            self.enabled = enabled

            self.codAmountLimit = codAmountLimit

            self.codCharges = codCharges
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                callbackUrl = try container.decode(CallbackUrl.self, forKey: .callbackUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                methods = try container.decode(Methods.self, forKey: .methods)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentSelectionLock = try container.decode(PaymentSelectionLock.self, forKey: .paymentSelectionLock)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modeOfPayment = try container.decode(String.self, forKey: .modeOfPayment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                source = try container.decode(String.self, forKey: .source)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                codAmountLimit = try container.decode(Double.self, forKey: .codAmountLimit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                codCharges = try container.decode(Double.self, forKey: .codCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)

            try? container.encodeIfPresent(methods, forKey: .methods)

            try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)

            try? container.encodeIfPresent(modeOfPayment, forKey: .modeOfPayment)

            try? container.encodeIfPresent(source, forKey: .source)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(codAmountLimit, forKey: .codAmountLimit)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
        }
    }
}
