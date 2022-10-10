

import Foundation
public extension PlatformClient {
    /*
         Model: InternalErrorResponseGenerateBulk
         Used By: DocumentEngine
     */

    class InternalErrorResponseGenerateBulk: Codable {
        public var success: Bool

        public var errorMessage: String?

        public enum CodingKeys: String, CodingKey {
            case success

            case errorMessage = "error_message"
        }

        public init(errorMessage: String? = nil, success: Bool) {
            self.success = success

            self.errorMessage = errorMessage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                errorMessage = try container.decode(String.self, forKey: .errorMessage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(errorMessage, forKey: .errorMessage)
        }
    }
}
