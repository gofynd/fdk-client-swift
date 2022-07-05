

import Foundation
public extension PlatformClient {
    /*
         Model: PriceMeta
         Used By: Catalog
     */

    class PriceMeta: Codable {
        public var marked: Double

        public var effective: Double

        public var tpNotes: [String: Any]?

        public var transfer: Double

        public var currency: String

        public enum CodingKeys: String, CodingKey {
            case marked

            case effective

            case tpNotes = "tp_notes"

            case transfer

            case currency
        }

        public init(currency: String, effective: Double, marked: Double, tpNotes: [String: Any]? = nil, transfer: Double) {
            self.marked = marked

            self.effective = effective

            self.tpNotes = tpNotes

            self.transfer = transfer

            self.currency = currency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            marked = try container.decode(Double.self, forKey: .marked)

            effective = try container.decode(Double.self, forKey: .effective)

            do {
                tpNotes = try container.decode([String: Any].self, forKey: .tpNotes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transfer = try container.decode(Double.self, forKey: .transfer)

            currency = try container.decode(String.self, forKey: .currency)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(marked, forKey: .marked)

            try? container.encodeIfPresent(effective, forKey: .effective)

            try? container.encodeIfPresent(tpNotes, forKey: .tpNotes)

            try? container.encodeIfPresent(transfer, forKey: .transfer)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }
}
