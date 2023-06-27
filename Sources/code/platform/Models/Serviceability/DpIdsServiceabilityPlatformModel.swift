

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: DpIds
         Used By: Serviceability
     */

    class DpIds: Codable {
        public var meta: [String: Any]?

        public var priority: Int

        public var enabled: Bool

        public enum CodingKeys: String, CodingKey {
            case meta

            case priority

            case enabled
        }

        public init(enabled: Bool, meta: [String: Any]? = nil, priority: Int) {
            self.meta = meta

            self.priority = priority

            self.enabled = enabled
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priority = try container.decode(Int.self, forKey: .priority)

            enabled = try container.decode(Bool.self, forKey: .enabled)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(enabled, forKey: .enabled)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: DpIds
         Used By: Serviceability
     */

    class DpIds: Codable {
        public var meta: [String: Any]?

        public var priority: Int

        public var enabled: Bool

        public enum CodingKeys: String, CodingKey {
            case meta

            case priority

            case enabled
        }

        public init(enabled: Bool, meta: [String: Any]? = nil, priority: Int) {
            self.meta = meta

            self.priority = priority

            self.enabled = enabled
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priority = try container.decode(Int.self, forKey: .priority)

            enabled = try container.decode(Bool.self, forKey: .enabled)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(priority, forKey: .priority)

            try? container.encodeIfPresent(enabled, forKey: .enabled)
        }
    }
}
