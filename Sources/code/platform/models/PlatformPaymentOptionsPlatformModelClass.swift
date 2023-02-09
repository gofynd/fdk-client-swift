

import Foundation
public extension PlatformClient {
    /*
         Model: PlatformPaymentOptions
         Used By: Payment
     */

    class PlatformPaymentOptions: Codable {
        public var source: String

        public var codAmountLimit: Int?

        public var paymentSelectionLock: [String: Any]?

        public var methods: [String: Any]

        public var modeOfPayment: String

        public var anonymousCod: Bool?

        public var callbackUrl: [String: Any]?

        public var enabled: Bool

        public var codCharges: Int?

        public enum CodingKeys: String, CodingKey {
            case source

            case codAmountLimit = "cod_amount_limit"

            case paymentSelectionLock = "payment_selection_lock"

            case methods

            case modeOfPayment = "mode_of_payment"

            case anonymousCod = "anonymous_cod"

            case callbackUrl = "callback_url"

            case enabled

            case codCharges = "cod_charges"
        }

        public init(anonymousCod: Bool? = nil, callbackUrl: [String: Any]? = nil, codAmountLimit: Int? = nil, codCharges: Int? = nil, enabled: Bool, methods: [String: Any], modeOfPayment: String, paymentSelectionLock: [String: Any]? = nil, source: String) {
            self.source = source

            self.codAmountLimit = codAmountLimit

            self.paymentSelectionLock = paymentSelectionLock

            self.methods = methods

            self.modeOfPayment = modeOfPayment

            self.anonymousCod = anonymousCod

            self.callbackUrl = callbackUrl

            self.enabled = enabled

            self.codCharges = codCharges
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            source = try container.decode(String.self, forKey: .source)

            do {
                codAmountLimit = try container.decode(Int.self, forKey: .codAmountLimit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentSelectionLock = try container.decode([String: Any].self, forKey: .paymentSelectionLock)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            methods = try container.decode([String: Any].self, forKey: .methods)

            modeOfPayment = try container.decode(String.self, forKey: .modeOfPayment)

            do {
                anonymousCod = try container.decode(Bool.self, forKey: .anonymousCod)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                callbackUrl = try container.decode([String: Any].self, forKey: .callbackUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            enabled = try container.decode(Bool.self, forKey: .enabled)

            do {
                codCharges = try container.decode(Int.self, forKey: .codCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(source, forKey: .source)

            try? container.encodeIfPresent(codAmountLimit, forKey: .codAmountLimit)

            try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)

            try? container.encode(methods, forKey: .methods)

            try? container.encodeIfPresent(modeOfPayment, forKey: .modeOfPayment)

            try? container.encodeIfPresent(anonymousCod, forKey: .anonymousCod)

            try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)

            try? container.encode(enabled, forKey: .enabled)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
        }
    }
}
