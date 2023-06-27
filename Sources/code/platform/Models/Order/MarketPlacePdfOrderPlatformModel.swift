

import Foundation

public extension PlatformClient.Order {
    /*
         Model: MarketPlacePdf
         Used By: Order
     */

    class MarketPlacePdf: Codable {
        public var invoice: String?

        public var label: String?

        public enum CodingKeys: String, CodingKey {
            case invoice

            case label
        }

        public init(invoice: String? = nil, label: String? = nil) {
            self.invoice = invoice

            self.label = label
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                invoice = try container.decode(String.self, forKey: .invoice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                label = try container.decode(String.self, forKey: .label)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(invoice, forKey: .invoice)

            try? container.encode(label, forKey: .label)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: MarketPlacePdf
         Used By: Order
     */

    class MarketPlacePdf: Codable {
        public var invoice: String?

        public var label: String?

        public enum CodingKeys: String, CodingKey {
            case invoice

            case label
        }

        public init(invoice: String? = nil, label: String? = nil) {
            self.invoice = invoice

            self.label = label
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                invoice = try container.decode(String.self, forKey: .invoice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                label = try container.decode(String.self, forKey: .label)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(invoice, forKey: .invoice)

            try? container.encode(label, forKey: .label)
        }
    }
}
