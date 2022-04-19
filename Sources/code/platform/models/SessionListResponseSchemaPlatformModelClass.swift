import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: SessionListResponseSchema
         Used By: User
     */

    class SessionListResponseSchema: Codable {
        public var items: [String]?

        public enum CodingKeys: String, CodingKey {
            case items
        }

        public init(items: [String]? = nil) {
            self.items = items
        }

        public func duplicate() -> SessionListResponseSchema {
            let dict = self.dictionary!
            let copy = SessionListResponseSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                items = try container.decode([String].self, forKey: .items)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)
        }
    }
}
