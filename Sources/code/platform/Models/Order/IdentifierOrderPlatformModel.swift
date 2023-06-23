

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Identifier
         Used By: Order
     */

    class Identifier: Codable {
        public var alu: String?

        public var skuCode: String?

        public var isbn: String?

        public var upc: String?

        public var ean: String?

        public enum CodingKeys: String, CodingKey {
            case alu

            case skuCode = "sku_code"

            case isbn

            case upc

            case ean
        }

        public init(alu: String? = nil, ean: String? = nil, isbn: String? = nil, skuCode: String? = nil, upc: String? = nil) {
            self.alu = alu

            self.skuCode = skuCode

            self.isbn = isbn

            self.upc = upc

            self.ean = ean
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                alu = try container.decode(String.self, forKey: .alu)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                skuCode = try container.decode(String.self, forKey: .skuCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isbn = try container.decode(String.self, forKey: .isbn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                upc = try container.decode(String.self, forKey: .upc)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ean = try container.decode(String.self, forKey: .ean)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(alu, forKey: .alu)

            try? container.encodeIfPresent(skuCode, forKey: .skuCode)

            try? container.encodeIfPresent(isbn, forKey: .isbn)

            try? container.encodeIfPresent(upc, forKey: .upc)

            try? container.encodeIfPresent(ean, forKey: .ean)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Identifier
         Used By: Order
     */

    class Identifier: Codable {
        public var alu: String?

        public var skuCode: String?

        public var isbn: String?

        public var upc: String?

        public var ean: String?

        public enum CodingKeys: String, CodingKey {
            case alu

            case skuCode = "sku_code"

            case isbn

            case upc

            case ean
        }

        public init(alu: String? = nil, ean: String? = nil, isbn: String? = nil, skuCode: String? = nil, upc: String? = nil) {
            self.alu = alu

            self.skuCode = skuCode

            self.isbn = isbn

            self.upc = upc

            self.ean = ean
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                alu = try container.decode(String.self, forKey: .alu)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                skuCode = try container.decode(String.self, forKey: .skuCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isbn = try container.decode(String.self, forKey: .isbn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                upc = try container.decode(String.self, forKey: .upc)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                ean = try container.decode(String.self, forKey: .ean)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(alu, forKey: .alu)

            try? container.encodeIfPresent(skuCode, forKey: .skuCode)

            try? container.encodeIfPresent(isbn, forKey: .isbn)

            try? container.encodeIfPresent(upc, forKey: .upc)

            try? container.encodeIfPresent(ean, forKey: .ean)
        }
    }
}
