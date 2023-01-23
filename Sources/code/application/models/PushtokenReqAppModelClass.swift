

import Foundation
public extension ApplicationClient {
    /*
         Model: PushtokenReq
         Used By: Communication
     */
    class PushtokenReq: Codable {
        public var action: String?

        public var bundleIdentifier: String?

        public var pushToken: String?

        public var uniqueDeviceId: String?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case action

            case bundleIdentifier = "bundle_identifier"

            case pushToken = "push_token"

            case uniqueDeviceId = "unique_device_id"

            case type
        }

        public init(action: String? = nil, bundleIdentifier: String? = nil, pushToken: String? = nil, type: String? = nil, uniqueDeviceId: String? = nil) {
            self.action = action

            self.bundleIdentifier = bundleIdentifier

            self.pushToken = pushToken

            self.uniqueDeviceId = uniqueDeviceId

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                action = try container.decode(String.self, forKey: .action)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bundleIdentifier = try container.decode(String.self, forKey: .bundleIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pushToken = try container.decode(String.self, forKey: .pushToken)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uniqueDeviceId = try container.decode(String.self, forKey: .uniqueDeviceId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(action, forKey: .action)

            try? container.encodeIfPresent(bundleIdentifier, forKey: .bundleIdentifier)

            try? container.encodeIfPresent(pushToken, forKey: .pushToken)

            try? container.encodeIfPresent(uniqueDeviceId, forKey: .uniqueDeviceId)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
