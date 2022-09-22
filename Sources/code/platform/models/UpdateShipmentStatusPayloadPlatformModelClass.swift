

import Foundation
public extension PlatformClient {
    /*
         Model: UpdateShipmentStatusPayload
         Used By: Order
     */

    class UpdateShipmentStatusPayload: Codable {
        public var entities: EntitiesDetail

        public var processInBackground: Bool?

        public var unlockBeforeTransition: Bool?

        public var lockAfterTransition: Bool?

        public enum CodingKeys: String, CodingKey {
            case entities

            case processInBackground = "process_in_background"

            case unlockBeforeTransition = "unlock_before_transition"

            case lockAfterTransition = "lock_after_transition"
        }

        public init(entities: EntitiesDetail, lockAfterTransition: Bool? = nil, processInBackground: Bool? = nil, unlockBeforeTransition: Bool? = nil) {
            self.entities = entities

            self.processInBackground = processInBackground

            self.unlockBeforeTransition = unlockBeforeTransition

            self.lockAfterTransition = lockAfterTransition
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            entities = try container.decode(EntitiesDetail.self, forKey: .entities)

            do {
                processInBackground = try container.decode(Bool.self, forKey: .processInBackground)

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
                lockAfterTransition = try container.decode(Bool.self, forKey: .lockAfterTransition)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(entities, forKey: .entities)

            try? container.encodeIfPresent(processInBackground, forKey: .processInBackground)

            try? container.encodeIfPresent(unlockBeforeTransition, forKey: .unlockBeforeTransition)

            try? container.encodeIfPresent(lockAfterTransition, forKey: .lockAfterTransition)
        }
    }
}
