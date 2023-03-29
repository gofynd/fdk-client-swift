

import Foundation
public extension PlatformClient {
    /*
         Model: UserRes
         Used By: Rewards
     */

    class UserRes: Codable {
        public var points: Points?

        public var user: RewardUser?

        public enum CodingKeys: String, CodingKey {
            case points

            case user
        }

        public init(points: Points? = nil, user: RewardUser? = nil) {
            self.points = points

            self.user = user
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                points = try container.decode(Points.self, forKey: .points)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                user = try container.decode(RewardUser.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(points, forKey: .points)

            try? container.encodeIfPresent(user, forKey: .user)
        }
    }
}
