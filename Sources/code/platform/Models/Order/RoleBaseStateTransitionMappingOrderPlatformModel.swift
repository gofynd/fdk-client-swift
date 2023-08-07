

import Foundation

public extension PlatformClient.Order {
    /*
         Model: RoleBaseStateTransitionMapping
         Used By: Order
     */

    class RoleBaseStateTransitionMapping: Codable {
        public var success: Bool?

        public var nextStatuses: [String]?

        public enum CodingKeys: String, CodingKey {
            case success

            case nextStatuses = "next_statuses"
        }

        public init(nextStatuses: [String]? = nil, success: Bool? = nil) {
            self.success = success

            self.nextStatuses = nextStatuses
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                nextStatuses = try container.decode([String].self, forKey: .nextStatuses)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(nextStatuses, forKey: .nextStatuses)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: RoleBaseStateTransitionMapping
         Used By: Order
     */

    class RoleBaseStateTransitionMapping: Codable {
        public var success: Bool?

        public var nextStatuses: [String]?

        public enum CodingKeys: String, CodingKey {
            case success

            case nextStatuses = "next_statuses"
        }

        public init(nextStatuses: [String]? = nil, success: Bool? = nil) {
            self.success = success

            self.nextStatuses = nextStatuses
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                success = try container.decode(Bool.self, forKey: .success)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                nextStatuses = try container.decode([String].self, forKey: .nextStatuses)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(nextStatuses, forKey: .nextStatuses)
        }
    }
}
