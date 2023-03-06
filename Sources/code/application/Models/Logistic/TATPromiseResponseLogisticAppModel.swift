

import Foundation
public extension ApplicationClient.Logistic {
    /*
         Model: TATPromiseResponse
         Used By: Logistic
     */
    class TATPromiseResponse: Codable {
        public var formatted: TATFormattedResponse?

        public var timestamp: TATTimestampResponse?

        public enum CodingKeys: String, CodingKey {
            case formatted

            case timestamp
        }

        public init(formatted: TATFormattedResponse? = nil, timestamp: TATTimestampResponse? = nil) {
            self.formatted = formatted

            self.timestamp = timestamp
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                formatted = try container.decode(TATFormattedResponse.self, forKey: .formatted)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                timestamp = try container.decode(TATTimestampResponse.self, forKey: .timestamp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(formatted, forKey: .formatted)

            try? container.encodeIfPresent(timestamp, forKey: .timestamp)
        }
    }
}
