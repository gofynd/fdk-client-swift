

import Foundation

public extension PlatformClient.DocumentEngine {
    /*
         Model: InternalErrorResponseGeneratePOSReceipts
         Used By: DocumentEngine
     */

    class InternalErrorResponseGeneratePOSReceipts: Codable {
        public var success: Bool

        public var message: String

        public var error: String

        public enum CodingKeys: String, CodingKey {
            case success

            case message

            case error
        }

        public init(error: String, message: String, success: Bool) {
            self.success = success

            self.message = message

            self.error = error
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            message = try container.decode(String.self, forKey: .message)

            error = try container.decode(String.self, forKey: .error)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(error, forKey: .error)
        }
    }
}
