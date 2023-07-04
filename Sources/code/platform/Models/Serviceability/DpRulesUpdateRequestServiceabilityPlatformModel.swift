

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: DpRulesUpdateRequest
         Used By: Serviceability
     */

    class DpRulesUpdateRequest: Codable {
        public var name: String

        public var isActive: Bool

        public var conditions: [[String: Any]]

        public var dpIds: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case name

            case isActive = "is_active"

            case conditions

            case dpIds = "dp_ids"
        }

        public init(conditions: [[String: Any]], dpIds: [String: Any], isActive: Bool, name: String) {
            self.name = name

            self.isActive = isActive

            self.conditions = conditions

            self.dpIds = dpIds
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            conditions = try container.decode([[String: Any]].self, forKey: .conditions)

            dpIds = try container.decode([String: Any].self, forKey: .dpIds)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(conditions, forKey: .conditions)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: DpRulesUpdateRequest
         Used By: Serviceability
     */

    class DpRulesUpdateRequest: Codable {
        public var name: String

        public var isActive: Bool

        public var conditions: [[String: Any]]

        public var dpIds: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case name

            case isActive = "is_active"

            case conditions

            case dpIds = "dp_ids"
        }

        public init(conditions: [[String: Any]], dpIds: [String: Any], isActive: Bool, name: String) {
            self.name = name

            self.isActive = isActive

            self.conditions = conditions

            self.dpIds = dpIds
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            conditions = try container.decode([[String: Any]].self, forKey: .conditions)

            dpIds = try container.decode([String: Any].self, forKey: .dpIds)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(conditions, forKey: .conditions)

            try? container.encodeIfPresent(dpIds, forKey: .dpIds)
        }
    }
}
