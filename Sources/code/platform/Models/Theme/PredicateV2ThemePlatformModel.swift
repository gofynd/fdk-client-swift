

import Foundation

public extension PlatformClient.Theme {
    /*
         Model: PredicateV2
         Used By: Theme
     */

    class PredicateV2: Codable {
        public var screen: ScreenV2?

        public var user: UserV2?

        public var route: RouteV2?

        public enum CodingKeys: String, CodingKey {
            case screen

            case user

            case route
        }

        public init(route: RouteV2? = nil, screen: ScreenV2? = nil, user: UserV2? = nil) {
            self.screen = screen

            self.user = user

            self.route = route
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                screen = try container.decode(ScreenV2.self, forKey: .screen)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                user = try container.decode(UserV2.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                route = try container.decode(RouteV2.self, forKey: .route)

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

public extension PlatformClient.ApplicationClient.Theme {
    /*
         Model: PredicateV2
         Used By: Theme
     */

    class PredicateV2: Codable {
        public var screen: ScreenV2?

        public var user: UserV2?

        public var route: RouteV2?

        public enum CodingKeys: String, CodingKey {
            case screen

            case user

            case route
        }

        public init(route: RouteV2? = nil, screen: ScreenV2? = nil, user: UserV2? = nil) {
            self.screen = screen

            self.user = user

            self.route = route
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                screen = try container.decode(ScreenV2.self, forKey: .screen)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                user = try container.decode(UserV2.self, forKey: .user)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                route = try container.decode(RouteV2.self, forKey: .route)

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
