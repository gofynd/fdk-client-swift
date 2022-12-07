

import Foundation
public extension PlatformClient {
    /*
         Model: StatusUpdateInternalRequest
         Used By: Order
     */

    class StatusUpdateInternalRequest: Codable {
        public var task: Bool?

        public var forceTransition: Bool?

        public var lockAfterTransition: Bool?

        public var unlockBeforeTransition: Bool?

        public var statues: [StatuesRequest]?

        public enum CodingKeys: String, CodingKey {
            case task

            case forceTransition = "force_transition"

            case lockAfterTransition = "lock_after_transition"

            case unlockBeforeTransition = "unlock_before_transition"

            case statues
        }

        public init(forceTransition: Bool? = nil, lockAfterTransition: Bool? = nil, statues: [StatuesRequest]? = nil, task: Bool? = nil, unlockBeforeTransition: Bool? = nil) {
            self.task = task

            self.forceTransition = forceTransition

            self.lockAfterTransition = lockAfterTransition

            self.unlockBeforeTransition = unlockBeforeTransition

            self.statues = statues
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                task = try container.decode(Bool.self, forKey: .task)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                forceTransition = try container.decode(Bool.self, forKey: .forceTransition)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lockAfterTransition = try container.decode(Bool.self, forKey: .lockAfterTransition)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                unlockBeforeTransition = try container.decode(Bool.self, forKey: .unlockBeforeTransition)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                statues = try container.decode([StatuesRequest].self, forKey: .statues)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(task, forKey: .task)

            try? container.encodeIfPresent(forceTransition, forKey: .forceTransition)

            try? container.encodeIfPresent(lockAfterTransition, forKey: .lockAfterTransition)

            try? container.encodeIfPresent(unlockBeforeTransition, forKey: .unlockBeforeTransition)

            try? container.encodeIfPresent(statues, forKey: .statues)
        }
    }
}
