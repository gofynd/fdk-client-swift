

import Foundation
public extension ApplicationClient {
    /*
         Model: ErrorResponse
         Used By: Catalog
     */
    class ErrorResponse: Codable {
        public var error: String?

        public enum CodingKeys: String, CodingKey {
            case error
        }

        public init(error: String? = nil) {
            self.error = error
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                error = try container.decode(String.self, forKey: .error)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(error, forKey: .error)
        }
    }
}
