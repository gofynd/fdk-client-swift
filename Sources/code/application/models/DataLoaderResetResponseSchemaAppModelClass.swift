

import Foundation
public extension ApplicationClient {
    /*
         Model: DataLoaderResetResponseSchema
         Used By: Content
     */
    class DataLoaderResetResponseSchema: Codable {
        public var reset: String?

        public enum CodingKeys: String, CodingKey {
            case reset
        }

        public init(reset: String? = nil) {
            self.reset = reset
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                reset = try container.decode(String.self, forKey: .reset)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(reset, forKey: .reset)
        }
    }
}
