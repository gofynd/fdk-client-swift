

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: MarketplaceInfo
         Used By: Payment
     */
    class MarketplaceInfo: Codable {
        public var dateOfJoining: String?

        public var name: String

        public var membershipId: String

        public enum CodingKeys: String, CodingKey {
            case dateOfJoining = "date_of_joining"

            case name

            case membershipId = "membership_id"
        }

        public init(dateOfJoining: String? = nil, membershipId: String, name: String) {
            self.dateOfJoining = dateOfJoining

            self.name = name

            self.membershipId = membershipId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                dateOfJoining = try container.decode(String.self, forKey: .dateOfJoining)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            membershipId = try container.decode(String.self, forKey: .membershipId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(dateOfJoining, forKey: .dateOfJoining)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(membershipId, forKey: .membershipId)
        }
    }
}
