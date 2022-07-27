

import Foundation
public extension PlatformClient {
    /*
         Model: PriceMeta
         Used By: Catalog
     */

    class PriceMeta: Codable {
        public var effective: Double

        public var marked: Double

        public var tpNotes: [String: Any]?

        public var currency: String

        public var transfer: Double

        public enum CodingKeys: String, CodingKey {
            case effective

            case marked

            case tpNotes = "tp_notes"

            case currency

            case transfer
        }

        public init(currency: String, effective: Double, marked: Double, tpNotes: [String: Any]? = nil, transfer: Double) {
            self.effective = effective

            self.marked = marked

            self.tpNotes = tpNotes

            self.currency = currency

            self.transfer = transfer
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            effective = try container.decode(Double.self, forKey: .effective)

            marked = try container.decode(Double.self, forKey: .marked)

            do {
                tpNotes = try container.decode([String: Any].self, forKey: .tpNotes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            transfer = try container.decode(Double.self, forKey: .transfer)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(effective, forKey: .effective)

            try? container.encodeIfPresent(marked, forKey: .marked)

            try? container.encodeIfPresent(tpNotes, forKey: .tpNotes)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(transfer, forKey: .transfer)
        }
    }
}
