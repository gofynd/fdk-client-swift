

import Foundation
public extension ApplicationClient.Configuration {
    /*
        Model: ApplicationAboutResponseSchema
        Used By: Configuration
    */
    class ApplicationAboutResponseSchema: Codable {
        
        public var applicationInfo: ApplicationInfo?
        

        public enum CodingKeys: String, CodingKey {
            
            case applicationInfo = "application_info"
            
        }

        public init(applicationInfo: ApplicationInfo? = nil) {
            
            self.applicationInfo = applicationInfo
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                applicationInfo = try container.decode(ApplicationInfo.self, forKey: .applicationInfo)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(applicationInfo, forKey: .applicationInfo)
            
            
        }
        
    }
}
