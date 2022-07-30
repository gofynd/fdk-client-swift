

import Foundation
public extension PlatformClient {
    /*
         Model: PriceMeta
         Used By: Catalog
     */

    class PriceMeta: Codable {
        public var effective: Double

        public var transfer: Double

        public var currency: String

        public var tpNotes: [String: Any]?

        public var marked: Double

        public enum CodingKeys: String, CodingKey {
            case effective

            case transfer

            case currency

            case tpNotes = "tp_notes"

            case marked
        }

        public init(currency: String, effective: Double, marked: Double, tpNotes: [String: Any]? = nil, transfer: Double) {
            self.effective = effective

            self.transfer = transfer

            self.currency = currency

            self.tpNotes = tpNotes

            self.marked = marked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            effective = try container.decode(Double.self, forKey: .effective)

            transfer = try container.decode(Double.self, forKey: .transfer)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                tpNotes = try container.decode([String: Any].self, forKey: .tpNotes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            marked = try container.decode(Double.self, forKey: .marked)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(effective, forKey: .effective)

            try? container.encodeIfPresent(transfer, forKey: .transfer)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(tpNotes, forKey: .tpNotes)

            try? container.encodeIfPresent(marked, forKey: .marked)
        }
    }
}
