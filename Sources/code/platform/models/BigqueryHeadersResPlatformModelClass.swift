

import Foundation
public extension PlatformClient {
    /*
         Model: BigqueryHeadersRes
         Used By: Communication
     */

    class BigqueryHeadersRes: Codable {
        public var headers: [BigqueryHeadersResHeaders]?

        public enum CodingKeys: String, CodingKey {
            case headers
        }

        public init(headers: [BigqueryHeadersResHeaders]? = nil) {
            self.headers = headers
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                headers = try container.decode([BigqueryHeadersResHeaders].self, forKey: .headers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(headers, forKey: .headers)
        }
    }
}
