

import Foundation




public extension PlatformClient.ApplicationClient.User {
    /*
        Model: UserTimeline
        Used By: User
    */

    class UserTimeline: Codable {
        
        
        public var date: String?
        
        public var title: String?
        
        public var type: String?
        
        public var visible: Bool?
        
        public var subTitle: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case date = "date"
            
            case title = "title"
            
            case type = "type"
            
            case visible = "visible"
            
            case subTitle = "sub_title"
            
        }

        public init(date: String? = nil, subTitle: String? = nil, title: String? = nil, type: String? = nil, visible: Bool? = nil) {
            
            self.date = date
            
            self.title = title
            
            self.type = type
            
            self.visible = visible
            
            self.subTitle = subTitle
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    date = try container.decode(String.self, forKey: .date)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    visible = try container.decode(Bool.self, forKey: .visible)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    subTitle = try container.decode(String.self, forKey: .subTitle)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(date, forKey: .date)
            
            
            
            
            try? container.encodeIfPresent(title, forKey: .title)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(visible, forKey: .visible)
            
            
            
            
            try? container.encodeIfPresent(subTitle, forKey: .subTitle)
            
            
        }
        
    }
}


