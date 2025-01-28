

import Foundation
public extension ApplicationClient.Communication {
    /*
        Model: OtpConfigurationRateLimit
        Used By: Communication
    */
    class OtpConfigurationRateLimit: Codable {
        
        public var duration: Double?
        
        public var limit: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case duration = "duration"
            
            case limit = "limit"
            
        }

        public init(duration: Double? = nil, limit: Int? = nil) {
            
            self.duration = duration
            
            self.limit = limit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                duration = try container.decode(Double.self, forKey: .duration)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                limit = try container.decode(Int.self, forKey: .limit)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(duration, forKey: .duration)
            
            
            
            try? container.encodeIfPresent(limit, forKey: .limit)
            
            
        }
        
    }
}
