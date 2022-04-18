import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: CodeRequestBodySchema
         Used By: User
     */

    class CodeRequestBodySchema: Codable {
        public var code: String?

        public enum CodingKeys: String, CodingKey {
            case code
        }

        public init(code: String?) {
            self.code = code
        }

        public func duplicate() -> CodeRequestBodySchema {
            let dict = self.dictionary!
            let copy = CodeRequestBodySchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}
