

import Foundation
public extension PlatformClient {
    /*
         Model: MarketPlacePdf
         Used By: Order
     */

    class MarketPlacePdf: Codable {
        public var label: String?

        public var invoice: String?

        public enum CodingKeys: String, CodingKey {
            case label

            case invoice
        }

        public init(invoice: String? = nil, label: String? = nil) {
            self.label = label

            self.invoice = invoice
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                label = try container.decode(String.self, forKey: .label)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoice = try container.decode(String.self, forKey: .invoice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(label, forKey: .label)

            try? container.encode(invoice, forKey: .invoice)
        }
    }
}
