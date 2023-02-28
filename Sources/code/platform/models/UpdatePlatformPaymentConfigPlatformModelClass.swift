

import Foundation
public extension PlatformClient {
    /*
         Model: UpdatePlatformPaymentConfig
         Used By: Payment
     */

    class UpdatePlatformPaymentConfig: Codable {
        public var anonymousCod: Bool?

        public var paymentSelectionLock: [String: Any]?

        public var methods: [String: Any]

        public var codAmountLimit: Int?

        public var codCharges: Int?

        public enum CodingKeys: String, CodingKey {
            case anonymousCod = "anonymous_cod"

            case paymentSelectionLock = "payment_selection_lock"

            case methods

            case codAmountLimit = "cod_amount_limit"

            case codCharges = "cod_charges"
        }

        public init(anonymousCod: Bool? = nil, codAmountLimit: Int? = nil, codCharges: Int? = nil, methods: [String: Any], paymentSelectionLock: [String: Any]? = nil) {
            self.anonymousCod = anonymousCod

            self.paymentSelectionLock = paymentSelectionLock

            self.methods = methods

            self.codAmountLimit = codAmountLimit

            self.codCharges = codCharges
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                anonymousCod = try container.decode(Bool.self, forKey: .anonymousCod)

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

            do {
                codAmountLimit = try container.decode(Int.self, forKey: .codAmountLimit)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(anonymousCod, forKey: .anonymousCod)

            try? container.encodeIfPresent(paymentSelectionLock, forKey: .paymentSelectionLock)

            try? container.encode(methods, forKey: .methods)

            try? container.encodeIfPresent(codAmountLimit, forKey: .codAmountLimit)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)
        }
    }
}
