

import Foundation
public extension PlatformClient {
    /*
         Model: MetricsCount
         Used By: Orders
     */

    class MetricsCount: Codable {
        public var pendingRtd: Int

        public var cancelled: Int

        public var returned: Int

        public var pendingPickup: Int

        public var pendingAcceptance: [PendingAcceptance]?

        public enum CodingKeys: String, CodingKey {
            case pendingRtd = "pending_rtd"

            case cancelled

            case returned

            case pendingPickup = "pending_pickup"

            case pendingAcceptance = "pending_acceptance"
        }

        public init(cancelled: Int, pendingAcceptance: [PendingAcceptance]? = nil, pendingPickup: Int, pendingRtd: Int, returned: Int) {
            self.pendingRtd = pendingRtd

            self.cancelled = cancelled

            self.returned = returned

            self.pendingPickup = pendingPickup

            self.pendingAcceptance = pendingAcceptance
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pendingRtd = try container.decode(Int.self, forKey: .pendingRtd)

            cancelled = try container.decode(Int.self, forKey: .cancelled)

            returned = try container.decode(Int.self, forKey: .returned)

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

            try? container.encodeIfPresent(pendingRtd, forKey: .pendingRtd)

            try? container.encodeIfPresent(cancelled, forKey: .cancelled)

            try? container.encodeIfPresent(returned, forKey: .returned)

            try? container.encodeIfPresent(pendingPickup, forKey: .pendingPickup)

            try? container.encodeIfPresent(pendingAcceptance, forKey: .pendingAcceptance)
        }
    }
}
