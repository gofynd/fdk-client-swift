

import Foundation
public extension PlatformClient {
    /*
         Model: CancelledChequePayload
         Used By: Payment
     */

    class CancelledChequePayload: Codable {
        public var documentMandatory: Bool?

        public var enabled: Bool

        public enum CodingKeys: String, CodingKey {
            case documentMandatory = "document_mandatory"

            case enabled
        }

        public init(documentMandatory: Bool? = nil, enabled: Bool) {
            self.documentMandatory = documentMandatory

            self.enabled = enabled
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                documentMandatory = try container.decode(Bool.self, forKey: .documentMandatory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            enabled = try container.decode(Bool.self, forKey: .enabled)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(documentMandatory, forKey: .documentMandatory)

            try? container.encodeIfPresent(enabled, forKey: .enabled)
        }
    }
}
