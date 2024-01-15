

import Foundation
public extension ApplicationClient.Content {
    /*
        Model: SEOSitemap
        Used By: Content
    */
    class SEOSitemap: Codable {
        
        public var priority: Double?
        
        public var frequency: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case priority = "priority"
            
            case frequency = "frequency"
            
        }

        public init(frequency: String? = nil, priority: Double? = nil) {
            
            self.priority = priority
            
            self.frequency = frequency
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                priority = try container.decode(Double.self, forKey: .priority)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                frequency = try container.decode(String.self, forKey: .frequency)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            try? container.encodeIfPresent(frequency, forKey: .frequency)
            
            
        }
        
    }
}
