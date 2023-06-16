

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PlatformPaymentOptions
         Used By: Payment
     */

    class PlatformPaymentOptions: Codable {
        public var source: String

        public var enabled: Bool

        public var paymentSelectionLock: [String: Any]?

        public var codCharges: Int?

        public var codAmountLimit: Int?

        public var methods: [String: Any]

        public var modeOfPayment: String

        public var callbackUrl: [String: Any]?

        public var anonymousCod: Bool?

        public enum CodingKeys: String, CodingKey {
            case source

            case enabled

            case paymentSelectionLock = "payment_selection_lock"

            case codCharges = "cod_charges"

            case codAmountLimit = "cod_amount_limit"

            case methods

            case modeOfPayment = "mode_of_payment"

            case callbackUrl = "callback_url"

            case anonymousCod = "anonymous_cod"
        }

        public init(anonymousCod: Bool? = nil, callbackUrl: [String: Any]? = nil, codAmountLimit: Int? = nil, codCharges: Int? = nil, enabled: Bool, methods: [String: Any], modeOfPayment: String, paymentSelectionLock: [String: Any]? = nil, source: String) {
            self.source = source

            self.enabled = enabled

            self.paymentSelectionLock = paymentSelectionLock

            self.codCharges = codCharges

            self.codAmountLimit = codAmountLimit

            self.methods = methods

            self.modeOfPayment = modeOfPayment

            self.callbackUrl = callbackUrl

            self.anonymousCod = anonymousCod
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            source = try container.decode(String.self, forKey: .source)

            enabled = try container.decode(Bool.self, forKey: .enabled)

            do {
                paymentSelectionLock = try container.decode([String: Any].self, forKey: .paymentSelectionLock)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                codCharges = try container.decode(Int.self, forKey: .codCharges)

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

            modeOfPayment = try container.decode(String.self, forKey: .modeOfPayment)

            do {
                callbackUrl = try container.decode([String: Any].self, forKey: .callbackUrl)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(source, forKey: .source)

            try? container.encode(enabled, forKey: .enabled)

            try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(codAmountLimit, forKey: .codAmountLimit)

            try? container.encode(methods, forKey: .methods)

            try? container.encodeIfPresent(modeOfPayment, forKey: .modeOfPayment)

            try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)

            try? container.encodeIfPresent(anonymousCod, forKey: .anonymousCod)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PlatformPaymentOptions
         Used By: Payment
     */

    class PlatformPaymentOptions: Codable {
        public var source: String

        public var enabled: Bool

        public var paymentSelectionLock: [String: Any]?

        public var codCharges: Int?

        public var codAmountLimit: Int?

        public var methods: [String: Any]

        public var modeOfPayment: String

        public var callbackUrl: [String: Any]?

        public var anonymousCod: Bool?

        public enum CodingKeys: String, CodingKey {
            case source

            case enabled

            case paymentSelectionLock = "payment_selection_lock"

            case codCharges = "cod_charges"

            case codAmountLimit = "cod_amount_limit"

            case methods

            case modeOfPayment = "mode_of_payment"

            case callbackUrl = "callback_url"

            case anonymousCod = "anonymous_cod"
        }

        public init(anonymousCod: Bool? = nil, callbackUrl: [String: Any]? = nil, codAmountLimit: Int? = nil, codCharges: Int? = nil, enabled: Bool, methods: [String: Any], modeOfPayment: String, paymentSelectionLock: [String: Any]? = nil, source: String) {
            self.source = source

            self.enabled = enabled

            self.paymentSelectionLock = paymentSelectionLock

            self.codCharges = codCharges

            self.codAmountLimit = codAmountLimit

            self.methods = methods

            self.modeOfPayment = modeOfPayment

            self.callbackUrl = callbackUrl

            self.anonymousCod = anonymousCod
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            source = try container.decode(String.self, forKey: .source)

            enabled = try container.decode(Bool.self, forKey: .enabled)

            do {
                paymentSelectionLock = try container.decode([String: Any].self, forKey: .paymentSelectionLock)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                codCharges = try container.decode(Int.self, forKey: .codCharges)

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

            modeOfPayment = try container.decode(String.self, forKey: .modeOfPayment)

            do {
                callbackUrl = try container.decode([String: Any].self, forKey: .callbackUrl)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(source, forKey: .source)

            try? container.encode(enabled, forKey: .enabled)

            try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(codAmountLimit, forKey: .codAmountLimit)

            try? container.encode(methods, forKey: .methods)

            try? container.encodeIfPresent(modeOfPayment, forKey: .modeOfPayment)

            try? container.encodeIfPresent(callbackUrl, forKey: .callbackUrl)

            try? container.encodeIfPresent(anonymousCod, forKey: .anonymousCod)
        }
    }
}
