

import Foundation
public extension PlatformClient {
    /*
         Model: LocationDefaultCurrency
         Used By: Common
     */

    class LocationDefaultCurrency: Codable {
        public var name: String?

        public var symbol: String?

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case symbol

            case code
        }

        public init(code: String? = nil, name: String? = nil, symbol: String? = nil) {
            self.name = name

            self.symbol = symbol

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

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

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(symbol, forKey: .symbol)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}
