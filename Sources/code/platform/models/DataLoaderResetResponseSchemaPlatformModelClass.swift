import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: DataLoaderResetResponseSchema
         Used By: Content
     */

    class DataLoaderResetResponseSchema: Codable {
        public var reset: String?

        public enum CodingKeys: String, CodingKey {
            case reset
        }

        public init(reset: String?) {
            self.reset = reset
        }

        public func duplicate() -> DataLoaderResetResponseSchema {
            let dict = self.dictionary!
            let copy = DataLoaderResetResponseSchema(dictionary: dict)!
            return copy
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
