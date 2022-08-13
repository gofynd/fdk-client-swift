

import Foundation
public extension PlatformClient {
    /*
         Model: CancelledChequePayload
         Used By: Payment
     */

    class CancelledChequePayload: Codable {
        public var enabled: Bool

        public var documentMandatory: Bool?

        public enum CodingKeys: String, CodingKey {
            case enabled

            case documentMandatory = "document_mandatory"
        }

        public init(documentMandatory: Bool? = nil, enabled: Bool) {
            self.enabled = enabled

            self.documentMandatory = documentMandatory
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            enabled = try container.decode(Bool.self, forKey: .enabled)

            do {
                documentMandatory = try container.decode(Bool.self, forKey: .documentMandatory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(documentMandatory, forKey: .documentMandatory)
        }
    }
}
