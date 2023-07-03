

import Foundation
public extension ApplicationClient.Communication {
    /*
         Model: Message
         Used By: Communication
     */
    class Message: Codable {
        public var message: String?

        public var success: Bool?

        public var info: String?

        public var operation: String?

        public enum CodingKeys: String, CodingKey {
            case message

            case success

            case info

            case operation
        }

        public init(info: String? = nil, message: String? = nil, operation: String? = nil, success: Bool? = nil) {
            self.message = message

            self.success = success

            self.info = info

            self.operation = operation
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
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                info = try container.decode(String.self, forKey: .info)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                operation = try container.decode(String.self, forKey: .operation)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(info, forKey: .info)

            try? container.encodeIfPresent(operation, forKey: .operation)
        }
    }
}
