

import Foundation


public extension PlatformClient.Content {
    /*
        Model: AppAssociationIosPayload
        Used By: Content
    */

    class AppAssociationIosPayload: Codable {
        
        
        public var applinks: [String: Any]?
        
        public var appclips: [String: Any]?
        
        public var webcredentials: [String: Any]?
        
        public var activitycontinuation: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case applinks = "applinks"
            
            case appclips = "appclips"
            
            case webcredentials = "webcredentials"
            
            case activitycontinuation = "activitycontinuation"
            
        }

        public init(activitycontinuation: [String: Any]? = nil, appclips: [String: Any]? = nil, applinks: [String: Any]? = nil, webcredentials: [String: Any]? = nil) {
            
            self.applinks = applinks
            
            self.appclips = appclips
            
            self.webcredentials = webcredentials
            
            self.activitycontinuation = activitycontinuation
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    applinks = try container.decode([String: Any].self, forKey: .applinks)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    appclips = try container.decode([String: Any].self, forKey: .appclips)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    webcredentials = try container.decode([String: Any].self, forKey: .webcredentials)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    activitycontinuation = try container.decode([String: Any].self, forKey: .activitycontinuation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(applinks, forKey: .applinks)
            
            
            
            
            try? container.encodeIfPresent(appclips, forKey: .appclips)
            
            
            
            
            try? container.encodeIfPresent(webcredentials, forKey: .webcredentials)
            
            
            
            
            try? container.encodeIfPresent(activitycontinuation, forKey: .activitycontinuation)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Content {
    /*
        Model: AppAssociationIosPayload
        Used By: Content
    */

    class AppAssociationIosPayload: Codable {
        
        
        public var applinks: [String: Any]?
        
        public var appclips: [String: Any]?
        
        public var webcredentials: [String: Any]?
        
        public var activitycontinuation: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case applinks = "applinks"
            
            case appclips = "appclips"
            
            case webcredentials = "webcredentials"
            
            case activitycontinuation = "activitycontinuation"
            
        }

        public init(activitycontinuation: [String: Any]? = nil, appclips: [String: Any]? = nil, applinks: [String: Any]? = nil, webcredentials: [String: Any]? = nil) {
            
            self.applinks = applinks
            
            self.appclips = appclips
            
            self.webcredentials = webcredentials
            
            self.activitycontinuation = activitycontinuation
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    applinks = try container.decode([String: Any].self, forKey: .applinks)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    appclips = try container.decode([String: Any].self, forKey: .appclips)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    webcredentials = try container.decode([String: Any].self, forKey: .webcredentials)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    activitycontinuation = try container.decode([String: Any].self, forKey: .activitycontinuation)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(applinks, forKey: .applinks)
            
            
            
            
            try? container.encodeIfPresent(appclips, forKey: .appclips)
            
            
            
            
            try? container.encodeIfPresent(webcredentials, forKey: .webcredentials)
            
            
            
            
            try? container.encodeIfPresent(activitycontinuation, forKey: .activitycontinuation)
            
            
        }
        
    }
}


