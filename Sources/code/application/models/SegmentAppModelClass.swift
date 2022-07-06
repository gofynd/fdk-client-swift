

import Foundation
public extension ApplicationClient {
    /*
         Model: Segment
         Used By: Configuration
     */
    class Segment: Codable {
        public var credentials: SegmentCredentials?

        public var enabled: Bool?

        public enum CodingKeys: String, CodingKey {
            case credentials

            case enabled
        }

        public init(credentials: SegmentCredentials? = nil, enabled: Bool? = nil) {
            self.credentials = credentials

            self.enabled = enabled
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                credentials = try container.decode(SegmentCredentials.self, forKey: .credentials)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(credentials, forKey: .credentials)

            try? container.encodeIfPresent(enabled, forKey: .enabled)
        }
    }
}
