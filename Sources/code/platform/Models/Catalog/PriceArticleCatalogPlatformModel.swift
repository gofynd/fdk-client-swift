

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: PriceArticle
         Used By: Catalog
     */

    class PriceArticle: Codable {
        public var tpNotes: [String: Any]?

        public var currency: String?

        public var marked: Double?

        public var effective: Double?

        public var transfer: Double?

        public enum CodingKeys: String, CodingKey {
            case tpNotes = "tp_notes"

            case currency

            case marked

            case effective

            case transfer
        }

        public init(currency: String? = nil, effective: Double? = nil, marked: Double? = nil, tpNotes: [String: Any]? = nil, transfer: Double? = nil) {
            self.tpNotes = tpNotes

            self.currency = currency

            self.marked = marked

            self.effective = effective

            self.transfer = transfer
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                tpNotes = try container.decode([String: Any].self, forKey: .tpNotes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                marked = try container.decode(Double.self, forKey: .marked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                effective = try container.decode(Double.self, forKey: .effective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                transfer = try container.decode(Double.self, forKey: .transfer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(tpNotes, forKey: .tpNotes)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(marked, forKey: .marked)

            try? container.encodeIfPresent(effective, forKey: .effective)

            try? container.encodeIfPresent(transfer, forKey: .transfer)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: PriceArticle
         Used By: Catalog
     */

    class PriceArticle: Codable {
        public var tpNotes: [String: Any]?

        public var currency: String?

        public var marked: Double?

        public var effective: Double?

        public var transfer: Double?

        public enum CodingKeys: String, CodingKey {
            case tpNotes = "tp_notes"

            case currency

            case marked

            case effective

            case transfer
        }

        public init(currency: String? = nil, effective: Double? = nil, marked: Double? = nil, tpNotes: [String: Any]? = nil, transfer: Double? = nil) {
            self.tpNotes = tpNotes

            self.currency = currency

            self.marked = marked

            self.effective = effective

            self.transfer = transfer
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                tpNotes = try container.decode([String: Any].self, forKey: .tpNotes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                marked = try container.decode(Double.self, forKey: .marked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                effective = try container.decode(Double.self, forKey: .effective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                transfer = try container.decode(Double.self, forKey: .transfer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(tpNotes, forKey: .tpNotes)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(marked, forKey: .marked)

            try? container.encodeIfPresent(effective, forKey: .effective)

            try? container.encodeIfPresent(transfer, forKey: .transfer)
        }
    }
}
