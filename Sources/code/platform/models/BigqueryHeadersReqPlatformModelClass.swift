

import Foundation
public extension PlatformClient {
    /*
         Model: BigqueryHeadersReq
         Used By: Communication
     */

    class BigqueryHeadersReq: Codable {
        public var query: String?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case query

            case type
        }

        public init(query: String? = nil, type: String? = nil) {
            self.query = query

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                query = try container.decode(String.self, forKey: .query)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(query, forKey: .query)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
