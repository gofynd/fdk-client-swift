

import Foundation


public extension PlatformClient.Configuration {
    /*
        Model: AppFeatureResponseSchema
        Used By: Configuration
    */

    class AppFeatureResponseSchema: Codable {
        
        
        public var feature: AppFeature?
        

        public enum CodingKeys: String, CodingKey {
            
            case feature = "feature"
            
        }

        public init(feature: AppFeature? = nil) {
            
            self.feature = feature
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    feature = try container.decode(AppFeature.self, forKey: .feature)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(feature, forKey: .feature)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Configuration {
    /*
        Model: AppFeatureResponseSchema
        Used By: Configuration
    */

    class AppFeatureResponseSchema: Codable {
        
        
        public var feature: AppFeature?
        

        public enum CodingKeys: String, CodingKey {
            
            case feature = "feature"
            
        }

        public init(feature: AppFeature? = nil) {
            
            self.feature = feature
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    feature = try container.decode(AppFeature.self, forKey: .feature)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(feature, forKey: .feature)
            
            
        }
        
    }
}


