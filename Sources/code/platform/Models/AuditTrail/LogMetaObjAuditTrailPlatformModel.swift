

import Foundation


public extension PlatformClient.AuditTrail {
    /*
        Model: LogMetaObj
        Used By: AuditTrail
    */

    class LogMetaObj: Codable {
        
        
        public var modifier: [String: Any]?
        
        public var application: String?
        
        public var entity: EntityObject?
        
        public var deviceInfo: [String: Any]?
        
        public var location: [String: Any]?
        
        public var sessions: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case modifier = "modifier"
            
            case application = "application"
            
            case entity = "entity"
            
            case deviceInfo = "device_info"
            
            case location = "location"
            
            case sessions = "sessions"
            
        }

        public init(application: String? = nil, deviceInfo: [String: Any]? = nil, entity: EntityObject? = nil, location: [String: Any]? = nil, modifier: [String: Any]? = nil, sessions: String? = nil) {
            
            self.modifier = modifier
            
            self.application = application
            
            self.entity = entity
            
            self.deviceInfo = deviceInfo
            
            self.location = location
            
            self.sessions = sessions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    modifier = try container.decode([String: Any].self, forKey: .modifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    application = try container.decode(String.self, forKey: .application)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    entity = try container.decode(EntityObject.self, forKey: .entity)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    deviceInfo = try container.decode([String: Any].self, forKey: .deviceInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    location = try container.decode([String: Any].self, forKey: .location)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sessions = try container.decode(String.self, forKey: .sessions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(modifier, forKey: .modifier)
            
            
            
            
            try? container.encodeIfPresent(application, forKey: .application)
            
            
            
            
            try? container.encodeIfPresent(entity, forKey: .entity)
            
            
            
            
            try? container.encodeIfPresent(deviceInfo, forKey: .deviceInfo)
            
            
            
            
            try? container.encodeIfPresent(location, forKey: .location)
            
            
            
            
            try? container.encodeIfPresent(sessions, forKey: .sessions)
            
            
        }
        
    }
}




