

import Foundation
public extension PlatformClient {
    /*
         Model: CreateLogResponse
         Used By: AuditTrail
     */

    class CreateLogResponse: Codable {
        public var message: String?

        public var internalMessage: String?

        public enum CodingKeys: String, CodingKey {
            case message

            case internalMessage = "internal_message"
        }

        public init(internalMessage: String? = nil, message: String? = nil) {
            self.message = message

            self.internalMessage = internalMessage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                internalMessage = try container.decode(String.self, forKey: .internalMessage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(internalMessage, forKey: .internalMessage)
        }
    }
}
