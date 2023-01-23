

import Foundation
public extension ApplicationClient {
    /*
         Model: PollForAssignment
         Used By: Lead
     */
    class PollForAssignment: Codable {
        public var duration: Double

        public var message: String

        public var successMessage: String

        public var failureMessage: String

        public enum CodingKeys: String, CodingKey {
            case duration

            case message

            case successMessage = "success_message"

            case failureMessage = "failure_message"
        }

        public init(duration: Double, failureMessage: String, message: String, successMessage: String) {
            self.duration = duration

            self.message = message

            self.successMessage = successMessage

            self.failureMessage = failureMessage
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            duration = try container.decode(Double.self, forKey: .duration)

            message = try container.decode(String.self, forKey: .message)

            successMessage = try container.decode(String.self, forKey: .successMessage)

            failureMessage = try container.decode(String.self, forKey: .failureMessage)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(duration, forKey: .duration)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(successMessage, forKey: .successMessage)

            try? container.encodeIfPresent(failureMessage, forKey: .failureMessage)
        }
    }
}
