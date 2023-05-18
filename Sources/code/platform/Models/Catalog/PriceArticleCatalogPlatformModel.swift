

import Foundation

public extension PlatformClient.Catalog {
    /*
         Model: PriceArticle
         Used By: Catalog
     */

    class PriceArticle: Codable {
        public var transfer: Double?

        public var currency: String?

        public var marked: Double?

        public var effective: Double?

        public var tpNotes: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case transfer

            case currency

            case marked

            case effective

            case tpNotes = "tp_notes"
        }

        public init(currency: String? = nil, effective: Double? = nil, marked: Double? = nil, tpNotes: [String: Any]? = nil, transfer: Double? = nil) {
            self.transfer = transfer

            self.currency = currency

            self.marked = marked

            self.effective = effective

            self.tpNotes = tpNotes
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                transfer = try container.decode(Double.self, forKey: .transfer)

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

            try? container.encodeIfPresent(effective, forKey: .effective)

            try? container.encodeIfPresent(tpNotes, forKey: .tpNotes)
        }
    }
}

public extension PlatformClient.ApplicationClient.Catalog {
    /*
         Model: PriceArticle
         Used By: Catalog
     */

    class PriceArticle: Codable {
        public var transfer: Double?

        public var currency: String?

        public var marked: Double?

        public var effective: Double?

        public var tpNotes: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case transfer

            case currency

            case marked

            case effective

            case tpNotes = "tp_notes"
        }

        public init(currency: String? = nil, effective: Double? = nil, marked: Double? = nil, tpNotes: [String: Any]? = nil, transfer: Double? = nil) {
            self.transfer = transfer

            self.currency = currency

            self.marked = marked

            self.effective = effective

            self.tpNotes = tpNotes
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                transfer = try container.decode(Double.self, forKey: .transfer)

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

            try? container.encodeIfPresent(effective, forKey: .effective)

            try? container.encodeIfPresent(tpNotes, forKey: .tpNotes)
        }
    }
}
