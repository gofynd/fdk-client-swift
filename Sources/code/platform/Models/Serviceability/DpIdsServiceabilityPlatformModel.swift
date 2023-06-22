

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: DpIds
         Used By: Serviceability
     */

    class DpIds: Codable {
        public var priority: Int

        public var enabled: Bool

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case priority

            case enabled

            case meta
        }

        public init(enabled: Bool, meta: [String: Any]? = nil, priority: Int) {
            self.priority = priority

            self.enabled = enabled

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priority = try container.decode(Int.self, forKey: .priority)

            enabled = try container.decode(Bool.self, forKey: .enabled)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: DpIds
         Used By: Serviceability
     */

    class DpIds: Codable {
        public var priority: Int

        public var enabled: Bool

        public var meta: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case priority

            case enabled

            case meta
        }

        public init(enabled: Bool, meta: [String: Any]? = nil, priority: Int) {
            self.priority = priority

            self.enabled = enabled

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priority = try container.decode(Int.self, forKey: .priority)

            enabled = try container.decode(Bool.self, forKey: .enabled)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
