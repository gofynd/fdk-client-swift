

import Foundation
public extension ApplicationClient.Theme {
    /*
        Model: Predicate
        Used By: Theme
    */
    class Predicate: Codable {
        
        public var screen: Screen?
        
        public var user: ThemeUserSchema?
        
        public var route: Route?
        

        public enum CodingKeys: String, CodingKey {
            
            case screen = "screen"
            
            case user = "user"
            
            case route = "route"
            
        }

        public init(route: Route? = nil, screen: Screen? = nil, user: ThemeUserSchema? = nil) {
            
            self.screen = screen
            
            self.user = user
            
            self.route = route
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                screen = try container.decode(Screen.self, forKey: .screen)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                user = try container.decode(ThemeUserSchema.self, forKey: .user)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                route = try container.decode(Route.self, forKey: .route)
            
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
            
            
        }
        
    }
}
