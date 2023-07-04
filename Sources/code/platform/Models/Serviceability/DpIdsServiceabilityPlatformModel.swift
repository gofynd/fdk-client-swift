

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: DpIds
         Used By: Serviceability
     */

    class DpIds: Codable {
        public var meta: [String: Any]?

        public var enabled: Bool

        public var priority: Int

        public enum CodingKeys: String, CodingKey {
            case meta

            case enabled

            case priority
        }

        public init(enabled: Bool, meta: [String: Any]? = nil, priority: Int) {
            self.meta = meta

            self.enabled = enabled

            self.priority = priority
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            enabled = try container.decode(Bool.self, forKey: .enabled)

            priority = try container.decode(Int.self, forKey: .priority)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(priority, forKey: .priority)
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

        public var enabled: Bool

        public var priority: Int

        public enum CodingKeys: String, CodingKey {
            case meta

            case enabled

            case priority
        }

        public init(enabled: Bool, meta: [String: Any]? = nil, priority: Int) {
            self.meta = meta

            self.enabled = enabled

            self.priority = priority
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            enabled = try container.decode(Bool.self, forKey: .enabled)

            priority = try container.decode(Int.self, forKey: .priority)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(enabled, forKey: .enabled)

            try? container.encodeIfPresent(priority, forKey: .priority)
        }
    }
}
