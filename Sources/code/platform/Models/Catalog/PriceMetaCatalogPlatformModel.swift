

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: PriceMeta
         Used By: Catalog
     */

    class PriceMeta: Codable {
        public var transfer: Double

        public var currency: String

        public var marked: Double

        public var updatedAt: String?

        public var effective: Double

        public var tpNotes: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case transfer

            case currency

            case marked

            case updatedAt = "updated_at"

            case effective

            case tpNotes = "tp_notes"
        }

        public init(currency: String, effective: Double, marked: Double, tpNotes: [String: Any]? = nil, transfer: Double, updatedAt: String? = nil) {
            self.transfer = transfer

            self.currency = currency

            self.marked = marked

            self.updatedAt = updatedAt

            self.effective = effective

            self.tpNotes = tpNotes
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transfer = try container.decode(Double.self, forKey: .transfer)

            currency = try container.decode(String.self, forKey: .currency)

            marked = try container.decode(Double.self, forKey: .marked)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            effective = try container.decode(Double.self, forKey: .effective)

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

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(marked, forKey: .marked)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(effective, forKey: .effective)

            try? container.encodeIfPresent(tpNotes, forKey: .tpNotes)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: PriceMeta
         Used By: Catalog
     */

    class PriceMeta: Codable {
        public var transfer: Double

        public var currency: String

        public var marked: Double

        public var updatedAt: String?

        public var effective: Double

        public var tpNotes: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case transfer

            case currency

            case marked

            case updatedAt = "updated_at"

            case effective

            case tpNotes = "tp_notes"
        }

        public init(currency: String, effective: Double, marked: Double, tpNotes: [String: Any]? = nil, transfer: Double, updatedAt: String? = nil) {
            self.transfer = transfer

            self.currency = currency

            self.marked = marked

            self.updatedAt = updatedAt

            self.effective = effective

            self.tpNotes = tpNotes
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transfer = try container.decode(Double.self, forKey: .transfer)

            currency = try container.decode(String.self, forKey: .currency)

            marked = try container.decode(Double.self, forKey: .marked)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            effective = try container.decode(Double.self, forKey: .effective)

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

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(marked, forKey: .marked)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(effective, forKey: .effective)

            try? container.encodeIfPresent(tpNotes, forKey: .tpNotes)
        }
    }
}
