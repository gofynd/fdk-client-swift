

import Foundation
public extension PlatformClient {
    /*
         Model: InvoiceDetailsPaymentMethodsDataChecks
         Used By: Billing
     */

    class InvoiceDetailsPaymentMethodsDataChecks: Codable {
        public var cvcCheck: String?

        public var addressLine1Check: String?

        public var addressPostalCodeCheck: String?

        public enum CodingKeys: String, CodingKey {
            case cvcCheck = "cvc_check"

            case addressLine1Check = "address_line1_check"

            case addressPostalCodeCheck = "address_postal_code_check"
        }

        public init(addressLine1Check: String? = nil, addressPostalCodeCheck: String? = nil, cvcCheck: String? = nil) {
            self.cvcCheck = cvcCheck

            self.addressLine1Check = addressLine1Check

            self.addressPostalCodeCheck = addressPostalCodeCheck
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                cvcCheck = try container.decode(String.self, forKey: .cvcCheck)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addressLine1Check = try container.decode(String.self, forKey: .addressLine1Check)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addressPostalCodeCheck = try container.decode(String.self, forKey: .addressPostalCodeCheck)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cvcCheck, forKey: .cvcCheck)

            try? container.encodeIfPresent(addressLine1Check, forKey: .addressLine1Check)

            try? container.encodeIfPresent(addressPostalCodeCheck, forKey: .addressPostalCodeCheck)
        }
    }
}
