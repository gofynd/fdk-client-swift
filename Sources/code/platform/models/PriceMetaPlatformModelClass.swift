

import Foundation
public extension PlatformClient {
    /*
         Model: PriceMeta
         Used By: Catalog
     */

    class PriceMeta: Codable {
        public var currency: String

        public var tpNotes: [String: Any]?

        public var transfer: Double

        public var marked: Double

        public var effective: Double

        public enum CodingKeys: String, CodingKey {
            case currency

            case tpNotes = "tp_notes"

            case transfer

            case marked

            case effective
        }

        public init(currency: String, effective: Double, marked: Double, tpNotes: [String: Any]? = nil, transfer: Double) {
            self.currency = currency

            self.tpNotes = tpNotes

            self.transfer = transfer

            self.marked = marked

            self.effective = effective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                tpNotes = try container.decode([String: Any].self, forKey: .tpNotes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transfer = try container.decode(Double.self, forKey: .transfer)

            marked = try container.decode(Double.self, forKey: .marked)

            effective = try container.decode(Double.self, forKey: .effective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(tpNotes, forKey: .tpNotes)

            try? container.encodeIfPresent(transfer, forKey: .transfer)

            try? container.encodeIfPresent(marked, forKey: .marked)

            try? container.encodeIfPresent(effective, forKey: .effective)
        }
    }
}
