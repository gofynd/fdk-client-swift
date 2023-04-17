

import Foundation

public extension PlatformClient.DocumentEngine {
    /*
         Model: BadRequestResponseGenerateBulk
         Used By: DocumentEngine
     */

    class BadRequestResponseGenerateBulk: Codable {
        public var success: Bool

        public var errorMessage: [BadRequestResponseGenerateBulkItem]

        public enum CodingKeys: String, CodingKey {
            case success

            case errorMessage = "error_message"
        }

        public init(errorMessage: [BadRequestResponseGenerateBulkItem], success: Bool) {
            self.success = success

            self.errorMessage = errorMessage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            errorMessage = try container.decode([BadRequestResponseGenerateBulkItem].self, forKey: .errorMessage)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(errorMessage, forKey: .errorMessage)
        }
    }
}
