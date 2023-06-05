

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: MarketplaceInfo
         Used By: Payment
     */
    class MarketplaceInfo: Codable {
        public var membershipId: String

        public var dateOfJoining: String?

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case membershipId = "membership_id"

            case dateOfJoining = "date_of_joining"

            case name
        }

        public init(dateOfJoining: String? = nil, membershipId: String, name: String) {
            self.membershipId = membershipId

            self.dateOfJoining = dateOfJoining

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            membershipId = try container.decode(String.self, forKey: .membershipId)

            do {
                dateOfJoining = try container.decode(String.self, forKey: .dateOfJoining)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(membershipId, forKey: .membershipId)

            try? container.encode(dateOfJoining, forKey: .dateOfJoining)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
