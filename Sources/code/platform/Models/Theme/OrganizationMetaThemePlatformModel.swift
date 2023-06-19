

import Foundation

public extension PlatformClient.Theme {
    /*
         Model: OrganizationMeta
         Used By: Theme
     */

    class OrganizationMeta: Codable {
        public var ecommPlatformUsed: [String]?

        public var goals: [String]?

        public enum CodingKeys: String, CodingKey {
            case ecommPlatformUsed = "ecomm_platform_used"

            case goals
        }

        public init(ecommPlatformUsed: [String]? = nil, goals: [String]? = nil) {
            self.ecommPlatformUsed = ecommPlatformUsed

            self.goals = goals
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                ecommPlatformUsed = try container.decode([String].self, forKey: .ecommPlatformUsed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                goals = try container.decode([String].self, forKey: .goals)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(ecommPlatformUsed, forKey: .ecommPlatformUsed)

            try? container.encodeIfPresent(goals, forKey: .goals)
        }
    }
}

public extension PlatformClient.ApplicationClient.Theme {
    /*
         Model: OrganizationMeta
         Used By: Theme
     */

    class OrganizationMeta: Codable {
        public var ecommPlatformUsed: [String]?

        public var goals: [String]?

        public enum CodingKeys: String, CodingKey {
            case ecommPlatformUsed = "ecomm_platform_used"

            case goals
        }

        public init(ecommPlatformUsed: [String]? = nil, goals: [String]? = nil) {
            self.ecommPlatformUsed = ecommPlatformUsed

            self.goals = goals
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                ecommPlatformUsed = try container.decode([String].self, forKey: .ecommPlatformUsed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                goals = try container.decode([String].self, forKey: .goals)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(ecommPlatformUsed, forKey: .ecommPlatformUsed)

            try? container.encodeIfPresent(goals, forKey: .goals)
        }
    }
}
