

import Foundation
public extension ApplicationClient {
    /*
         Model: MarketplaceInfo
         Used By: Payment
     */
    class MarketplaceInfo: Codable {
        public var membershipId: String

        public var name: String

        public var dateOfJoining: String?

        public enum CodingKeys: String, CodingKey {
            case membershipId = "membership_id"

            case name

            case dateOfJoining = "date_of_joining"
        }

        public init(dateOfJoining: String? = nil, membershipId: String, name: String) {
            self.membershipId = membershipId

            self.name = name

            self.dateOfJoining = dateOfJoining
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            membershipId = try container.decode(String.self, forKey: .membershipId)

            name = try container.decode(String.self, forKey: .name)

            do {
                dateOfJoining = try container.decode(String.self, forKey: .dateOfJoining)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(membershipId, forKey: .membershipId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(dateOfJoining, forKey: .dateOfJoining)
        }
    }
}
