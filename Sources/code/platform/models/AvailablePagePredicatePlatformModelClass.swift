

import Foundation
public extension PlatformClient {
    /*
         Model: AvailablePagePredicate
         Used By: Theme
     */

    class AvailablePagePredicate: Codable {
        public var screen: AvailablePageScreenPredicate?

        public var user: AvailablePageUserPredicate?

        public var route: AvailablePageRoutePredicate?

        public enum CodingKeys: String, CodingKey {
            case screen

            case user

            case route
        }

        public init(route: AvailablePageRoutePredicate? = nil, screen: AvailablePageScreenPredicate? = nil, user: AvailablePageUserPredicate? = nil) {
            self.screen = screen

            self.user = user

            self.route = route
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                screen = try container.decode(AvailablePageScreenPredicate.self, forKey: .screen)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                user = try container.decode(AvailablePageUserPredicate.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                route = try container.decode(AvailablePageRoutePredicate.self, forKey: .route)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(screen, forKey: .screen)

            try? container.encodeIfPresent(user, forKey: .user)

            try? container.encodeIfPresent(route, forKey: .route)
        }
    }
}
