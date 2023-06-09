

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PlatformPaymentOptions
         Used By: Payment
     */

    class PlatformPaymentOptions: Codable {
        public var codCharges: Int?

        public var paymentSelectionLock: [String: Any]?

        public var enabled: Bool

        public var callbackUrl: [String: Any]?

        public var modeOfPayment: String

        public var anonymousCod: Bool?

        public var codAmountLimit: Int?

        public var methods: [String: Any]

        public var source: String

        public enum CodingKeys: String, CodingKey {
            case codCharges = "cod_charges"

            case paymentSelectionLock = "payment_selection_lock"

            case enabled

            case callbackUrl = "callback_url"

            case modeOfPayment = "mode_of_payment"

            case anonymousCod = "anonymous_cod"

            case codAmountLimit = "cod_amount_limit"

            case methods

            case source
        }

        public init(anonymousCod: Bool? = nil, callbackUrl: [String: Any]? = nil, codAmountLimit: Int? = nil, codCharges: Int? = nil, enabled: Bool, methods: [String: Any], modeOfPayment: String, paymentSelectionLock: [String: Any]? = nil, source: String) {
            self.codCharges = codCharges

            self.paymentSelectionLock = paymentSelectionLock

            self.enabled = enabled

            self.callbackUrl = callbackUrl

            self.modeOfPayment = modeOfPayment

            self.anonymousCod = anonymousCod

            self.codAmountLimit = codAmountLimit

            self.methods = methods

            self.source = source
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                codCharges = try container.decode(Int.self, forKey: .codCharges)

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

            enabled = try container.decode(Bool.self, forKey: .enabled)

            do {
                callbackUrl = try container.decode([String: Any].self, forKey: .callbackUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modeOfPayment = try container.decode(String.self, forKey: .modeOfPayment)

            do {
                anonymousCod = try container.decode(Bool.self, forKey: .anonymousCod)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                codAmountLimit = try container.decode(Int.self, forKey: .codAmountLimit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            methods = try container.decode([String: Any].self, forKey: .methods)

            source = try container.decode(String.self, forKey: .source)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)

            try? container.encode(enabled, forKey: .enabled)

            try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)

            try? container.encodeIfPresent(modeOfPayment, forKey: .modeOfPayment)

            try? container.encodeIfPresent(anonymousCod, forKey: .anonymousCod)

            try? container.encodeIfPresent(codAmountLimit, forKey: .codAmountLimit)

            try? container.encode(methods, forKey: .methods)

            try? container.encode(source, forKey: .source)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PlatformPaymentOptions
         Used By: Payment
     */

    class PlatformPaymentOptions: Codable {
        public var codCharges: Int?

        public var paymentSelectionLock: [String: Any]?

        public var enabled: Bool

        public var callbackUrl: [String: Any]?

        public var modeOfPayment: String

        public var anonymousCod: Bool?

        public var codAmountLimit: Int?

        public var methods: [String: Any]

        public var source: String

        public enum CodingKeys: String, CodingKey {
            case codCharges = "cod_charges"

            case paymentSelectionLock = "payment_selection_lock"

            case enabled

            case callbackUrl = "callback_url"

            case modeOfPayment = "mode_of_payment"

            case anonymousCod = "anonymous_cod"

            case codAmountLimit = "cod_amount_limit"

            case methods

            case source
        }

        public init(anonymousCod: Bool? = nil, callbackUrl: [String: Any]? = nil, codAmountLimit: Int? = nil, codCharges: Int? = nil, enabled: Bool, methods: [String: Any], modeOfPayment: String, paymentSelectionLock: [String: Any]? = nil, source: String) {
            self.codCharges = codCharges

            self.paymentSelectionLock = paymentSelectionLock

            self.enabled = enabled

            self.callbackUrl = callbackUrl

            self.modeOfPayment = modeOfPayment

            self.anonymousCod = anonymousCod

            self.codAmountLimit = codAmountLimit

            self.methods = methods

            self.source = source
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                codCharges = try container.decode(Int.self, forKey: .codCharges)

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

            enabled = try container.decode(Bool.self, forKey: .enabled)

            do {
                callbackUrl = try container.decode([String: Any].self, forKey: .callbackUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modeOfPayment = try container.decode(String.self, forKey: .modeOfPayment)

            do {
                anonymousCod = try container.decode(Bool.self, forKey: .anonymousCod)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                codAmountLimit = try container.decode(Int.self, forKey: .codAmountLimit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            methods = try container.decode([String: Any].self, forKey: .methods)

            source = try container.decode(String.self, forKey: .source)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)

            try? container.encode(enabled, forKey: .enabled)

            try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)

            try? container.encodeIfPresent(modeOfPayment, forKey: .modeOfPayment)

            try? container.encodeIfPresent(anonymousCod, forKey: .anonymousCod)

            try? container.encodeIfPresent(codAmountLimit, forKey: .codAmountLimit)

            try? container.encode(methods, forKey: .methods)

            try? container.encode(source, forKey: .source)
        }
    }
}
