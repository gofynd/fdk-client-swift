

import Foundation
public extension ApplicationClient.Theme {
    /*
        Model: AvailablePageUserPredicate
        Used By: Theme
    */
    class AvailablePageUserPredicate: Codable {
        
        public var authenticated: Bool?
        
        public var anonymous: Bool?
        
        public var userType: String?
        
        public var userGroups: [String]?
        
        public var start: String?
        
        public var end: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case authenticated = "authenticated"
            
            case anonymous = "anonymous"
            
            case userType = "user_type"
            
            case userGroups = "user_groups"
            
            case start = "start"
            
            case end = "end"
            
        }

        public init(anonymous: Bool? = nil, authenticated: Bool? = nil, end: String? = nil, start: String? = nil, userGroups: [String]? = nil, userType: String? = nil) {
            
            self.authenticated = authenticated
            
            self.anonymous = anonymous
            
            self.userType = userType
            
            self.userGroups = userGroups
            
            self.start = start
            
            self.end = end
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                authenticated = try container.decode(Bool.self, forKey: .authenticated)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                anonymous = try container.decode(Bool.self, forKey: .anonymous)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                userType = try container.decode(String.self, forKey: .userType)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                userGroups = try container.decode([String].self, forKey: .userGroups)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                start = try container.decode(String.self, forKey: .start)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                end = try container.decode(String.self, forKey: .end)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(authenticated, forKey: .authenticated)
            
            
            
            try? container.encodeIfPresent(anonymous, forKey: .anonymous)
            
            
            
            try? container.encodeIfPresent(userType, forKey: .userType)
            
            
            
            try? container.encodeIfPresent(userGroups, forKey: .userGroups)
            
            
            
            try? container.encodeIfPresent(start, forKey: .start)
            
            
            
            try? container.encodeIfPresent(end, forKey: .end)
            
            
        }
        
    }
}
