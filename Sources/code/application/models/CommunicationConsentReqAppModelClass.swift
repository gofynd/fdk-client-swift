

import Foundation
public extension ApplicationClient {
    /*
         Model: CommunicationConsentReq
         Used By: Communication
     */
    class CommunicationConsentReq: Codable {
        public var response: String?

        public var action: String?

        public var channel: String?

        public enum CodingKeys: String, CodingKey {
            case response

            case action

            case channel
        }

        public init(action: String? = nil, channel: String? = nil, response: String? = nil) {
            self.response = response

            self.action = action

            self.channel = channel
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                response = try container.decode(String.self, forKey: .response)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                action = try container.decode(String.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                channel = try container.decode(String.self, forKey: .channel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(response, forKey: .response)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(channel, forKey: .channel)
        }
    }
}
