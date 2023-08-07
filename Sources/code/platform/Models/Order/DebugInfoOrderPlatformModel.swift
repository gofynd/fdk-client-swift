

import Foundation

public extension PlatformClient.Order {
    /*
         Model: DebugInfo
         Used By: Order
     */

    class DebugInfo: Codable {
        public var stormbreakerUuid: String?

        public enum CodingKeys: String, CodingKey {
            case stormbreakerUuid = "stormbreaker_uuid"
        }

        public init(stormbreakerUuid: String? = nil) {
            self.stormbreakerUuid = stormbreakerUuid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                stormbreakerUuid = try container.decode(String.self, forKey: .stormbreakerUuid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stormbreakerUuid, forKey: .stormbreakerUuid)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: DebugInfo
         Used By: Order
     */

    class DebugInfo: Codable {
        public var stormbreakerUuid: String?

        public enum CodingKeys: String, CodingKey {
            case stormbreakerUuid = "stormbreaker_uuid"
        }

        public init(stormbreakerUuid: String? = nil) {
            self.stormbreakerUuid = stormbreakerUuid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                stormbreakerUuid = try container.decode(String.self, forKey: .stormbreakerUuid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stormbreakerUuid, forKey: .stormbreakerUuid)
        }
    }
}
