

import Foundation
public extension PlatformClient {
    /*
         Model: MetricsCount
         Used By: Orders
     */

    class MetricsCount: Codable {
        public var pendingAcceptance: [PendingAcceptance]?

        public var pendingRtd: Int

        public var pendingPickup: Int

        public var cancelled: Int

        public var returned: Int

        public enum CodingKeys: String, CodingKey {
            case pendingAcceptance = "pending_acceptance"

            case pendingRtd = "pending_rtd"

            case pendingPickup = "pending_pickup"

            case cancelled

            case returned
        }

        public init(cancelled: Int, pendingAcceptance: [PendingAcceptance]? = nil, pendingPickup: Int, pendingRtd: Int, returned: Int) {
            self.pendingAcceptance = pendingAcceptance

            self.pendingRtd = pendingRtd

            self.pendingPickup = pendingPickup

            self.cancelled = cancelled

            self.returned = returned
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pendingAcceptance = try container.decode([PendingAcceptance].self, forKey: .pendingAcceptance)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pendingRtd = try container.decode(Int.self, forKey: .pendingRtd)

            pendingPickup = try container.decode(Int.self, forKey: .pendingPickup)

            cancelled = try container.decode(Int.self, forKey: .cancelled)

            returned = try container.decode(Int.self, forKey: .returned)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pendingAcceptance, forKey: .pendingAcceptance)

            try? container.encodeIfPresent(pendingRtd, forKey: .pendingRtd)

            try? container.encodeIfPresent(pendingPickup, forKey: .pendingPickup)

            try? container.encodeIfPresent(cancelled, forKey: .cancelled)

            try? container.encodeIfPresent(returned, forKey: .returned)
        }
    }
}
