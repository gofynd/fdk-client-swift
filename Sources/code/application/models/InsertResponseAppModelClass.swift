

import Foundation
public extension ApplicationClient {
    /*
         Model: InsertResponse
         Used By: Feedback
     */
    class InsertResponse: Codable {
        public var ids: String?

        public enum CodingKeys: String, CodingKey {
            case ids
        }

        public init(ids: String? = nil) {
            self.ids = ids
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                ids = try container.decode(String.self, forKey: .ids)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(ids, forKey: .ids)
        }
    }
}
