

import Foundation


public extension PlatformClient.CompanyProfile {
    /*
        Model: AverageOrderProcessingTime
        Used By: CompanyProfile
    */

    class AverageOrderProcessingTime: Codable {
        
        
        public var duration: Int?
        
        public var durationType: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case duration = "duration"
            
            case durationType = "duration_type"
            
        }

        public init(duration: Int? = nil, durationType: String? = nil) {
            
            self.duration = duration
            
            self.durationType = durationType
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    duration = try container.decode(Int.self, forKey: .duration)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    durationType = try container.decode(String.self, forKey: .durationType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(duration, forKey: .duration)
            
            
            
            
            try? container.encodeIfPresent(durationType, forKey: .durationType)
            
            
        }
        
    }
}




