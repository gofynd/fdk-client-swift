

import Foundation
public extension PublicClient.Partner {
    /*
        Model: Details
        Used By: Partner
    */

    class Details: Codable {
        
        
        public var benefits: [Benefits]?
        
        public var demoUrl: String?
        
        public var description: String?
        
        public var integration: [String]?
        
        public var videoUrl: [[String: Any]]?
        
        public var youtube: [String]?
        
        public var screenshots: Screenshots?
        

        public enum CodingKeys: String, CodingKey {
            
            case benefits = "benefits"
            
            case demoUrl = "demo_url"
            
            case description = "description"
            
            case integration = "integration"
            
            case videoUrl = "video_url"
            
            case youtube = "youtube"
            
            case screenshots = "screenshots"
            
        }

        public init(benefits: [Benefits]? = nil, demoUrl: String? = nil, description: String? = nil, integration: [String]? = nil, screenshots: Screenshots? = nil, videoUrl: [[String: Any]]? = nil, youtube: [String]? = nil) {
            
            self.benefits = benefits
            
            self.demoUrl = demoUrl
            
            self.description = description
            
            self.integration = integration
            
            self.videoUrl = videoUrl
            
            self.youtube = youtube
            
            self.screenshots = screenshots
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    benefits = try container.decode([Benefits].self, forKey: .benefits)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    demoUrl = try container.decode(String.self, forKey: .demoUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    integration = try container.decode([String].self, forKey: .integration)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    videoUrl = try container.decode([[String: Any]].self, forKey: .videoUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    youtube = try container.decode([String].self, forKey: .youtube)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    screenshots = try container.decode(Screenshots.self, forKey: .screenshots)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(benefits, forKey: .benefits)
            
            
            
            try? container.encodeIfPresent(demoUrl, forKey: .demoUrl)
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            try? container.encodeIfPresent(integration, forKey: .integration)
            
            
            
            try? container.encodeIfPresent(videoUrl, forKey: .videoUrl)
            
            
            
            try? container.encodeIfPresent(youtube, forKey: .youtube)
            
            
            
            try? container.encodeIfPresent(screenshots, forKey: .screenshots)
            
            
        }
        
    }
}
