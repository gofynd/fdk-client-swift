import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: LogSchemaResponse
         Used By: AuditTrail
     */

    class LogSchemaResponse: Codable {
        public var docs: [LogDocs]?

        public enum CodingKeys: String, CodingKey {
            case docs
        }

        public init(docs: [LogDocs]? = nil) {
            self.docs = docs
        }

        public func duplicate() -> LogSchemaResponse {
            let dict = self.dictionary!
            let copy = LogSchemaResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                docs = try container.decode([LogDocs].self, forKey: .docs)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(docs, forKey: .docs)
        }
    }
}
