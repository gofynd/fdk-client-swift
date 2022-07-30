

import Foundation
public extension PlatformClient {
    /*
         Model: MetricsCount
         Used By: Orders
     */

    class MetricsCount: Codable {
        public var cancelled: Int

        public var pendingRtd: Int

        public var returned: Int

        public var pendingAcceptance: [PendingAcceptance]?

        public var pendingPickup: Int

        public enum CodingKeys: String, CodingKey {
            case cancelled

            case pendingRtd = "pending_rtd"

            case returned

            case pendingAcceptance = "pending_acceptance"

            case pendingPickup = "pending_pickup"
        }

        public init(cancelled: Int, pendingAcceptance: [PendingAcceptance]? = nil, pendingPickup: Int, pendingRtd: Int, returned: Int) {
            self.cancelled = cancelled

            self.pendingRtd = pendingRtd

            self.returned = returned

            self.pendingAcceptance = pendingAcceptance

            self.pendingPickup = pendingPickup
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            cancelled = try container.decode(Int.self, forKey: .cancelled)

            pendingRtd = try container.decode(Int.self, forKey: .pendingRtd)

            returned = try container.decode(Int.self, forKey: .returned)

            do {
                pendingAcceptance = try container.decode([PendingAcceptance].self, forKey: .pendingAcceptance)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pendingPickup = try container.decode(Int.self, forKey: .pendingPickup)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(cancelled, forKey: .cancelled)

            try? container.encodeIfPresent(pendingRtd, forKey: .pendingRtd)

            try? container.encodeIfPresent(returned, forKey: .returned)

            try? container.encodeIfPresent(pendingAcceptance, forKey: .pendingAcceptance)

            try? container.encodeIfPresent(pendingPickup, forKey: .pendingPickup)
        }
    }
}
