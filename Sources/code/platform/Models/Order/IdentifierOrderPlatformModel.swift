

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Identifier
         Used By: Order
     */

    class Identifier: Codable {
        public var isbn: String?

        public var ean: String?

        public var upc: String?

        public var skuCode: String?

        public var alu: String?

        public enum CodingKeys: String, CodingKey {
            case isbn

            case ean

            case upc

            case skuCode = "sku_code"

            case alu
        }

        public init(alu: String? = nil, ean: String? = nil, isbn: String? = nil, skuCode: String? = nil, upc: String? = nil) {
            self.isbn = isbn

            self.ean = ean

            self.upc = upc

            self.skuCode = skuCode

            self.alu = alu
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isbn = try container.decode(String.self, forKey: .isbn)

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
                upc = try container.decode(String.self, forKey: .upc)

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
                alu = try container.decode(String.self, forKey: .alu)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isbn, forKey: .isbn)

            try? container.encodeIfPresent(ean, forKey: .ean)

            try? container.encodeIfPresent(upc, forKey: .upc)

            try? container.encodeIfPresent(skuCode, forKey: .skuCode)

            try? container.encodeIfPresent(alu, forKey: .alu)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Identifier
         Used By: Order
     */

    class Identifier: Codable {
        public var isbn: String?

        public var ean: String?

        public var upc: String?

        public var skuCode: String?

        public var alu: String?

        public enum CodingKeys: String, CodingKey {
            case isbn

            case ean

            case upc

            case skuCode = "sku_code"

            case alu
        }

        public init(alu: String? = nil, ean: String? = nil, isbn: String? = nil, skuCode: String? = nil, upc: String? = nil) {
            self.isbn = isbn

            self.ean = ean

            self.upc = upc

            self.skuCode = skuCode

            self.alu = alu
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isbn = try container.decode(String.self, forKey: .isbn)

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
                upc = try container.decode(String.self, forKey: .upc)

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
                alu = try container.decode(String.self, forKey: .alu)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isbn, forKey: .isbn)

            try? container.encodeIfPresent(ean, forKey: .ean)

            try? container.encodeIfPresent(upc, forKey: .upc)

            try? container.encodeIfPresent(skuCode, forKey: .skuCode)

            try? container.encodeIfPresent(alu, forKey: .alu)
        }
    }
}
