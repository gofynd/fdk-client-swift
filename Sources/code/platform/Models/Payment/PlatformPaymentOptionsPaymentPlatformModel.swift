

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PlatformPaymentOptions
         Used By: Payment
     */

    class PlatformPaymentOptions: Codable {
        public var enabled: Bool

        public var codCharges: Int?

        public var anonymousCod: Bool?

        public var callbackUrl: [String: Any]?

        public var paymentSelectionLock: [String: Any]?

        public var methods: [String: Any]

        public var source: String

        public var codAmountLimit: Int?

        public var modeOfPayment: String

        public enum CodingKeys: String, CodingKey {
            case enabled

            case codCharges = "cod_charges"

            case anonymousCod = "anonymous_cod"

            case callbackUrl = "callback_url"

            case paymentSelectionLock = "payment_selection_lock"

            case methods

            case source

            case codAmountLimit = "cod_amount_limit"

            case modeOfPayment = "mode_of_payment"
        }

        public init(anonymousCod: Bool? = nil, callbackUrl: [String: Any]? = nil, codAmountLimit: Int? = nil, codCharges: Int? = nil, enabled: Bool, methods: [String: Any], modeOfPayment: String, paymentSelectionLock: [String: Any]? = nil, source: String) {
            self.enabled = enabled

            self.codCharges = codCharges

            self.anonymousCod = anonymousCod

            self.callbackUrl = callbackUrl

            self.paymentSelectionLock = paymentSelectionLock

            self.methods = methods

            self.source = source

            self.codAmountLimit = codAmountLimit

            self.modeOfPayment = modeOfPayment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            enabled = try container.decode(Bool.self, forKey: .enabled)

            do {
                codCharges = try container.decode(Int.self, forKey: .codCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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

            do {
                paymentSelectionLock = try container.decode([String: Any].self, forKey: .paymentSelectionLock)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            methods = try container.decode([String: Any].self, forKey: .methods)

            source = try container.decode(String.self, forKey: .source)

            do {
                codAmountLimit = try container.decode(Int.self, forKey: .codAmountLimit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modeOfPayment = try container.decode(String.self, forKey: .modeOfPayment)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(enabled, forKey: .enabled)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(anonymousCod, forKey: .anonymousCod)

            try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)

            try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)

            try? container.encode(methods, forKey: .methods)

            try? container.encode(source, forKey: .source)

            try? container.encodeIfPresent(codAmountLimit, forKey: .codAmountLimit)

            try? container.encodeIfPresent(modeOfPayment, forKey: .modeOfPayment)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PlatformPaymentOptions
         Used By: Payment
     */

    class PlatformPaymentOptions: Codable {
        public var enabled: Bool

        public var codCharges: Int?

        public var anonymousCod: Bool?

        public var callbackUrl: [String: Any]?

        public var paymentSelectionLock: [String: Any]?

        public var methods: [String: Any]

        public var source: String

        public var codAmountLimit: Int?

        public var modeOfPayment: String

        public enum CodingKeys: String, CodingKey {
            case enabled

            case codCharges = "cod_charges"

            case anonymousCod = "anonymous_cod"

            case callbackUrl = "callback_url"

            case paymentSelectionLock = "payment_selection_lock"

            case methods

            case source

            case codAmountLimit = "cod_amount_limit"

            case modeOfPayment = "mode_of_payment"
        }

        public init(anonymousCod: Bool? = nil, callbackUrl: [String: Any]? = nil, codAmountLimit: Int? = nil, codCharges: Int? = nil, enabled: Bool, methods: [String: Any], modeOfPayment: String, paymentSelectionLock: [String: Any]? = nil, source: String) {
            self.enabled = enabled

            self.codCharges = codCharges

            self.anonymousCod = anonymousCod

            self.callbackUrl = callbackUrl

            self.paymentSelectionLock = paymentSelectionLock

            self.methods = methods

            self.source = source

            self.codAmountLimit = codAmountLimit

            self.modeOfPayment = modeOfPayment
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            enabled = try container.decode(Bool.self, forKey: .enabled)

            do {
                codCharges = try container.decode(Int.self, forKey: .codCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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

            do {
                paymentSelectionLock = try container.decode([String: Any].self, forKey: .paymentSelectionLock)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            methods = try container.decode([String: Any].self, forKey: .methods)

            source = try container.decode(String.self, forKey: .source)

            do {
                codAmountLimit = try container.decode(Int.self, forKey: .codAmountLimit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modeOfPayment = try container.decode(String.self, forKey: .modeOfPayment)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(enabled, forKey: .enabled)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(anonymousCod, forKey: .anonymousCod)

            try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)

            try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)

            try? container.encode(methods, forKey: .methods)

            try? container.encode(source, forKey: .source)

            try? container.encodeIfPresent(codAmountLimit, forKey: .codAmountLimit)

            try? container.encodeIfPresent(modeOfPayment, forKey: .modeOfPayment)
        }
    }
}
