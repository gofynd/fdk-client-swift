

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

        public var currency: String

        public var updatedAt: String?

        public var tpNotes: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case transfer

            case effective

            case marked

            case currency

            case updatedAt = "updated_at"

            case tpNotes = "tp_notes"
        }

        public init(currency: String, effective: Double, marked: Double, tpNotes: [String: Any]? = nil, transfer: Double, updatedAt: String? = nil) {
            self.transfer = transfer

            self.effective = effective

            self.marked = marked

            self.currency = currency

            self.updatedAt = updatedAt

            self.tpNotes = tpNotes
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transfer = try container.decode(Double.self, forKey: .transfer)

            effective = try container.decode(Double.self, forKey: .effective)

            marked = try container.decode(Double.self, forKey: .marked)

            currency = try container.decode(String.self, forKey: .currency)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tpNotes = try container.decode([String: Any].self, forKey: .tpNotes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transfer, forKey: .transfer)

            try? container.encodeIfPresent(effective, forKey: .effective)

            try? container.encodeIfPresent(marked, forKey: .marked)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(tpNotes, forKey: .tpNotes)
        }
    }
}
