

import Foundation
public extension PlatformClient {
    /*
         Model: PriceMeta
         Used By: Catalog
     */

    class PriceMeta: Codable {
        public var transfer: Double

        public var effective: Double

        public var marked: Double

        public var tpNotes: [String: Any]?

        public var currency: String

        public enum CodingKeys: String, CodingKey {
            case transfer

            case effective

            case marked

            case tpNotes = "tp_notes"

            case currency
        }

        public init(currency: String, effective: Double, marked: Double, tpNotes: [String: Any]? = nil, transfer: Double) {
            self.transfer = transfer

            self.effective = effective

            self.marked = marked

            self.tpNotes = tpNotes

            self.currency = currency
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transfer = try container.decode(Double.self, forKey: .transfer)

            effective = try container.decode(Double.self, forKey: .effective)

            marked = try container.decode(Double.self, forKey: .marked)

            do {
                tpNotes = try container.decode([String: Any].self, forKey: .tpNotes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transfer, forKey: .transfer)

            try? container.encodeIfPresent(effective, forKey: .effective)

            try? container.encodeIfPresent(marked, forKey: .marked)

            try? container.encodeIfPresent(tpNotes, forKey: .tpNotes)

            try? container.encodeIfPresent(currency, forKey: .currency)
        }
    }
}
