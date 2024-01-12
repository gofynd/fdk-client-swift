

import Foundation
public extension ApplicationClient.Theme {
    /*
        Model: AvailablePagePredicate
        Used By: Theme
    */
    class AvailablePagePredicate: Codable {
        
        public var screen: AvailablePageScreenPredicate?
        
        public var user: AvailablePageUserPredicate?
        
        public var route: AvailablePageRoutePredicate?
        
        public var schedule: AvailablePageSchedulePredicate?
        
        public var platform: AvailablePagePlatformPredicate?
        
        public var zones: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case screen = "screen"
            
            case user = "user"
            
            case route = "route"
            
            case schedule = "schedule"
            
            case platform = "platform"
            
            case zones = "zones"
            
        }

        public init(platform: AvailablePagePlatformPredicate? = nil, route: AvailablePageRoutePredicate? = nil, schedule: AvailablePageSchedulePredicate? = nil, screen: AvailablePageScreenPredicate? = nil, user: AvailablePageUserPredicate? = nil, zones: [String]? = nil) {
            
            self.screen = screen
            
            self.user = user
            
            self.route = route
            
            self.schedule = schedule
            
            self.platform = platform
            
            self.zones = zones
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                screen = try container.decode(AvailablePageScreenPredicate.self, forKey: .screen)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                user = try container.decode(AvailablePageUserPredicate.self, forKey: .user)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                route = try container.decode(AvailablePageRoutePredicate.self, forKey: .route)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                schedule = try container.decode(AvailablePageSchedulePredicate.self, forKey: .schedule)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                platform = try container.decode(AvailablePagePlatformPredicate.self, forKey: .platform)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                zones = try container.decode([String].self, forKey: .zones)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(screen, forKey: .screen)
            
            
            
            try? container.encodeIfPresent(user, forKey: .user)
            
            
            
            try? container.encodeIfPresent(route, forKey: .route)
            
            
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            
            
            try? container.encodeIfPresent(platform, forKey: .platform)
            
            
            
            try? container.encodeIfPresent(zones, forKey: .zones)
            
            
        }
        
    }
}
