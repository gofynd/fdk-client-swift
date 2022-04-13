import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: DefaultCurrency
         Used By: Configuration
     */
    class DefaultCurrency: Codable {
        public var ref: String?

        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case ref

            case code
        }

        public init(code: String?, ref: String?) {
            self.ref = ref

            self.code = code
        }

        public func duplicate() -> DefaultCurrency {
            let dict = self.dictionary!
            let copy = DefaultCurrency(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                ref = try container.decode(String.self, forKey: .ref)

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

            try? container.encodeIfPresent(ref, forKey: .ref)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}
