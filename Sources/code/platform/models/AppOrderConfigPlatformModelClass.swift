

import Foundation
public extension PlatformClient {
    /*
         Model: AppOrderConfig
         Used By: Configuration
     */

    class AppOrderConfig: Codable {
        public var enabled: Bool?

        public var forceReassignment: Bool?

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case enabled

            case forceReassignment = "force_reassignment"

            case message
        }

        public init(enabled: Bool? = nil, forceReassignment: Bool? = nil, message: String? = nil) {
            self.enabled = enabled

            self.forceReassignment = forceReassignment

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                enabled = try container.decode(Bool.self, forKey: .enabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                forceReassignment = try container.decode(Bool.self, forKey: .forceReassignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(forceReassignment, forKey: .forceReassignment)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
