

import Foundation
public extension ApplicationClient {
    /*
         Model: HasPasswordSuccess
         Used By: User
     */
    class HasPasswordSuccess: Codable {
        public var result: Bool?

        public enum CodingKeys: String, CodingKey {
            case result
        }

        public init(result: Bool? = nil) {
            self.result = result
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                result = try container.decode(Bool.self, forKey: .result)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(result, forKey: .result)
        }
    }
}
