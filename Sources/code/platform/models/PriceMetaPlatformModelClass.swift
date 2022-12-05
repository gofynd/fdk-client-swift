

import Foundation
public extension PlatformClient {
    /*
         Model: PriceMeta
         Used By: Catalog
     */

    class PriceMeta: Codable {
        public var marked: Double

        public var transfer: Double

        public var updatedAt: String?

        public var currency: String

        public var tpNotes: [String: Any]?

        public var effective: Double

        public enum CodingKeys: String, CodingKey {
            case marked

            case transfer

            case updatedAt = "updated_at"

            case currency

            case tpNotes = "tp_notes"

            case effective
        }

        public init(currency: String, effective: Double, marked: Double, tpNotes: [String: Any]? = nil, transfer: Double, updatedAt: String? = nil) {
            self.marked = marked

            self.transfer = transfer

            self.updatedAt = updatedAt

            self.currency = currency

            self.tpNotes = tpNotes

            self.effective = effective
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            marked = try container.decode(Double.self, forKey: .marked)

            transfer = try container.decode(Double.self, forKey: .transfer)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            do {
                tpNotes = try container.decode([String: Any].self, forKey: .tpNotes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            effective = try container.decode(Double.self, forKey: .effective)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(marked, forKey: .marked)

            try? container.encodeIfPresent(transfer, forKey: .transfer)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(tpNotes, forKey: .tpNotes)

            try? container.encodeIfPresent(effective, forKey: .effective)
        }
    }
}
