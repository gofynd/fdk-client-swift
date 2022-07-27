

import Foundation
public extension PlatformClient {
    /*
         Model: MetricsCount
         Used By: Orders
     */

    class MetricsCount: Codable {
        public var returned: Int

        public var pendingAcceptance: [PendingAcceptance]?

        public var pendingPickup: Int

        public var cancelled: Int

        public var pendingRtd: Int

        public enum CodingKeys: String, CodingKey {
            case returned

            case pendingAcceptance = "pending_acceptance"

            case pendingPickup = "pending_pickup"

            case cancelled

            case pendingRtd = "pending_rtd"
        }

        public init(cancelled: Int, pendingAcceptance: [PendingAcceptance]? = nil, pendingPickup: Int, pendingRtd: Int, returned: Int) {
            self.returned = returned

            self.pendingAcceptance = pendingAcceptance

            self.pendingPickup = pendingPickup

            self.cancelled = cancelled

            self.pendingRtd = pendingRtd
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            returned = try container.decode(Int.self, forKey: .returned)

            do {
                pendingAcceptance = try container.decode([PendingAcceptance].self, forKey: .pendingAcceptance)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pendingPickup = try container.decode(Int.self, forKey: .pendingPickup)

            cancelled = try container.decode(Int.self, forKey: .cancelled)

            pendingRtd = try container.decode(Int.self, forKey: .pendingRtd)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(returned, forKey: .returned)

            try? container.encodeIfPresent(pendingAcceptance, forKey: .pendingAcceptance)

            try? container.encodeIfPresent(pendingPickup, forKey: .pendingPickup)

            try? container.encodeIfPresent(cancelled, forKey: .cancelled)

            try? container.encodeIfPresent(pendingRtd, forKey: .pendingRtd)
        }
    }
}
