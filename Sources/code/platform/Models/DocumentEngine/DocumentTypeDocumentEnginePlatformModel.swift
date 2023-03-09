

import Foundation

public extension PlatformClient.DocumentEngine {
    /*
         Model: DocumentType
         Used By: DocumentEngine
     */

    class DocumentType: Codable {
        public var invoice: String

        public var label: String

        public enum CodingKeys: String, CodingKey {
            case invoice

            case label
        }

        public init(invoice: String, label: String) {
            self.invoice = invoice

            self.label = label
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            invoice = try container.decode(String.self, forKey: .invoice)

            label = try container.decode(String.self, forKey: .label)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(label, forKey: .label)
        }
    }
}
