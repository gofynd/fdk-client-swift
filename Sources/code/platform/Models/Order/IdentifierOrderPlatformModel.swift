

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Identifier
         Used By: Order
     */

    class Identifier: Codable {
        public var alu: String?

        public var ean: String?

        public var skuCode: String?

        public var upc: String?

        public var isbn: String?

        public enum CodingKeys: String, CodingKey {
            case alu

            case ean

            case skuCode = "sku_code"

            case upc

            case isbn
        }

        public init(alu: String? = nil, ean: String? = nil, isbn: String? = nil, skuCode: String? = nil, upc: String? = nil) {
            self.alu = alu

            self.ean = ean

            self.skuCode = skuCode

            self.upc = upc

            self.isbn = isbn
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
                ean = try container.decode(String.self, forKey: .ean)

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
                upc = try container.decode(String.self, forKey: .upc)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(alu, forKey: .alu)

            try? container.encodeIfPresent(ean, forKey: .ean)

            try? container.encodeIfPresent(skuCode, forKey: .skuCode)

            try? container.encodeIfPresent(upc, forKey: .upc)

            try? container.encodeIfPresent(isbn, forKey: .isbn)
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

        public var ean: String?

        public var skuCode: String?

        public var upc: String?

        public var isbn: String?

        public enum CodingKeys: String, CodingKey {
            case alu

            case ean

            case skuCode = "sku_code"

            case upc

            case isbn
        }

        public init(alu: String? = nil, ean: String? = nil, isbn: String? = nil, skuCode: String? = nil, upc: String? = nil) {
            self.alu = alu

            self.ean = ean

            self.skuCode = skuCode

            self.upc = upc

            self.isbn = isbn
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
                ean = try container.decode(String.self, forKey: .ean)

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
                upc = try container.decode(String.self, forKey: .upc)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(alu, forKey: .alu)

            try? container.encodeIfPresent(ean, forKey: .ean)

            try? container.encodeIfPresent(skuCode, forKey: .skuCode)

            try? container.encodeIfPresent(upc, forKey: .upc)

            try? container.encodeIfPresent(isbn, forKey: .isbn)
        }
    }
}
