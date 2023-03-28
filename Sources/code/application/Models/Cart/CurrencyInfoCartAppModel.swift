

import Foundation
public extension ApplicationClient.Cart {
    /*
         Model: CurrencyInfo
         Used By: Cart
     */
    class CurrencyInfo: Codable {
        public var code: String?

        public var symbol: String?

        public enum CodingKeys: String, CodingKey {
            case code

            case symbol
        }

        public init(code: String? = nil, symbol: String? = nil) {
            self.code = code

            self.symbol = symbol
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                symbol = try container.decode(String.self, forKey: .symbol)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(symbol, forKey: .symbol)
        }
    }
}
