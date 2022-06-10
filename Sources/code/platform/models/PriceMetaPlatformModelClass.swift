

import Foundation
public extension PlatformClient {
    /*
         Model: PriceMeta
         Used By: Catalog
     */

    class PriceMeta: Codable {
        public var tpNotes: [String: Any]?

        public var transfer: Double

        public var effective: Double

        public var currency: String

        public var marked: Double

        public enum CodingKeys: String, CodingKey {
            case tpNotes = "tp_notes"

            case transfer

            case effective

            case currency

            case marked
        }

        public init(currency: String, effective: Double, marked: Double, tpNotes: [String: Any]? = nil, transfer: Double) {
            self.tpNotes = tpNotes

            self.transfer = transfer

            self.effective = effective

            self.currency = currency

            self.marked = marked
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                tpNotes = try container.decode([String: Any].self, forKey: .tpNotes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transfer = try container.decode(Double.self, forKey: .transfer)

            effective = try container.decode(Double.self, forKey: .effective)

            currency = try container.decode(String.self, forKey: .currency)

            marked = try container.decode(Double.self, forKey: .marked)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(tpNotes, forKey: .tpNotes)

            try? container.encodeIfPresent(transfer, forKey: .transfer)

            try? container.encodeIfPresent(effective, forKey: .effective)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(marked, forKey: .marked)
        }
    }
}
