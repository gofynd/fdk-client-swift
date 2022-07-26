

import Foundation
public extension PlatformClient {
    /*
         Model: MetricsCount
         Used By: Orders
     */

    class MetricsCount: Codable {
        public var returned: Int

        public var cancelled: Int

        public var pendingRtd: Int

        public var pendingPickup: Int

        public var pendingAcceptance: [PendingAcceptance]?

        public enum CodingKeys: String, CodingKey {
            case returned

            case cancelled

            case pendingRtd = "pending_rtd"

            case pendingPickup = "pending_pickup"

            case pendingAcceptance = "pending_acceptance"
        }

        public init(cancelled: Int, pendingAcceptance: [PendingAcceptance]? = nil, pendingPickup: Int, pendingRtd: Int, returned: Int) {
            self.returned = returned

            self.cancelled = cancelled

            self.pendingRtd = pendingRtd

            self.pendingPickup = pendingPickup

            self.pendingAcceptance = pendingAcceptance
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            returned = try container.decode(Int.self, forKey: .returned)

            cancelled = try container.decode(Int.self, forKey: .cancelled)

            pendingRtd = try container.decode(Int.self, forKey: .pendingRtd)

            pendingPickup = try container.decode(Int.self, forKey: .pendingPickup)

            do {
                pendingAcceptance = try container.decode([PendingAcceptance].self, forKey: .pendingAcceptance)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(returned, forKey: .returned)

            try? container.encodeIfPresent(cancelled, forKey: .cancelled)

            try? container.encodeIfPresent(pendingRtd, forKey: .pendingRtd)

            try? container.encodeIfPresent(pendingPickup, forKey: .pendingPickup)

            try? container.encodeIfPresent(pendingAcceptance, forKey: .pendingAcceptance)
        }
    }
}
