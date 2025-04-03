

import Foundation


public extension PlatformClient.Order {
    /*
        Model: AnnouncementsResponse
        Used By: Order
    */

    class AnnouncementsResponse: Codable {
        
        
        public var announcements: [AnnouncementResponse]?
        
        public var success: Bool?
        
        public var status: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case announcements = "announcements"
            
            case success = "success"
            
            case status = "status"
            
        }

        public init(announcements: [AnnouncementResponse]? = nil, status: Int? = nil, success: Bool? = nil) {
            
            self.announcements = announcements
            
            self.success = success
            
            self.status = status
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    announcements = try container.decode([AnnouncementResponse].self, forKey: .announcements)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(Int.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(announcements, forKey: .announcements)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: AnnouncementsResponse
        Used By: Order
    */

    class AnnouncementsResponse: Codable {
        
        
        public var announcements: [AnnouncementResponse]?
        
        public var success: Bool?
        
        public var status: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case announcements = "announcements"
            
            case success = "success"
            
            case status = "status"
            
        }

        public init(announcements: [AnnouncementResponse]? = nil, status: Int? = nil, success: Bool? = nil) {
            
            self.announcements = announcements
            
            self.success = success
            
            self.status = status
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    announcements = try container.decode([AnnouncementResponse].self, forKey: .announcements)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    status = try container.decode(Int.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(announcements, forKey: .announcements)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
        }
        
    }
}


