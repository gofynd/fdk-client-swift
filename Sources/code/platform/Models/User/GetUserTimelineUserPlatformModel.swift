

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: GetUserTimeline
        Used By: User
    */

    class GetUserTimeline: Codable {
        
        
        public var deleteOn: String?
        
        public var timeline: [UserTimeline]?
        

        public enum CodingKeys: String, CodingKey {
            
            case deleteOn = "delete_on"
            
            case timeline = "timeline"
            
        }

        public init(deleteOn: String? = nil, timeline: [UserTimeline]? = nil) {
            
            self.deleteOn = deleteOn
            
            self.timeline = timeline
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    deleteOn = try container.decode(String.self, forKey: .deleteOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    timeline = try container.decode([UserTimeline].self, forKey: .timeline)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(deleteOn, forKey: .deleteOn)
            
            
            
            
            try? container.encodeIfPresent(timeline, forKey: .timeline)
            
            
        }
        
    }
}


